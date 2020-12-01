class DashboardsController < ApplicationController

  def show
    @user = current_user
    @covid_forms = CovidForm.where(user_id: @user.id)

  end
end
