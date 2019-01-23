require 'model'
require 'view'
require 'router'
require 'pry'

class Controller
  attr_reader :content, :author
  #@view = View.new
  def initialize
    @view = View.new
  end


  def create_gossip
   # Gossip.new
   params = @view.create_gossip
   gossip = Gossip.new(params[:content], params[:author]) #pour le moment, le contenu du gossip est en dur dans le code. L'utilisateur ne peut pas le changer.
   gossip.save
  end  
  
end
#binding.pry