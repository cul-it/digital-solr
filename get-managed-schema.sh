#!/bin/bash

if [ -z ${SOLR_USER+x} ] || [ -z ${SOLR_PASSWORD+x} ]
    then 
        echo ""
        echo "Before using this, set up SOLR_USER and SOLR_PASSWORD"
        echo "export SOLR_USER=[[redacted]]"
        echo "export SOLR_PASSWORD=[[redacted]]"
        echo ""
        exit
    fi


curl -X GET -H 'Content-type:application/json'   -u "${SOLR_USER}:${SOLR_PASSWORD}" http://aws-108-118.internal.library.cornell.edu:8983/solr/digitalcollections4/schema > managed-schema.json
