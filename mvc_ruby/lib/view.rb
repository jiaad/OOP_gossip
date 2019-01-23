require 'controller'
require 'router'
require 'model'


class View
  attr_reader :author , :content
  def create_gossip
    while true
      puts "ton nom"
      @nom_view = gets.chomp.to_s
      puts "ton gossip?"
      @gossip_view = gets.chomp.to_s
    end
    return params = {content: @nom_view, author: @gossip_view}
  end
end