import wollok.game.*

object suJuegoDebe {
	method tenerPolimorfismo() {
		return 'y no repetir lógica!'
	}
}


object may {
	var property position = game.origin()	
	
	method image() {return "RS_May_Back.png"}
}

object brendan {
	var property position = game.at(4,4)
	
	method image() {return "Spr_Rs_Brendan.png"}
	
	
}

object batalla {
	method inicio() {
		game.addVisual(may)
		game.addVisual(brendan)
	}
}