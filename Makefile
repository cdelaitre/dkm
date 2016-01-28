#!/bin/bash
#include dkm.conf
#include _dkm/*

setup-check:
	DKM=`pwd`/dkm
	@if [[ -L $$DKM ]]; then\
                echo "$$0 Setup INFO $$DKM OK";\
        else\
                echo "$$0 Setup ERR $$DKM KO";\
        fi

setup-link:
	DKM=`pwd`/dkm
	@if [ ! -L ${DKM} ]; then\
		@ln -s ${DKM} /usr/local/bin/dkm;\
	fi

setup: setup-link setup-check
