class ActorsController<ApplicationController
  def index
@list_of_actors=Actor.all

    render({:template=>"actors_templates/index.html.erb"})
  end

  def actor_details
    actor_id=params.fetch("an_id")

    @the_actor=Actor.where({ :id => actor_id}).first

    @performances=Character.where({ :actor_id => @the_actor.id})
    
    render({:template=>"actors_templates/show.html.erb"})
  end
end