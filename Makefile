# cspell:ignore zizmor

.PHONY: workflow-check

workflow-check:
	action-updater update --quiet .github/workflows/
#	zizmor .github/workflows/
	pre-commit autoupdate
