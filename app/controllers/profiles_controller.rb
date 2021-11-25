class ProfilesController < ApplicationController
  include Wicked::Wizard

  steps :first, :second, :third

  def index
    @profiles = current_user.profiles
  end

  def show
    @profile = Profile.find(params[:profile_id])
    render_wizard
  end

  def new
    create
  end

  def wizard_redirect
    if @profile.update_attributes(profile_params) && step == steps.last
      @profile.compute_score
      redirect_to profiles_path
    else
      render_wizard @profile
    end
  end

  def update
    @profile = Profile.find(params[:profile_id])
    if @profile.user_id
      wizard_redirect
    else
      params[:profile][:status] = step.to_s
      params[:profile][:status] = 'active' if step == steps.last
      params[:profile][:user_id] = current_user.id if step == steps.last
      wizard_redirect
    end
  end

  def create
    @profile = Profile.create
    redirect_to wizard_path(steps.first, profile_id: @profile.id)
  end

  def bridge_route
    # registration
    if current_user.profiles.empty?
      redirect_to new_profile_path
    else
      # sign in
      redirect_to profiles_path
    end
  end

  def swipe
    @profile = Profile.find(params[:profile_id])
    @cards = cards_from_database

    # filter_for_contract_types
    # filter_for_locations
    # filter_for_languages
    # filter_for_liked_cards
    # filter_for_declined_cards

    fake_matches if (@cards.count == 5) && (current_user.id == 255)
  end

  def fetch_jobs
    @profile = Profile.find(params[:profile_id])
    @locations = @profile.locations
    @keyword = @profile.job_title
    @locations.each do |location|
      JobsApiService.new(@keyword, location, @profile).call
    end
    redirect_to swipe_path(user_id: current_user.id, profile_id: @profile.id)
  end

  def stats
    @profile = Profile.find(params[:profile_id])
    @profile.score
  end

  private

  def profile_params
    params.require(:profile).permit(
      :user_id,
      :status,
      :field,
      :job_title,
      :experience,
      :description,
      :salary_min,
      :photo,
      languages: [],
      locations: [],
      contract_types: []
    )
  end

  def cards_from_database
    Posting.where(
      'field @@ :profile_field
      AND job_title @@ :profile_job_title
      AND experience = :profile_experience
      AND salary_max >= :profile_salary_min',
      profile_field: @profile.field,
      profile_job_title: @profile.job_title,
      profile_experience: @profile.experience,
      profile_salary_min: @profile.salary_min
    )
    Posting.all
  end

  def filter_for_contract_types
    @cards = @cards.filter do |card|
      @profile.contract_types.any? { |contract_type| card.contract_types&.include?(contract_type) || card.contract_types.nil? }
    end
  end

  def filter_for_locations
    @cards = @cards.filter do |card|
      @profile.languages.any? { |language| card.languages&.include?(language) || card.languages.nil? }
    end
  end

  def filter_for_languages
    @cards = @cards.filter do |card|
      @profile.locations.any? { |location| card.locations&.include?(location) || card.locations.nil? }
    end
  end

  def filter_for_liked_cards
    @cards = @cards.reject do |card|
      Match.where(profile_id: @profile.id, posting_id: card.id, status_seeker: "accepted").exists?
    end
  end

  def filter_for_declined_cards
    @cards = @cards.reject do |card|
      Match.where(profile_id: @profile.id, posting_id: card.id, status: "declined").exists?
    end
  end

  def fake_matches
    # creating fake matches in which the status_recruiter = 'accepted'
    # in each deck. Resulting in instant matches to chat with.
    # There will also be  save cards on 'position',
    # that will always result in an instant match.

    # fraction = 0.3

    save_cards = []
    save_cards << @cards.last
    # save_cards << @cards [2]
    # save_cards << @cards [4]

    # rest_cards = []
    # @cards.each { |card| rest_cards << card }
    # rest_cards.delete_at(0)
    # rest_cards.delete_at(1)
    # rest_cards.delete_at(1)

    save_cards.each do |card|
      if Match.where(profile_id: @profile.id, posting_id: card.id).empty?
        Match.create(profile_id: @profile.id, posting_id: card.id, status: "pending", status_recruiter: "accepted")
      end
    end

    # rest_cards.each do |card|
    #   if Match.where(profile_id: @profile.id, posting_id: card.id).empty? && (rand <= fraction)
    #     Match.create(profile_id: @profile.id, posting_id: card.id, status: "pending", status_recruiter: "accepted")
    #   end
    # end
  end
end
