##/bin/bash
# Use this script to update your webpage with one command.
wget https://keybase.io/jfalava/pgp_keys.asc
rm -r httpdocs/
git clone https://github.com/jfalava/linktree
mv pgp_keys.asc /linktree
mv linktree/ httpdocs
chown -R webmaster httpdocs/
chmod 0755 httpdocs/
chmod 0755 httpdocs/*.*