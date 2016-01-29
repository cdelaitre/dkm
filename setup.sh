#!/bin/bash

function dkm-setup-check-file {
        if [[ -x ${SOURCE} ]]; then
                echo "[$0] INFO ${SOURCE} is an executable file OK";
        else
                echo "[$0] ERR ${SOURCE} is not an executabe file KO";
        fi
}

function dkm-setup-check-link {
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

function dkm-setup-export-home {
	export DKM_HOME=${DKM_HOME}
	echo DKM_HOME=${DKM_HOME}
}

function dkm-setup {
	dkm-setup-export-home
	dkm-setup-check-file
	dkm-setup-link
	dkm-setup-check-link
}

source ./dkm.conf 

SOURCE=${DKM_HOME}/bin/dkm
DEST=${DKM_PATH}/dkm

dkm-setup

