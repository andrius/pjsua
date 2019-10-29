SIP user agent (cli) based on PJSUA
===================================

<!-- MarkdownTOC autolink="true" uri_encoding="false" levels="1,2,3,4,5,6" GFM -->

- [Purpose](#purpose)
- [Usage](#usage)
- [Configuration](#configuration)

<!-- /MarkdownTOC -->

## Purpose

PJSUA ([project page](https://www.pjsip.org/pjsua.htm)) is an CLI and curses SIP
softphone, part of the [PJSIP stack](http://pjsip.org). Within Linux, users
could use it as a phone to dial numbers right from the command line, i.e. for
click-to-call. This docker image support audio, if sound device will be mounted
as a docker volume.

But the main goal of this docker image is to let users do manual testing.

## Usage

Simply run it, there is few scripts:

- SIP account register and await for calls and user operations:

    ```bash
    docker run -ti --rm andrius/pjsua register SIP-ACCOUNT
    ```

- SIP user register and will auto-answer the call:

    ```bash
    docker run -ti --rm andrius/pjsua auto-answer SIP-ACCOUNT
    ```

- SIP user register and making a call (SIP invite) to destination:

    ```bash
    docker run -ti --rm andrius/pjsua dial SIP-ACCOUNT DESTINATION
    ```


## Configuration

It does accept environment variables, easiest way to configure is to use `.env`
file. Following variables should be set:

- `SIP_SERVER_HOST` - IP address or hostname (name of docker service in
  docker-compose of the SIP server. _Default value is "asterisk")_;

- `SIP_SERVER_PORT` - SIP port. _Default value is "5060"_;

- `SIP_TRANSPORT` - SIP transport: `udp`, `tcp` or `tls`. _Default value is "udp"_;

- `SIP_PASSWORD` - Password of the SIP account.

Remaining parameter, SIP username should be set as command-line argument of
script (listed in the [usage section](#usage))

