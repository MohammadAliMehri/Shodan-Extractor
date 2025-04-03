#!/bin/bash

# Shodan Extractor
read -p "Enter your domain: " DOMAIN
# Send request with Curl and save result
curl -s "https://www.shodan.io/domain/$DOMAIN" -o page$DOMAIN
# extract subdomains from shodan page
grep -oP '(?<=<li>)[^<]+' page$DOMAIN > subdomain_$DOMAIN.txt
# extract IPs from shodan page
grep -oP '\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b' page$DOMAIN > ips_$DOMAIN.txt
rm page$DOMAIN
echo "Subdomains & IPs Extracted."

echo "Subdomains for $DOMAIN "
echo "====================================="
sed "s/$/\.$DOMAIN/" subdomain_$DOMAIN.txt
# cat subdomain_$DOMAIN.txt
echo "====================================="

echo "IPs for Subdomains from $DOMAIN "
echo "====================================="
cat ips_$DOMAIN.txt
echo "====================================="
# delete or save output function
function delete_or_save() {
  FILE="$1"
  read -p "Delete '$FILE'? (y/n): " a
  if [ "${a,,}" = "y" ]; then
    rm "$FILE"
    echo "Deleted $FILE."
  else
    echo "Kept $FILE."
  fi
}

delete_or_save subdomain_$DOMAIN.txt
delete_or_save ips_$DOMAIN.txt
