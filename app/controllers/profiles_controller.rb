class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(params_profile)

    if @profile.save
      redirect_to profiles
    else
      render :new
    end
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update(params_profile)
    redirect_to profiles
  end

  def swipe
  end

  private

  def params_profile
    params.require(:profile).permit(:field, :job_title, :contract_types, :experience, :languages, :locations, :description, :salary_max, :salary_min)
  end
end
