package cmd

import (
	"fmt"
	"github.com/spf13/cobra"
	"log"
	"net/http"
	"os"
)

func init() {
	rootCmd.AddCommand(httpdCmd)
}

var httpdCmd = &cobra.Command{
	Use:   "httpd",
	Short: "Start httpd process",
	Long:  `Start httpd for info functions`,
	Run: func(cmd *cobra.Command, args []string) {
		http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
			log.Println(`new connection: `, r.UserAgent(), r.RemoteAddr)
			fmt.Fprintf(w, "Hello World!")
		})

		http.HandleFunc("/env", func(w http.ResponseWriter, r *http.Request) {
			envVars := os.Environ()
			for _, v := range envVars {
				fmt.Fprintf(w, v)
				fmt.Fprintf(w, "\r\n")
			}
		})

		http.ListenAndServe(":80", nil)
	},
}
