base:
  '*':
    - capirca_test
  {{ opts.id }}:
    - {{ opts.id }}_pillar
