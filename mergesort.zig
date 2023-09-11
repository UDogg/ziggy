const std = @import("std");

fn mergeSort(arr: []f64) []f64 {
    const len = arr.len;
    if (len <= 1) {
        return arr;
    }

    const mid = len / 2;
    const leftHalf = arr[0..mid];
    const rightHalf = arr[mid..];

    var leftSorted = mergeSort(leftHalf);
    var rightSorted = mergeSort(rightHalf);

    var sortedArr = []f64{};

    var i: usize = 0;
    var j: usize = 0;

    while (i < leftSorted.len) | j < rightSorted.len |
    {
        if (j == rightSorted.len)
        {
            sortedArr.append(leftSorted[i]);
            i += 1;
        } else if (i < leftSorted.len && leftSorted[i] <= rightSorted[j])
        {
            sortedArr.append(leftSorted[i]);
            i += 1;
        } else
        {
            sortedArr.append(rightSorted[j]);
            j += 1;
        }
    }


    return sortedArr;
}

pub fn main() void {
    const allocator = std.testing.allocator;
    var unsortedList = []f64{};

    while (true) {
        const input = std.io.getline("Enter an element: ", allocator);
        if (input == "y" or input == "Y") {
            const element = try f64.tryParse(std.io.readLine("Enter a number: "));
            if (element == null) {
                std.debug.print("Invalid number entered\n", .{});
                continue;
            }
            unsortedList.append(element.*);
        } else {
            break;
        }
    }

    const sortedList = mergeSort(unsortedList);
    for (sortedList) |element| {
        std.debug.print("{} ", .{element});
    }
    std.debug.print("\n", .{});
}
