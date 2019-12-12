class ProfilesController < ApplicationController
  include Wicked::Wizard

  steps :first, :second, :third

  # def index
  #   @profiles = Profile.all
  # end

  # def edit
  #   @profile = Profile.find(params[:id])
  # end

  def show
    @profile = Profile.find(params[:profile_id])
    render_wizard
  end

  def update
    @profile = Profile.find(params[:profile_id])
    test_value = step
    params[:profile][:status] = 'active' if test_value == steps.last
    params[:profile][:user_id] = current_user.id if test_value == steps.last
    if @profile.update_attributes(profile_params) && test_value == steps.last
      redirect_to new_profile_path
    else
      render_wizard @profile
    end
  end

  def create
    @profile = Profile.create
    redirect_to wizard_path(steps.first, profile_id: @profile.id)
  end

  private

  def profile_params
    params.require(:profile).permit(
      :user_id,
      :field,
      :job_title,
      :experience,
      :description,
      :salary_max,
      :salary_min,
      :status,
      languages: [],
      locations: [],
      contract_types: []
    )
  end
end
