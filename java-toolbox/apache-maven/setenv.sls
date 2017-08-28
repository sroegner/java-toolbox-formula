{%- from 'java-toolbox/apache-maven/settings.sls' import m2 with context -%}

apache-maven-env:
  file.managed:
    - name: /etc/profile.d/apache-maven.sh
    - source: salt://java-toolbox/apache-maven/apache-maven.sh.jinja
    - template: jinja
    - mode: 644
    - user: root
    - group: root
    - context:
      m2_home: {{ m2.m2_home }}
