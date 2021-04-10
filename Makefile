serve: # serve site
	bundle exec jekyll serve -H `hostname -I`

build: # build site
	bundle exec jekyll build
