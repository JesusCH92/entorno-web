#!/bin/bash
# Sends Slack notification MSG to CI_SLACK_WEBHOOK_URL (which needs to be set).
# ICON_EMOJI needs to be set to an icon emoji name (without the `:` around it).
CHANNEL=$1
ICON_EMOJI=$2
MSG=$3
CI_SLACK_WEBHOOK_URL=https://teamsalle.slack.com
if [ -z "$CHANNEL" ] || [ -z "$CI_SLACK_WEBHOOK_URL" ] || [ -z "$MSG" ] || [ -z
"$ICON_EMOJI" ]; then
echo "Error. Invalid execution.”
echo “Usage example: $0 channel icon_emoji message"
echo "Set CI_SLACK_WEBHOOK_URL environment variable."
else
curl -X POST --data-urlencode 'payload={"channel": "#'"$CHANNEL"'", "username":
"GitLab QA Bot", "icon_emoji": "'":$ICON_EMOJI:"'", "text": "'"$MSG"'"}'
"$CI_SLACK_WEBHOOK_URL"
fi