{%- from 'java-toolbox/oracle-jdk/settings.sls' import jdk with context -%}

oracle-jdk-env:
  file.managed:
    - name: /etc/profile.d/oracle-jdk.sh
    - source: salt://java-toolbox/oracle-jdk/oracle-jdk.sh.jinja
    - template: jinja
    - mode: 644
    - user: root
    - group: root
    - context:
      java_home: {{ jdk.java_home }}
