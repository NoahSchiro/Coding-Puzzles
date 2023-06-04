/*
The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

Find the sum of all the primes below two million.
*/

fn is_prime(num: usize) -> bool {
    (2..=((num as f64).sqrt() as usize)).all(|div| num % div != 0)
}

fn main() {

    let mut acc = 2;

    for num in (3..=2000000).step_by(2) {
        if is_prime(num) {acc += num;}
    }
    println!("{acc}");
}