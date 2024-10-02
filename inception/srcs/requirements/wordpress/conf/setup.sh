#!/bin/sh

wp --allow-root --path=/var/www core install \
  --url="$DOMAIN_NAME" \
  --title="Inception Project" \
  --admin_user="$WPADUSER" \
  --admin_password="$WPADPASS" \
  --admin_email="abduabdu@student.42abudhabi.ae"

wp user create "$WPUSER1" "user1@student.42abudhabi.ae" \
  --role=author \
  --user_pass="$WPUSER1PASS" \
  --allow-root

wp --allow-root --path=/var/www option update blogname "abdu's Word-Press"
wp --allow-root --path=/var/www option update blogdescription "The Inception of Things"
wp --allow-root --path=/var/www option update blog_public 0

/usr/sbin/php-fpm81 -F