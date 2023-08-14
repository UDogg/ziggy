const std = @import("std");
const time = @import("std").time;
const fs = @import("std").fs;
const stdin = std.io.getStdIn().reader();

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
    var input_buffer: [4096]u8 = undefined;
    const start = time.milliTimestamp();
    std.debug.print("Enter the number of prime numbers you want to print: ", .{});
    const input_result = try stdin.readUntilDelimiterOrEof(&input_buffer, '\n');
    if (input_result) |input| {
        var n: u32 = try std.fmt.parseInt(u32, std.mem.trim(u8, input, " \n\r\t"), 10);
        std.debug.print("First {} prime numbers are: ", .{n});
        primes(n);
    } else {
        std.debug.print("Invalid input\n", .{});
        return;
    }
    const end = time.milliTimestamp();
    const elapsedMillis = end - start;
    std.debug.print("Execution time(depends on your typing speed and time you took to enter numbers): {} ms\n", .{elapsedMillis});
}
