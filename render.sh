#!/usr/bin/env bash

render_build() {

  if [ -f "${FILE}" ]; then
    rm -f "${FILE}"
  fi

  "${TOOL_DIR}"/render/render --in="${INPUT_DIR}"/"${FILE}".tmpl --out="${FILE}" --config="${CFG_FILE}"

}


render_all() {
  
  if [ -d "${RNDR_DIR}" ]; then
    rm -rf "${RNDR_DIR}"
  fi

  "${TOOL_DIR}"/render/render --indir="${INPUT_DIR}" --outdir="${OUTPUT_DIR}" --config="${CFG_FILE}"

}


main() {

  #
  render_all

}

main

