package main

import "github.com/01-edu/z01"

func IterativeFactorial(nb int) int {
	result := 0
	for i := 0; i < nb+1; i++ {

		result = result + i
	}
	return result
}
func main() {

	result := 1 * 2 * 3 * 4
	z01.Println(result)
}
