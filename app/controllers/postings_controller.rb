class PostingsController < ApplicationController
  def index
    @postings = Posting.all
  end

  def new
    @posting = Posting.new
  end

  def create
    @posting = Posting.new(posting_params)
    clean_array_items
    @posting.company = current_user.company

    if @posting.save
      redirect_to postings_path
    else
      render :new
    end
  end

  def edit
    @posting = Posting.find(params[:id])
    render :new
  end

  def update
    @posting = Posting.find(params[:id])

    if @posting.update(posting_params)
      clean_array_items
      @posting.save
      redirect_to postings_path
    else
      render :edit
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
    arr.reject(&:empty?)
  end

  def clean_array_items
    @posting.languages = delete_empty_items(@posting.languages)
    @posting.locations = delete_empty_items(@posting.locations)
    @posting.contract_types = delete_empty_items(@posting.contract_types)

    @posting.languages = escape_spaces(@posting.languages)
    @posting.locations = escape_spaces(@posting.locations)
    @posting.contract_types = escape_spaces(@posting.contract_types)
  end

  def escape_spaces(arr)
    arr.map do |item|
      item.gsub(/\s/, "\s")
    end
  end
end
