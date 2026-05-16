import cosas.*
object camion {
    const property carga = []

    method cargarEnElCamion(unaCosa){
        carga.add(unaCosa)
    }

    method descargarDelCamion(unaCosa){
        if (carga.contains(unaCosa)){
            carga.remove(unaCosa)
        }
    }

    method peso(){
        return 1000 + carga.sum({c => c.peso()})
    }

    method laCargaEsPar(){
        //const pesoDeLaCarga=carga.map({c=>c.peso()})
        //return carga.any({c => c.peso()%2==0})
        return self.peso()%2==0
    }

    method devolverLaPrimeraCosaConNivelDePeligro(unNivel){
        return carga.find({c => c.nivel()==unNivel})
    }

    method todosLosQueSuperanAlNivel(unNivel){
        return carga.filter({c=>c.nivel()==unNivel})
    }

    method lasCosasQueSuperanA(unaCosa){
        return carga.filter({c=>c.nivel()>unaCosa.nivel()})
    }

    method seExcedioElPeso(){
        return self.peso()>2500
    }

    method algunoSuperaAlNivel(unNivel){
        return carga.max({c=> c.nivel()})>unNivel
    }

    method puedeCircularEnRuta(unNivel){
        return self.seExcedioElPeso() and self.algunoSuperaAlNivel(unNivel) 
    }

    method tieneUnaCosaEntre_Y_(unPeso, otroPeso){
        return carga.any({c=>c.peso()>unPeso and c.peso()<otroPeso})
    }

    method laMasPesada(){
        return carga.max({c => c.nivel()})
    }

}