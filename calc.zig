const std = @import("std");
const time = @import("std").time;
const fs = @import("std").fs;
const stdin = std.io.getStdIn().reader();

var q: f64 = 0.0;

fn add(x: f64, y: f64) f64 {
    return x + y;
}

fn subtract(x: f64, y: f64) f64 {
    return x - y;
}

fn multiply(x: f64, y: f64) f64 {
    return x * y;
}

fn quotient(x: f64, y: f64) f64 {
    return x / y;
}

fn divide(x: f64, y: f64) f64 {
    q = x / y;
    return q;
}

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    _ = stdout;
    const start = time.milliTimestamp();
    var x: f64 = 0.0;
    var y: f64 = 0.0;

    std.debug.print("Enter a number: ", .{});
    var input_buffer: [4096]u8 = undefined;
    const input_result = try stdin.readUntilDelimiterOrEof(&input_buffer, '\n');
    if (input_result) |input| {
        x = try std.fmt.parseFloat(f64, std.mem.trim(u8, input, " \n\r\t"));
    } else {
        std.debug.print("Invalid input\n", .{});
        return;
    }

    std.debug.print("Enter another number: ", .{});
    var input2_buffer: [4096]u8 = undefined;
    const input2_result = try stdin.readUntilDelimiterOrEof(&input2_buffer, '\n');
    if (input2_result) |input2| {
        y = try std.fmt.parseFloat(f64, std.mem.trim(u8, input2, " \n\r\t"));
    } else {
        std.debug.print("Invalid input\n", .{});
        return;
    }

    std.debug.print("The sum of {} and {} is {}\n", .{ x, y, add(x, y) });
    std.debug.print("The difference of {} and {} is {}\n", .{ x, y, subtract(x, y) });
    std.debug.print("The product of {} and {} is {}\n", .{ x, y, multiply(x, y) });
    std.debug.print("The quotient of {} and {} is {}\n", .{ x, y, quotient(x, y) });
    std.debug.print("The division of {} and {} produces {}\n", .{ x, y, divide(x, y) });
    const end = time.milliTimestamp();
    const elapsedMillis = end - start;
    std.debug.print("Execution time(depends on your typing speed and time you took to enter numbers): {} ms\n", .{elapsedMillis});
}
