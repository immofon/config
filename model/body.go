package model

import (
	"encoding/base64"
	"encoding/json"
	"errors"
	"unicode/utf8"
)

type Body []byte

var _ json.Marshaler = Body{}
var _ json.Unmarshaler = &Body{}

func (body Body) MarshalJSON() ([]byte, error) {
	// text
	if utf8.Valid(body) {
		return json.Marshal(map[string]string{
			"type": "text",
			"data": string(body),
		})
	}

	// base64
	return json.Marshal(map[string]string{
		"type": "base64",
		"data": base64.StdEncoding.EncodeToString(body),
	})
}

func (body *Body) UnmarshalJSON(p []byte) error {
	var m map[string]string
	err := json.Unmarshal(p, &m)
	if err != nil {
		return err
	}

	switch m["type"] {
	case "text":
		*body = []byte(m["data"])
		return nil
	case "base64":
		data, err := base64.StdEncoding.DecodeString(m["data"])
		if err != nil {
			return err
		}

		*body = data
		return nil
	default:
		*body = []byte{}
		return errors.New("unknow body type")
	}
}
