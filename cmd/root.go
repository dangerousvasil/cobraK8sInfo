package cmd

import (
	"fmt"
	"github.com/spf13/cobra"
	"log"
	"os"
)

func Execute() {
	if err := rootCmd.Execute(); err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
}

func init() {
	cobra.OnInitialize(initConfig)
}

func initConfig() {
}

var rootCmd = &cobra.Command{
	Short: "Help",
	Long:  "Run cobraK8sInfo help",
	Run: func(cmd *cobra.Command, args []string) {
		// вывести общий help, когда на вход не передано ни одной команды
		err := cmd.Help()
		if err != nil {
			log.Fatal(err)
		}
		os.Exit(0)
	},
}
