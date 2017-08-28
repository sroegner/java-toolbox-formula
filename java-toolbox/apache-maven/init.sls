{%- from 'java-toolbox/apache-maven/settings.sls' import m2 with context -%}
{%- from 'java-toolbox/macros/pull_and_extract.sls' import pull_and_extract with context %}

{{ pull_and_extract(m2.name, m2.source_file, m2.m2_home) }}
