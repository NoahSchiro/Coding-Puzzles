/*
A palindromic number reads the same both ways. The 
largest palindrome made from the product of two 
2-digit numbers is 9009 = 91 × 99.

Find the largest palindrome made from the product 
of two 3-digit numbers.
*/

fn is_palindrome(num: String) -> bool {

    //Zip the number with the reverse of itself
    let mut z = num.chars().zip(num.chars().rev());

    //For each element in z, check that the the pair equals itself
    z.all(|(first, second)| first == second)
}

fn main() {

    let mut max = 0;

    for i in 100..=1000 {
        for j in 100..=1000 {

            //Compute product
            let product: isize = i*j;

            //As a string
            let as_string: String = product.to_string();

            if is_palindrome(as_string) && product > max {
                max = product
            }
        }
    }

    println!("{max}")
}