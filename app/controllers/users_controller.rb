class UsersController < ApplicationController
  before_action :authenticate_user!, except: %i[home]

  def home
    # binding.pry
  end
end
