class UserWordsController < ApplicationController

  def index
    @user_words = UserWord.all 
    render :index 
  end
  
end
