use debug::PrintTrait;
use traits::Into;

//Constants
const ONE_HOUR_IN_SECONDS: u32 = 3600_u32;

fn main() {
    let mut x = 5;
    x.print();

    x = 6;
    x.print();

    ONE_HOUR_IN_SECONDS.print();

    // Shadowing
    let x = 5;
    let x = x + 1;

    {
        let x = x * 2;
        'Inner scope x value is:'.print();
        x.print();
    }
    'Outer scope x value is:'.print();
    x.print();

    // Shadowing with different types
    let x = 2_u64;
    x.print();

    let x: felt252 = x.into();
    x.print();

}