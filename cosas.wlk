object knightRider{
    method peso() {
        return 500
    }
    method nivel(){
        return 10
    }
}

object bumblebee{
    var property estaTransformado = false
    var nivelActual=0 
    method peso(){
        return 800
    }

    method nivel(){
        if (estaTransformado){
            nivelActual=30
        }else{
            nivelActual=15
        }
        
        return nivelActual
    }
}

object ladrillos {
    var property cantidad = 0

    method peso(){
        return cantidad*2
    }

    method nivel(){
        return 2
    }
}

object arena{
    var property peso = 0

    method nivel(){
        return 1
    }
}

object bateriaAntiAerea{
    var tieneMisiles = false
    var peso=200
    method misilesSiONo(){
        tieneMisiles= !tieneMisiles
    }

    method peso(){
        if (tieneMisiles){
            peso=300
        }
        return peso
    }

    method nivel(){
        var peligro=0
        if (tieneMisiles){
            peligro=100
        }
        return peligro
    }

}

object contenederPortuario{
    const cosas=[]

    method agregarCosa(unaCosa){
        cosas.add(unaCosa)
    }

    method quitarCosa(unaCosa){
        cosas.remove(unaCosa)
    }

    method peso(){
        return 100+cosas.sum({c=>c.peso()})
    }

    method nivel(){
        var peligro=0
        if (not cosas.isEmpty()){
            peligro=cosas.max({c=>c.nivel()})
        }
        return peligro.nivel()
    }
}

object residuosRadioactivos{
    var property peso = 0

    method nivel(){
        return 200
    }
}

object embalaje{
    var objetoEmbalado=arena

    method embalarObjeto(unaCosa){
        objetoEmbalado=unaCosa
    }

    method peso(){
        return objetoEmbalado.peso()
    }

    method nivel(){
        return objetoEmbalado.nivel()/2
    }
}