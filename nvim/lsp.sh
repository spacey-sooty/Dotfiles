#!/usr/bin/sh
rustup component add rust-analyzer

git clone https://github.com/nvarner/typst-lsp.git
cd typst-lsp
cargo build --release
sudo mv target/release/typst-lsp /usr/local/bin/typst-lsp
cd ..
rm typst-lsp -rf
