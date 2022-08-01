echo "FROM gitpod/workspace-full

RUN curl -fsSL https://deno.land/x/install/install.sh | sh
RUN /home/gitpod/.deno/bin/deno completions bash > /home/gitpod/.bashrc.d/90-deno && \
    echo 'export DENO_INSTALL=\"/home/gitpod/.deno\"' >> /home/gitpod/.bashrc.d/90-deno && \
    echo 'export PATH=\"\$DENO_INSTALL/bin:\$PATH\"' >> /home/gitpod/.bashrc.d/90-deno
" > .gitpod.Dockerfile

echo "image:
  file: .gitpod.Dockerfile

vscode:
  extensions:
    - denoland.vscode-deno
" >> .gitpod.yml

mkdir -p .vscode

echo "{
  \"recommendations\": [
    \"denoland.vscode-deno\",
  ]  
}
" >> .vscode/extensions.json

echo -e "\033[42mDone!\033[0m Restart gitpod."