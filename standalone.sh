#!/bin/sh

# This is a standalone script for installing deno

curl -fsSL https://deno.land/x/install@v0.1.7/install.sh | sh
/home/gitpod/.deno/bin/deno completions bash > /home/gitpod/.bashrc.d/90-deno
echo 'export DENO_INSTALL="/home/gitpod/.deno"' >> /home/gitpod/.bashrc.d/90-deno
echo 'export PATH="$DENO_INSTALL/bin:$PATH"' >> /home/gitpod/.bashrc.d/90-deno

printf "\033[42mDone!\033[0m Restart your terminal.\n"
