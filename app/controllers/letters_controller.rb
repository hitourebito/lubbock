class LettersController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @letters = current_user.letters.last
    @friend_point = current_user.letters.count
  end

  def new
  end

  def create
    Letter.create(habit: letter_params[:habit], user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end


  private
  def letter_params
    params.permit(:habit)
  end
end
