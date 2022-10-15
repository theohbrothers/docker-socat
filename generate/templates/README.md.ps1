@"
# docker-socat

[![github-actions](https://github.com/theohbrothers/docker-socat/workflows/ci-master-pr/badge.svg)](https://github.com/theohbrothers/docker-socat/actions)
[![github-release](https://img.shields.io/github/v/release/theohbrothers/docker-socat?style=flat-square)](https://github.com/theohbrothers/docker-socat/releases/)
[![docker-image-size](https://img.shields.io/docker/image-size/theohbrothers/docker-socat/latest)](https://hub.docker.com/r/theohbrothers/docker-socat)

Dockerized [socat](http://www.dest-unreach.org/socat/).

## Tags

| Tag | Dockerfile Build Context |
|:-------:|:---------:|
$(
($VARIANTS | % {
    if ( $_['tag_as_latest'] ) {
@"
| ``:$( $_['tag'] )``, ``:latest`` | [View](variants/$( $_['tag'] ) ) |

"@
    }else {
@"
| ``:$( $_['tag'] )`` | [View](variants/$( $_['tag'] ) ) |

"@
    }
}) -join ''
)
"@