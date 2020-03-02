#!/bin/bash

#npm run build

source ./.env

# Uploads
#scp -P $KINSTA_PORT -r wp-content/uploads $KINSTA_USER@$KINSTA_IP:./public/wp-content/

# Custom Theme
# scp -r wp-content/themes/custom $MSU_PRODUCTION_USER@$MSU_PRODUCTION_IP:./public_html/feedbackloop/wp-content/themes

# Bundles only
scp -r wp-content/themes/custom/bundles $MSU_PRODUCTION_USER@$KINSTA_PRODUCTION_IP:./public_html/feedbackloop/wp-content/themes/custom

# Plugins and must use plugins
# scp -r wp-content/plugins $MSU_PRODUCTION_USER@$MSU_PRODUCTION_IP:./public_html/feedbackloop/wp-content/
# scp -r wp-content/mu-plugins $MSU_PRODUCTION_USER@$MSU_PRODUCTION_IP:./public_html/feedbackloop/wp-content/

#specific plugins
# scp -r wp-content/plugins/classic-editor $MSU_PRODUCTION_USER@$MSU_PRODUCTION_IP:./public_html/feedbackloop/wp-content/plugins

#specific files
#scp -P $KINSTA_PRODUCTION_PORT wp-content/themes/custom/functions/post-types/classes/class-nam-class.php $KINSTA_PRODUCTION_USER@$KINSTA_PRODUCTION_IP:./public/wp-content/themes/custom/functions/post-types/classes/

#functions.php
#scp -P $KINSTA_PRODUCTION_PORT wp-content/themes/custom/functions.php $KINSTA_PRODUCTION_USER@$KINSTA_PRODUCTION_IP:./public/wp-content/themes/custom/
