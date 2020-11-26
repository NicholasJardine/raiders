class PagesController < ApplicationController
    skip_before_action :authenticate_user!

  def home
    @drinks = Drink.all
  end
end
