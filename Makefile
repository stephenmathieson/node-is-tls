
BIN := node_modules/.bin
.DEFAULT_GOAL := test

node_modules: package.json
	npm install
	touch $@

test: node_modules
	$(BIN)/mocha test.js --reporter spec --require co-mocha

.PHONY: test
