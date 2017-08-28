{%- set p  = salt['pillar.get']('java-toolbox', {}) %}
{%- set pc = p.get('config', {}) %}
{%- set g  = salt['grains.get']('java-toolbox', {}) %}
{%- set gc = g.get('config', {}) %}

{%- set java_home    = salt['grains.get']('java_home', salt['pillar.get']('java_home')) %}
{%- set download_url = p.get('download_url', 'file:///tmp') %}

{%- set jt = {} %}
{%- do jt.update( { 'java_home'    : java_home,
                    'download_url' : download_url,
                  } ) %}
