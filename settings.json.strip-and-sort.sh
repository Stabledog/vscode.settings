#!/bin/bash
# The name says it all
#

die() {
    echo "ERROR: $@" >&2
    exit 1
}

Python=$(which python3.10 python3.9 python3.8 python3.7 | head -n 1)

[[ -f settings.json ]] || die No settings.json in $PWD

mkdir -p tmp
bakfile=tmp/settings.json.$RANDOM
cp settings.json $bakfile || die Failed making backup $bakfile
echo "Backup of settings.json is $bakfile"

rm tmp/settings.json.{10,20} &>/dev/null

< settings.json /usr/bin/tr -d '\r' > tmp/settings.json.10


sort_json_py() {
   cat <<- EOF
from json import dumps,loads
with open("$1","r") as f_1:
    obj=loads(f_1.read())
print(dumps(obj,indent=4,sort_keys=True))
EOF
}


sort_json_py ./tmp/settings.json.10 | $Python - > ./tmp/settings.json.20
[[ $? == 0 ]] || die Python filter failed

[[ -f ./tmp/settings.json.20 ]] || fail step 20

mv tmp/settings.json.20 settings.json || die fail step 20b

echo "settings.json reformat OK"


