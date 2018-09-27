# centos7 build git
example
```
FROM zdjjs/centos7-git AS git
FROM centos:centos7
COPY --from=git /git /usr/local
```

