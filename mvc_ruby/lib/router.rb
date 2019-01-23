require 'controller'

class Router
  def initialize
    @controller = Controller.new
  end #ainsi, un "Router.new" lancé par app.rb va créer automatique une instance "@controller"

  def perform #rappelle-toi que l'on fait "Router.new.perform" dans app.rb => après initialize, on définit perform.
    puts "bienvenue dand THE GOSSIP PROJECT"
    while true
      #on affiche le menu

      puts "Tu veux faire quoi BG"
      puts "1. je veux créer un gossip"
      puts "4. Je veux quitter l'app"
      params = gets.chomp.to_i

      case params  #en fonction du choix
        when 1
        puts "tu as choisi de creer un gossip"
        @controller.create_gossip
        when 4
        puts "A bientot"
        break #ce "break" permet de sortir de la boucle while. C'est même la seule façon d'en sortir. 
      else
        puts "ce choix n'existe pas merci de ressayer"  #si l'utilisateur saisit une entrée non prévue, il retourne au début du "while true". C'est pour ça que la boucle est infinie: potentiellement, il peut se gourer jusqu'à la fin des temps :)
      end
    end
  end
end
