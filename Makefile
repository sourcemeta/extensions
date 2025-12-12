JSONSCHEMA ?= jsonschema
SHELLCHECK ?= shellcheck

.DEFAULT_GOAL := all
.PHONY: all
all: jsonschema.json
	$(SHELLCHECK) scripts/*.sh
	./scripts/check-symmetry.sh
	$(JSONSCHEMA) metaschema
	$(JSONSCHEMA) lint
	$(JSONSCHEMA) fmt --check
	$(JSONSCHEMA) fmt ./test --check \
		--default-dialect "https://json-schema.org/draft/2020-12/schema"
	$(JSONSCHEMA) test ./test --extension .test.json
	$(JSONSCHEMA) validate ./test/meta.json ./schemas

.PHONY: format
format: jsonschema.json
	$(JSONSCHEMA) fmt
	$(JSONSCHEMA) fmt ./test \
		--default-dialect "https://json-schema.org/draft/2020-12/schema"
