# -*- coding: utf-8 -*-
# vim: ft=sls

{%- from slspath ~ "/map.jinja" import docker with context %}
{%- set sls_package_install = '.install' %}
{%- set sls_macapp_install = '.macosapp.install' %}

include:
  - {{ sls_macapp_install if docker.pkg.use_upstream_app else sls_package_install }}
