{% macro pull_and_extract(name, source_file, target_dir) -%}
{%- from 'java-toolbox/settings.sls' import jt with context -%}

{{ target_dir }}:
  file.directory:
    - owner: root
    - group: root
    - mode: 0755

unpack-{{ name }}-from-remote:
  cmd.run:
    - name: /usr/bin/curl -L {{ jt.download_url }}/{{ source_file }} | /bin/tar -xz --strip-components 1 --no-same-owner
    - cwd: {{ target_dir }}
    - require:
      - file: {{ target_dir }}
    - unless: test -d {{ target_dir }}/bin

{%- endmacro %}
