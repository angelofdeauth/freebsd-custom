#!/usr/bin/env bash
FILE="mkimg.sh"
INPUT_DIR=tmpl/
OUTPUT_DIR=.rendered/
TOOL_DIR=tool
CFG_FILE="${1}"
ROOT_DIR="$(dirname $(readlink -f $0))"

build() {

  . prereq.sh
  fetch_prerequisites
  . render.sh
  render_all
  mv "${OUTPUT_DIR}"/"${FILE}" "${FILE}"
  chmod +x "${FILE}"
  ./"${FILE}" > .build.log
  rm -rf "${OUTPUT_DIR}"
  rm -rf "${FILE}"

}


main() {

  if [ "$#" -ne 1 ]; then
    echo "Invalid number of arguments, 1 expected"
    exit 1
  fi

  build

}

main "$@"

