import Pokemon.*
import wollok.game.*

class PokemonTrainer {
	const property name
	          var  pokemon = []
	  var property image
	  var property position
	
}

    const may = new PokemonTrainer(name = "May",
		                           pokemon =[blaziken],		
	                               image = "RS_May_Back.png",
	                               position = game.at (1,0)
	                               )


	const brendan = new PokemonTrainer (name = "Brendan",
		                                pokemon = [sceptile],
		                                image = "Spr_Rs_Brendan.png",
	                                    position = game.at (4,1)
	                                    )
	                                    
	                                    
