package main

import "Println"

func main() {
	var a bool = true
	var b bool = false
	if a && b {
		Println("Line 1 - Condition is true\n")
	}
	if a || b {
		Println("F\n")
	}

	/* lets change the value of  a and b */
	a = false
	b = true
	if a && b {
		Println("F\n")
	} else {
		Println("F\n")
	}
	if !(a && b) {
		Println("T\n")
	}
}
