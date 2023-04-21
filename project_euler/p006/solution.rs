/*
The sum of the squares of the first 
ten natural numbers is,

1^2 + 2^2 + ... + 10^2 = 385

The square of the sum of the first 
ten natural numbers is,

(1 + 2 + ... + 10)^2 = 3025

Hence the difference between the 
sum of the squares of the first 
ten natural numbers and the square 
of the sum is,

3025 - 385 = 2460

Find the difference between the sum 
of the squares of the first one 
hundred natural numbers and the 
square of the sum.
*/

fn sum_of_squares(limit: u128) -> u128 {
    (1..=limit).fold(0, |acc, x| acc + x.pow(2))
}

fn square_of_sums(limit: u128) -> u128 {
    (1..=limit).fold(0, |acc, x| acc + x).pow(2)
}

fn main() {

    let s1 = sum_of_squares(100);
    let s2 = square_of_sums(100);
    println!("{}", s2-s1)

}