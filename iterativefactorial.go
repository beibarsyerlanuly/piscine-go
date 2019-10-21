package piscine

func IterativeFactorial(nb int) int {
	arg := 0
	for i := 0; i < nb+1; i++ {

		arg = arg + i
	}
	return arg
}

