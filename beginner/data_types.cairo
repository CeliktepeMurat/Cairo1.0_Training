use traits::TryInto;
use debug::PrintTrait;
use option::OptionTrait;
use traits::Into;

fn main() {
    let x: felt252 = 3;

    let y: u32 = x.try_into().unwrap();
    y.print();

    tuples();
}

fn math() {
    // addition
    let sum = 5_u128 + 10_u128;

    // subtraction
    let difference = 95_u128 - 4_u128;

    // multiplication
    let product = 4_u128 * 30_u128;

    // division
    let quotient = 56_u128 / 32_u128; //result is 1
    let quotient = 64_u128 / 32_u128; //result is 2

    // remainder
    let remainder = 43_u128 % 5_u128; // result is 3
}

fn boloeanTypes() {
    let t = true;

    let f: bool = false; // with explicit type annotation
}


fn type_casting() {
    let my_felt = 10;
    let my_u8: u8 = my_felt.try_into().unwrap(); // Since a felt252 might not fit in a u8, we need to unwrap the Option<T> type
    let my_u16: u16 = my_felt.try_into().unwrap();
    let my_u32: u32 = my_felt.try_into().unwrap();
    let my_u64: u64 = my_felt.try_into().unwrap();
    let my_u128: u128 = my_felt.try_into().unwrap();
    let my_u256: u256 = my_felt.into(); // As a felt252 is smaller than a u256, we can use the into() method
    let my_usize: usize = my_felt.try_into().unwrap();
    let my_felt2: felt252 = my_u8.into();
    let my_felt3: felt252 = my_u16.into();
}

fn tuples() {
    let tup: (u32, u64, bool) = (10, 20, false);

    let (x, y, z) = tup;

    if y == 20 {
        'y is 10'.print();
    }
}