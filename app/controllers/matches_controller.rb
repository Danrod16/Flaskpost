class MatchesController < ApplicationController
  before_action :set_match, only: [:show]

  def index
    @matches = []

    if current_user.company.nil?
      # -----get all matches for a seeker-----
      retrieve_matches(current_user.profiles)
    else
      #-----get all matches for a recruiter-----
      retrieve_matches(current_user.company.postings)
    end
  end

  def show
  end

  def create
    profile_id = match_params[:profile_id]
    posting_id = match_params[:posting_id]

    if check_match(posting_id, profile_id)
      @match = check_match(posting_id, profile_id)
      @match.status = "accepted"
      @match.save
    else
      @match = Match.new(match_params)
      @match.save
  end

  private

  def match_params
    params.require(:match).permit(:profile_id, :posting_id)
  end

  def set_match
    @match = Match.find(params[:id])
  end

  def retrieve_matches(arr)
    arr.each do |profile_or_posting|
      profile_or_posting.matches.each do |match|
        @matches << match if match.status == "accepted"
      end
    end
  end

  def check_match
    Match.where(profile_id: profile_id, posting_id: posting_id)
end
