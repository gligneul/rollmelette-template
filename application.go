package main

import (
	"github.com/gligneul/rollmelette"
)

type MyApplication struct{}

func (a *MyApplication) Advance(
	env rollmelette.Env,
	metadata rollmelette.Metadata,
	deposit rollmelette.Deposit,
	payload []byte,
) error {
	// Handle advance input
	return nil
}

func (a *MyApplication) Inspect(env rollmelette.EnvInspector, payload []byte) error {
	// Handle inspect input
	return nil
}
