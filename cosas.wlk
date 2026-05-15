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

    method misilesSiONo(){
        tieneMisiles= !tieneMisiles
    }

    method peso(){
        
    }
}