 import Attacks.*
import wollok.game.*

class Pokemon {
	const property  name
	  var property  hp 
	  var property  attack 
	  var property  defense 
	  var property  speed 
	  var property level 
	const property attacks = []
	  var property image
	  var property position
	  
	  
	 method atacar(ataque,pokemon) {
	 	if( damage.damage(self,ataque,pokemon) >= pokemon.hp() ) {
	 	  game.schedule(2000,{=> game.removeVisual(pokemon)} )
	 	  ataque.effect(self)
	 	}
	 	else {
	 		   pokemon.recibirDanio(damage.damage(self,ataque,pokemon)) 
	 		   game.schedule(1500,{=> game.removeVisual(pokemon)} )
	 		   game.schedule(2000,{=> game.addVisual(pokemon)} )
	 		   ataque.effect(self)
	 	}
	 }
	
	  method recibirDanio(cantidad) {
	  	 hp = hp - cantidad
	  }
}


class FoePokemon inherits Pokemon {
	
}


   const blaziken = new Pokemon(name = "Blaziken",
		                         hp = 364, 
		                         attack = 372, 
		                         defense = 262, 
		                         speed = 284, 
		                         level = 5,
		                         attacks = [blazeKick, highJumpKick, bulkUp, braveBird],
		                         image ="Blaziken-Back.png",
		                         position = game.at(1,0))


const sceptile = new FoePokemon (name = "Sceptile",
		                          hp = 344,
		                          attack = 339,
		                          defense = 295,
		                          speed = 372,
		                          level = 7,
		                          attacks = [leafStorm, dragonPulse, leechSeed, earthquake ],
                                  image = "Sceptile.png",
                                  position = game.at(4,1))
                                  
  // intente hacer de nuevo el de atacar. Hay que separarlo en metodos mas chicos
  // sceptile como FoePokemon
