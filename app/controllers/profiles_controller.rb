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

  def update
    @profile = Profile.find(params[:profile_id])
    params[:profile][:status] = step.to_s
    params[:profile][:status] = 'active' if step == steps.last
    params[:profile][:user_id] = current_user.id if step == steps.last
    if @profile.update_attributes(profile_params) && step == steps.last
      redirect_to profile_path()
    else
      render_wizard @profile
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

    @cards = @cards.filter do |card|
      @profile.contract_types.any? { |contract_type| card.contract_types.include?(contract_type) }
    end

    @cards = @cards.filter do |card|
      @profile.languages.any? { |language| card.languages.include?(language) }
    end

    @cards = @cards.filter do |card|
      @profile.locations.any? { |location| card.locations.include?(location) }
    end

    @card = @cards[0]
    @cards.delete_at(0)
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
      :salary_max,
      :salary_min,
      languages: [],
      locations: [],
      contract_types: []
    )
  end

  def cards_from_database
    Posting.where(
      'field = :profile_field
      AND job_title = :profile_job_title
      AND salary_max >= :profile_salary_min',
      profile_field: @profile.field,
      profile_job_title: @profile.job_title,
      profile_salary_min: @profile.salary_min
    )
  end
end
