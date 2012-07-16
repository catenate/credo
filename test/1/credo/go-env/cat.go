package main

import (
	"fmt"
	"io"
	"os"
)

func main() {
	args := os.Args[1:]
	if len(args) == 0 {
		io.Copy(os.Stdout, os.Stdin)
	} else {
		for _, arg := range args {
			file, err := os.Open(arg)
			if err != nil {
				fmt.Fprintf(os.Stderr, "cat: %s\n", err)
			} else {
				io.Copy(os.Stdout, file)
				file.Close()
			}
		}
	}
}
