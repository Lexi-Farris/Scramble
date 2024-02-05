class UserWordsController < ApplicationController

  def index
    @user_words = UserWord.all 
    render :index 
  end

  def show
    @user_word = UserWord.find_by(id: params[:id])
    render :show
  end

  def create
    @user_word = UserWord.create(
      word: params[:word],
      word_value: params["word_value"],
    )
    render :show
  end

end
