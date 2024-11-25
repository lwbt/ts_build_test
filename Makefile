# cspell:ignore zizmor
workflow="build"

.PHONY: workflow-check branch-new trigger-ga-build

branch-new:
	git branch $(USER)-$(shell date +%F)
	git stash
	git switch $(USER)-$(shell date +%F)
# some commands here

trigger-ga-build:
	gh workflow run ".github/workflows/$(workflow).yaml"
	sleep 10
	gh run list --workflow="$(workflow).yaml"

workflow-check:
#	action-updater update --quiet .github/workflows/
	action-updater detect --quiet .github/workflows/
#	zizmor .github/workflows/
#	pre-commit autoupdate
