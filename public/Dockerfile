FROM brettt89/silverstripe-web
# Install additional Apt components
RUN apt-get update -y && apt-get install -y \
   wget

 # Install additional PHP extensions
RUN docker-php-ext-install -j$(nproc) \
   iconv
