elm-stuff: elm-package.json
	elm package install --yes

static/javascripts/site.js: elm-stuff $(shell find src -type f -name '*.elm')
	test -d static/javscripts || mkdir -p static/javascripts
	rm $@ || true
	elm make --output $@ src/Main.elm

public: static/javascripts/site.js $(shell find content layouts static -type f)
	hugo
	elm make src/Main.elm
