# vi: set syntax=make:

#####################################################################
# Target Platform & Device: Linksys MX4300
#####################################################################
CONFIG_TARGET_qualcommax=y
CONFIG_TARGET_qualcommax_ipq807x=y
CONFIG_TARGET_qualcommax_ipq807x_DEVICE_linksys_mx4300=y

CONFIG_KERNEL_BUILD_DOMAIN="openwrt.lan"
CONFIG_KERNEL_BUILD_USER="Linksys-MX4300-nss"

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

# Kernel Configuration & Debugging
CONFIG_COLLECT_KERNEL_DEBUG=y
CONFIG_KERNEL_PERF_EVENTS=y
CONFIG_KERNEL_DYNAMIC_DEBUG=y
CONFIG_KERNEL_ARM_PMU=y
CONFIG_KERNEL_PREEMPT_NONE=y
CONFIG_KERNEL_PREEMPT_NONE_BUILD=y

# Ath11k driver footprint reduction
CONFIG_ATH11K_DEBUGFS_HTT_STATS=n
CONFIG_ATH11K_DEBUGFS_STA=n
CONFIG_ATH11K_THERMAL=n

#####################################################################
# NSS Offloading (Hardware Acceleration)
#####################################################################
CONFIG_ATH11K_NSS_MESH_SUPPORT=y
CONFIG_PACKAGE_kmod-qca-mcs=y
CONFIG_PACKAGE_sqm-scripts-nss=y

CONFIG_DEFAULT_kmod-qca-nss-dp=y
CONFIG_DEFAULT_kmod-qca-nss-drv=y
CONFIG_DEFAULT_kmod-qca-nss-drv-bridge-mgr=y
CONFIG_DEFAULT_kmod-qca-nss-ecm=y

CONFIG_PACKAGE_kmod-qca-nss-crypto=y
CONFIG_PACKAGE_kmod-qca-nss-dp=y
CONFIG_PACKAGE_kmod-qca-nss-drv=y
CONFIG_PACKAGE_kmod-qca-nss-drv-bridge-mgr=y
CONFIG_PACKAGE_kmod-qca-nss-drv-eogremgr=y
CONFIG_PACKAGE_kmod-qca-nss-drv-gre=y
CONFIG_PACKAGE_kmod-qca-nss-drv-igs=y
CONFIG_PACKAGE_kmod-qca-nss-drv-l2tpv2=y
CONFIG_PACKAGE_kmod-qca-nss-drv-lag-mgr=y
CONFIG_PACKAGE_kmod-qca-nss-drv-map-t=y
CONFIG_PACKAGE_kmod-qca-nss-drv-match=y
CONFIG_PACKAGE_kmod-qca-nss-drv-mirror=y
CONFIG_PACKAGE_kmod-qca-nss-drv-netlink=y
CONFIG_PACKAGE_kmod-qca-nss-drv-pppoe=y
CONFIG_PACKAGE_kmod-qca-nss-drv-pptp=y
CONFIG_PACKAGE_kmod-qca-nss-drv-qdisc=y
CONFIG_PACKAGE_kmod-qca-nss-drv-tun6rd=y
CONFIG_PACKAGE_kmod-qca-nss-drv-tunipip6=y
CONFIG_PACKAGE_kmod-qca-nss-drv-vlan-mgr=y
CONFIG_PACKAGE_kmod-qca-nss-drv-vxlanmgr=y
CONFIG_PACKAGE_kmod-qca-nss-drv-wifi-meshmgr=y
CONFIG_PACKAGE_kmod-qca-nss-ecm=y

#####################################################################
# SSL & Library Optimization (Global)
#####################################################################
CONFIG_PACKAGE_libopenssl=y
CONFIG_PACKAGE_libustream-openssl=y
CONFIG_LUA_ECO_OPENSSL=y
CONFIG_OPENSSL_OPTIMIZE_SPEED=y
CONFIG_ZLIB_OPTIMIZE_SPEED=y
CONFIG_ZSTD_OPTIMIZE_O3=y

# Disable mbedTLS for consistency
CONFIG_PACKAGE_libustream-mbedtls=n
CONFIG_LUA_ECO_MBEDTLS=n
CONFIG_LIBCURL_MBEDTLS=n

#####################################################################
# Network & Wireless Core
#####################################################################
# Wi-Fi
CONFIG_PACKAGE_hostapd=y
CONFIG_PACKAGE_hostapd-utils=y
CONFIG_PACKAGE_hostapd-openssl=y
CONFIG_PACKAGE_wpa-supplicant=y
CONFIG_PACKAGE_wpa-supplicant-openssl=y
CONFIG_PACKAGE_wpad-mesh-openssl=y
CONFIG_PACKAGE_wpad-basic-mbedtls=n

# DNS & Core Net
# CONFIG_PACKAGE_dnsmasq is not set
CONFIG_PACKAGE_dnsmasq-full=y
CONFIG_PACKAGE_dnsmasq_full_ipset=y
CONFIG_PACKAGE_ip-full=y
CONFIG_PACKAGE_tc-full=y
CONFIG_PACKAGE_ethtool-full=y
CONFIG_PACKAGE_conntrack=y

# IPv6 & Tunnels
CONFIG_PACKAGE_ds-lite=y
CONFIG_PACKAGE_6in4=y
CONFIG_PACKAGE_6to4=y
CONFIG_PACKAGE_6rd=y

#####################################################################
# VPN & IPsec Stack
#####################################################################
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

# Strongswan (IPsec)
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
CONFIG_PACKAGE_strongswan-mod-aes=y
CONFIG_PACKAGE_strongswan-mod-af-alg=y
CONFIG_PACKAGE_strongswan-mod-chapoly=y
CONFIG_PACKAGE_strongswan-mod-curve25519=y
CONFIG_PACKAGE_strongswan-mod-eap-mschapv2=y
CONFIG_PACKAGE_strongswan-mod-eap-tls=y
CONFIG_PACKAGE_strongswan-mod-gcm=y
CONFIG_PACKAGE_strongswan-mod-openssl=y
CONFIG_PACKAGE_strongswan-mod-vici=y
CONFIG_PACKAGE_strongswan-mod-x509=y
CONFIG_PACKAGE_strongswan-pki=y
CONFIG_PACKAGE_strongswan-swanctl=y
CONFIG_PACKAGE_xl2tpd=y

# Wireguard
CONFIG_PACKAGE_luci-app-wireguard=y
CONFIG_PACKAGE_kmod-wireguard=y
CONFIG_PACKAGE_luci-proto-wireguard=y
CONFIG_PACKAGE_wireguard-tools=y
CONFIG_PACKAGE_rpcd-mod-wireguard=y

#####################################################################
# Routing & Multicast (FRR / Bird)
#####################################################################
# Bird
CONFIG_PACKAGE_bird3=y
CONFIG_PACKAGE_bird3c=y
CONFIG_PACKAGE_bird3cl=y
CONFIG_PACKAGE_igmpproxy=y
CONFIG_PACKAGE_ip-bridge=y
CONFIG_PACKAGE_relayd=y

# FRR (Free Ranging Routing)
CONFIG_PACKAGE_frr=y
CONFIG_FRR_OPENSSL=y
CONFIG_FRR_SNMP=y
CONFIG_PACKAGE_frr-babeld=y
CONFIG_PACKAGE_frr-bfdd=y
CONFIG_PACKAGE_frr-bgpd=y
CONFIG_PACKAGE_frr-eigrpd=y
CONFIG_PACKAGE_frr-fabricd=y
CONFIG_PACKAGE_frr-isisd=y
CONFIG_PACKAGE_frr-ldpd=y
CONFIG_PACKAGE_frr-nhrpd=y
CONFIG_PACKAGE_frr-ospf6d=y
CONFIG_PACKAGE_frr-ospfd=y
CONFIG_PACKAGE_frr-pathd=y
CONFIG_PACKAGE_frr-pbrd=y
CONFIG_PACKAGE_frr-pim6d=y
CONFIG_PACKAGE_frr-pimd=y
CONFIG_PACKAGE_frr-pythontools=y
CONFIG_PACKAGE_frr-ripd=y
CONFIG_PACKAGE_frr-ripngd=y
CONFIG_PACKAGE_frr-staticd=y
CONFIG_PACKAGE_frr-vrrpd=y
CONFIG_PACKAGE_frr-watchfrr=y
CONFIG_PACKAGE_frr-zebra=y

#####################################################################
# LuCI Web Interface & Applications
#####################################################################
CONFIG_PACKAGE_luci=y
CONFIG_PACKAGE_luci-ssl-openssl=y
CONFIG_PACKAGE_luci-theme-material=y

# LuCI Apps
CONFIG_PACKAGE_luci-app-acl=y
CONFIG_PACKAGE_luci-app-acme=y
CONFIG_PACKAGE_luci-app-advanced-reboot=y
CONFIG_PACKAGE_luci-app-banip=y
CONFIG_PACKAGE_luci-app-commands=y
CONFIG_PACKAGE_luci-app-firewall=y
CONFIG_PACKAGE_luci-app-ksmbd=y
CONFIG_PACKAGE_luci-app-nlbwmon=y
CONFIG_PACKAGE_luci-app-package-manager=y
CONFIG_PACKAGE_luci-app-ser2net=y
CONFIG_PACKAGE_luci-app-sqm=y
CONFIG_PACKAGE_luci-app-sshtunnel=y
CONFIG_PACKAGE_luci-app-statistics=y
CONFIG_PACKAGE_luci-app-travelmate=y
CONFIG_PACKAGE_luci-app-vnstat2=y
CONFIG_PACKAGE_luci-app-watchcat=y
CONFIG_PACKAGE_luci-app-wifischedule=y
CONFIG_PACKAGE_luci-app-wol=y

# Unbound
CONFIG_PACKAGE_luci-app-unbound=y
CONFIG_PACKAGE_libunbound_dnscrypt=y
CONFIG_PACKAGE_unbound-anchor=y
CONFIG_PACKAGE_unbound-checkconf=y
CONFIG_PACKAGE_unbound-control=y
CONFIG_PACKAGE_unbound-control-setup=y
CONFIG_PACKAGE_unbound-daemon=y
CONFIG_PACKAGE_unbound-host=y

#####################################################################
# Storage, File Systems & USB
#####################################################################
CONFIG_PACKAGE_block-mount=y
CONFIG_PACKAGE_kmod-usb-storage=y
CONFIG_PACKAGE_kmod-usb-storage-uas=y
CONFIG_PACKAGE_kmod-usb-storage-extras=y

# File Systems
CONFIG_PACKAGE_kmod-fs-exfat=y
CONFIG_PACKAGE_kmod-fs-ext4=y
CONFIG_PACKAGE_kmod-fs-f2fs=y
CONFIG_PACKAGE_kmod-fs-hfs=y
CONFIG_PACKAGE_kmod-fs-hfsplus=y
CONFIG_PACKAGE_kmod-fs-msdos=y
CONFIG_PACKAGE_kmod-fs-vfat=y
CONFIG_PACKAGE_kmod-fs-ntfs3=y
CONFIG_PACKAGE_ntfs-3g=y

# Disk Tools
CONFIG_PACKAGE_fdisk=y
CONFIG_PACKAGE_sfdisk=y
CONFIG_PACKAGE_cfdisk=y
CONFIG_PACKAGE_lsblk=y
CONFIG_PACKAGE_parted=y
CONFIG_PACKAGE_resize2fs=y
CONFIG_PACKAGE_e2fsprogs=y
CONFIG_PACKAGE_f2fs-tools=y
CONFIG_PACKAGE_libblkid=y

# MTD / NAND Tools
CONFIG_PACKAGE_kmod-block2mtd=y
CONFIG_PACKAGE_kmod-mtd-rw=y
CONFIG_PACKAGE_kmod-mtdoops=y
CONFIG_PACKAGE_kmod-mtdram=y
CONFIG_PACKAGE_kmod-mtdtests=y
CONFIG_PACKAGE_nand-utils=y

#####################################################################
# System Tools & Monitoring
#####################################################################
CONFIG_PACKAGE_curl=y
CONFIG_LIBCURL_OPENSSL=y
CONFIG_PACKAGE_wget-ssl=y
CONFIG_PACKAGE_rsync=y
CONFIG_PACKAGE_jq=y
CONFIG_PACKAGE_pigz=y
CONFIG_PACKAGE_tar=y
CONFIG_PACKAGE_tcpdump=y
CONFIG_PACKAGE_htop=y
CONFIG_HTOP_LMSENSORS=n
CONFIG_PACKAGE_iftop=y
CONFIG_PACKAGE_iperf3-ssl=y
CONFIG_PACKAGE_speedtest-go=y
CONFIG_PACKAGE_ncat-full=y
CONFIG_PACKAGE_nmap-full=y
CONFIG_PACKAGE_bind-dig=y
CONFIG_PACKAGE_mtr-json=y
CONFIG_PACKAGE_screen=y
CONFIG_PACKAGE_socat=y

# SNMP & LLDP
CONFIG_PACKAGE_luci-app-snmpd=y
CONFIG_PACKAGE_snmpd=y
CONFIG_PACKAGE_luci-app-lldpd=y
CONFIG_PACKAGE_lldpd=y
CONFIG_LLDPD_WITH_SNMP=y
CONFIG_LLDPD_WITH_JSON=y

# Prometheus
CONFIG_PACKAGE_prometheus-node-exporter-lua=y
CONFIG_PACKAGE_prometheus-node-exporter-lua-hostapd_stations=y
CONFIG_PACKAGE_prometheus-node-exporter-lua-nat_traffic=y
CONFIG_PACKAGE_prometheus-node-exporter-lua-netstat=y
CONFIG_PACKAGE_prometheus-node-exporter-lua-openwrt=y
CONFIG_PACKAGE_prometheus-node-exporter-lua-uci_dhcp_host=y
CONFIG_PACKAGE_prometheus-node-exporter-lua-wifi=y
CONFIG_PACKAGE_prometheus-node-exporter-lua-wifi_stations=y

#####################################################################
# Advanced Services (FreeRADIUS / Docker / Multimedia)
#####################################################################
# FreeRADIUS 3
CONFIG_PACKAGE_freeradius3=y
CONFIG_FREERADIUS3_OPENSSL=y
CONFIG_PACKAGE_freeradius3-common=y
CONFIG_PACKAGE_freeradius3-default=y
CONFIG_PACKAGE_freeradius3-mod-eap=y
CONFIG_PACKAGE_freeradius3-mod-sql=y
CONFIG_PACKAGE_freeradius3-utils=y

# Docker
CONFIG_PACKAGE_docker=y
CONFIG_PACKAGE_dockerd=y
CONFIG_PACKAGE_docker-compose=y

# Cellular & Modem
CONFIG_PACKAGE_modemmanager=y
CONFIG_PACKAGE_luci-proto-modemmanager=y
CONFIG_MODEMMANAGER_WITH_QMI=y
CONFIG_MODEMMANAGER_WITH_MBIM=y

# Multimedia
CONFIG_PACKAGE_shairport-sync-openssl=y
CONFIG_PACKAGE_libffmpeg-full=y

#####################################################################
# Kernel Modules & System Extras
#####################################################################
CONFIG_PACKAGE_kmod-ikconfig=y
CONFIG_PACKAGE_kmod-ramoops=y
CONFIG_PACKAGE_kmod-pstore=y
CONFIG_PACKAGE_kmod-nft-bridge=y
CONFIG_PACKAGE_kmod-nft-xfrm=y
CONFIG_PACKAGE_kmod-veth=y
CONFIG_PACKAGE_kmod-zram=y
CONFIG_PACKAGE_zram-swap=y
CONFIG_KERNEL_ZRAM=y
CONFIG_KERNEL_ZRAM_DEF_COMP_LZ4=y

# Busybox Customization
CONFIG_BUSYBOX_CUSTOM=y
CONFIG_BUSYBOX_CONFIG_TELNET=y
CONFIG_BUSYBOX_CONFIG_FEATURE_EDITING_SAVEHISTORY=y
CONFIG_BUSYBOX_CONFIG_FEATURE_LESS_REGEXP=y
