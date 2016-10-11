package main

import (
	"fmt"
	"net/http"
	"time"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		time_start := time.Now()
		fmt.Fprintf(w, "hello world")
		fmt.Println(time.Since(time_start))
	})

	http.ListenAndServe(":4000", nil)
}
