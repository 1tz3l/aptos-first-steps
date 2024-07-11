module cuenta::almacenamiento_global {
    use std::signer;

    struct Contador has key { 
        valor: u64,
        candidato: vector<u8>,
        voto_realizado: bool,
        contador_activo: bool, 
    }



    public entry fun publicar(
        cuenta: &signer, 
        valor: u64, 
        candidato: vector<u8>,
        voto_realizado: bool,
        contador_activo: bool,
        ) {
        let recurso = Contador { valor, candidato, voto_realizado, contador_activo}; 
        move_to(cuenta, recurso)
    }



    #[view]
    public fun obtener_contador(direccion: address): u64 acquires Contador {
        borrow_global<Contador>(direccion).valor
    }

    #[view]
    public fun obtener_candidato(direccion: address): vector<u8> acquires Contador {
        borrow_global<Contador>(direccion).candidato
    }

    #[view]
    public fun obtener_votos_realizados(direccion: address): bool acquires Contador {
        borrow_global<Contador>(direccion).voto_realizado
    }

    #[view]
    public fun obtener_contador_activo(direccion: address): bool acquires Contador {
        borrow_global<Contador>(direccion).contador_activo
    } 
    
    


    public entry fun cambiar_candidato(direccion: address, nuevo_candidato: vector<u8>) acquires Contador {
        let referencia_contador = &mut borrow_global_mut<Contador>(direccion).candidato;
        *referencia_contador = nuevo_candidato
    }

    public entry fun eliminar_candidato(cuenta: &signer) acquires Contador { 
        let contador = move_from<Contador>(signer::address_of(cuenta));
        let Contador { candidato: _ , contador_activo: _ , valor: _ , voto_realizado: _ } = contador;
    }




    public entry fun activar_contador(cuenta: &signer) acquires Contador {
        let referencia_contador = &mut borrow_global_mut<Contador>(signer::address_of(cuenta)).contador_activo;
        *referencia_contador = true
    }

    public entry fun desactivar_contador(cuenta: &signer) acquires Contador {
        let referencia_contador = &mut borrow_global_mut<Contador>(signer::address_of(cuenta)).contador_activo;
        *referencia_contador = false
    }

    #[view]
    public fun estado_contador(direccion: address): bool {
        exists<Contador>(direccion)
    }




    public entry fun incrementar(direccion: address) acquires Contador {
        let referencia_contador = &mut borrow_global_mut<Contador>(direccion).valor;
        *referencia_contador = *referencia_contador + 1
    }

    public entry fun restablecer(cuenta: &signer) acquires Contador {
        let referencia_contador = &mut borrow_global_mut<Contador>(signer::address_of(cuenta)).valor;
        *referencia_contador = 0
    }

    #[view]
    public fun existe(direccion: address): bool { 
        exists<Contador>(direccion) 
    }


    fun eliminar(cuenta: &signer) acquires Contador { 
        let contador = move_from<Contador>(signer::address_of(cuenta));
        let Contador { valor: _ , candidato: _ , contador_activo: _ , voto_realizado: _} = contador;
    }




    public entry fun votar(direccion: address) acquires Contador {
        let referencia_contador = &mut borrow_global_mut<Contador>(direccion).voto_realizado;
        *referencia_contador = true
    }

    #[view]
    public fun voto_finalizado(direccion: address): bool {
        exists<Contador>(direccion)
    }
}
