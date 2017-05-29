package model

import (
	"encoding/json"
	"fmt"
	"testing"
)

func TestBody_MarshalJSON(t *testing.T) {
	data, err := json.MarshalIndent(Body("\xf2hello world jifse jifsk"), "", "  ")
	if err != nil {
		t.Fatal(err)
	}

	fmt.Println(string(data))

	var body Body
	err = json.Unmarshal(data, &body)
	if err != nil {
		t.Fatal(err)
	}

	fmt.Println(string(body))
}
