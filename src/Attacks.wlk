import Pokemon.*
import wollok.game.*

class Attack {
	const property name 
	const property power 
	const property type 
	
	method formulaDeDanio(pokemon1,pokemon2) {
		//TODO: Ojo con repetir lógica -> El if antes de tiempo
		if( ( pokemon1.attack() - pokemon2.defense() ) > 100 )  {
		   2.times { _ => self.daniarPokemon(pokemon2) } 
		}
		else { self.daniarPokemon(pokemon2) }
	}
	
	
	method daniarPokemon(pokemon) {
	  pokemon.recibirDanio(power * 2) 	
  }  
} 

const blazeKick = new Attack (name = "Blaze kick", 
	                               power = 85,
	                               type = "Fire" 
	                               )


	const highJumpKick = new Attack (name = "High jump kick",
                                     power = 130,
                                     type = "Fighting"
                                     )		
	

	const bulkUp = new Attack (name = "Bulk up",
		                       power = 30,
		                       type = "Fighting"
		                       )	


	const braveBird = new Attack (name = "Brave bird",
		                          power = 120,
		                          type = "Flying"
		                          )



	const leafStorm = new Attack (name = "Leaf storm",
		 						  power = 130, 
		 						  type = "Grass"
		 						  )

	const dragonPulse = new Attack (name = "Dragon Pulse",
		                            power = 95,
		                            type = "Dragon"
		                            )	

	const leechSeed = new Attack (name = "Leech seed",
		                          power = 50,
		                          type = "Grass"
		                          )



	const earthquake = new Attack (name = "Earthquake",
		                           power = 100,
		                           type = "Ground"
		                           ) 	
		                           
		                          
  

                
