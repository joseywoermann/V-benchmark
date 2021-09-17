import time
import os

println("This benchmark will measure your computers single-threaded performance.")

mut runs := os.input("How many runs do you want to run?\n>").int()
println("Starting $runs benchmark runs...")

// Start stopwatch to measure duration of the benchmark
duration := time.new_stopwatch({})

mut x := 2

runs++

for i := 1; i < runs; i++ {
	println("Starting run $i...")

	for j := 0; j < 2000000000; j++ {
		x = x * 2
	}
}

end := duration.elapsed().seconds()

os.write_file("SCORE.txt", "The benchmark took $end.str() seconds to complete.")?
println("Benchmark finished in $end seconds, your score has been saved in \"SCORE.txt\".")
// TODO: make result to seconds and keep the nachkommastellen
