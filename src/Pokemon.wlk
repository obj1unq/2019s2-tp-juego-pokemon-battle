import Attacks.*
import wollok.game.*
class Pokemon {
	const property  name
	  var property  hp 
	  var property  attack 
	  var property  defense 
	  var property  speed 
	const property attacks = []
	  var property image
	  var property position
	
}


   const blaziken = new Pokemon(name = "Blaziken",
		                         hp = 364, 
		                         attack = 372, 
		                         defense = 262, 
		                         speed = 284, 
		                         attacks = [blazeKick, highJumpKick, bulkUp, braveBird],
		                         image ="Blaziken-Back.png",
		                         position = game.at(1,0))


	const sceptile = new Pokemon (name = "Sceptile",
		                          hp = 344,
		                          attack = 339,
		                          defense = 295,
		                          speed = 372,
		                          attacks = [leafStorm, dragonPulse, leechSeed, earthquake ],
                                  image = "Sceptile.png",
                                  position = game.at(4,1))
