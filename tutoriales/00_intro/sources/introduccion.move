module introduccion::practica_aptos {
    use std::debug::print;
    use std::string::utf8;

    fun practica() {
        print(&utf8(b"MMMMMMMMMMMMMMMMWKkdc;'..          ..';cdkKWMMMMMMMMMMMMMMMM"));
        print(&utf8(b"MMMMMMMMMMMMWXkl,.                        .,lkXWMMMMMMMMMMMM"));
        print(&utf8(b"MMMMMMMMMMXk:.                                .ckXMMMMMMMMMM"));
        print(&utf8(b"MMMMMMMWKo'                               ...    'oKWMMMMMMM"));
        print(&utf8(b"MMMMMMXo.                               .:OX0l.    .oXMMMMMM"));
        print(&utf8(b"MMMMMNd;;;,;;,,,,,,,,,,,,,,,,,,,;;;,,,;lOWMMMW0l;,;;:dXMMMMM"));
        print(&utf8(b"MMMMMWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWWMMMMMMMMMWWWWWWWMMMMM"));
        print(&utf8(b"MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNKXWMMMMMMMMMMMMMMMMMMMMM"));
        print(&utf8(b"MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMNx,.'oXMMMMMMMMMMMMMMMMMMMM"));
        print(&utf8(b"N0kkkkkkkkkkkkkkkkkkkkkkkkkkkkkko,     'okkkkkkkkkkkkkkkkk0N"));
        print(&utf8(b"x.                                                        .x"));
        print(&utf8(b";                              .;;.                        ;"));
        print(&utf8(b".                           .cx0WW0c.                      ."));
        print(&utf8(b"olllllllllllllllllllllllllld0WMMMMMW0olllllllllllllllllllllo"));
        print(&utf8(b"MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"));
        print(&utf8(b"MMMMMMMMMMMMMMMMMMMMMMMXkkXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"));
        print(&utf8(b"MMMMMMMMMMMMMMMMMMMMMXd'  'xXMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"));
        print(&utf8(b"koollloolllllllllollc'      'clllllllllllllllllllllllllllllx"));
        print(&utf8(b"l                                                          c"));
        print(&utf8(b"0'                 .cl;                                   '0"));
        print(&utf8(b"Wx.              .oKWMNk,                                .xW"));
        print(&utf8(b"MW0xxxxxxxxxxxxxkXWMMMMMNOkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk0WM"));
        print(&utf8(b"MMMMMMMMMMMMWWWMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"));
        print(&utf8(b"MMMMMMMMMMXd;,l0WMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"));
        print(&utf8(b"MMMMMMMWKd,    .lOKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKKXWMMMMMMM"));
        print(&utf8(b"MMMMMMMNx'        ................................;kNMMMMMMM"));
        print(&utf8(b"MMMMMMMMWKd,.                                  .,dKWMMMMMMMM"));
        print(&utf8(b"MMMMMMMMMMMN0o,.                            .,o0NMMMMMMMMMMM"));
        print(&utf8(b"MMMMMMMMMMMMMMWKxl;..                  ..;lxKWMMMMMMMMMMMMMM"));
        print(&utf8(b"MMMMMMMMMMMMMMMMMMWKko:'.          .';okKWMMMMMMMMMMMMMMMMMM"));
    }

    #[test]
    fun prueba() {
        practica();
    }
}
