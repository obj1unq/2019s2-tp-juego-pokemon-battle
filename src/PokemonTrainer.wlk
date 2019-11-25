import Pokemon.*
import wollok.game.*

class PokemonTrainer {
	const property name
	  var property pokemonDeTurno
	  var  pokemons = []
	  var property image
	  var property position
	  
	  method elegirPokemon(pokemon) {
	  	game.removeVisual(pokemonDeTurno)
	  	pokemonDeTurno = pokemon
	  	game.addVisual(pokemon)
	  	
	  }
	  
	  method sacarPokemon() {
	  	 if(pokemonDeTurno.hp() <= 0) { game.removeVisual(pokemonDeTurno) }
	  }
	
}

    const may = new PokemonTrainer(name = "May",
    	                           pokemonDeTurno = blaziken,
		                           pokemons =[blaziken],		
	                               image = "RS_May_Back.png",
	                               position = game.at (1,0)
	                               )


	const brendan = new PokemonTrainer (name = "Brendan",
		                                pokemonDeTurno = sceptile,
		                                pokemons = [sceptile],
		                                image = "Spr_Rs_Brendan.png",
	                                    position = game.at (4,1)
	                                    )
	                                    
	                                    
