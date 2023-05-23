github_dev_profile ?= $(GITHUB_DEV_PROFILE)
graph_dev_access_token ?= $(GRAPH_DEV_ACCESS_TOKEN)
satsuma_access_token ?= $(SATSUMA_ACCESS_TOKEN)

major_version_label ?= 0.0.1
minor_version_label ?= $(shell date +%Y-%m-%d-%H_%M_%S)

build-docker:
	docker build -t moonwell-subgraph .

bash:
	docker run --rm -it \
		-v $$(pwd):$$(pwd) \
		--workdir $$(pwd) \
		moonwell-subgraph \
		bash

clean:
	rm -rf subgraph.yaml src/constants.ts generated/ build/ config/config.ts

generate-config:
	YARN_SILENT=1 yarn mustache config/$(network).subgraph.json subgraph.mustache > subgraph.yaml && \
	cp config/$(network).config.ts config/config.ts

codegen:
	yarn graph codegen

.PHONY: build
build:
	yarn graph build

deploy:
	yarn graph deploy moonwell-fi/moonwell-$(network) --access-token $(graph_access_token) --node https://api.thegraph.com/deploy/

deploy-dev:
	yarn graph deploy $(github_dev_profile)/moonwell-$(network) --access-token $(graph_dev_access_token) --node https://api.thegraph.com/deploy/

deploy-local:
	yarn graph deploy $(github_dev_profile)/moonwell-$(network) --node http://localhost:8020 --ipfs http://localhost:5001

deploy-satsuma:
	yarn graph deploy $(network) \
	--version-label $(major_version_label)-$(minor_version_label) \
	--node https://app.satsuma.xyz/api/subgraphs/deploy \
	--deploy-key $(satsuma_access_token)

all:
	$(MAKE) clean generate-config codegen deploy

dev:
	$(MAKE) clean generate-config codegen deploy-dev deploy-satsuma

local:
	$(MAKE) clean generate-config codegen deploy-local

test:
	graph test
