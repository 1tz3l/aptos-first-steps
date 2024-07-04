module aptosz3::condicionales {
    use std::debug::print;
    use std::string::utf8;

    // Crea una constante de error con el valor que desees para indicar que el usuario es menor de edad
    const EAccess_denied_under_age: u64 = 1;

    fun actividad() {
        // Crea una variable que represente una edad
        let user_age = 22;

        let user_access = user_age >= 18;
        if (!user_access) {
            abort(1)
        } else {
            print(&utf8(b"Acceso concedido, eres mayor de edad"));
        };

        // Assert
        assert!(user_access, 1);

        // Codigos de error
        assert!(user_access, EAccess_denied_under_age);
    }

    #[test]
    fun prueba() {
        actividad();
    }
}
