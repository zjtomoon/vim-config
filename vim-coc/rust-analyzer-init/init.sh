mkdir ~/download
cd download
wget https://github.com/rust-analyzer/rust-analyzer/releases/download/nightly/rust-analyzer-x86_64-unknown-linux-gnu.gz
gzip -d  rust-analyzer-x86_64-unknown-linux-gnu.gz
mv rust-analyzer-x86_64-unknown-linux-gnu ~/software
