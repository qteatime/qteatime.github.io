serve:
	bundle exec jekyll serve --drafts -w --host "0.0.0.0"

serve-incremental:
	bundle exec jekyll serve --drafts -w --host "0.0.0.0" --incremental

.PHONY: serve serve-incremental
