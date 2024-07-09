module aptosz3::cadenas {
    use std::debug::print;
    use std::string_utils::debug_string;
    use std::string::{String, utf8, append};

    struct Poem has drop {
        line1: String,
        line2: String,
        line3: String,
        line4: String,
    }

    fun actividad() {
        // Amistad, de Carlos Castro Saavedra
        let poem = Poem {
            line1: utf8(b"Amistad es lo mismo que una mano"),
            line2: utf8(b"que en otra mano apoya su fatiga"),
            line3: utf8(b"y siente que el cansancio se mitiga"),
            line4: utf8(b"y el camino se vuelve mas humano."),
        };
        
        print(&debug_string(&poem));
    }

    fun actividad2() {
        let line1 = utf8(b"Amistad es lo mismo que una mano");
        let line2 = utf8(b"\nque en otra mano apoya su fatiga");
        append(&mut line1, line2);

        let line3 = utf8(b"\ny siente que el cansancio se mitiga");
        append(&mut line1, line3);

        let line4 = utf8(b"\ny el camino se vuelve mas humano.");
        append(&mut line1, line4);
        print(&line1);
    }

    // Pregunta
    // ¿Cual de los dos metodos crees que es mejor y por que?
    // Creo que es mejor usar un struct porque puedes almecenar los datos de una forma mas organizada y facil de leer.


    #[test]
    fun prueba() {
        actividad();
        actividad2();
    }
}
