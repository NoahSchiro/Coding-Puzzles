

fn main() {

    //Import data
    let numbers = include_str!("data.txt");

    let sum: String = numbers
        .lines()                            //Split by line
        .map(|x| x.parse::<f64>().unwrap()) //Convert to f64
        .sum::<f64>()                       //Sum
        .to_string()                        //Convert sum to string
        .chars()                            //Convert to iterable of chars
        .take(10)                           //Take the first 10
        .collect::<String>();               //Convert to a string again

    println!("Answer: {}", sum);
}

