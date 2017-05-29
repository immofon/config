package model

import (
	"io/ioutil"
	"net/http"
)

type Request struct {
	Method string      `json:"method"`
	URL    string      `json:"url"`
	Header http.Header `json:"header,omitempty"`
	Body   Body        `json:"body,omitempty"`
}

func NewRequest(r *http.Request) *Request {
	var body Body
	if r.Body != nil {
		body, _ = ioutil.ReadAll(r.Body)
	}

	return &Request{
		URL:    r.URL.String(),
		Method: r.Method,
		Header: r.Header,
		Body:   body,
	}
}
