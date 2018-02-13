#!/bin/sh

# Set up the Pa11y configuration.
echo "{\n"\
  "  \"port\": $PA11Y_PORT,\n"\
  "  \"noindex\": $PA11Y_NOINDEX,\n"\
  "  \"readonly\": $PA11Y_READONLY,\n"\
  "  \"sitemessage\": \"$PA11Y_SITEMESSAGE\",\n"\
  "  \"webservice\": {\n"\
	"    \"database\": \"$PA11Y_WEBSERVICE_DATABASE\",\n"\
	"    \"host\": \"$PA11Y_WEBSERVICE_HOST\",\n"\
	"    \"port\": $PA11Y_WEBSERVICE_PORT,\n"\
	"    \"cron\": \"$PA11Y_WEBSERVICE_CRON\"\n"\
	"  }\n"\
	"}" | tee /pa11y-dashboard/config/production.json

# Start up the dashboard.
cd /pa11y-dashboard && node .
