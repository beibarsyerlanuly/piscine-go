package piscine

func IterativeFactorial(nb int) int {
	arg := 1
	for i := 1; i <= nb; i++ {

		arg = arg + i
	}
	return arg
}

