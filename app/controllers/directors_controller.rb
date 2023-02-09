class DirectorsController < ApplicationController
  def index
    @list_of_directors = Director.all
    
    render({:template => "directors_templates/index.html.erb"})
  end

  def wisest
    @oldest_director = Director.where.not({:dob => nil}).order({:dob=> :asc}).at(0)

    render({:template => "directors_templates/eldest.html.erb"})
  end

  def young
    @youngest_director = Director.where.not({:dob => nil}).order({:dob=> :desc}).at(0)
    render({:template => "directors_templates/youngest.html.erb"})
  end

  def director_details
    #params hash
    the_id= params.fetch("an_id")

    @the_director=Director.where({ :id=>the_id}).first

    @filmography=Movie.where({ :director_id=> @the_director.id})
    
    render({:template => "directors_templates/show.html.erb"})

  end
end
