class ProfileStepsController < ApplicationController
  include Wicked::Wizard
  steps :first, :second, :third

  def show
    render_wizard
  end
end
