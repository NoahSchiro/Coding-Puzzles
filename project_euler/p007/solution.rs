/*
By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
What is the 10001st prime number?
*/

fn is_prime(num: usize) -> bool {
    (2..=((num as f64).sqrt() as usize)).all(|x| num % x != 0)
}

fn main() {

    let mut count: usize = 0;
    let mut index: usize = 2;

    while count < 10001 {
        if is_prime(index) {
            count += 1;
        } 
        index += 1;
    }

    index -= 1;

    println!("{index}")

}
