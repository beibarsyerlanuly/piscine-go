package piscine

func NRune(s string, n int) rune {
	k := []rune(s)
	l := 0
	for range k {
		l = l + 1
	}
	if n <= l && n > 0 {
		return k[n-1]
	}
	return 0
}
