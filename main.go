package main

import (
	"fmt"
	"log"
	"net/http"
)

func main() {

	go handleRequests()

	fmt.Println("Hello")
	log.Fatal(http.ListenAndServe(":10000", nil))
}
