FROM golang:1.21.5-alpine3.18@sha256:d8b99943fb0587b79658af03d4d4e8b57769b21dcf08a8401352a9f2a7228754

# renovate: datasource=repology depName=alpine_3_18/git versioning=deb
ENV GIT_VERSION="2.40.1-r0"
# renovate: datasource=repology depName=alpine_3_18/gcc versioning=deb
ENV GCC_VERSION="12.2.1_git20220924-r10"
# renovate: datasource=repology depName=alpine_3_18/g++ versioning=deb
ENV GPP_VERSION="12.2.1_git20220924-r10"
# renovate: datasource=repology depName=alpine_3_18/zip versioning=deb
ENV ZIP_VERSION="3.0-r12"
# renovate: datasource=repology depName=alpine_3_18/rsync versioning=deb
ENV RSYNC_VERSION="3.2.7-r4"
# renovate: datasource=repology depName=alpine_3_18/ca-certificates versioning=deb
ENV CA_CERTIFICATES="20230506-r0"
# renovate: datasource=repology depName=alpine_3_18/curl versioning=deb
ENV CURL_VERSION="8.5.0-r0"


# Install git.
# Git is required for fetching the dependencies.
RUN apk update && apk add --no-cache \
    git=$GIT_VERSION \
    gcc=$GCC_VERSION \
    g++=$GPP_VERSION \
    zip=$ZIP_VERSION \
    rsync=$RSYNC_VERSION \
    curl=$CURL_VERSION