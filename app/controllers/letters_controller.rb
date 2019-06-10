class LettersController < ApplicationController
  def index
    @letter = Letter.last
  end

  def new
  end

end
