Rails.application.routes.draw do
  #directors
  get("/directors", { :controller => "directors", :action => "index" })
  get("/directors/eldest", { :controller => "directors", :action => "wisest" })
  get("/directors/youngest", { :controller => "directors", :action => "young" })
  get("/directors/:an_id", { :controller => "directors", :action => "director_details" })
  get("/", { :controller => "application", :action => "homepage" })

#movies
get("/movies", { :controller => "movies", :action => "index" })
get("/movies/:an_id", { :controller => "movies", :action => "movie_details" })
  
#actors
get("/actors", { :controller => "actors", :action => "index" })
get("/actors/:an_id", { :controller => "actors", :action => "actor_details" })
  

end
