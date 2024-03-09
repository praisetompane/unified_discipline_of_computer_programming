// +build linux

package main

import (
	"fmt"
	"os"
	"os/exec"
	"golang.org/x/sys/unix"
)

/*
	program			<program_command>			<container_cmd> <params>
	docker		  		run				image	<container_cmd> <params>
	go run main.go  	run						<container_cmd> <params>

	example:
		go run main.go run ps
		go run main.go run ls -la
*/

func main() {
	fmt.Println(os.Getenv("GOOS"))
	switch os.Args[1] {
	case "run":
		run(os.Args[2], os.Args[3:]...)
	case "stop":
		fmt.Println("stopping container")
	default:
		panic("unknown command")
	}
}

/*
	Starts the container with:
	@container_cmd name of command to run (e.g. echo, ls, etc)
	@container_cmd_arguments optional arbitary number of parameters for the command to run with (e.g. -l, -la, etc)

*/
func run(container_cmd string, container_cmd_arguments ...string) error {
	fmt.Printf("running %v\n", container_cmd)
	container := exec.Command(container_cmd, container_cmd_arguments...)

	/*
		Hook up the process's stdio to your Operating System stdio.
		This is so we can see what the process(i.e. command) produces
	*/
	container.Stdin = os.Stdin
	container.Stdout = os.Stdout
	container.Stderr = os.Stderr

	/*
		Create the process' namespace.
		This is where it will be started in.
	*/

	container.SysProcAttr = &unix.SysProcAttr{
		Cloneflags: unix.CLONE_NEWUTS,
	}


	/*
		THIS IS FAILING
		//"syscall" //PROBLEM IS HERE, IT IS IMPORTING THE unix
		//Maybe export GOARCH=arm  and export GOOS=linux  
		cmd.SysProcAttr = &syscall.SysProcAttr {
			Cloneflags: syscall.CLONE_NEWUTS, //UTS := Unix Time Sharing system
		}
		
	*/
	
	/*
	cmd.ProcAttr = &syscall.ProcAttr {
		Sys: &syscall.SysProcAttr {
			Cloneflags: syscall.CLONE_NEWUTS, //UTS := Unix Time Sharing system
		},
	} */
	
	if err := container.Run(); err != nil {
		return err
	}
	return nil
}
