package promise

type Promise struct {
	funcs []func() error
}

func Then(fn func() error) *Promise {
	promise := &Promise{
		funcs: make([]func() error, 0, 1),
	}
	return promise.Then(fn)
}

func (p *Promise) Then(fn func() error) *Promise {
	p.funcs = append(p.funcs, fn)
	return p
}

func (p *Promise) Catch(handleError func(index int, err error)) func() {
	return func() {
		for i, f := range p.funcs {
			err := f()
			if err != nil {
				handleError(i, err)
				return
			}
		}
	}
}

func Async(fn func()) func() {
	return func() {
		go fn()
	}
}
