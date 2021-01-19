#!/bin/bash

sed -i -e 's;hk2101;hk2101a;g' \
    CNAME \
    config \
    README.md \
    scripts.Hugo/1.txt \
    scripts.Hugo/config.toml \

