# -*- coding: utf-8 -*-

{% set comment_string = "#" -%}
{% from 'templates/copyright.jinja' import get_copyright, get_license_note -%}
{{ get_copyright(cookiecutter.author_name, cookiecutter.license, comment_string) }}
{{ get_license_note(cookiecutter.license, comment_string) }}
{% if cookiecutter.license == "GPL-3.0-or-later" -%}
### {{ cookiecutter.project_name }} Copyright (C) {% now 'utc', '%Y' %} {{ cookiecutter.author_name }}
### This program comes with ABSOLUTELY NO WARRANTY.
### This is free software, and you are welcome to redistribute it
### under certain conditions.  Type `make license' for details.

{% endif -%}
# ============================================================================


### The following subcommands are available:

.DEFAULT_GOAL := help


# Self-documentation
# ----------------------------------------------------------------------------

# Prints help messages.
#
# Document-level documentation blocks are indicated by three hash characters
# at the beginning of lines.  Target documentation strings are indicated by
# two hash characters at the beginning of lines and must comprise only a
# single line right before the target to be documented.  They should be no
# longer than 60 characters; the targets themselves should be no longer than
# 19 characters.
#
# A document-level documentation block at the end of the file results in no
# vertical spacing between this block and the command list.

.PHONY: help
## Print this message and exit
help:
	@sed -e '/^###\($$\|[^#]\)/,/^$$\|^[^#]\|^#[^#]\|^##[^#]/!d' $(MAKEFILE_LIST) | sed 's/^\($$\|[^#].*$$\|#[^#].*$$\|##[^#].*$$\)//' | sed 's/^### *//' | sed 's/  / /'
	@grep -E '^##[^#]' -A 1 $(MAKEFILE_LIST) | sed 's/^\([^ #][^ ]*\):\($$\| .*$$\)/\1/' | awk 'BEGIN {RS = "\n--\n"; FS = "\n"}; {sub(/^## */, "", $$1); printf "\033[32m%-19s\033[0m %s\n", $$2, $$1}'
{%- if cookiecutter.license == "GPL-3.0-or-later" %}

.PHONY: license
## Show licensing and warranty conditions
license:
	@"$${PAGER}" LICENSE
{%- endif %}


# Unit tests
# ----------------------------------------------------------------------------

.PHONY: test
## Perform unit tests
test:
	@emacs -Q --batch -L src/elisp -L test/elisp -l ert -l test-everything.el -f ert-run-tests-batch-and-exit
