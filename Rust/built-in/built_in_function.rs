use std::io;

struct Reverse {
	number: String,
}

impl Reverse {
	fn new(num: String) -> Reverse {
		Reverse {number: num}
	}

	fn reverse_number(self: &Self) -> String {
		let len = self.number.len();
		let mut return_str = self.number[0..len].to_string();

		unsafe {
			let vector = return_str.as_mut_vec();

			vector.reverse();
		}

		return_str.to_string()
	}
}

fn main() {
	let mut input = String::new();

	match io::stdin().read_line(&mut input) {
		Ok(_) => {
			let length = input.len();
			let number = input[0..(length - 1)].to_string();
			let rev = Reverse::new(number);
			let res = rev.reverse_number();
			println!("{}", res);
		}

		Err(error) => println!("{}", error)
	}
}