while IFS='' read -r IP || [ -n "${IP}" ]; do
    sed -i -e 's@deny:@  - '"$IP"'\n      deny:@g' root/conf.yaml
done < ip_list
