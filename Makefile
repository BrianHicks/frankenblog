.PHONY: all
all: optimized

.PHONY: clean
clean:
	rm -rf public optimized elm-stuff node_modules .elm-static-html || yes

elm-stuff: elm-package.json
	elm package install --yes

node_modules: package.json
	npm install

static/javascripts/site.js: elm-stuff $(shell find src -type f -name '*.elm')
	test -d static/javscripts || mkdir -p static/javascripts
	rm $@ || true
	elm make --output $@ src/Main.elm

public: static/javascripts/site.js $(shell find content layouts static -type f)
	hugo
	elm make src/Main.elm

optimized: public
	rm $@ || true
	mkdir $@
	for file in $(shell find $< -type f); do make $$(echo $$file | sed 's/$</$@/g'); done

optimized/%: public/% node_modules
	@mkdir -p $(shell dirname $@)
	scripts/optimize.sh $< $@
