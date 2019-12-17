class MatchesController < ApplicationController
  before_action :set_match, only: [:show]

  def index
    @matches = []

    if current_user.company.nil?
      # -----get all matches for a seeker-----
      retrieve_matches(current_user.profiles)
      # @match_name = Company.find(match.posting.company.id).name
    else
      #-----get all matches for a recruiter-----
      retrieve_matches(current_user.company.postings)
      # @match_name = User.find(match.profile.user.id).name
    end
  end

  def show
    @match = Match.includes(messages: :user).find(params[:id])
  end

  def accept_decline
    user_intention = params[:user_intention]
    @posting = params[:posting_id]
    match_instance
    update_seeker_or_recruiter_status(user_intention)

    if user_intention == 'declined'
      @match.status = user_intention

    # gets fired, when user_intention is 'accepted'
    elsif @match.status_seeker == user_intention && @match.status_recruiter == user_intention
      @match.status = user_intention
    end

    @match.save
    render :update_btn
  end

  private

  def set_match
    @match = Match.find(params[:id])
  end

  def retrieve_matches(array)
    array.each do |profile_or_posting|
      profile_or_posting.matches.each do |match|
        @matches << match if match.status == "accepted"
      end
    end
  end

  def match_instance
    @profile_id = params[:profile_id]
    @posting_id = params[:posting_id]

    @match = Match.find_or_initialize_by(profile_id: @profile_id, posting_id: @posting_id)
  end

  def update_seeker_or_recruiter_status(updated_status)
    if current_user.company_id.nil?
      @match.status_seeker = updated_status
    else
      @match.status_recruiter = updated_status
    end
  end
end
