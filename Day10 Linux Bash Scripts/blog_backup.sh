#!/bin/bash
# Place me under /scripts directory

# Zip up file
zip /backup/xfusioncorp_blog.zip /var/www/html/blog
echo "Blog directory zipped successfully."

# Copy zip file to backup directory
#cp xfusioncorp_blog.zip /backup/xfusioncorp_blog.zip
#echo "Backup copy created successfully."

# Copy Archive file to remote server
sshpass -p "H@wk3y3" scp /backup/xfusioncorp_blog.zip clint@stbkp01.stratos.xfusioncorp.com:/backup/xfusioncorp_blog.zip
echo "Backup file copied to remote server successfully."