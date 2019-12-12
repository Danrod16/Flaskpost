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

  def clean_array_items
    @posting.languages = @posting.languages.reject(&:empty?)
    @posting.locations = @posting.locations.reject(&:empty?)
    @posting.contract_types = @posting.contract_types.reject(&:empty?)
  end
end
