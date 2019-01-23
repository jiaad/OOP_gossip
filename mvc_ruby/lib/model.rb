require 'router'
require 'controller'
require 'csv'

class Gossip
  attr_reader :author , :content

  def initialize(author ,content)
    @content = content
    @author = author
  end

  def save
    File.open('./db/gossip.csv', 'a') do |csv|
      csv << [@author, @content].join(' , ')
    end
  end
end
  
  

my_gossip = Gossip.new("author" , "content")  #=> Créé une instance de potin, sauvergardée juste dans cette variable
my_gossip.save  #=> Sauvegarde l'instance de potin dans le CSV correspondant, en créant une nouvelle ligne dans mon fichier CSV