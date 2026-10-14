object luisa {
    var personajeActivo = mario

    method cambiarJugador(nuevoPersonaje) {
        personajeActivo = nuevoPersonaje
    }

    method aparece(unElemento) {
        personajeActivo.encontrar(unElemento)
    }
}

object mario {
    var valorRecolectado = 0
    var ultimoElementoEncontrado = aurora

    method clase() = "trabajador"

    method encontrar(unElemento) {
        ultimoElementoEncontrado = unElemento
        valorRecolectado = valorRecolectado + unElemento.puntosQueOtorga()
    }
    method valorRecolectado() = valorRecolectado
    method estaFeliz() = valorRecolectado > 50 || ultimoElementoEncontrado.altura() >= 10
}

object floki {
    var arma = ballesta

    method encontrar(unElemento) {
        if (arma.estaCargada()) {
            unElemento.recibirAtaque(arma.potencia())
            arma.registrarUso()
        }
    }

    method cambiarDeArma(nuevaArma) {
        arma = nuevaArma
    }
}

object ballesta {
    var flechas = 10
    var potencia = 4
    

    method potencia() = 4

    method estaCargada() = flechas > 0

    method registrarUso() {
        flechas = flechas - 1
    }
}

object jabalina {
    var cargada = true
    var potencia = 30

    method potencia() = 30
    method estaCargada() =  cargada 
    method registrarUso() {
        cargada = false
    }
}

object castillo {
    const altura = 20
    var nivelDeDefensa = 150

    method puntosQueOtorga() = nivelDeDefensa / 5

    method nivelDeDefensa() {
        return nivelDeDefensa
    }

    method altura() {
        return altura
    }

    method recibirAtaque(potencia) {
        nivelDeDefensa = nivelDeDefensa - potencia
    }

    method recibirTrabajo() {
        if (nivelDeDefensa + 20 > 200) {
            nivelDeDefensa = 200
        } else {
            nivelDeDefensa = nivelDeDefensa + 20
        }
    }
}

object aurora {
    var estaViva = true
    

    method puntosQueOtorga() = 15

    

    method recibirAtaque(potencia) {
        if (potencia > 10) {
            estaViva = false
        }
    }

    method estaViva() {
        return estaViva
    }

    method recibirTrabajo() {
    }
}

object tipa {
    var altura = 8

    method altura() {
        return altura
    }

    method recibirAtaque(potencia) {
    }

    method recibirTrabajo() {
        altura = altura + 1
    }

    method puntosQueOtorga() = altura * 2
}

