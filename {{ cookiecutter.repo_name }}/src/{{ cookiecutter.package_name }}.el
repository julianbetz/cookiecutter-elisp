;;; {{ cookiecutter.package_name }}.el --- {{ cookiecutter.description_short }} -*- coding: utf-8; lexical-binding: t -*-

{% set comment_string = ";;" -%}
{% from 'templates/copyright.jinja' import get_copyright, get_license_note -%}
{{ get_copyright(cookiecutter.author_name, cookiecutter.license, comment_string) }}
;; Author: {{ cookiecutter.author_name }}
;; Package-Version: 0.0.0
;; Created: {% now 'utc', '%Y-%m-%d' %}
;; Package-Requires: {{ cookiecutter.dependencies }}
{% if cookiecutter.keywords != "" -%}
;; Keywords: {{ cookiecutter.keywords }}
{% endif -%}
;; URL: https://github.com/{{ cookiecutter.github_username }}/{{ cookiecutter.repo_name }}

;; This file is NOT part of GNU Emacs.

{{ get_license_note(cookiecutter.license, comment_string) }}

;;; Code:

{% if cookiecutter.dependencies != "()" -%}
{% for dependency in cookiecutter.dependencies[2:-2].split(') (') -%}
{% if dependency.strip().split(' ')[0] != "emacs" -%}
(require '{{ dependency.strip().split(' ')[0] }})
{% endif -%}
{% endfor -%}
{% endif -%}
(provide '{{ cookiecutter.package_name }})


;;; {{ cookiecutter.package_name }}.el ends here
