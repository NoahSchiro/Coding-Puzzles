/*
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
*/
fn factors(mut num: u64) -> Vec<u64> {
    let mut result: Vec<u64> = Vec::new();

    let mut divisor: u64 = 2;

    while num > 1 {

        if num % divisor == 0 {
            result.push(divisor);
            num /= divisor;
        } else {
            divisor += 1;
        }
    }

    result
}

fn main() {

    let result = factors(600851475143);
    let max = result.iter().max().unwrap();

    println!("{max}");

}
