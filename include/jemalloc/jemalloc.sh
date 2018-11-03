#!/bin/sh

objroot=$1

cat <<EOF
#ifndef JEMALLOC_H_
#define JEMALLOC_H_
#ifdef __cplusplus
extern "C" {
#endif

EOF

for hdr in jemalloc_defs.h jemalloc_rename.h jemalloc_macros.h \
           jemalloc_protos.h jemalloc_typedefs.h jemalloc_mangle.h ; do
    grep -v 'Generated from .* by configure\.' "${objroot}include/jemalloc/${hdr}" \
      | sed -e 's/ $//g'
  echo
done

cat <<EOF
#ifdef __cplusplus
}
#endif
#endif /* JEMALLOC_H_ */
EOF
