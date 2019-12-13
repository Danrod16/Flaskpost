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

  private

  def set_match
    @match = Match.find(params[:id])
  end

  def retrieve_matches(array)
    array.each do |p_or_p|
      p_or_p.matches.each do |match|
        @matches << match if match.status == "accepted"
      end
    end
  end
end
