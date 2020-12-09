class DashboardsController < ApplicationController

  def show
    @user = current_user
    @covid_forms = CovidForm.where(user_id: @user.id)
    @flagged_players = @covidforms.where(status: "Flagged")

  end
end
