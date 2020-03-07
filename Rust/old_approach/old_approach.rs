use std::io;

struct Reverse {
	number: u64,
}

impl Reverse {
	fn new(num : u64) -> Reverse {
		Reverse {number: num}
	}
	
	fn reverse_number(self : &Self) -> u64 {
		let mut digit : u64;
		let mut sum = 0u64;
		let mut num = self.number;

		while num != 0 {
			digit = num % 10;
			sum = sum * 10 + digit;
			num = num / 10;
		}

		sum
	}
}

fn main() {
	let mut input = String::new();
	match io::stdin().read_line(&mut input) {
		Ok(_) => {
			let length = input.len();
			let num_str = &input[0..(length - 1)];
			let number = num_str.parse::<u64>().unwrap();
			let rev = Reverse::new(number);
			let res = rev.reverse_number();
			println!("{}", res);
		}

		Err(error) => println!("{}", error)
	}
}