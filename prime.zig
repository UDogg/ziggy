const std = @import("std");
const time = @import("std").time;
const fs = @import("std").fs;
const stdin = std.io.getStdIn().reader();

pub fn isPrime(n: u64) bool {
    if (n <= 1) return false;
    if (n <= 3) return true;
    if (n % 2 == 0) return false;
    if (n % 3 == 0) return false;

    var i: u64 = 5;
    while (i * i <= n) {
        if (n % i == 0) return false;
        if (n % (i + 2) == 0) return false;
        i += 6;
    }
    return true;
}

pub fn nthPrime(n: u64) u64 {
    var count: u64 = 0;
    var prime: u64 = 2;
    var i: u64 = 2;
    while (count < n) {
        if (isPrime(i)) {
            prime = i;
            count += 1;
        }
        i += 1;
    }
    return prime;
}

pub fn primes(n: u64) void {
    var count: u64 = 0;
    var i: u64 = 2;
    var isLastPrime: bool = false;

    while (count < n) {
        if (isPrime(i)) {
            if (count == n - 1) {
                isLastPrime = true;
            }
            if (isLastPrime) {
                std.debug.print("{}", .{i});
            } else {
                std.debug.print("{}, ", .{i});
            }
            count += 1;
        }
        i += 1;
    }
}

// pub fn posPrime(n: u64) bool {
//     return isPrime(n);
// }

pub fn findPrimePosition(prime: u64) u64 {
    var count: u64 = 0;
    var position: u64 = 0;
    var i: u64 = 2;

    while (count < prime) {
        if (isPrime(i)) {
            count += 1;
            if (i == prime) {
                position = count;
                break;
            }
        }
        i += 1;
    }

    return position;
}

pub fn main() !void {
    var input_buffer: [4096]u8 = undefined;
    const start = time.milliTimestamp();

    std.debug.print("Enter the number of prime numbers you want to print: ", .{});
    const input_result = try stdin.readUntilDelimiterOrEof(&input_buffer, '\n');
    if (input_result) |input| {
        var n: u64 = try std.fmt.parseInt(u64, std.mem.trim(u8, input, " \n\r\t"), 10);

        std.debug.print("Enter the value of N (Nth prime number you wish to print): ", .{});
        const n_result = try stdin.readUntilDelimiterOrEof(&input_buffer, '\n');
        if (n_result) |n_input| {
            var N: u64 = try std.fmt.parseInt(u64, std.mem.trim(u8, n_input, " \n\r\t"), 10);

            std.debug.print("Enter a prime number to find its position: ", .{});
            const prime_result = try stdin.readUntilDelimiterOrEof(&input_buffer, '\n');
            if (prime_result) |prime_input| {
                var primeValue: u64 = try std.fmt.parseInt(u64, std.mem.trim(u8, prime_input, " \n\r\t"), 10);

                // Check if the entered number is prime
                if (!isPrime(primeValue)) {
                    std.debug.print("{} is not a prime number.\n", .{primeValue});
                    return;
                }

                std.debug.print("The first {} prime numbers are: ", .{n});
                primes(n);

                std.debug.print("\nThe {}th prime number is: {}\n", .{ N, nthPrime(N) });

                var position = findPrimePosition(primeValue);
                if (position == 0) {
                    std.debug.print("The entered number is not a prime number.\n", .{});
                } else {
                    std.debug.print("The position of {} in the set of all prime numbers is {}\n", .{ primeValue, position });
                }
            } else {
                std.debug.print("Invalid input for finding the position of a prime number\n", .{});
                return;
            }
        } else {
            std.debug.print("Invalid input for N\n", .{});
            return;
        }
    } else {
        std.debug.print("Invalid input for n\n", .{});
        return;
    }

    const end = time.milliTimestamp();
    const elapsedMillis = end - start;
    std.debug.print("Total execution time: {} milliseconds\n", .{elapsedMillis});
}
