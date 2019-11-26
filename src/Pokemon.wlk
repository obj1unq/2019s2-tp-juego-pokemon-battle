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
		return attacks.first()
	}

	//TODO: Revisar, es un método de consulta, no debería tener efecto
	method segundoAtaque() {
		attacks.remove(attacks.first()).first()
	}

	method tercerAtaque() {
		attacks.copyWhitout(attacks.first()).copyWithout(attacks.first()).first()
	}

	method ultimoAtaque() {
		return attacks.last()
	}

	method atacar(ataque, pokemon) {
		if (self.hp() > 0) {
			self.formulaDeDanio(ataque, pokemon)
		}
	}

	method formulaDeDanio(ataque, pokemon) {
		//TODO: Ojo con repetir lógica -> El if antes de tiempo
		if ((self.attack() - pokemon.defense()) > 100) {
			pokemon.recibirDanio(ataque.power() * 2)
		} else {
			pokemon.recibirDanio(ataque.power())
		}
		self.sacarOponenteSiEsDerrotado(pokemon)
	}

	method sacarOponenteSiEsDerrotado(pokemon) {
		if (pokemon.hp() <= 0) {
			game.schedule(3000, {=> game.removeVisual(pokemon)})
		} else {
			game.schedule(3000, {=> game.removeVisual(pokemon)})
			game.schedule(3500, { => game.addVisual(pokemon)})
		}
	}

	method recibirDanio(cantidad) {
		hp = hp - cantidad
	}

}

class FoePokemon inherits Pokemon {

}

const blaziken = new Pokemon(name = "Blaziken", hp = 364, attack = 372, defense = 230, attacks = [ blazeKick, highJumpKick, bulkUp, braveBird ], image = "Blaziken-Back.png", position = game.at(1, 0))
const sceptile = new FoePokemon(name = "Sceptile", hp = 344, attack = 325, defense = 210, attacks = [ leafStorm, dragonPulse, leechSeed, earthquake ], image = "Sceptile.png", position = game.at(4, 1))