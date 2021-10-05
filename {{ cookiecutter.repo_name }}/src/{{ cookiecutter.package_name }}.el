;;; {{ cookiecutter.package_name }}.el --- {{ cookiecutter.description_short }} -*- coding: utf-8; lexical-binding: t -*-

;; Copyright (C) {% now 'utc', '%Y' %} {{ cookiecutter.author_name }}

;; Author: {{ cookiecutter.author_name }}
;; Package-Version: 0.0.0
;; Created: {% now 'utc', '%Y-%m-%d' %}
;; Package-Requires: {{ cookiecutter.dependencies }}
{%- if cookiecutter.keywords != "" %}
;; Keywords: {{ cookiecutter.keywords }}
{%- endif %}
;; URL: https://github.com/{{ cookiecutter.github_username }}/{{ cookiecutter.repo_name }}

;; This file is NOT part of GNU Emacs.
{%- if cookiecutter.license == "Apache-2.0" %}

;; Licensed under the Apache License, Version 2.0 (the "License");
;; you may not use this file except in compliance with the License.
;; You may obtain a copy of the License at
;;
;;      http://www.apache.org/licenses/LICENSE-2.0
;;
;; Unless required by applicable law or agreed to in writing, software
;; distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
;; WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
;; See the License for the specific language governing permissions and
;; limitations under the License.
{%- endif %}


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
