module aptosz3::cadenas {
    use std::debug::print;
    use std::string_utils::debug_string;
    use std::string::{String, utf8};

    struct Person has copy, drop {
        last_name: String,
        name: String,
        occupation: String,
        school: String,
    }

    struct Class has copy, drop {
        subject: String,
        professor: Person,
        classroom: u64,
    }

    struct School has drop {
        name: String,
        school_address: String,
        professor_1: Person,
        professor_2: Person,
        class_1: Class,
        class_2: Class,
        buildings: u16,
    }

    fun actividad() {
        let celebrity = Person {
            last_name: utf8(b"Zhou"),
            name: utf8(b"Xun"),
            occupation: utf8(b"Actriz, cantante"),
            school: utf8(b"Zhejiang Art School"),
        };

        print(&debug_string(&celebrity));



        let prof_garcia_ma = Person {
            last_name: utf8(b"Garcia"),
            name: utf8(b"Maria"),
            occupation: utf8(b"Profesora"),
            school: utf8(b"Colegio Buenavista"),
        };

        let prof_perez_carlos = Person {
            last_name: utf8(b"Perez"),
            name: utf8(b"Carlos"),
            occupation: utf8(b"Profesor"),
            school: utf8(b"Colegio Buenavista"),
        };



        let ingles_1 = Class {
            subject: utf8(b"Ingles 1"),
            professor: prof_perez_carlos,
            classroom: 101u64,
        };
        
        let historia_1 = Class {
            subject: utf8(b"Historia 1"),
            professor: prof_garcia_ma, 
            classroom: 110u64,
        };


 
        let colegio_buenavista = School {
            name: utf8(b"Colegio Buenavista"),
            school_address: utf8(b"Avenida Siempre Viva 456"),
            professor_1: copy prof_garcia_ma,
            professor_2: copy prof_perez_carlos,
            class_1: copy historia_1,
            class_2: copy ingles_1,
            buildings: 7u16,
        };

        print(&debug_string(&colegio_buenavista));
    }

    #[test]
    fun prueba() {
        actividad();
    }
}
