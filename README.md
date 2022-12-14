# docker-socat

[![github-actions](https://github.com/theohbrothers/docker-socat/workflows/ci-master-pr/badge.svg)](https://github.com/theohbrothers/docker-socat/actions)
[![github-release](https://img.shields.io/github/v/release/theohbrothers/docker-socat?style=flat-square)](https://github.com/theohbrothers/docker-socat/releases/)
[![docker-image-size](https://img.shields.io/docker/image-size/theohbrothers/docker-socat/latest)](https://hub.docker.com/r/theohbrothers/docker-socat)

Dockerized [socat](http://www.dest-unreach.org/socat/).

## Tags

| Tag | Dockerfile Build Context |
|:-------:|:---------:|
| `:3.12`, `:latest` | [View](variants/3.12 ) |

## Development

Requires Windows `powershell` or [`pwsh`](https://github.com/PowerShell/PowerShell).

```powershell
# Install Generate-DockerImageVariants module: https://github.com/theohbrothers/Generate-DockerImageVariants
Install-Module -Name Generate-DockerImageVariants -Repository PSGallery -Scope CurrentUser -Force -Verbose

# Edit ./generate templates

# Generate the variants
Generate-DockerImageVariants .
```
