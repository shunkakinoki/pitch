run:
	@echo "make run asyncmd..."
	fswatch -0 -d src | xargs -0 -n 1 make auto-commit

auto-commit:
	@echo "make run auto-commit..."
	-git checkout -b auto-commit
	-git add src
	-git commit -am "auto-commit"
	-git push --set-upstream origin auto-commit
	-hub pull-request --draft --no-edit
