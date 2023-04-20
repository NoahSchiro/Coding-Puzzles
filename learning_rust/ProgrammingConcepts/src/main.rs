
//Constant. Always immutable
const BIRTHDAY: u32 =  01012001;

//This is a function
fn func(x: i32) -> i32 {
    println!("Hello from another function");

    //Return x+5
    x + 5
}

fn main() {

    //This is how we declare a variable
    //It is immutable by default, so we
    //have to declare it as mut
    let mut x = 5;
    println!("Value of x is {x}");
    x = 6;
    println!("Value of x is {x}");

    //Some datatypes:
    //Each integer has a signed and unsigned
    //version (i, u respectively)

    let really_small: i8  = 1;
    let small: i16       = 2;
    let large: i32       = 3;
    let really_large: i64 = 4;

    //This one will fit to the architecture
    //size. Typically 64 or 32 bit
    let arch: isize = 5;

    //Floating types:
    let mut x: f32 = 3.4;
    //let mut y: f64 = 6.8;

    //Operations
    let add = x + x;
    let sub = x - x;
    let mul = x * x;
    let div = x / x;
    let rem = x % x;

    //Booleans (true/false)
    let flag: bool = true;

    //Characters can be any unicode
    let c: char = 'z';

    //Tuples
    let tup: (f32, f64, u8) = (500.0, 6.4, 1);
    //We can destructurize similar to haskell
    let (x,y,z) = tup;

    //Arrays
    let a = [1,2,3,4,5];
    //Can also predefine the size
    let b: [isize; 10] = [0,1,2,3,4,5,6,7,8,9];

    let first_a = a[0];

    println!("First elem: {first_a}");

    //Control flow
    if func(5) > 5 {
        println!("If is true");
    } else {
        println!("If is false");
    }

    //Conditional looping
    let mut a = 0;
    while func(a) < 10 {
        a = func(a);
    }
    println!("Value of a: {a}");

}
