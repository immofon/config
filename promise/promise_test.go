package promise

import (
	"fmt"
	"testing"
)

var (
	globalMap = make(map[string]string)
	funch     = make(chan func())
)

func Map(fn func(map[string]string) error) func() error {
	return func() error {
		errch := make(chan error, 1)
		funch <- func() {
			errch <- fn(globalMap)
			close(errch)
		}
		return <-errch
	}

}

func BenchmarkThen(b *testing.B) {
	go func() {
		for fn := range funch {
			fn()
		}
	}()

	b.RunParallel(func(pb *testing.PB) {
		for pb.Next() {
			Then(Map(func(m map[string]string) error {
				m["hello"] = "world"
				return nil
			})).Then(func() error {
				//				fmt.Println("ok")
				return nil
			}).Catch(func(index int, err error) {
				fmt.Println("index:", index, "err:", err)
			})()
		}
	})
}
