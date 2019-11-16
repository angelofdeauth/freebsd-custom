#!/usr/bin/env bash
# @File:     pkglist.sh
# @Created:  2019-11-15 23:35:21
# @Modified: 2019-11-15 23:40:57
# @OA:       aescaler
# @CA:       aescaler
# @Mail:     aescaler@redhat.com
# @Copy:     Copyright © 2019 Antonio Escalera <aescaler@redhat.com>

# gets package names from `pkg info` without version numbers or description
# first removes everything after whitespace, then reverses and removes
# everything until first dash, then reverses back.

pkg info | sed 's/ .*$//g' | rev | sed 's/^[^-]*-//g' | rev
