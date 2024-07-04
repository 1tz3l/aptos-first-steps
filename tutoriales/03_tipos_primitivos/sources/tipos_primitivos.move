module aptosz3::tipos_primitivos {
    use std::debug::print;

    // Declara 1 valor entero constante con cualquier valor que quieras.
    const INTEGER_VALUE: u8 = 77;

    fun actividad () {
        // Declara 1 variable entera con cualquier valor que quieras.
        let any_value: u8 = 33;
        
        // Imprime ambos numeros.
        print(&INTEGER_VALUE);
        print(&any_value);

        // Declara una variable que compare si estos numeros son iguales.
        let value_comparison = INTEGER_VALUE == any_value;

        // Declara una variable que compare si el 1er numero es mayor que el segundo.
        let bigger_than_comparison = INTEGER_VALUE > any_value;

        // Declara una variable que compare si las 2 comparaciones anteriores son verdaderas.
        let both_comparisons = value_comparison && bigger_than_comparison;

        // Imprime el resultado de esta ultima variable.
        print(&both_comparisons);
    }

    #[test]
    fun prueba() {
        actividad();
    }
}
