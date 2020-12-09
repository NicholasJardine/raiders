class PagesController < ApplicationController
    skip_before_action :authenticate_user!
    before_action :authenticate_admin!, only: [:not] # `only` part if applicable


  def home
    @user = current_user
    @drinks = Drink.all
  end



    def not
      @user= current_user
       @drinks = Drink.all
    end
end
