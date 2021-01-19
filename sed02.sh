#!/bin/bash

toptop=hk2101a
dirdir=docs/

[ 33 = 34 ] && sed -i \
    -e "s;\bcontent=/;&${toptop};g" \
    -e "s;\bhref=/;&${toptop};g" \
    -e "s;\bsrc=/;&${toptop};g" \
    -e "s;\b${toptop}/${toptop};${toptop};g" \
    -e "s;\b${toptop}/${toptop};${toptop};g" \
    `find ${dirdir} -type f \( -name "*.html" -o -name "*.css" \) `

( 
cd docs && \
    rm -f   ${toptop} ; \
    ln -s . ${toptop} \
    )

