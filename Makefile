.PHONY: config
config:
	YARN_SILENT=1 yarn mustache config/$(network).subgraph.json subgraph.mustache > subgraph.yaml && \
	YARN_SILENT=1 yarn mustache config/$(network).constants.json src/constants.mustache > src/constants.ts

.PHONY: codegen
codegen:
	$(MAKE) config && yarn graph codegen

.PHONY: build
build:
	$(MAKE) config && yarn graph build

.PHONY: deploy
deploy:
	yarn graph deploy 0xbe1/moonwell-$(network) --node https://api.thegraph.com/deploy/
