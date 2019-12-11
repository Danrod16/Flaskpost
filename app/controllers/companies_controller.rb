class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end

  def create
    raise "You already have a company assigned" unless current_user.company.nil?

    @company = Company.new(company_params)

    if current_user.company.nil?
      if @company.save
        set_company_id_in_user
        redirect_to "/"
      else
        render :new
      end
      # raise error
    end
  end

  private

  def company_params
    params.require(:company).permit(:name, :address)
  end

  def set_company_id_in_user
    current_user.company = @company
    current_user.save
  end
end
