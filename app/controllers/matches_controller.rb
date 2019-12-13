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
end
