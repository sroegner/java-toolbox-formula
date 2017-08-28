{%- from 'java-toolbox/oracle-jdk/settings.sls' import jdk with context -%}
{%- from 'java-toolbox/macros/pull_and_extract.sls' import pull_and_extract with context %}

{{ pull_and_extract(jdk.name, jdk.source_file, jdk.java_home) }}
