class MoviesController < ApplicationController
  def index
    @list_of_movies = Movie.all
    
    render({:template => "movies_templates/index.html.erb"})
  end


  def movie_details
    #params hash
    the_id= params.fetch("an_id")

    @the_movie=Movie.where({ :id=>the_id}).first

  
    
    render({:template => "movies_templates/show.html.erb"})

  end
end
