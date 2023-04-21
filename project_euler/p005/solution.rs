/*
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
*/

fn divisible(num: usize, divisor_limit: usize) -> bool {
    (2..divisor_limit).all(|x| num % x == 0)
}

fn main() {

    let mut num = 1;

    loop {
        if divisible(num, 20) {
            break;
        } else {
            num += 1;
        }
    }

    println!("{num}")
}
