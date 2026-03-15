# vi: set syntax=make:

#####################################################################
# 1. Target Platform & Device (Linksys MX4300 / ipq807x)
#####################################################################
CONFIG_TARGET_qualcommax=y
CONFIG_TARGET_qualcommax_ipq807x=y
CONFIG_TARGET_qualcommax_ipq807x_DEVICE_linksys_mx4300=y

CONFIG_KERNEL_BUILD_DOMAIN="openwrt.lan"
CONFIG_KERNEL_BUILD_USER="Linksys-MX4300-nss"

#####################################################################
# 2. Build, Compiler & Kernel Optimization
#####################################################################
CONFIG_CCACHE=y
CONFIG_DEVEL=y
CONFIG_EXPERIMENTAL=y
CONFIG_TOOLCHAINOPTS=y
CONFIG_TARGET_OPTIONS=y
CONFIG_TARGET_OPTIMIZATION="-O2 -pipe -mcpu=cortex-a53+crc+crypto"
CONFIG_USE_GC_SECTIONS=y
CONFIG_BUILD_PATENTED=y

# Kernel Config
CONFIG_COLLECT_KERNEL_DEBUG=y
CONFIG_KERNEL_PERF_EVENTS=y
CONFIG_KERNEL_DYNAMIC_DEBUG=y
CONFIG_KERNEL_ARM_PMU=y
CONFIG_KERNEL_PREEMPT_NONE=y
CONFIG_KERNEL_PREEMPT_NONE_BUILD=y

# Ath11k Driver Optimization (Reducing Debug Overhead)
CONFIG_ATH11K_DEBUGFS_HTT_STATS=n
CONFIG_ATH11K_DEBUGFS_STA=n
CONFIG_ATH11K_THERMAL=n

#####################################################################
# 3. NSS Hardware Acceleration (Complete Driver Set)
#####################################################################
# 
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
# 4. SSL, Libraries & Global Optimization
#####################################################################
CONFIG_PACKAGE_libopenssl=y
CONFIG_PACKAGE_libustream-openssl=y
CONFIG_LUA_ECO_OPENSSL=y
CONFIG_OPENSSL_OPTIMIZE_SPEED=y

# Libraries Optimization
CONFIG_ZLIB_OPTIMIZE_SPEED=y
CONFIG_ZSTD_OPTIMIZE_O3=y

# Disable mbedTLS for consistency
CONFIG_PACKAGE_libustream-mbedtls=n
CONFIG_LUA_ECO_MBEDTLS=n
CONFIG_LIBCURL_MBEDTLS=n

#####################################################################
# 5. LuCI Web Interface & Applications
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
CONFIG_PACKAGE_luci-app-lldpd=y
CONFIG_PACKAGE_luci-app-nlbwmon=y
CONFIG_PACKAGE_luci-app-package-manager=y
CONFIG_PACKAGE_luci-app-ser2net=y
CONFIG_PACKAGE_luci-app-snmpd=y
CONFIG_PACKAGE_luci-app-sqm=y
CONFIG_PACKAGE_luci-app-sshtunnel=y
CONFIG_PACKAGE_luci-app-statistics=y
CONFIG_PACKAGE_luci-app-travelmate=y
CONFIG_PACKAGE_luci-app-vnstat2=y
CONFIG_PACKAGE_luci-app-watchcat=y
CONFIG_PACKAGE_luci-app-wifischedule=y
CONFIG_PACKAGE_luci-app-wol=y

#####################################################################
# 6. VPN Suite (WireGuard, OpenVPN, StrongSwan)
#####################################################################

# WireGuard
CONFIG_PACKAGE_luci-app-wireguard=y
CONFIG_PACKAGE_kmod-wireguard=y
CONFIG_PACKAGE_luci-proto-wireguard=y
CONFIG_PACKAGE_wireguard-tools=y
CONFIG_PACKAGE_rpcd-mod-wireguard=y

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

# StrongSwan (Restored Full Modules)
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
# 7. Routing & Multicast Protocols
#####################################################################

# FRR (Free Range Routing - Restored Full)
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

# Bird & Other Routing
CONFIG_PACKAGE_bird3=y
CONFIG_PACKAGE_bird3c=y
CONFIG_PACKAGE_bird3cl=y
CONFIG_PACKAGE_igmpproxy=y
CONFIG_PACKAGE_ip-bridge=y
CONFIG_PACKAGE_relayd=y

#####################################################################
# 8. FreeRADIUS 3 (Restored Full Modules)
#####################################################################
CONFIG_PACKAGE_freeradius3=y
CONFIG_FREERADIUS3_OPENSSL=y
CONFIG_PACKAGE_freeradius3-common=y
CONFIG_PACKAGE_freeradius3-default=y
CONFIG_PACKAGE_freeradius3-democerts=y
CONFIG_PACKAGE_freeradius3-mod-always=y
CONFIG_PACKAGE_freeradius3-mod-attr-filter=y
CONFIG_PACKAGE_freeradius3-mod-cache=y
CONFIG_PACKAGE_freeradius3-mod-cache-rbtree=y
CONFIG_PACKAGE_freeradius3-mod-cache-redis=y
CONFIG_PACKAGE_freeradius3-mod-chap=y
CONFIG_PACKAGE_freeradius3-mod-counter=y
CONFIG_PACKAGE_freeradius3-mod-date=y
CONFIG_PACKAGE_freeradius3-mod-detail=y
CONFIG_PACKAGE_freeradius3-mod-digest=y
CONFIG_PACKAGE_freeradius3-mod-dpsk=y
CONFIG_PACKAGE_freeradius3-mod-dynamic-clients=y
CONFIG_PACKAGE_freeradius3-mod-eap=y
CONFIG_PACKAGE_freeradius3-mod-eap-fast=y
CONFIG_PACKAGE_freeradius3-mod-eap-gtc=y
CONFIG_PACKAGE_freeradius3-mod-eap-md5=y
CONFIG_PACKAGE_freeradius3-mod-eap-mschapv2=y
CONFIG_PACKAGE_freeradius3-mod-eap-peap=y
CONFIG_PACKAGE_freeradius3-mod-eap-pwd=y
CONFIG_PACKAGE_freeradius3-mod-eap-sim=y
CONFIG_PACKAGE_freeradius3-mod-eap-tls=y
CONFIG_PACKAGE_freeradius3-mod-eap-ttls=y
CONFIG_PACKAGE_freeradius3-mod-exec=y
CONFIG_PACKAGE_freeradius3-mod-expiration=y
CONFIG_PACKAGE_freeradius3-mod-expr=y
CONFIG_PACKAGE_freeradius3-mod-files=y
CONFIG_PACKAGE_freeradius3-mod-ippool=y
CONFIG_PACKAGE_freeradius3-mod-json=y
CONFIG_PACKAGE_freeradius3-mod-krb5=y
CONFIG_PACKAGE_freeradius3-mod-ldap=y
CONFIG_PACKAGE_freeradius3-mod-linelog=y
CONFIG_PACKAGE_freeradius3-mod-logintime=y
CONFIG_PACKAGE_freeradius3-mod-mschap=y
CONFIG_PACKAGE_freeradius3-mod-pam=y
CONFIG_PACKAGE_freeradius3-mod-pap=y
CONFIG_PACKAGE_freeradius3-mod-passwd=y
CONFIG_PACKAGE_freeradius3-mod-preprocess=y
CONFIG_PACKAGE_freeradius3-mod-python3=y
CONFIG_PACKAGE_freeradius3-mod-radutmp=y
CONFIG_PACKAGE_freeradius3-mod-realm=y
CONFIG_PACKAGE_freeradius3-mod-redis=y
CONFIG_PACKAGE_freeradius3-mod-rediswho=y
CONFIG_PACKAGE_freeradius3-mod-replicate=y
CONFIG_PACKAGE_freeradius3-mod-rest=y
CONFIG_PACKAGE_freeradius3-mod-soh=y
CONFIG_PACKAGE_freeradius3-mod-sometimes=y
CONFIG_PACKAGE_freeradius3-mod-sql=y
CONFIG_PACKAGE_freeradius3-mod-sql-map=y
CONFIG_PACKAGE_freeradius3-mod-sql-mysql=y
CONFIG_PACKAGE_freeradius3-mod-sql-null=y
CONFIG_PACKAGE_freeradius3-mod-sql-postgresql=y
CONFIG_PACKAGE_freeradius3-mod-sql-sqlite=y
CONFIG_PACKAGE_freeradius3-mod-sql-unixodbc=y
CONFIG_PACKAGE_freeradius3-mod-sqlcounter=y
CONFIG_PACKAGE_freeradius3-mod-sqlippool=y
CONFIG_PACKAGE_freeradius3-mod-totp=y
CONFIG_PACKAGE_freeradius3-mod-unbound=y
CONFIG_PACKAGE_freeradius3-mod-unix=y
CONFIG_PACKAGE_freeradius3-mod-unpack=y
CONFIG_PACKAGE_freeradius3-mod-utf8=y
CONFIG_PACKAGE_freeradius3-utils=y

#####################################################################
# 9. Monitoring & SNMP
#####################################################################

# LLDP & SNMP
CONFIG_LLDPD_WITH_CDP=y
CONFIG_LLDPD_WITH_CUSTOM=y
CONFIG_LLDPD_WITH_DOT1=y
CONFIG_LLDPD_WITH_DOT3=y
CONFIG_LLDPD_WITH_EDP=y
CONFIG_LLDPD_WITH_FDP=y
CONFIG_LLDPD_WITH_JSON=y
CONFIG_LLDPD_WITH_LLDPMED=y
CONFIG_LLDPD_WITH_PRIVSEP=y
CONFIG_LLDPD_WITH_SNMP=y
CONFIG_LLDPD_WITH_SONMP=y
CONFIG_PACKAGE_lldpd=y
CONFIG_PACKAGE_snmpd=y

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
# 10. Core Networking, Tunnels & XFRM
#####################################################################

# DNS Core
CONFIG_PACKAGE_dnsmasq-full=y
CONFIG_PACKAGE_dnsmasq_full_ipset=y
CONFIG_PACKAGE_luci-app-unbound=y
CONFIG_PACKAGE_libunbound_dnscrypt=y
CONFIG_PACKAGE_unbound-anchor=y
CONFIG_PACKAGE_unbound-checkconf=y
CONFIG_PACKAGE_unbound-control=y
CONFIG_PACKAGE_unbound-control-setup=y
CONFIG_PACKAGE_unbound-daemon=y
CONFIG_PACKAGE_unbound-host=y

# IPv6 & Tunnels
CONFIG_PACKAGE_ds-lite=y
CONFIG_PACKAGE_6in4=y
CONFIG_PACKAGE_6to4=y
CONFIG_PACKAGE_6rd=y
CONFIG_PACKAGE_kmod-gre=y
CONFIG_PACKAGE_kmod-gre6=y
CONFIG_PACKAGE_kmod-mpls=y
CONFIG_PACKAGE_kmod-nat46=y
CONFIG_PACKAGE_vxlan=y
CONFIG_PACKAGE_kmod-vxlan=y
CONFIG_PACKAGE_kmod-macsec=y
CONFIG_PACKAGE_kmod-macvlan=y
CONFIG_PACKAGE_kmod-geneve=y
CONFIG_PACKAGE_kmod-ip6-tunnel=y
CONFIG_PACKAGE_kmod-iptunnel=y
CONFIG_PACKAGE_kmod-iptunnel6=y
CONFIG_PACKAGE_kmod-nf-nathelper=y
CONFIG_PACKAGE_kmod-veth=y

# VTI & XFRM
CONFIG_PACKAGE_kmod-ip-vti=y
CONFIG_PACKAGE_kmod-ip6-vti=y
CONFIG_PACKAGE_luci-proto-vti=y
CONFIG_PACKAGE_vti=y
CONFIG_PACKAGE_kmod-nft-xfrm=y
CONFIG_PACKAGE_kmod-xfrm-interface=y
CONFIG_PACKAGE_luci-proto-xfrm=y
CONFIG_PACKAGE_xfrm=y

#####################################################################
# 11. System Tools & Utilities
#####################################################################
CONFIG_PACKAGE_ca-certificates=y
CONFIG_DROPBEAR_ECC=y
CONFIG_PACKAGE_curl=y
CONFIG_LIBCURL_OPENSSL=y
CONFIG_PACKAGE_htop=y
CONFIG_HTOP_LMSENSORS=n
CONFIG_PACKAGE_tcpdump=y
CONFIG_PACKAGE_iperf3-ssl=y
CONFIG_PACKAGE_jq=y
CONFIG_PACKAGE_rsync=y
CONFIG_PACKAGE_tar=y
CONFIG_PACKAGE_pigz=y
CONFIG_PACKAGE_ethtool-full=y
CONFIG_PACKAGE_nmap-full=y
CONFIG_PACKAGE_speedtest-go=y
CONFIG_PACKAGE_qrencode=y
CONFIG_PACKAGE_bind-dig=y
CONFIG_PACKAGE_cfdisk=y
CONFIG_PACKAGE_conntrack=y
CONFIG_PACKAGE_eapol-test-openssl=y
CONFIG_PACKAGE_iftop=y
CONFIG_PACKAGE_irqbalance=y
CONFIG_PACKAGE_fping=y
CONFIG_PACKAGE_lftp=y
CONFIG_PACKAGE_msmtp=y
CONFIG_PACKAGE_mtr-json=y
CONFIG_PACKAGE_net-tools-netstat=y
CONFIG_PACKAGE_ntpdate=y
CONFIG_PACKAGE_openssh-client=y
CONFIG_PACKAGE_openssh-sftp-client=y
CONFIG_PACKAGE_openssh-sftp-server=y
CONFIG_PACKAGE_picocom=y
CONFIG_PACKAGE_screen=y
CONFIG_PACKAGE_ser2net=y
CONFIG_PACKAGE_socat=y
CONFIG_PACKAGE_ss=y
CONFIG_PACKAGE_vsftpd=y
CONFIG_PACKAGE_whois=y
CONFIG_PACKAGE_wget-ssl=y
CONFIG_PACKAGE_ip-full=y
CONFIG_PACKAGE_tc-full=y
CONFIG_PACKAGE_ncat-full=y

#####################################################################
# 12. Storage, File Systems & MTD Utils
#####################################################################
CONFIG_PACKAGE_block-mount=y
CONFIG_PACKAGE_parted=y
CONFIG_PACKAGE_resize2fs=y
CONFIG_PACKAGE_e2fsprogs=y
CONFIG_PACKAGE_f2fs-tools=y
CONFIG_PACKAGE_lsblk=y
CONFIG_PACKAGE_fdisk=y
CONFIG_PACKAGE_sfdisk=y
CONFIG_PACKAGE_libblkid=y
CONFIG_PACKAGE_ntfs-3g=y

# Filesystems
CONFIG_PACKAGE_kmod-fs-exfat=y
CONFIG_PACKAGE_kmod-fs-ext4=y
CONFIG_PACKAGE_kmod-fs-f2fs=y
CONFIG_PACKAGE_kmod-fs-hfs=y
CONFIG_PACKAGE_kmod-fs-hfsplus=y
CONFIG_PACKAGE_kmod-fs-msdos=y
CONFIG_PACKAGE_kmod-fs-vfat=y
CONFIG_PACKAGE_kmod-fs-ntfs3=y

# MTD / NAND Tools
CONFIG_PACKAGE_kmod-block2mtd=y
CONFIG_PACKAGE_kmod-mtd-rw=y
CONFIG_PACKAGE_kmod-mtdoops=y
CONFIG_PACKAGE_kmod-mtdram=y
CONFIG_PACKAGE_kmod-mtdtests=y
CONFIG_PACKAGE_nand-utils=y

#####################################################################
# 13. USB & Cellular Support
#####################################################################
CONFIG_PACKAGE_kmod-usb-printer=y
CONFIG_PACKAGE_kmod-usb-serial=y
CONFIG_PACKAGE_kmod-usb-storage=y
CONFIG_PACKAGE_kmod-usb-storage-extras=y
CONFIG_PACKAGE_kmod-usb-storage-uas=y
CONFIG_PACKAGE_kmod-usb-uhci=y
CONFIG_PACKAGE_kmod-usb-serial-belkin=y
CONFIG_PACKAGE_kmod-usb-serial-ch341=y
CONFIG_PACKAGE_kmod-usb-serial-cp210x=y
CONFIG_PACKAGE_kmod-usb-serial-ftdi=y
CONFIG_PACKAGE_kmod-usb-serial-pl2303=y

# Cellular Support
CONFIG_PACKAGE_kmod-usb-serial-wwan=y
CONFIG_PACKAGE_kmod-usb-serial-qualcomm=y
CONFIG_PACKAGE_kmod-usb-net-sierrawireless=y
CONFIG_PACKAGE_kmod-usb-serial-sierrawireless=y
CONFIG_PACKAGE_luci-proto-modemmanager=y
CONFIG_PACKAGE_adb-enablemodem=y
CONFIG_PACKAGE_modemmanager=y
CONFIG_MODEMMANAGER_WITH_NETIFD=y
CONFIG_MODEMMANAGER_WITH_MBIM=y
CONFIG_MODEMMANAGER_WITH_QMI=y
CONFIG_MODEMMANAGER_WITH_QRTR=y
CONFIG_MODEMMANAGER_WITH_AT_COMMAND_VIA_DBUS=y
CONFIG_PACKAGE_modemmanager-rpcd=y

#####################################################################
# 14. Multimedia, Docker & Advanced
#####################################################################

# Audio/Video
CONFIG_PACKAGE_shairport-sync-openssl=y
CONFIG_PACKAGE_libffmpeg-full=y

# Docker Support
CONFIG_PACKAGE_docker=y
CONFIG_PACKAGE_dockerd=y
CONFIG_PACKAGE_docker-compose=y

# ZRAM Support
CONFIG_PACKAGE_kmod-zram=y
CONFIG_PACKAGE_zram-swap=y
CONFIG_KERNEL_ZRAM=y
CONFIG_KERNEL_ZRAM_DEF_COMP_LZ4=y

# Kernel Extras
CONFIG_PACKAGE_kmod-ikconfig=y
CONFIG_PACKAGE_kmod-cryptodev=y
CONFIG_PACKAGE_libopenssl-devcrypto=y
CONFIG_PACKAGE_kmod-dnsresolver=y
CONFIG_PACKAGE_kmod-ramoops=y
CONFIG_PACKAGE_kmod-pstore=y
CONFIG_PACKAGE_kmod-reed-solomon=y

# Busybox Customization
CONFIG_BUSYBOX_CUSTOM=y
CONFIG_BUSYBOX_DEFAULT_TELNET=y
CONFIG_BUSYBOX_CONFIG_TELNET=y
CONFIG_BUSYBOX_CONFIG_FEATURE_TELNET_TTYPE=y
CONFIG_BUSYBOX_CONFIG_FEATURE_TELNET_AUTOLOGIN=y
CONFIG_BUSYBOX_CONFIG_FEATURE_TELNET_WIDTH=y
CONFIG_BUSYBOX_CONFIG_FEATURE_EDITING_SAVEHISTORY=y
CONFIG_BUSYBOX_CONFIG_FEATURE_EDITING_SAVE_ON_EXIT=y
CONFIG_BUSYBOX_CONFIG_FEATURE_LESS_FLAGS=y
CONFIG_BUSYBOX_CONFIG_FEATURE_LESS_REGEXP=y
CONFIG_BUSYBOX_CONFIG_FEATURE_LESS_WINCH=y
