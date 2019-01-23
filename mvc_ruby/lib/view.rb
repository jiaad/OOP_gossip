require 'controller'
require 'router'
require 'model'


class View
  attr_reader :author , :content
  def create_gossip
      puts "ton nom"
      @nom_view = gets.chomp.to_s
      puts "ton gossip?"
      @gossip_view = gets.chomp.to_s
    
     params = {content:@nom_view, author:@gossip_view}
  end
end