use array::ArrayTrait;
use debug::PrintTrait;

fn main() {
    let mut arr1 = ArrayTrait::<u128>::new();
    let first_snapshot = @arr1; // Take a snapshot of `arr1` at this point in time
    arr1.append(1); // Mutate `arr1` by appending a value
    let first_length = calculate_length(first_snapshot); // Calculate the length of the array when the snapshot was taken
    let second_length = calculate_length(@arr1); // Calculate the current length of the array
    first_length.print();
    second_length.print();

    calc_rec();
    calc_rec_ref();
}

fn calculate_length(arr: @Array<u128>) -> usize {
    arr.len()
}

#[derive(Copy, Drop)]
struct Rectangle {
    height: u64,
    width: u64,
}

fn calc_rec() {
    let rec = Rectangle { height: 3, width: 10 };
    let area = calculate_area(@rec);
    area.print();
}

fn calculate_area(rec: @Rectangle) -> u64 {
    // As rec is a snapshot to a Rectangle, its fields are also snapshots of the fields types.
    // We need to transform the snapshots back into values using the desnap operator `*`.
    // This is only possible if the type is copyable, which is the case for u64.
    // Here, `*` is used for both multiplying the height and width and for desnapping the snapshots.
    *rec.height * *rec.width
}


// Reference
#[derive(Copy, Drop)]
struct Rectangle1 {
    height: u64,
    width: u64,
}

fn calc_rec_ref() {
    let mut rec = Rectangle1 { height: 3, width: 10 };
    flip(ref rec);

    rec.height.print();
    rec.width.print();
}

fn flip(ref rec: Rectangle1) {
    let tmp = rec.height;
    rec.height = rec.width;
    rec.width = tmp;
}