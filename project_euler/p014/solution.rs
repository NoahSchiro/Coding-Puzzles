/*
The following iterative sequence is defined for the set of positive integers:

n → n/2 (n is even)
n → 3n + 1 (n is odd)

Using the rule above and starting with 13, we generate the following sequence:
13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1

It can be seen that this sequence (starting at 13 and finishing at 1) contains 
10 terms. Although it has not been proved yet (Collatz Problem), it is thought 
that all starting numbers finish at 1.

Which starting number, under one million, produces the longest chain?

NOTE: Once the chain starts the terms are allowed to go above one million.
*/

//Given a starting number, count how many iterations to reach 0
fn count_seq(input: usize) -> usize {

    let mut temp: usize = input;
    let mut count: usize = 1;
    
    while temp != 1 {
        count += 1;

        if temp % 2 == 0 {
            temp /= 2;
        } else {
            temp *= 3;
            temp += 1;
        }
    }

    count
}

fn main() {

    let mut best_val: usize = 0;
    let mut best_idx: usize = 0;

    for i in 1..1000000 {
        let curr = count_seq(i);

        if curr > best_val {
            best_val = curr;
            best_idx = i;
        }
    }

    println!("{}: {}", best_idx, best_val);
}
