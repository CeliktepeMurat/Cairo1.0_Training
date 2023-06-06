use traits::TryInto;
use debug::PrintTrait;
use option::OptionTrait;
use traits::Into;

fn main() {
    callee(5);

    let y = {
        let x = 5;
        x + 1
    };

    y.print();

    let x = return_10();
    x.print();
}

fn callee(x: felt252) {
    x.print();
}

fn return_10() -> u32 {
    10_u32
}

fn plus_one(x: u32) -> u32 {
    x + 1_u32
}