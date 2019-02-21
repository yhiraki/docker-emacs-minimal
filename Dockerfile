from emacs-builder as builder

from ubuntu:18.04

copy --from=builder /usr/local /usr/local

entrypoint ["emacs"]
