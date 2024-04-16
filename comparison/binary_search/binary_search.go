package main

import (
	"fmt"
)

func binarySearch(arr []int, target int) int {
	low, high := 0, len(arr)

	for low < high {
		mid := (low + high) / 2
		midNum := arr[mid]

		if midNum == target {
			if mid-1 > 0 && arr[mid-1] == target {
				high = mid - 1
			} else {
				return mid
			}
		} else if target < midNum {
			high = mid - 1
		} else {
			low = mid + 1
		}
	}

	return -1
}

func main() {
	arr := []int{1, 1, 2, 3, 4, 12, 15, 17, 19, 24, 25, 42, 43}

	fmt.Println(binarySearch(arr, 1))
}
