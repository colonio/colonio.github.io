TMPDIR := $(shell mktemp -d)

generate: generate-api-cpp
	jekyll build

generate-api-cpp:
	TMPDIR=$(TMPDIR) doxygen Doxyfile-cpp
	moxygen --anchors -o $(TMPDIR)/api-cpp.md $(TMPDIR)/xml-cpp
	(echo "---\nlayout: default\ntitle: API for C++\n---\n" ; cat $(TMPDIR)/api-cpp.md) > documents/api-cpp.md
	sed -i -e 's/\[`\([a-zA-Z0-9_]\+\)\]/[`\1`]/g' documents/api-cpp.md
	sed -i -e 's/\[\([a-zA-Z0-9_]\+\)`\]/[`\1`]/g' documents/api-cpp.md
	sed -i -e 's/^#### `/### `/g' documents/api-cpp.md

setup:
	sudo apt install doxygen npm gem
	sudo npm install -g moxygen
	sudo gem install jekyll -v 3.8.5

.PHONY:generate generate-api-cpp setup
