package piscine

import "github.com/01-edu/z01"

func IsNegative(nb int) {
	if nb < 1 {
		z01.PrintRune('T')
	} else {
		z01.PrintRune('F')
	}
	z01.PrintRune(10)
}
