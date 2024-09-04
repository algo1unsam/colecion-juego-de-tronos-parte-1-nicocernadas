//DAENERYS
object daenerys{
    var property objetos = []
    var cantidad = 0

    //Agarra hasta maximo 2 objetos
    method agarrar(objeto) {
        if (cantidad < 2) {
            objetos.add(objeto)
            cantidad += 1
        } else {
            console.println('Mochila llena')
        }
    }

    //Deposita los elementos en objetos() en roca_dragon.objetos() y limpia la lista, resetea la cantidad
    method depositar(lugar, lista) {
        lugar.guardados(lista)
        lista.clear()
        cantidad = 0
    }

    //Devuelve una lista con los objetos depositados en roca_Dragon + los que tiene daenerys encima,
    //Osea el total de objetos
    method artefactos() {
        return roca_dragon.objetos() + self.objetos()
    }

    //Devuelve si daenerys tiene encima un artefacto en particular
    method artefacto(_artefacto) {
        return self.objetos().contains(_artefacto)
    }
}

//ROCA DRAGON
object roca_dragon {
    var property objetos = []
    
    //Guarda en la lista de objetos de roca_dragon los objetos de la lista de daenerys
    //Este metodo se autollama en daenerys.depositar()
    method guardados(lista) {
        objetos += lista
    }

    //Devuelve si hay un artefacto en particular en roca_dragon.objetos()
    method artefacto(_artefacto) {
        return self.objetos().contains(_artefacto)
    }
}

//OBJETOS
object espada_dragon {}
object libro_magia_ancestral {}
object collar_fuego {}
object armadura_valyrio {}