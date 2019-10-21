package main

import "fmt"

func IterativeFactorial(nb int) int {
	result := 0
	for i := 0; i < nb+1; i++ {

		result = result + i
	}
	return result
}
func main() {

	result := 1 * 2 * 3 * 4
	fmt.Println(result)
}
