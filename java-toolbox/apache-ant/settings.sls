{%- from 'java-toolbox/settings.sls' import jt with context -%}
{%- set p  = salt['pillar.get']('java-toolbox.apache-ant', {}) -%}

{%- set version     = p.get('version', '1.10.1') %}
{%- set source_file = p.get('source_file', 'apache-ant-' + version + '-bin.tar.gz') %}
{%- set ant_home    = p.get('ant_home', '/usr/lib/apache-ant-' + version ) %}

{%- set ant = {} %}
{%- do ant.update({ 'name'         : 'apache-ant',
                    'version'      : version,
                    'source_file'  : source_file,
                    'ant_home'     : ant_home,
                  }) %}
