# vi: set syntax=make:

#####################################################################
# Target Platform & Device: Netgear WAX610Y
#####################################################################
CONFIG_TARGET_qualcommax=y
CONFIG_TARGET_qualcommax_ipq60xx=y
CONFIG_TARGET_qualcommax_ipq60xx_DEVICE_netgear_wax610y=y

CONFIG_KERNEL_BUILD_DOMAIN="openwrt.lan"
CONFIG_KERNEL_BUILD_USER="Netgear_WAX610Y_ath11k_nss"

#####################################################################
# Build & Compiler Optimization
#####################################################################
CONFIG_CCACHE=y
CONFIG_DEVEL=y
CONFIG_EXPERIMENTAL=y
CONFIG_TOOLCHAINOPTS=y
CONFIG_TARGET_OPTIONS=y
CONFIG_TARGET_OPTIMIZATION="-O2 -pipe -mcpu=cortex-a53+crc+crypto"
CONFIG_USE_GC_SECTIONS=y
CONFIG_BUILD_PATENTED=y

# Kernel Configuration
CONFIG_COLLECT_KERNEL_DEBUG=y
CONFIG_KERNEL_PERF_EVENTS=y
CONFIG_KERNEL_DYNAMIC_DEBUG=y
CONFIG_KERNEL_ARM_PMU=y
CONFIG_KERNEL_PREEMPT_NONE=y
CONFIG_KERNEL_PREEMPT_NONE_BUILD=y

# Ath11k Footprint Reduction
CONFIG_ATH11K_DEBUGFS_HTT_STATS=n
CONFIG_ATH11K_DEBUGFS_STA=n
CONFIG_ATH11K_THERMAL=n

#####################################################################
# NSS Hardware Acceleration
#####################################################################
CONFIG_ATH11K_NSS_SUPPORT=y
CONFIG_ATH11K_NSS_MESH_SUPPORT=y
CONFIG_PACKAGE_MAC80211_NSS_SUPPORT=y
CONFIG_PACKAGE_nss-firmware-ipq8074=y
CONFIG_PACKAGE_sqm-scripts-nss=y
CONFIG_PACKAGE_kmod-qca-mcs=y

# NSS Kernel Modules
CONFIG_PACKAGE_kmod-qca-nss-ecm=y
CONFIG_PACKAGE_kmod-qca-nss-drv-eogremgr=y
CONFIG_PACKAGE_kmod-qca-nss-drv-gre=y
CONFIG_PACKAGE_kmod-qca-nss-drv-igs=y
CONFIG_PACKAGE_kmod-qca-nss-drv-l2tpv2=y
CONFIG_PACKAGE_kmod-qca-nss-drv-lag-mgr=y
CONFIG_PACKAGE_kmod-qca-nss-drv-map-t=y
CONFIG_PACKAGE_kmod-qca-nss-drv-match=y
CONFIG_PACKAGE_kmod-qca-nss-drv-pppoe=y
CONFIG_PACKAGE_kmod-qca-nss-drv-pptp=y
CONFIG_PACKAGE_kmod-qca-nss-drv-qdisc=y
CONFIG_PACKAGE_kmod-qca-nss-drv-tun6rd=y
CONFIG_PACKAGE_kmod-qca-nss-drv-tunipip6=y
CONFIG_PACKAGE_kmod-qca-nss-drv-vxlanmgr=y

#####################################################################
# SSL & Library Optimization
#####################################################################
CONFIG_PACKAGE_libopenssl=y
CONFIG_PACKAGE_libustream-openssl=y
CONFIG_LUA_ECO_OPENSSL=y
CONFIG_OPENSSL_OPTIMIZE_SPEED=y
CONFIG_ZLIB_OPTIMIZE_SPEED=y
CONFIG_ZSTD_OPTIMIZE_O3=y

# Disable mbedTLS
CONFIG_PACKAGE_libustream-mbedtls=n
CONFIG_LUA_ECO_MBEDTLS=n
CONFIG_LIBCURL_MBEDTLS=n

#####################################################################
# Wireless & Feeds
#####################################################################
CONFIG_PACKAGE_wpad-mesh-openssl=y
CONFIG_PACKAGE_wpad-basic-mbedtls=n

CONFIG_FEED_nss_packages=n
CONFIG_FEED_sqm_scripts_nss=n

#####################################################################
# LuCI Web Interface & Apps
#####################################################################
CONFIG_PACKAGE_luci=y
CONFIG_PACKAGE_luci-ssl-openssl=y
CONFIG_PACKAGE_luci-theme-material=y

# LuCI Applications
CONFIG_PACKAGE_luci-app-firewall=y
CONFIG_PACKAGE_luci-app-package-manager=y
CONFIG_PACKAGE_luci-app-sqm=y
CONFIG_PACKAGE_luci-app-statistics=y
CONFIG_PACKAGE_luci-app-nlbwmon=y
CONFIG_PACKAGE_luci-app-banip=y
CONFIG_PACKAGE_luci-app-sshtunnel=y
CONFIG_PACKAGE_luci-app-travelmate=y
CONFIG_PACKAGE_luci-app-vnstat2=y

#####################################################################
# VPN Suite (WireGuard, OpenVPN, StrongSwan)
#####################################################################

# WireGuard
CONFIG_PACKAGE_luci-app-wireguard=y
CONFIG_PACKAGE_kmod-wireguard=y
CONFIG_PACKAGE_luci-proto-wireguard=y
CONFIG_PACKAGE_wireguard-tools=y

# OpenVPN
CONFIG_WOLFSSL_HAS_OPENVPN=y
CONFIG_PACKAGE_luci-app-openvpn=y
CONFIG_PACKAGE_openvpn-easy-rsa=y
CONFIG_PACKAGE_openvpn-openssl=y
CONFIG_OPENVPN_openssl_ENABLE_LZO=y
CONFIG_OPENVPN_openssl_ENABLE_LZ4=y
CONFIG_OPENVPN_openssl_ENABLE_X509_ALT_USERNAME=y
CONFIG_OPENVPN_openssl_ENABLE_MANAGEMENT=y
CONFIG_OPENVPN_openssl_ENABLE_FRAGMENT=y
CONFIG_OPENVPN_openssl_ENABLE_PORT_SHARE=y
CONFIG_OPENVPN_openssl_ENABLE_IPROUTE2=y
CONFIG_OPENVPN_openssl_ENABLE_DCO=y
CONFIG_OPENVPN_openssl_ENABLE_SMALL=y
CONFIG_PACKAGE_collectd-mod-openvpn=y

# StrongSwan (IPsec)
CONFIG_PACKAGE_luci-app-strongswan-swanctl=y
CONFIG_PACKAGE_strongswan=y
CONFIG_STRONGSWAN_ROUTING_TABLE="220"
CONFIG_STRONGSWAN_ROUTING_TABLE_PRIO="220"
CONFIG_PACKAGE_strongswan-charon=y
CONFIG_PACKAGE_strongswan-charon-cmd=y
CONFIG_PACKAGE_strongswan-default=y
CONFIG_PACKAGE_strongswan-ipsec=y
CONFIG_PACKAGE_strongswan-isakmp=y
CONFIG_PACKAGE_strongswan-libtls=y
CONFIG_PACKAGE_strongswan-mod-addrblock=y
CONFIG_PACKAGE_strongswan-mod-aes=y
CONFIG_PACKAGE_strongswan-mod-af-alg=y
CONFIG_PACKAGE_strongswan-mod-agent=y
CONFIG_PACKAGE_strongswan-mod-attr=y
CONFIG_PACKAGE_strongswan-mod-attr-sql=y
CONFIG_PACKAGE_strongswan-mod-blowfish=y
CONFIG_PACKAGE_strongswan-mod-ccm=y
CONFIG_PACKAGE_strongswan-mod-chapoly=y
CONFIG_PACKAGE_strongswan-mod-cmac=y
CONFIG_PACKAGE_strongswan-mod-connmark=y
CONFIG_PACKAGE_strongswan-mod-constraints=y
CONFIG_PACKAGE_strongswan-mod-coupling=y
CONFIG_PACKAGE_strongswan-mod-ctr=y
CONFIG_PACKAGE_strongswan-mod-curl=y
CONFIG_PACKAGE_strongswan-mod-curve25519=y
CONFIG_PACKAGE_strongswan-mod-des=y
CONFIG_PACKAGE_strongswan-mod-dhcp=y
CONFIG_PACKAGE_strongswan-mod-dnskey=y
CONFIG_PACKAGE_strongswan-mod-drbg=y
CONFIG_PACKAGE_strongswan-mod-duplicheck=y
CONFIG_PACKAGE_strongswan-mod-eap-dynamic=y
CONFIG_PACKAGE_strongswan-mod-eap-identity=y
CONFIG_PACKAGE_strongswan-mod-eap-md5=y
CONFIG_PACKAGE_strongswan-mod-eap-mschapv2=y
CONFIG_PACKAGE_strongswan-mod-eap-radius=y
CONFIG_PACKAGE_strongswan-mod-eap-tls=y
CONFIG_PACKAGE_strongswan-mod-farp=y
CONFIG_PACKAGE_strongswan-mod-fips-prf=y
CONFIG_PACKAGE_strongswan-mod-forecast=y
CONFIG_PACKAGE_strongswan-mod-gcm=y
CONFIG_PACKAGE_strongswan-mod-gcrypt=y
CONFIG_PACKAGE_strongswan-mod-gmp=y
CONFIG_PACKAGE_strongswan-mod-gmpdh=y
CONFIG_PACKAGE_strongswan-mod-ha=y
CONFIG_PACKAGE_strongswan-mod-hmac=y
CONFIG_PACKAGE_strongswan-mod-kdf=y
CONFIG_PACKAGE_strongswan-mod-kernel-libipsec=y
CONFIG_PACKAGE_strongswan-mod-kernel-netlink=y
CONFIG_PACKAGE_strongswan-mod-ldap=y
CONFIG_PACKAGE_strongswan-mod-led=y
CONFIG_PACKAGE_strongswan-mod-load-tester=y
CONFIG_PACKAGE_strongswan-mod-lookip=y
CONFIG_PACKAGE_strongswan-mod-md4=y
CONFIG_PACKAGE_strongswan-mod-md5=y
CONFIG_PACKAGE_strongswan-mod-mgf1=y
CONFIG_PACKAGE_strongswan-mod-mysql=y
CONFIG_PACKAGE_strongswan-mod-openssl=y
CONFIG_PACKAGE_strongswan-mod-pem=y
CONFIG_PACKAGE_strongswan-mod-pgp=y
CONFIG_PACKAGE_strongswan-mod-pkcs1=y
CONFIG_PACKAGE_strongswan-mod-pkcs11=y
CONFIG_PACKAGE_strongswan-mod-pkcs12=y
CONFIG_PACKAGE_strongswan-mod-pkcs7=y
CONFIG_PACKAGE_strongswan-mod-pkcs8=y
CONFIG_PACKAGE_strongswan-mod-pubkey=y
CONFIG_PACKAGE_strongswan-mod-random=y
CONFIG_PACKAGE_strongswan-mod-rc2=y
CONFIG_PACKAGE_strongswan-mod-resolve=y
CONFIG_PACKAGE_strongswan-mod-revocation=y
CONFIG_PACKAGE_strongswan-mod-sha1=y
CONFIG_PACKAGE_strongswan-mod-sha2=y
CONFIG_PACKAGE_strongswan-mod-sha3=y
CONFIG_PACKAGE_strongswan-mod-smp=y
CONFIG_PACKAGE_strongswan-mod-socket-default=y
CONFIG_PACKAGE_strongswan-mod-socket-dynamic=y
CONFIG_PACKAGE_strongswan-mod-sql=y
CONFIG_PACKAGE_strongswan-mod-sqlite=y
CONFIG_PACKAGE_strongswan-mod-sshkey=y
CONFIG_PACKAGE_strongswan-mod-stroke=y
CONFIG_PACKAGE_strongswan-mod-test-vectors=y
CONFIG_PACKAGE_strongswan-mod-unity=y
CONFIG_PACKAGE_strongswan-mod-updown=y
CONFIG_PACKAGE_strongswan-mod-vici=y
CONFIG_PACKAGE_strongswan-mod-whitelist=y
CONFIG_PACKAGE_strongswan-mod-x509=y
CONFIG_PACKAGE_strongswan-mod-xauth-eap=y
CONFIG_PACKAGE_strongswan-mod-xauth-generic=y
CONFIG_PACKAGE_strongswan-mod-xcbc=y
CONFIG_PACKAGE_strongswan-pki=y
CONFIG_PACKAGE_strongswan-swanctl=y
CONFIG_PACKAGE_xl2tpd=y

#####################################################################
# Networking, Tunnels & Routing
#####################################################################

# IPv6 Support
CONFIG_PACKAGE_ds-lite=y
CONFIG_PACKAGE_6in4=y
CONFIG_PACKAGE_6to4=y
CONFIG_PACKAGE_6rd=y

# Routing & Bridge
CONFIG_PACKAGE_bird3=y
CONFIG_PACKAGE_bird3c=y
CONFIG_PACKAGE_kmod-nft-bridge=y

# Tunnels & XFRM
CONFIG_PACKAGE_kmod-gre=y
CONFIG_PACKAGE_kmod-gre6=y
CONFIG_PACKAGE_kmod-nat46=y
CONFIG_PACKAGE_vxlan=y
CONFIG_PACKAGE_kmod-vxlan=y
CONFIG_PACKAGE_kmod-geneve=y
CONFIG_PACKAGE_kmod-ip6-tunnel=y
CONFIG_PACKAGE_kmod-iptunnel=y
CONFIG_PACKAGE_kmod-iptunnel6=y
CONFIG_PACKAGE_kmod-nf-nathelper=y
CONFIG_PACKAGE_kmod-nft-netdev=y

# XFRM Interfaces
CONFIG_PACKAGE_kmod-nft-xfrm=y
CONFIG_PACKAGE_kmod-xfrm-interface=y
CONFIG_PACKAGE_luci-proto-xfrm=y
CONFIG_PACKAGE_xfrm=y

#####################################################################
# System Utilities & Monitoring
#####################################################################
CONFIG_PACKAGE_ca-certificates=y
CONFIG_DROPBEAR_ECC=y
CONFIG_PACKAGE_curl=y
CONFIG_LIBCURL_OPENSSL=y
CONFIG_PACKAGE_htop=y
CONFIG_HTOP_LMSENSORS=n
CONFIG_PACKAGE_tcpdump=y
CONFIG_PACKAGE_iperf3=y
CONFIG_PACKAGE_conntrack=y
CONFIG_PACKAGE_irqbalance=y
CONFIG_PACKAGE_mtr-json=y
CONFIG_PACKAGE_ncat=y
CONFIG_PACKAGE_qrencode=y
CONFIG_PACKAGE_socat=y
CONFIG_PACKAGE_ss=y
CONFIG_PACKAGE_ethtool=y
CONFIG_PACKAGE_nmap=y
CONFIG_PACKAGE_speedtest-go=y
CONFIG_PACKAGE_kmod-ramoops=y

#####################################################################
# Advanced Features ZRAM
#####################################################################

# ZRAM
CONFIG_PACKAGE_kmod-zram=y
CONFIG_PACKAGE_zram-swap=y
CONFIG_KERNEL_ZRAM=y
CONFIG_KERNEL_ZRAM_DEF_COMP_LZ4=y

# Kernel Extras
CONFIG_PACKAGE_kmod-ikconfig=y
