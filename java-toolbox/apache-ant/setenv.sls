{%- from 'java-toolbox/apache-ant/settings.sls' import ant with context -%}

apache-ant-env:
  file.managed:
    - name: /etc/profile.d/apache-ant.sh
    - source: salt://java-toolbox/apache-ant/apache-ant.sh.jinja
    - template: jinja
    - mode: 644
    - user: root
    - group: root
    - context:
      ant_home: {{ ant.ant_home }}
