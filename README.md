# ziggy
<p align="center">
  <img src="https://avatars.githubusercontent.com/u/27973237?s=300&v=4" alt="Zig" width="400">
</p> 

## (A) calc.zig

## Program Overview
The [`calc.zig`](./calc.zig) program is a simple calculator application written in the Zig programming language. It allows you to perform basic arithmetic operations such as addition, subtraction, multiplication, division, and quotient(integer) division all in one. The program takes two user-provided integer inputs and then displays the results of these operations.

### Prerequisites
- Zig programming language installed on your system. You can download and install Zig for your OS from the official website: [`Zig Downloads`](https://ziglang.org/download/)

### Running the Program
Follow these steps to run the [`calc.zig`](./calc.zig) program:

1. **Open a Terminal**: Open a terminal window that you are comfortable with on your computer.

2. **Navigate to Program Directory**: Use the `cd` command to navigate to the directory where the `calc.zig` file is located.

3. **Compile the Program**: In the terminal, enter the following command to compile the program:
   ```sh
   zig build-exe calc.zig
4. **Run the Program**: After successful compilation, run the compiled executable by typing:
```sh
./calc
```
5. **Follow Instructions**: The program will prompt you to enter two numbers. Enter the first number and press Enter. Then, enter the second number and press Enter again.
6. **View Results**: The program will display the results of various arithmetic operations performed on the provided numbers, including addition, subtraction, multiplication, quotient, and division. It will also show the execution time in milliseconds.
7. **Exit the Program**: After viewing the results, the program will exit automatically.

### Sample interaction
```sh
$ zig build-exe calc.zig
$ ./calc
Enter a number: 10
Enter another number: 5
The sum of 10 and 5 is 15
The difference of 10 and 5 is 5
The product of 10 and 5 is 50
The quotient of 10 and 5 is 2
The division of 10 and 5 produces 2.000000
Execution time(depends on your typing speed and time you took to enter numbers): 600 ms
```

### Notes
- The program utilizes Zig's standard library modules for various functionalities like input/output, string manipulation, and arithmetic operations.
- The program expects float/int inputs for arithmetic operations, and it handles invalid input scenarios by displaying appropriate error messages.
- Results are displayed in scientific notation example 29 = 2.9e+01  
3948573 = 3.948573e+06
- The execution time displayed depends on the time you take to enter the numbers and your typing speed.


## (B) prime.zig

## Program Overview
The [`prime.zig`](./prime.zig) program is designed to work with prime numbers. It offers functionalities to check if a given number is prime, find the nth prime number, print the first N prime numbers, and find the position of a specific prime number in the sequence of all prime numbers. The program uses a variety of functions and logic to achieve these tasks.

### Prerequisites
- Zig programming language installed on your system. You can download and install Zig for your OS from the official website: [`Zig Downloads`](https://ziglang.org/download/)

### Running the Program
Follow these steps to run the [`prime.zig`](./prime.zig) program:

1. **Open a Terminal**: Open a terminal window that you are comfortable with on your computer.

2. **Navigate to Program Directory**: Use the `cd` command to navigate to the directory where the [`prime.zig`](./prime.zig) file is located.

3. **Compile the Program**: In the terminal, enter the following command to compile the program:
```sh
zig build-exe prime.zig
```
4. **Run the Program**: After successful compilation, run the compiled executable by typing:
```sh
./prime
```
5. **Follow Instructions**: The program will prompt you to enter the number of prime numbers you want to print (n), the value of N (the nth prime number you wish to find), and a prime number to find its position.
6. **View Results**: The program will provide various outputs based on your inputs, including the first N prime numbers, the nth prime number, and the position of a specific prime number.
7. **Exit the Program**: After viewing the results, the program will exit automatically.

### Sample interaction
```sh
$ zig build-exe prime.zig
$ ./prime
Enter the number of prime numbers you want to print: 5
Enter the value of N (Nth prime number you wish to print): 3
Enter a prime number to find its position: 7
The first 5 prime numbers are: 2, 3, 5, 7, 11
The 3rd prime number is: 5
The position of 7 in the set of all prime numbers is 4
Total execution time: 0 milliseconds
```

### Notes
- The program efficiently determines whether a given number is prime using the **isPrime** function, which employs various conditions and checks.
- It calculates the nth prime number using the **nthPrime** function, which iterates through numbers and uses the **isPrime** function to find the nth prime.
- The program displays the prime numbers using the primes function, which prints the requested number of prime numbers.
- The **findPrimePosition** function determines the position of a specific prime number within the set of all prime numbers.
- The execution time displayed may vary depending on your system's performance and user input.

Feel free to experiment with different input values and explore the program's functionalities!  
Written by  
[Utkarsh "UC" Choudhary](htt[s://threejs-udogg.vercel.app])
<p align="left">
  <a href="https://github.com/UDogg">
    <img src="https://www.cnet.com/a/img/resize/e547a2e4388fcc5ab560f821ac170a59b9fb0143/hub/2021/12/13/d319cda7-1ddd-4855-ac55-9dcd9ce0f6eb/unnamed.png?auto=webp&fit=crop&height=1200&width=1200" alt="UDogg" width="150">
  </a>
</p>


Written in Ziglang  
![Zig](https://avatars.githubusercontent.com/u/27973237?s=160&v=4)
