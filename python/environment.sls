{%- from "python/map.jinja" import environment with context %}
{%- from "linux/map.jinja" import network with context %}
{%- if environment.enabled %}

python_packages:
  pkg.installed:
  - names: {{ environment.pkgs.system }}

{%- if environment.module.development %}

python_development_packages:
  pkg.installed:
  - names: {{ environment.pkgs.development }}
  - require:
    - pkg: python_packages

{%- endif %}

{%- for user in environment.user %}
{% set user_home = salt['user.info'](user.name).get('home') %}

{%- if network.proxy.host == 'none' and user.pypi_mirror is not defined %}

{{user_home}}/.pip/pip.conf:
  file.absent

{%- else %}

{{user_home}}/.pip/pip.conf:
  file.managed:
  - defaults:
      environment: {{ user }}
  - makedirs: True
  - template: jinja
  - source: salt://python/files/pip.conf

{%- endif %}

{%- if user.pypi_mirror is defined %}

{{user_home}}/.pydistutils.cfg:
  file.managed:
  - defaults:
      environment: {{ user }}
  - template: jinja
  - source: salt://python/files/pydistutils.cfg

{{user_home}}/.pypirc:
  file.managed:
  - defaults:
      environment: {{ user }}
  - template: jinja
  - source: salt://python/files/pypirc

{%- endif %}
{%- endfor %}

{%- if environment.module.django %}

python_django_packages:
  pkg.installed:
  - names: {{ environment.pkgs.django }}
  - require:
    - pkg: python_packages

{%- endif %}

{%- endif %}