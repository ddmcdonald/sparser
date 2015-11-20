TAGS:
	find Sparser/code/s -name "*.lisp" -print | etags -

# e.g., make grep pattern=foo
pattern=
grep:
	grep --recursive --include="*.lisp" -nHi -e "$(pattern)" Sparser/code/s

.PHONY: TAGS grep
