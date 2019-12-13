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
  end

  private

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
end
