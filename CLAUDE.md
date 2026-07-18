# CLAUDE.md

CLI / curses SIP softphone based on PJSUA (PJSIP), mainly for manual SIP testing (register, auto-answer, click-to-call). Own repo (Andrius); published as `andrius/pjsua`.

- Alpine and Debian build variants under `alpine/` and `debian/`; driven by `Makefile`. Docker Hub hooks: `post_checkout.erb`, `post_push.erb`.
- Run: `docker run -ti --rm andrius/pjsua register|auto-answer <SIP-ACCOUNT>`.
- Audio works if a sound device is mounted as a volume; tests under `test/`.
- Last commit: 2019-10-30.
