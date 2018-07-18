python:
  environment:
    enabled: true
    user:
      root:
        pypi_user: user
        pypi_password: password
        pypi_mirror:
          protocol: http
          host: pypi.local
          port: 8084
          upstream_fallback: true
          user: user
          password: password