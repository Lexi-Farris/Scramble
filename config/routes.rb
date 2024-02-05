Rails.application.routes.draw do

get "/points" => "points#index"
get "/points/:id" => "points#show"

get "/user_words" => "user_words#index"


end
