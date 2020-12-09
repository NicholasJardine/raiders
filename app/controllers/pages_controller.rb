class PagesController < ApplicationController
    skip_before_action :authenticate_user!
    before_action :authenticate_admin!, only: [:team_records] # `only` part if applicable


  def home
    @user = current_user
    @drinks = Drink.all
  end



    def not_here
      @user= current_user
       @drinks = Drink.all
    end

        def team_records
      @user= current_user
       @drinks = Drink.all
       @flags = Flag.all
       @flags_with_dates = @flags.group_by(:date)
    end

private

  def authenticate_admin!
  authenticate_user!
  redirect_to "not_here", status: :forbidden unless current_user.admin?
end

end
