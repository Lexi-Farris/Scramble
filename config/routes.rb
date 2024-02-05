Rails.application.routes.draw do

get "/points" => "points#index"
get "/points/:id" => "points#show"

end
