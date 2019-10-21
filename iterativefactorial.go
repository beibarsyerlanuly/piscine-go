package main

import "fmt"

func IterativeFactorial(nb int) int {

	arg := 0

	for i := 0; i < nb+1; i++ {
		arg = arg + i
	}
	return arg
}
func main() {

	arg := 1 * 2 * 3 * 4

	fmt.Println(arg)

}
