package main

var testmap1 = map[string]int{"data": 3}
var testmap2 = map[string]int{
	"one":    1,
	"two":    2,
	"three":  3,
	"four":   4,
	"five":   5,
	"six":    6,
	"seven":  7,
	"eight":  8,
	"nine":   9,
	"ten":    10,
	"eleven": 11,
	"twelve": 12,
}

func main() {
	m := map[string]int{"answer": 42, "foo": 3}
	readMap(m, "answer")
	readMap(testmap1, "data")
	readMap(testmap2, "three")
	readMap(testmap2, "ten")
	delete(testmap2, "six")
	readMap(testmap2, "seven")
}

func readMap(m map[string]int, key string) {
	println("map length:", len(m))
	println("map read:", key, "=", m[key])
	for k, v := range m {
		println(" ", k, "=", v)
	}
}
