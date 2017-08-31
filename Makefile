help:
	@echo "deploy 		move files from /_jekyll/_site to the root for deployment to github"

deploy:
	cp -r ./_jekyll/_site/* .
