class UsersController < ApplicationController

  def show
    @letters = current_user.letters.all
  end

end
