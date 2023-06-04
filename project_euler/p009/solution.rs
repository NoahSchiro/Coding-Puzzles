/*
A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
a2 + b2 = c2

For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
*/

fn main() {

    for b in 1..=1000 {
        for a in 1..b {

            let a = a as usize;
            let b = b as usize;

            let c = ((a.pow(2) + b.pow(2)) as f64).sqrt();
            let c = c as usize;

            if a + b + c > 1000 { break; }

            if a.pow(2) + b.pow(2) == c.pow(2) && a + b + c == 1000 {
                println!("{}",a*b*c);
            }

        }
    }
}