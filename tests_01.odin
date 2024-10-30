package test

import "core:fmt"
import "core:slice"
print :: fmt.println
printf :: fmt.printf

main :: proc() {
	print(sumOfUnique([]int{1, 2, 3, 2, 1}))
	print(sumOfUnique([]int{1, 2, 3, 4, 2, 1, 4, 7}))
	print(sumOfUnique([]int{}))
	print(sumOfUnique([]int{5, 2, 4, 5, 6, 2, 1, 6}))

	// OUTPUT:
	// 3
	// 10
	// 0 
	// 5 
}


sumOfUnique :: proc(l: []int) -> int {
	local_array := make([dynamic]int)
	defer delete(local_array)

	for val in l {
		if !slice.contains(local_array[:], val) {
			append(&local_array, val)
		} else if slice.contains(local_array[:], val) {
			remove(&local_array, val)
		}
	}

	return sum_iterable(local_array[:])
}
