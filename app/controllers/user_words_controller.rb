class UserWordsController < ApplicationController

  def index
    @user_words = UserWord.all 
    render :index 
  end

  def show
    @user_word = UserWord.find_by(id: params[:id])
    render :show
  end

end
