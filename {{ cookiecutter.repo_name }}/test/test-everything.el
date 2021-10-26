;;; test-everything.el --- Unit tests for {{ cookiecutter.package_name }} -*- coding: utf-8; lexical-binding: t -*-

{% set comment_string = ";;" -%}
{% from 'templates/copyright.jinja' import get_copyright, get_license_note -%}
{{ get_copyright(cookiecutter.author_name, cookiecutter.license, comment_string) }}
;; Author: {{ cookiecutter.author_name }}
;; Created: {% now 'utc', '%Y-%m-%d' %}
;; URL: https://github.com/{{ cookiecutter.github_username }}/{{ cookiecutter.repo_name }}

;; This file is NOT part of GNU Emacs.

{{ get_license_note(cookiecutter.license, comment_string) }}

;;; Code:

()


;;; test-everything.el ends here
