package main

import (
	"fmt"
	"net/http"

	"rsc.io/quote"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hi,")
	fmt.Println("Quote of the day:", quote.Opt())
}

func main() {
	http.HandleFunc("/", handler)
	fmt.Println("Server is listening on port 8080...")
	http.ListenAndServe(":8080", nil)
}
