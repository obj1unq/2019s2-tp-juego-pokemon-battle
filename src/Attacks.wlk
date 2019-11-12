import Pokemon.*
import wollok.game.*

class Attack {
	const property name 
	const property power 
	const property type 
	var property effect 
    var property accuracy 
	 
	 method efectoBulkUp(pokemon) {
	  	pokemon.attack(pokemon.attack() * 0.5) 
	  	pokemon.defense(pokemon.defense() * 0.5) 
	  }
} 

const blazeKick = new Attack (name = "Blaze kick", 
	                               power = 85,
	                               type = "Fire",
	                               effect = "",
	                               accuracy = 90
	                               )


	const highJumpKick = new Attack (name = "High jump kick",
                                     power = 130,
                                     type = "Fighting",
                                     effect = 0,
                                     accuracy = 90
                                     )		
	

	const bulkUp = new Attack (name = "Bulk up",
		                       power = 0,
		                       type = "Fighting",
		                       effect =  { pokemon =>  pokemon.attack(pokemon.attack() * 0.5) 
	                                     	           pokemon.defense(pokemon.defense() * 0.5) } ,
		                       accuracy = 100
		                       )	


	const braveBird = new Attack (name = "Brave bird",
		                          power = 120,
		                          type = "Flying",
		                          effect = { pokemon => pokemon.hp( pokemon.hp() - ( pokemon.attack().power() * 1/3 ) ) }
		                          ,
		                          accuracy = 100
		                          )



	const leafStorm = new Attack (name = "Leaf storm",
		 						  power = 130, 
		 						  type = "Grass",
		 						  effect = 0 /* sceptile.attack() * 1/4*/,
		 						  accuracy = 90
		 						  )

	const dragonPulse = new Attack (name = "Dragon Pulse",
		                            power = 95,
		                            type = "Dragon",
		                            effect = 0,
		                            accuracy = 100 
		                            )	

	const leechSeed = new Attack (name = "Leech seed",
		                          power = 0,
		                          type = "Grass",
		                          effect = 0 /*foe.hp= foe.hp*1/8 && self.hp += foe.hp*1/8*/,
		                          accuracy = 90
		                          )



	const earthquake = new Attack (name = "Earthquake",
		                           power = 100,
		                           type = "Ground",
		                           effect = 0,
		                           accuracy = 100
		                           ) 	
		                           
		                          
 object damage {
	method damage(pokemon,attack,foePokemon) {
	 return ( ( ( ( (2* pokemon.level() ) /5 ) +2 ) * attack.power() * (pokemon.attack() /foePokemon.defense())) /50) +2
	}
}
                
/* puse pokemon , foePokemon y attack como parametros en el metodo damage .
 * Tambien cambie el efecto bulkUp haciendo un metodo
 */