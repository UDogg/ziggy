const std = @import("std");

pub fn isPrime(n: u32) bool {
    if (n <= 1) return false;
    if (n <= 3) return true;
    if (n % 2 == 0) return false;
    if (n % 3 == 0) return false;

    var i: u32 = 5;
    while (i * i <= n) {
        if (n % i == 0) return false;
        if (n % (i + 2) == 0) return false;
        i += 6;
    }
    return true;
}

pub fn primes(n: u32) void {
    var count: u32 = 0;
    var i: u32 = 2;
    while (count < n) {
        if (isPrime(i)) {
            std.debug.print("{}, ", .{i});
            count += 1;
        }
        if (i == 2) {
            i += 1;
        } else {
            i += 2;
        }
    }
}

pub fn main() !void {
    const N: u32 = 10;
    std.debug.print("First {} prime numbers are: ", .{N});
    primes(N);
}
