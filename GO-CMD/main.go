package main

import (
	"log"

	"{{.ModuleGit}}/{{.Name}}/cmd"
)

func main() {
	log.SetFlags(0)
	cmd.Execute()
}
