contentfiles := $(filter-out content/_index.md, $(wildcard content/*.md))
pitchfiles := $(patsubst content/%.md,pitch/%.md,$(contentfiles))
tmpfile := $(shell mktemp)

all: pitch
content: $(contentfiles)
pitch: $(pitchfiles)
pitch/%.md: content/%.md
	@[ -d pitch/$* ] || mkdir -p pitch/$*
	cp $< pitch/$*/pitch.md
	tail -n +8 pitch/$*/pitch.md > $(tmpfile)
	cat $(tmpfile) > pitch/$*/pitch.md
.PHONY: content pitch kitty
