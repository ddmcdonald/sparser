TAGS:
	find Sparser/code/s -name "*.lisp" -print | etags -

clean:
	rm -rf Sparser/code/f/*

# e.g., make grep pattern=foo
pattern=
grep:
	grep --recursive --include="*.lisp" -nHi -e "$(pattern)" Mumble Sparser/code/s

.PHONY: TAGS clean grep
