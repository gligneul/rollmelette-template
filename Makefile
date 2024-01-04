.PHONY: all
all: help

.PHONY: lint
lint: ## Run the golangci linter
	golangci-lint run

.PHONY: test
test: ## Run the application unit tests
	go test ./...

.PHONY: dev
dev: ## Run the application inside nonodo
	nonodo -- go run .

.PHONY: help
help: ## Show help for each of the Makefile recipes
	@grep "##" $(MAKEFILE_LIST) | grep -v grep | sed -e 's/:.*##/:\t/'
