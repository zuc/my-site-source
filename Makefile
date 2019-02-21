.PHONY: build serve deploy

build:
	hugo

deploy: build
	echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
	cd public/ && \
		git add . && \
		git commit -m "Rebuilding site at `date`" && \
		git push origin master

serve:
	hugo serve
