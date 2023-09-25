$local:VERSIONS = @(
    '0.0.0'
)
$VARIANTS = @(
    foreach ($v in $local:VERSIONS) {
        @{
            # Metadata object
            _metadata = @{
                distro = 'alpine'
                distro_version = '3.12'
                platforms = 'linux/386,linux/amd64,linux/arm/v6,linux/arm/v7,linux/arm64,linux/s390x'
                job_group_key = $v
            }
            # Docker image tag. E.g. '3.12'
            tag = $v
            tag_as_latest = $true
        }
    }
)

# Docker image variants' definitions (shared)
$VARIANTS_SHARED = @{
    buildContextFiles = @{
        templates = @{
            'Dockerfile' = @{
                common = $true
                includeHeader = $false
                includeFooter = $false
                passes = @(
                    @{
                        variables = @{}
                    }
                )
            }
        }
    }
}
