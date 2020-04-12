#!/bin/bash

rgp=../rgunp # rebel galaxy path
rup=../unpak # rebel galaxy's unpacked path
lep=../lua/lua # lua executabe path
_ifs="${IFS}"

function error() {
 >&2 echo "*** Error: ${@}"
 exit 1
}

if [ ! -d "${rgp}" ]; then
 error "Rebel Galaxy not found at: ${rgp}"
fi

function dat2txt() {
 local res
 
 res="$("${lep}" dat2txt.lua "${1}" 2>&1)"

 echo "${res}" 
 if echo "${res}" | egrep -q "^!!! unknown external key"; then
  return 1
 fi
}

IFS=$'\n'
files=($(find "${rup}" -type f))
IFS="${_ifs}"

dat=0
pln=0
ttl=0
unableto=()
for file in "${files[@]}"; do
 dir="${file%/*}"
 dir="${dir#${rup}/}"
 dir="${dir,,}" # let's also convert those ugly uppercase
 rgd="${rgp}/${dir}"
 
 if [ ! -d "${rgd}" ]; then
  echo -n "Creating directory: ${rgp}"
  mkdir -p "${rgd}" || error "unable to create directory: ${rgd}"
  echo "done."
 fi
 
 fname="${file##*/}"
 
 fname_noid="${fname#*_}"
 fname_noid="${fname_noid,,}" # new stuff lowercase.

 # Just for the record, these are all file extensions that get extracted:
 # DAT MDL DDS IMAGESET LAYOUT WDAT PNG WAV OGG TTF TGA ANNO BMP MESH MATERIAL
 # SBIN FRAG FX VERT HLSL PROGRAM RAW COMPOSITOR PU FONTDEF SKELETON ANIMATION
 echo "File: ${dir}/${fname_noid}"
 case "${fname##*.}" in
  "ANIMATION"|"DAT"|"IMAGESET"|"WDAT")
   dat=$(( 10#${dat} + 1 ))
   echo -n "- Converting crypted file: "
   datctt="$(dat2txt ${file})"
   retstat=${?}
  
   if [ ${retstat} -ne 0 ]; then
    unableto+=("${file}")
    echo -n "error, skipping: "
    echo "${datctt}" > "${rgd}/${fname_noid}_fail.dump"
    cp "${file}" "${rgd}/${fname_noid}"
    echo "done."
   else
    echo "${datctt}" > "${rgd}/${fname_noid}"
    echo "done."
   fi
   ;;
  *)
   echo -n "- Deploying: "
   cp "${file}" "${rgd}/${fname_noid}"
   echo "done."
   pln=$(( 10#${pln} + 1 ))
   ;;
 esac

 ttl=$(( 10#${ttl} + 1 ))
done

echo "Statistics
- .DAT crypted files: ${dat}
  - deployable
  - missing references: ${#unableto[@]}
- plain files: ${pln}
- total files: ${ttl}"