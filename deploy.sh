#!/bin/bash
acorn build -t ghcr.io/randall-coding/acorn/baserow && \
acorn push ghcr.io/randall-coding/acorn/baserow && \
acorn run -n baserow ghcr.io/randall-coding/acorn/baserow
