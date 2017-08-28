{%- from 'java-toolbox/settings.sls' import jt with context -%}
{%- set p  = salt['pillar.get']('java-toolbox.oracle-jdk', {}) -%}

# this combination of version and the name template just follows the conventions
# used for linux jdk tarballs at otn
{%- set version     = p.get('version', '8u131') %}
{%- set source_file = p.get('source_file', 'jdk-' + version + '-linux-x64.tar.gz') %}

# Allow a global `java_home` pillar value, if none is set fall back to either
# what is set in oracle-jdk.java_home or make up a path including the version
{%- if jt.java_home %}
{%- set java_home   = jt.java_home %}
{%- else %}
{%- set java_home   = '/usr/local/jdk-' + version %}
{%- endif %}

{%- set jdk = {} %}
{%- do jdk.update({ 'name'         : 'oracle-jdk',
                    'version'      : version,
                    'source_file'  : source_file,
                    'java_home'    : java_home,
                  } ) %}
