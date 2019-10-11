import wollok.game.*

object suJuegoDebe {
	method tenerPolimorfismo() {
		return 'y no repetir lógica!'
	}
}


object may {
	var property position = game.at(1,0)	
	
	method image() {return "RS_May_Back.png"}
}

object brendan {
	var property position = game.at(4,1)
	
	method image() {return "Spr_Rs_Brendan.png"}
	
	
}

class Pokemon {
	var property  health = 0
	var property  attack = 0
	var property  defense = 0
	var property  speed = 0
	const property attacks = []
	
	method image() { return ""}
	method position() {return game.at(0,0)}
	
	
	
	
	 
}

object blaziken {
	const blaziken = new Pokemon(health = 364, 
		                         attack = 372, 
		                         defense = 262, 
		                         speed = 284, 
		                         attacks = ["Blaze kick", "High jump kick", "Bulk up", "Brave bird"])
		                         
    method image() { return "Blaziken-Back.png"}
    method position() {return game.at(1,0)}
}

object sceptile {
	const sceptile = new Pokemon (health = 344,
		                          attack = 339,
		                          defense = 295,
		                          speed = 372,
		                          attacks = ["Leaf storm", "Dragon pulse", "Leech seed", "Earthquake" ])
   
   method image() {return "Sceptile.png"}
   method position() { return game.at(4,1)}
}

object batalla {
	method inicio() {
		game.addVisual(blaziken)
		game.addVisual(sceptile)
	}
}