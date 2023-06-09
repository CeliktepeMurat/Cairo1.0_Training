use debug::PrintTrait;


struct User {
#[derive(Copy, Drop)]
    active: bool,
    username: felt252,
    email: felt252,
    sign_in_count: u64,
}
fn main() {
    let mut user1 = User {
        active: true, username: 'someusername123', email: 'someone@example.com', sign_in_count: 1
    };

    user1.email = 'test@example.com';
    main2();
}

fn build_user(email: felt252, username: felt252) -> User {
    User {
        active: true,
        username: username,
        email: email,
        sign_in_count: 1,
    }
}


struct Rectangle {
    width: u64,
    height: u64,
}

fn main2() {
    let rectangle = Rectangle {
        width: 30,
        height: 10,
    };
    rectangle.print();
}

impl RectanglePrint of PrintTrait<Rectangle> {
    fn print(self: Rectangle) {
        self.width.print();
        self.height.print();
    }
}
