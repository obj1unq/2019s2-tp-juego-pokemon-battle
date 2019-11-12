import PokemonTrainer.*
import Pokemon.*
import Attacks.*
import wollok.game.*

object battle {

  method begin() {
	game.addVisual(may) 
	game.addVisual(brendan)
  }	
  
 method rivalSendsPokemon() {
 	game.schedule(2000,{=> game.removeVisual(brendan)} )
 	game.schedule(2500,{=> game.addVisualIn(brendan, game.at(5,1))})
 	game.schedule(3000,{=> game.removeVisual(brendan)} )
 	game.schedule(3500,{=> game.addVisual(sceptile)})
 	}
	
 method playerSendsPokemon() {
 	game.schedule(4000,{=> game.removeVisual(may)} )
 	game.schedule(4500,{=> game.addVisualIn(may, game.at(0,0))})
 	game.schedule(5000,{=> game.removeVisual(may)} )
 	game.schedule(5500,{=> game.addVisual(blaziken)})
 }
}



object config {
	
	method configurarTeclas() {
		keyboard.a().onPressDo({ blaziken.atacar(blazeKick, sceptile) })
		keyboard.b().onPressDo({ blaziken.atacar(highJumpKick, sceptile) })
		keyboard.c().onPressDo({ bulkUp.atacar(blazeKick, sceptile) })
	}
}

/*  En el metodo begin,  agregue el configurar teclas del objeto config.
   Falta completar el methodo configurar teclas */
   
   
   
   
