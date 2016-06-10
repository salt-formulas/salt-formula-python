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

{%- if network.proxy.host == 'none' %}

/root/pip/pip.conf:
  file.absent
  
{%- else %}

/root/pip:
  file.directory

/root/pip/pip.conf:
  file.managed:
  - template: jinja
  - source: salt://python/files/pip.conf

{%- endif %}

{%- if environment.module.django %}

python_django_packages:
  pkg.installed:
  - names: {{ environment.pkgs.django }}
  - require:
    - pkg: python_packages

{%- endif %}

{%- endif %}