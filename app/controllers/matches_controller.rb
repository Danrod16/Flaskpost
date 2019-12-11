class MatchesController < ApplicationController
  def index
    #-----get all matches for a seeker-----
    # get all profiles of the user
    # get all matches of all profiles of the user
    @matches = []

    profiles = current_user.profiles
    profiles.each do |profile|
      profile.matches.each do |match|
        @matches << match
      end
    end
  end
end
