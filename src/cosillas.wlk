import wollok.game.*

class PokemonTrainer {
	var property pokemon = []
	method position() {return game.at(0,0)}
	method image() { return ""}
}

object may {
	const may = new PokemonTrainer(pokemon = [blaziken] )
	
	method	position() {return  game.at (1,0)}		
	method  image() {return "RS_May_Back.png"}
}

object brendan {
	const brendan = new PokemonTrainer (pokemon = [sceptile] )
	
	method 	position() { return game.at (4,1) }
	method  image() {return "Spr_Rs_Brendan.png"}
	
	
}

class Pokemon {
	var property  hp = 0
	var property  attack = 0
	var property  defense = 0
	var property  speed = 0
	const property attacks = []
	
	method image() { return ""}
	method position() {return game.at(0,0)}
	 
}

object blaziken {
	const blaziken = new Pokemon(hp = 364, 
		                         attack = 372, 
		                         defense = 262, 
		                         speed = 284, 
		                         attacks = [blazeKick, highJumpKick, bulkUp, braveBird])
		                         
    method image() { return "Blaziken-Back.png"}
    method position() {return game.at(1,0)}
}

object sceptile {
	const sceptile = new Pokemon (hp = 344,
		                          attack = 339,
		                          defense = 295,
		                          speed = 372,
		                          attacks = ["Leaf storm", "Dragon pulse", "Leech seed", "Earthquake" ])
   
   method image() {return "Sceptile.png"}
   method position() { return game.at(4,1)}
}

class Attack {
	const property name = ""
	const property power = 0
	const property type = ""
	const property effect = 0
	var property accuracy = 0
	
}

object blazeKick {
	const blazeKick = new Attack (name = "Blaze kick", 
	                               power = 85,
	                               type = "Fire",
	                               effect = "",
	                               accuracy = 90
	                               )
}

object highJumpKick {
	const highJumpKick = new Attack (name = "High jump kick",
                                     power = 130,
                                     type = "Fighting",
                                     effect = 0,
                                     accuracy = 90
                                     )		
	
}

object bulkUp {
	const bulkUp = new Attack (name = "Bulk up",
		                       power = 0,
		                       type = "Fighting",
		                       effect = self.attack *0.5 && self.defense*0.5,
		                       accuracy = 100
		                       )	
}

object braveBird {
	const braveBird = new Attack (name = "Brave bird",
		                          power = 120,
		                          type = "Flying",
		                          effect = /* 1/3 of damage done*/,
		                          accuracy = 100
		                          )
}

object leafStorm {
	const leafStorm = new Attack (name = "Leaf storm",
		 						  power = 130, 
		 						  type = "Grass",
		 						  effect = self.attack * 1/4,
		 						  accuracy = 90
		 						  )
}

object dragonPulse {
	const dragonPulse = new Attack (name = "Dragon Pulse",
		                            power = 95,
		                            type = "Dragon",
		                            effect = 0,
		                            accuracy = 100 
		                            )	
}

object leechSeed {
	const leechSeed = new Attack (name = "Leech seed",
		                          power = 0,
		                          type = "Grass",
		                          effect = /*foe.hp= foe.hp*1/8 && self.hp += foe.hp*1/8*/,
		                          accuracy = 90
		                          )
}

object earthquake {
	const earthquake = new Attack (name = "Earthquake",
		                           power = 100,
		                           type = "Ground",
		                           effect = 0,
		                           accuracy = 100
		                           ) 	
}

object batalla {
	method inicio() {
		game.addVisual(blaziken)
		game.addVisual(sceptile)
	}
}