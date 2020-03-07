use std::io;

struct Reverse {
	number : String,
}

impl Reverse {
	fn new(num : String) -> Reverse {
		Reverse {number : num}
	}

	fn reverse_number(self : &Self) -> String {
		let len = self.number.len();
		let mut return_str = self.number[0..len].to_string();

		unsafe {
			let vec = return_str.as_mut_vec();
			let mut symmetry;
			let mut temp;

			for i in 0..len/2 {
				symmetry = len - 1 - i;
				temp = vec[i];
				vec[i] = vec[symmetry];
				vec[symmetry] = temp;
			}
		}

		return_str.to_string()
	}
}

fn main() {
	let mut input = String::new();

	match io::stdin().read_line(&mut input) {
		Ok(_) => {
			let len = input.len();
			let number = input[0..(len - 1)].to_string();
			let rev = Reverse::new(number);
			let res = rev.reverse_number();
			println!("{}", res);
		}

		Err(error) => println!("{}", error)
	}
}