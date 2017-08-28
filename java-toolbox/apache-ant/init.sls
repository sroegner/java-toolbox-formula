{%- from 'java-toolbox/apache-ant/settings.sls' import ant with context -%}
{%- from 'java-toolbox/macros/pull_and_extract.sls' import pull_and_extract with context %}

{{ pull_and_extract(ant.name, ant.source_file, ant.ant_home) }}
