class PostingsController < ApplicationController

  def index
    @postings = Posting.all
  end

  def new
    @posting = Posting.new
  end

  def create
    @posting = Posting.new(posting_params)

    @posting.languages = delete_empty_items(@posting.languages)
    @posting.locations = delete_empty_items(@posting.locations)
    @posting.contract_types = delete_empty_items(@posting.contract_types)

    @posting.company = current_user.company

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
      :experience,
      :description,
      :salary_max,
      languages: [],
      locations: [],
      contract_types: []
    )
  end

  def delete_empty_items(arr)
    arr.reject { |item| item.empty? }
  end
end
