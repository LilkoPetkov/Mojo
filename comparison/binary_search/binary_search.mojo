from collections import List


fn binary_search(arr: List[Int], target: Int) -> Int:
    var low: Int = 0
    var high: Int = len(arr)

    while low < high:
        var mid: Int = (low + high) // 2
        var mid_num: Int = arr[mid]

        if mid_num == target:
            if mid - 1 > 0 and arr[mid - 1] == target:
                low = mid - 1
            else:
                return mid
        elif mid_num > target:
            high = mid - 1
        else:
            low = mid + 1

    return - 1


fn main() -> None:
    var arr = List[Int](1, 1, 2, 3, 4, 12, 15, 17, 19, 24, 25, 42, 43)

    print(binary_search(arr, 43))
