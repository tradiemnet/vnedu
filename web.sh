#!/bin/bash web.sh

# Bước 1: Danh sách các website
websites=(
    "lapmangfpttelecomnet.taigamechoandroid.net"
	
)

# Bước 2: Tạo website trên cyberpanel
for domain in "${websites[@]}"; do
    cyberpanel createWebsite --package Default --owner admin --domainName $domain --email support@cyberseo.vn --php 7.4
done

# Bước 3, 4 và 5: Di chuyển đến thư mục, xóa index.html và tải và giải nén file index.zip
for domain in "${websites[@]}"; do
    # Di chuyển đến thư mục
    cd "/home/$domain/public_html"

    # Xóa file index.html
    rm index.html

    # Tải và giải nén file index.zip
    wget https://inet1.fpttelecom.edu.vn/demo/index.zip
    unzip index.zip
    rm index.zip
done

