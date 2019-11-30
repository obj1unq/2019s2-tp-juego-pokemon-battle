import Attacks.*
import wollok.game.*

class Pokemon {

	const property name
	var property hp
	var property attack
	var property defense
	const property attacks = []
	var property image
	var property position

	method primerAtaque() {
		return attacks.get(0)
	}

	//TODO: Revisar, es un método de consulta, no debería tener efecto
	method segundoAtaque() {
	  return attacks.get(1)
	}

	method tercerAtaque() {
	  return  attacks.get(2)
	}

	method ultimoAtaque() {
	  return attacks.get(3)
	}

	method atacar(ataque, pokemon) {
		if (self.hp() > 0) {
		  ataque.formulaDeDanio(self,pokemon)
		}
	}

	
	method saleSiEsDerrotadoPor(rival,tiempo,tiempo2) {
		if( self.hp() <= 0 ) {
			game.schedule(tiempo, {=> game.removeVisual(self)})
		} 
		else {
		  self.serGolpeadoPor(rival,tiempo,tiempo2)
		}
	}

	method recibirDanio(cantidad) {
		hp = hp - cantidad
	}
	
	method serGolpeadoPor(rival,lapzo,otroLapzo) {
		if(rival.hp() > 0) {
		game.schedule(lapzo, {=> game.removeVisual(self)})
		game.schedule(otroLapzo, {=> game.addVisual(self)})
	 }
   }

}

class FoePokemon inherits Pokemon {

}

const blaziken = new Pokemon(name = "Blaziken", hp = 364, attack = 372, defense = 230, attacks = [ blazeKick, highJumpKick, bulkUp, braveBird ], image = "Blaziken-Back.png", position = game.at(1, 0))
const sceptile = new FoePokemon(name = "Sceptile", hp = 344, attack = 325, defense = 310, attacks = [ leafStorm, dragonPulse, leechSeed, earthquake ], image = "Sceptile.png", position = game.at(4, 1))






