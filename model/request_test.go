package model

import (
	"encoding/json"
	"fmt"
	"net/http"
	"strings"
	"testing"
)

func TestNewRequest(t *testing.T) {
	req, err := http.NewRequest("GET", "https://httpbin.org/get", strings.NewReader(""))
	if err != nil {
		t.Fatal(err)
	}
	req.Header.Set("x-temp", "hie")

	data, err := json.MarshalIndent(NewRequest(req), "", "  ")
	if err != nil {
		t.Fatal(err)
	}
	fmt.Println(string(data))
}
