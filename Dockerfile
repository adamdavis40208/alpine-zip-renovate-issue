FROM golang:1.21.0-alpine3.18@sha256:445f34008a77b0b98bf1821bf7ef5e37bb63cc42d22ee7c21cc17041070d134f

# renovate: datasource=repology depName=alpine_3_18/git versioning=deb
ENV GIT_VERSION="2.40.1-r0"
# renovate: datasource=repology depName=alpine_3_18/gcc versioning=deb
ENV GCC_VERSION="12.2.1_git20220924-r10"
# renovate: datasource=repology depName=alpine_3_18/g++ versioning=deb
ENV GPP_VERSION="12.2.1_git20220924-r10"
# renovate: datasource=repology depName=alpine_3_18/zip versioning=deb
ENV ZIP_VERSION="3.0-r11"
# renovate: datasource=repology depName=alpine_3_18/rsync versioning=deb
ENV RSYNC_VERSION="3.2.7-r4"
# renovate: datasource=repology depName=alpine_3_18/ca-certificates versioning=deb
ENV CA_CERTIFICATES="20230506-r0"
# renovate: datasource=repology depName=alpine_3_18/curl versioning=deb
ENV CURL_VERSION="8.3.0-r0"


# Install git.
# Git is required for fetching the dependencies.
RUN apk update && apk add --no-cache \
    git=$GIT_VERSION \
    gcc=$GCC_VERSION \
    g++=$GPP_VERSION \
    zip=$ZIP_VERSION \
    rsync=$RSYNC_VERSION \
    curl=$CURL_VERSION