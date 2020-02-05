#define NET_PROTO_IPV6       /* IPv6 protocol */
#define DOWNLOAD_PROTO_HTTPS /* Secure Hypertext Transfer Protocol */
#undef  DOWNLOAD_PROTO_FTP   /* File Transfer Protocol */
#undef  DOWNLOAD_PROTO_SLAM  /* Scalable Local Area Multicast */
#undef  DOWNLOAD_PROTO_NFS   /* Network File System Protocol */
#undef  DOWNLOAD_PROTO_FILE  /* Local filesystem access */
#undef  SANBOOT_PROTO_ISCSI  /* iSCSI protocol */
#undef  SANBOOT_PROTO_AOE    /* AoE protocol */
#undef  SANBOOT_PROTO_IB_SRP /* Infiniband SCSI RDMA protocol */
#undef  SANBOOT_PROTO_FCP    /* Fibre Channel protocol */
#undef  SANBOOT_PROTO_HTTP   /* HTTP SAN protocol */
#undef  HTTP_AUTH_BASIC      /* Basic authentication */
#undef  HTTP_AUTH_DIGEST     /* Digest authentication */
#undef  CRYPTO_80211_WEP     /* WEP encryption (deprecated and insecure!) */
#undef  CRYPTO_80211_WPA     /* WPA Personal, authenticating with passphrase */
#undef  CRYPTO_80211_WPA2    /* Add support for stronger WPA cryptography */
#define DNS_RESOLVER         /* DNS resolver */
#undef  IMAGE_PNG            /* PNG image support */
#undef  IMAGE_DER            /* DER image support */
#undef  IMAGE_PEM            /* PEM image support */
#define NSLOOKUP_CMD         /* DNS resolving command */
#define VLAN_CMD             /* VLAN commands */
#define REBOOT_CMD           /* Reboot command */
#define POWEROFF_CMD         /* Power off command */
#undef NET_PROTO_LACP
#undef NET_PROTO_STP
