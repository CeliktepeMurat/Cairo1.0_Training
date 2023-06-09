use debug::PrintTrait;
#[derive(Copy, Drop)]
struct Rectangle {
    width: u64,
    height: u64,
}

trait RectangleTrait {
    fn area(self: @Rectangle) -> u64;
    fn width(self: @Rectangle) -> bool;
}

impl RectangleImpl of RectangleTrait {
    fn area(self: @Rectangle) -> u64 {
        (*self.width) * (*self.height)
    }

    fn width(self: @Rectangle) -> bool {
        (*self.width) > (*self.height)
    }
}

fn main() {
    let rect = Rectangle {
        width: 3,
        height: 4,
    };
    
    rect.area().print(); 
    rect.width().print();   
}