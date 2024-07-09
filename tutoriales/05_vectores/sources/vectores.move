module aptosz3::vectores {
    use std::debug::print;

    fun actividad() {
        let matrix: vector<vector<u16>> = vector[
            vector[25, 98, 34],
            vector[48, 23, 83],
            vector[93, 67, 57],
        ];

        print(&matrix);
    }

    #[test]
    fun prueba() {
        actividad();
    }
}
