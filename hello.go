package main

import (
    "fmt"
    "time"
)

func Hello() string {
    return "Hello, world"
}

func main() {
    for {
        fmt.Println(Hello())
        time.Sleep(time.Second)
    }
}
