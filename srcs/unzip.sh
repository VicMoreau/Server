# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    unzip.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vmoreau <vmoreau@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/01/16 15:08:26 by vmoreau           #+#    #+#              #
#    Updated: 2020/01/20 17:59:43 by vmoreau          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

echo =========="\033[32m Unzip Package \033[0m"=========
cd var/www/html/
tar -xf phpmyadmin.tar
tar -xzf latest.tar.gz
rm -rf latest.tar.gz phpmyadmin.tar
rm /var/www/html/index*.html
chown -R www-data:www-data /var/www/html
ln -s /etc/nginx/sites-available/wordpress /etc/nginx/sites-enabled/wordpress
ln -s /etc/nginx/sites-available/phpmyadmin /etc/nginx/sites-enabled/phpmyadmin
