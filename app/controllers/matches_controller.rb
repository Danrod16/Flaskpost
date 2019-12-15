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
  end

  def accept
    profile_id = params[:profile_id]
    posting_id = params[:posting_id]

    @match = Match.find_or_initialize_by(profile_id: profile_id, posting_id: posting_id)

    update_seeker_or_recruiter_status
    @match.status = "accepted" if @match.status_seeker == "accepted" && @match.status_recruiter == "accepted"
    @match.save

    redirect_to swipe_path(current_user, profile_id)
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

  def check_match(posting_id, profile_id)
    Match.where(profile_id: profile_id, posting_id: posting_id)
  end

  def update_seeker_or_recruiter_status
    if current_user.company_id.nil?
      @match.status_seeker = "accepted"
    else
      @match.status_recruiter = "accepted"
    end
  end
end
