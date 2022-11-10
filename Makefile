.PHONY: post
post:
	hugo new posts/$$(date '+%Y-%m-%d').md

.PHONY: dev-server
dev-server:
	hugo server -D

.PHONY: clean-theme
clean-theme:
	rm -rf ./themes
	mkdir ./themes

.PHONY: update-theme
update-theme: clean-theme
	wget -qO- https://github.com/adityatelange/hugo-PaperMod/archive/master.tar.gz | tar -xvz -C ./themes
	mv ./themes/hugo-PaperMod-master ./themes/hugo-PaperMod
