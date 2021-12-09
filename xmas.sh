#!/bin/bash

BEGIN=`date "+%Y%m%d"`
END="20211225"
 
BEGIN_UT="$(date -d ${BEGIN} +%s)"
END_UT="$(date -d ${END} +%s)"

calc="$(((END_UT - BEGIN_UT) / (60 * 60 * 24)))"
niti="日"
hide="||"
asta="**"
day="$hide$asta$calc$niti$asta$hide"

curl -H "Content-Type: application/json" -X POST -d '{"username": "クリスマスまであと", "content": "'$day'"}' WebhookのURL
