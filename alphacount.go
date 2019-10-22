package piscine

//import "fmt"

func AlphaCount(str string) int {
	nb := 0
	for _, let := range str {
		if (let >= 'A' && let <= 'Z') || (let >= 'a' && let <= 'z') {
			nb++
		}

	}
	return nb
}
