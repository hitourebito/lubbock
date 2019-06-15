class UsersController < ApplicationController

  def show
    @managements = current_user.letters.all
  end

end
