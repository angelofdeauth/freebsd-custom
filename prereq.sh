#!/usr/bin/env bash

fetch_prerequisites() {
  
  if [ ! -d "${TOOL_DIR}" ]; then
    mkdir -p "${TOOL_DIR}"
  fi

  cd "${TOOL_DIR}"
  if [ ! -d render ]; then
    git clone https://github.com/VirtusLab/render
    cd render
  else
    cd render
    git pull || true
  fi
  
  gmake build
  cd "${ROOT_DIR}"

}
