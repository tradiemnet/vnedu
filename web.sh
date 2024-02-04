#!/bin/bash web.sh

# Bước 1: Danh sách các website
websites=(
    "lapmangfpttelecomnet.taigamechoandroid.net"
	"lapmangfpttelecomnet.tapdoandatxanh.vn"
	"lapmangfpttelecomnet.tegza.com"
	"lapmangfpttelecomnet.thuthuatlaptop.com"
	"lapmangfpttelecomnet.tieudungtot.vn"
	"lapmangfpttelecomnet.tipshay5s.xyz"
	"lapmangfpttelecomnet.top123.vn"
	"lapmangfpttelecomnet.trangsucdathiennhien.com"
	"lapmangfpttelecomnet.tranthangit.xyz"
	"lapmangfpttelecomnet.trungtamphanmemvn.com"
	"lapmangfpttelecomnet.tanphong.net"
	"lapmangfpttelecomnet.techphukien.com"
	"lapmangfpttelecomnet.thaotruong.com"
	"lapmangfpttelecomnet.thuvienkhoahoc.io.vn"
	"lapmangfpttelecomnet.tikibook.com"
	"lapmangfpttelecomnet.toitantinh.com"
	"lapmangfpttelecomnet.trangiahung.com"
	"lapmangfpttelecomnet.trangtainhac.mobi"
	"lapmangfpttelecomnet.trend.com.vn"
	"lapmangfpttelecomnet.tudiendanchoi.com"
	"lapmangfpttelecomnet.utopiax.online"
	"lapmangfpttelecomnet.visuhoclatrondoi.com"
	"lapmangfpttelecomnet.vnnews8.com"
	"lapmangfpttelecomnet.wanhxinh.com"
	"lapmangfpttelecomnet.webdanhgia.net"
	"lapmangfpttelecomnet.yeuapkreview.com"
	"lapmangfpttelecomnet.vinhat.com"
	"lapmangfpttelecomnet.vnll.com.vn"
	"lapmangfpttelecomnet.vuiit.net"
	"lapmangfpttelecomnet.thủthuậthay.vn"
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

