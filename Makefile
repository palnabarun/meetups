.PHONY: serve build clean download-theme

DESTINATION?=site
BASE_URL?=https://meetups.nabarun.dev

serve:
	hugo server

build:
	hugo --baseURL $(BASE_URL) --destination $(DESTINATION) --cleanDestinationDir --minify

clean:
	rm -rf $(DESTINATION) public

download-theme:
	git submodule update --init --recursive
