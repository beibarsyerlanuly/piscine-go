curl https://raw.githubusercontent.com/kigiri/superhero-api/master/api/all.json | jq ' .[] | select( .id == 70  )'
curl https://raw.githubusercontent.com/kigiri/superhero-api/master/api/all.json | jq ' .[] | select( .id == 70  )'  | wc
curl https://raw.githubusercontent.com/kigiri/superhero-api/master/api/all.json | jq ' .[] | select( .id == 70  )'  | wc -l
curl https://raw.githubusercontent.com/kigiri/superhero-api/master/api/all.json | jq ' .[] | select( .id == 70  ) .name ' 


