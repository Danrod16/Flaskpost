class BuildController < ApplicationController
  include Wicked::Wizard

  steps :first, :second, :third

  def show
    @profile = Profile.find(params[:profile_id])
    render_wizard
  end

  def update
    @profile = Profile.find(params[:profile_id])
    params[:profile][:status] = 'active' if step == steps.last
    params[:profile][:user_id] = current_user.id if step == steps.last
    @profile.update_attributes(profile_params)
    render_wizard @profile
  end

  def create
    @profile = Profile.create
    redirect_to wizard_path(steps.first, profile_id: @profile.id)
  end

  private

  def profile_params
    params.require(:profile).permit(
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
