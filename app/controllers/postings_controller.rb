class PostingsController < ApplicationController

  def index
    @postings = Posting.all
  end

  def new
    @posting = Posting.new
  end

  def create
    @posting = Posting.new(posting_params)
    @posting.company = current_user.company

    raise
    if @posting.save
      redirect_to postings_path
    else
      render :new
    end
  end

  private

  def posting_params
    params.require(:posting).permit(
      :field,
      :job_title,
      :contract_types,
      :experience,
      :languages,
      :locations,
      :description,
      :salary_max
    )
  end
end
