class MatchesController < ApplicationController
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

  private

  def retrieve_matches(arr)
    arr.each do |profile_or_posting|
      profile_or_posting.matches.each do |match|
        @matches << match
      end
    end
  end
end
