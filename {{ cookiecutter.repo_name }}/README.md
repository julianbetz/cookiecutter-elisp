# {{ cookiecutter.project_name }}
{%- if cookiecutter.description_short != "" %}

{{ cookiecutter.description_short }}
{%- endif %}
{%- if cookiecutter.test_framework == "Travis CI" %}

[![Build Status](https://travis-ci.com/{{ cookiecutter.github_username }}/{{ cookiecutter.repo_name }}.svg?branch=master)](https://travis-ci.com/{{ cookiecutter.github_username }}/{{ cookiecutter.repo_name }})
{%- endif %}
