class PostingsController < ApplicationController

  def index
    @postings = Posting.all
  end

  def new
    @posting = Posting.new
  end
end
