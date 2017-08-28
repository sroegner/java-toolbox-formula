{%- from 'java-toolbox/settings.sls' import jt with context -%}
{%- set p  = salt['pillar.get']('java-toolbox.apache-maven', {}) -%}

{%- set version     = p.get('version', '3.5.0') %}
{%- set source_file = p.get('source_file', 'apache-maven-' + version + '-bin.tar.gz') %}
{%- set m2_home     = p.get('m2_home', '/usr/lib/apache-maven-' + version ) %}

{%- set m2 = {} %}
{%- do m2.update({ 'name'         : 'apache-maven',
                   'version'      : version,
                   'source_file'  : source_file,
                   'm2_home'      : m2_home,
                 }) %}
