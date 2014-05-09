#!/bin/bash
if [ -d WEB-INF ]; then
   zip -r ../target/site-2.3.0.war WEB-INF
else
   mkdir -p WEB-INF/classes
   echo 'grails.serverURL="http://grailsorg-dev.cfapps.io/"' > WEB-INF/classes/site-config.groovy
   echo 'edit WEB-INF/classes/site-config.groovy and re-run this script'
fi
