package main

import (
	"fmt"
	"net/http"

	"rsc.io/quote"
)

func handler(w http.ResponseWriter, r *http.Request) {
	quoteText := quote.Opt()
	fmt.Fprintf(w, "Hi,\nQuote of the day:"+quoteText)
}

func main() {
	http.HandleFunc("/", handler)
	fmt.Println("Server is listening on port 8080...")
	http.ListenAndServe(":8080", nil)
}
