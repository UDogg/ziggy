# ziggy
**This is named after Iain Armitage's character in Big Little Lies and after the zig programming language.**


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