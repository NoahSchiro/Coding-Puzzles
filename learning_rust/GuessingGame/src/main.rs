use std::io;            // Reading input
use std::cmp::Ordering; //<, >, ==
use rand::Rng;          //Random number gen

fn main() {

    //Generate a secret number
    let secret_number = rand::thread_rng().gen_range(1..=100);

    //Boilerplate intro and whatnot
    println!("Guess the number");

    loop {
        
        //We need to store the guess in a string
        let mut guess = String::new();

        //Calling the stdin function, then reading
        //the line from stdin, and expecting that
        //we have something. If not we print something
        io::stdin()
            .read_line(&mut guess)
            .expect("Failed to read the line");

        //Convert the guess into a number
        let guess: u32 = match guess.trim().parse() {
            Ok(num) => num, 
            Err(_) => continue,
        };

        println!("You guessed {guess}");

        match guess.cmp(&secret_number) {
            Ordering::Less    => println!("Too small"),
            Ordering::Greater => println!("Too large"),
            Ordering::Equal   => {
                println!("Got it");
                break;
            },
        }

    }
}
