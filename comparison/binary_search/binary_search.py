from typing import List


def binary_search(arr: List[int], target: int) -> int:
    low: int = 0
    high: int = len(arr)

    while low < high:
        mid: int = (low + high) // 2
        mid_num: int = arr[mid]

        if mid_num == target:
            if mid - 1 > 0 and arr[mid - 1] == target:
                high = mid - 1
            else:
                return mid
        elif mid_num > target:
            high = mid - 1
        elif mid_num < target:
            low = mid + 1

    return - 1


print(binary_search([1, 1, 2, 3, 4, 12, 15, 17, 19, 24, 25, 42, 43], 43))
