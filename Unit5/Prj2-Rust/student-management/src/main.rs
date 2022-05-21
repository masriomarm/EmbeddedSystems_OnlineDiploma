use std::io::Write;

fn main() {
    print!("Input your number: ");
    std::io::stdout().flush().unwrap();

    let mut gue = String::new();

    std::io::stdin()
        .read_line(&mut gue)
        .expect("failed to read line");

    println!("you guessed: {}", gue);
}
