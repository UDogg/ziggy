const std = @import("std");
const time = @import("std").time;
const fs = @import("std").fs;
const stdin = std.io.getStdIn().reader();

var q: f64 = 0.0;

fn add(x: i64, y: i64) i64 {
    return x + y;
}

fn subtract(x: i64, y: i64) i64 {
    return x - y;
}

fn multiply(x: i64, y: i64) i64 {
    return x * y;
}

fn quotient(x: i64, y: i64) i64 {
    return @divTrunc(x, y);
}

fn divide(x: i64, y: i64) f64 {
    q = @intToFloat(f64, x) / @intToFloat(f64, y);
    return q;
}

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    _ = stdout;
    const start = time.milliTimestamp();
    var x: i64 = 0;
    var y: i64 = 0;

    std.debug.print("Enter a number: ", .{});
    var input_buffer: [4096]u8 = undefined;
    const input_result = try stdin.readUntilDelimiterOrEof(&input_buffer, '\n');
    if (input_result) |input| {
        x = try std.fmt.parseInt(i64, std.mem.trim(u8, input, " \n\r\t"), 10);
    } else {
        std.debug.print("Invalid input\n", .{});
        return;
    }

    std.debug.print("Enter another number: ", .{});
    var input2_buffer: [4096]u8 = undefined;
    const input2_result = try stdin.readUntilDelimiterOrEof(&input2_buffer, '\n');
    if (input2_result) |input2| {
        y = try std.fmt.parseInt(i64, std.mem.trim(u8, input2, " \n\r\t"), 10);
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
