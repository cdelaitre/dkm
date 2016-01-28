#!/bin/bash

function dkm-setup-check {
	if [[ -L ${DEST} ]]; then
                echo "[$0] INFO ${DEST} is a link OK";
        else
                echo "[$0] ERR ${DEST} is not a link KO";
        fi
}

function dkm-setup-link {
	if [[ ! -L ${DEST} ]]; then
		ln -s ${SOURCE} ${DEST}
	fi
}

function dkm-setup {
	dkm-setup-link
	dkm-setup-check
}

source dkm.conf 

SOURCE=`pwd`/bin/dkm
DEST=${DKM_SETUP_PATH}/dkm

dkm-setup
