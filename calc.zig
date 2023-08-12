const std = @import("std");
const fs = @import("std").fs;
const stdin = std.io.getStdIn().reader();

var q: f32 = 0.0;

fn add(x: i32, y: i32) i32 {
    return x + y;
}

fn subtract(x: i32, y: i32) i32 {
    return x - y;
}

fn multiply(x: i32, y: i32) i32 {
    return x * y;
}

fn quotient(x: i32, y: i32) i32 {
    return @divTrunc(x, y);
}

fn divide(x: i32, y: i32) f32 {
    q = @intToFloat(f32, x) / @intToFloat(f32, y);
    return q;
}

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    _ = stdout;

    var x: i32 = 0;
    var y: i32 = 0;

    std.debug.print("Enter a number: ", .{});
    var input_buffer: [4096]u8 = undefined;
    const input_result = try stdin.readUntilDelimiterOrEof(&input_buffer, '\n');
    if (input_result) |input| {
        x = try std.fmt.parseInt(i32, std.mem.trim(u8, input, " \n\r\t"), 10);
    } else {
        std.debug.print("Invalid input\n", .{});
        return;
    }

    std.debug.print("Enter another number: ", .{});
    var input2_buffer: [4096]u8 = undefined;
    const input2_result = try stdin.readUntilDelimiterOrEof(&input2_buffer, '\n');
    if (input2_result) |input2| {
        y = try std.fmt.parseInt(i32, std.mem.trim(u8, input2, " \n\r\t"), 10);
    } else {
        std.debug.print("Invalid input\n", .{});
        return;
    }

    std.debug.print("The sum of {} and {} is {}\n", .{ x, y, add(x, y) });
    std.debug.print("The difference of {} and {} is {}\n", .{ x, y, subtract(x, y) });
    std.debug.print("The product of {} and {} is {}\n", .{ x, y, multiply(x, y) });
    std.debug.print("The quotient of {} and {} is {}\n", .{ x, y, quotient(x, y) });
    std.debug.print("The division of {} and {} produces {}\n", .{ x, y, divide(x, y) });

    std.debug.print("Hello World!\n", .{});
}
