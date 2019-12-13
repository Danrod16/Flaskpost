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

  def create
    profile_id = params[:profile_id]
    posting_id = params[:posting_id]

    if check_match(posting_id, profile_id).empty?
      @match = Match.new(profile_id: profile_id, posting_id: posting_id)
    else
      @match = check_match(posting_id, profile_id)[0]
      @match.status = "accepted"
    end
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
end
