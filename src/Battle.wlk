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
 
 method pelear(ataque,ataque2) {
	//TODO: Tal vez sea mejor decirle al ataque que efectivamente ataque (cambiar la responsabilidad)
    blaziken.atacar(ataque,sceptile)
    sceptile.saleSiEsDerrotadoPor(blaziken,1500,2000)
    sceptile.atacar(ataque2,blaziken)
    blaziken.saleSiEsDerrotadoPor(sceptile,2500,3000)
 }
 
}



object config {
	
	method configurarTeclas() {
		
		// Ataques de blaziken 
		keyboard.a().onPressDo({ battle.pelear(blaziken.primerAtaque(),sceptile.primerAtaque()) })
		keyboard.b().onPressDo({ battle.pelear(blaziken.segundoAtaque(),sceptile.segundoAtaque()) })
		keyboard.c().onPressDo({ battle.pelear(blaziken.tercerAtaque(),sceptile.tercerAtaque()) }) 
		keyboard.d().onPressDo({ battle.pelear(blaziken.ultimoAtaque(),sceptile.ultimoAtaque()) }) 
	}
}


   
   
   
