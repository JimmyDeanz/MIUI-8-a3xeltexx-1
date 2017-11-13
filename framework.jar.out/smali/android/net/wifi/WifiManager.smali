.class public Landroid/net/wifi/WifiManager;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$1;,
        Landroid/net/wifi/WifiManager$MulticastLock;,
        Landroid/net/wifi/WifiManager$WifiLock;,
        Landroid/net/wifi/WifiManager$PinningNetworkCallback;,
        Landroid/net/wifi/WifiManager$ServiceHandler;,
        Landroid/net/wifi/WifiManager$TxPacketCountListener;,
        Landroid/net/wifi/WifiManager$WpsCallback;,
        Landroid/net/wifi/WifiManager$ActionListener;
    }
.end annotation


# static fields
.field public static final ACTION_FRAME_VS_WES_RECEIVED_ACTION:Ljava/lang/String; = "android.net.wifi.ACTION_FRAME_VS_WES_RECEIVED_ACTION"

.field public static final ACTION_PICK_WIFI_NETWORK:Ljava/lang/String; = "android.net.wifi.PICK_WIFI_NETWORK"

.field public static final ACTION_REQUEST_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE"

.field public static final ACTION_SEC_NETWORK_STATE_CHANGED:Ljava/lang/String; = "com.samsung.android.net.wifi.SEC_NETWORK_STATE_CHANGED"

.field public static final ACTION_SEC_NOTIFICATION_CANCEL:Ljava/lang/String; = "com.samsung.android.net.wifi.SEC_NOTIFICATION_CANCEL"

.field public static final ACTION_SEC_PICK_WIFI_NETWORK:Ljava/lang/String; = "com.samsung.android.net.wifi.SEC_PICK_WIFI_NETWORK"

.field public static final ACTION_SEC_PICK_WIFI_NETWORK_WITH_DIALOG:Ljava/lang/String; = "com.samsung.android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

.field public static final ACTION_SEC_PICK_WIFI_NETWORK_WITH_ON:Ljava/lang/String; = "com.samsung.android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

.field public static final ACTION_SEC_VZW_NOTIFICATION_CANCEL:Ljava/lang/String; = "android.net.wifi.SEC_VZW_NOTIFICATION_CANCEL"

.field public static final ACTION_SEC_VZW_NOTIFICATION_CONNECT:Ljava/lang/String; = "android.net.wifi.SEC_VZW_NOTIFICATION_CONNECT"

.field public static final AP_OPEN_TYPE_CAPTIVE:I = 0x3

.field public static final AP_OPEN_TYPE_INTERNET:I = 0x2

.field public static final AP_OPEN_TYPE_NONE:I = 0x0

.field public static final AP_OPEN_TYPE_NOT_ABLE_TO_CONNECT:I = 0x4

.field public static final AP_OPEN_TYPE_NO_INTERNET:I = 0x1

.field private static final BASE:I = 0x25000

.field public static final BATCHED_SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.BATCHED_RESULTS"

.field public static final BUSY:I = 0x2

.field public static final CANCEL_WPS:I = 0x2500e

.field public static final CANCEL_WPS_FAILED:I = 0x2500f

.field public static final CANCEL_WPS_SUCCEDED:I = 0x25010

.field public static final CAPTIVE_PORTAL_AUTHENTICATED:Ljava/lang/String; = "com.samsung.android.net.wifi.CAPTIVE_PORTAL_AUTHENTICATED"

.field public static final CAPTIVE_PORTAL_DETECTED:Ljava/lang/String; = "com.samsung.android.net.wifi.CAPTIVE_PORTAL_DETECTED"

.field public static final CHANGE_REASON_ADDED:I = 0x0

.field public static final CHANGE_REASON_CONFIG_CHANGE:I = 0x2

.field public static final CHANGE_REASON_REMOVED:I = 0x1

.field public static final CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

.field public static final CONFIGURED_NETWORKS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

.field public static final CONNECT_MODE_INTRANET_ONLY:I = 0x1

.field public static final CONNECT_MODE_NORMAL:I = 0x0

.field public static final CONNECT_NETWORK:I = 0x25001

.field public static final CONNECT_NETWORK_FAILED:I = 0x25002

.field public static final CONNECT_NETWORK_SUCCEEDED:I = 0x25003

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_NOTIFICATION:I = 0x1

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field private static final DBG:Z

.field private static final DBGMHS:Z

.field public static final DEFAULT_POOR_NETWORK_AVOIDANCE_ENABLED:Z = false

.field public static final DHCP_FAILURE_ERROR:I = 0x2

.field public static final DISABLE_NETWORK:I = 0x25011

.field public static final DISABLE_NETWORK_FAILED:I = 0x25012

.field public static final DISABLE_NETWORK_SUCCEEDED:I = 0x25013

.field public static final DRIVER_ERROR:I = 0xa

.field public static final ERROR:I = 0x0

.field public static final ERROR_ACTION:Ljava/lang/String; = "android.net.wifi.ERROR"

.field public static final ERROR_AUTHENTICATING:I = 0x1

.field public static final EXTRA_ACTION_FRAME_VS_WES_DATA:Ljava/lang/String; = "ActionFrameVSWESData"

.field public static final EXTRA_BSSID:Ljava/lang/String; = "bssid"

.field public static final EXTRA_CALLED_DIALOG:Ljava/lang/String; = "called_dialog"

.field public static final EXTRA_CHANGE_REASON:Ljava/lang/String; = "changeReason"

.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final EXTRA_HS20_STATE:Ljava/lang/String; = "hs20_state"

.field public static final EXTRA_LINK_PROPERTIES:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_MULTIPLE_NETWORKS_CHANGED:Ljava/lang/String; = "multipleChanges"

.field public static final EXTRA_NETWORK_CAPABILITIES:Ljava/lang/String; = "networkCapabilities"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"

.field public static final EXTRA_NETWORK_RECONNECT:Ljava/lang/String; = "network_reconnect"

.field public static final EXTRA_NEW_RSSI:Ljava/lang/String; = "newRssi"

.field public static final EXTRA_NEW_STATE:Ljava/lang/String; = "newState"

.field public static final EXTRA_OXYGEN_CONNECT_MODE:Ljava/lang/String; = "connectMode"

.field public static final EXTRA_PREVIOUS_WIFI_AP_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_PREVIOUS_WIFI_STATE:Ljava/lang/String; = "previous_wifi_state"

.field public static final EXTRA_RESULTS_UPDATED:Ljava/lang/String; = "resultsUpdated"

.field public static final EXTRA_SCAN_AVAILABLE:Ljava/lang/String; = "scan_enabled"

.field public static final EXTRA_SUPPLICANT_CONNECTED:Ljava/lang/String; = "connected"

.field public static final EXTRA_SUPPLICANT_ERROR:Ljava/lang/String; = "supplicantError"

.field public static final EXTRA_WIFI_AP_FAILURE_REASON:Ljava/lang/String; = "wifi_ap_error_code"

.field public static final EXTRA_WIFI_AP_INTEFACE_STATE:Ljava/lang/String; = "interface_state"

.field public static final EXTRA_WIFI_AP_STATE:Ljava/lang/String; = "wifi_state"

.field public static final EXTRA_WIFI_CONFIGURATION:Ljava/lang/String; = "wifiConfiguration"

.field public static final EXTRA_WIFI_CREDENTIAL_EVENT_TYPE:Ljava/lang/String; = "et"

.field public static final EXTRA_WIFI_CREDENTIAL_SSID:Ljava/lang/String; = "ssid"

.field public static final EXTRA_WIFI_INFO:Ljava/lang/String; = "wifiInfo"

.field public static final EXTRA_WIFI_STATE:Ljava/lang/String; = "wifi_state"

.field public static final FORGET_NETWORK:I = 0x25004

.field public static final FORGET_NETWORK_FAILED:I = 0x25005

.field public static final FORGET_NETWORK_SUCCEEDED:I = 0x25006

.field public static final FREE_WIFI_SCAN_OPEN_AP_CHECK_RESULT:Ljava/lang/String; = "android.net.wifi.OPEN_AP_CHECK_RESULT"

.field public static final FREE_WIFI_SCAN_OPEN_NETWORK_STATUS:Ljava/lang/String; = "free_wifi_scan_open_network_status"

.field public static final HS20_DISABLED_COMPLETE_BY_CREDERROR_ACTION:Ljava/lang/String; = "android.net.wifi.HS20_DISABLED_COMPLETE_BY_CREDERROR"

.field public static final HS20_EXPIRY_TIME_FOUND_ACTION:Ljava/lang/String; = "android.net.wifi.HS20_EXPIRY_TIME_FOUND"

.field public static final HS20_PROVIDER_LIST_UPDATED:Ljava/lang/String; = "android.net.wifi.HS20_PROVIDER_LIST_UPDATED"

.field public static final HS20_STATE_DISABLED:I = 0x14

.field public static final HS20_STATE_ENABLED:I = 0x15

.field public static final HS20_STATE_UNKNOWN:I = 0x16

.field public static final HS20_WNM_DEAUTH_IMMINENT:Ljava/lang/String; = "android.net.wifi.HS20_WNM_DEAUTH_IMMINENT"

.field public static final INVALID_ARGS:I = 0x8

.field public static final INVALID_CRED_ID:I = -0x1

.field private static final INVALID_KEY:I = 0x0

.field public static final IN_PROGRESS:I = 0x1

.field public static final KIES_VIA_WIFI_RUN_KIES:Ljava/lang/String; = "android.net.wifi.RUN_KIES"

.field public static final KIES_VIA_WIFI_SET_HOME_AP:Ljava/lang/String; = "android.net.wifi.SET_HOME_AP"

.field public static final LINK_CONFIGURATION_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.LINK_CONFIGURATION_CHANGED"

.field private static final MAX_ACTIVE_LOCKS:I = 0x32

.field private static final MAX_RSSI:I = -0x37

.field private static final MIN_RSSI:I = -0x64

.field public static final NETWORK_IDS_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.NETWORK_IDS_CHANGED"

.field public static final NETWORK_OXYGEN_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.samsung.android.net.wifi.NETWORK_OXYGEN_STATE_CHANGE"

.field public static final NETWORK_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.STATE_CHANGE"

.field public static final NOTIFICATION_FOR_CAPTIVE_PORTAL_DISABLED:I = 0xd

.field public static final NOTIFICATION_FOR_CAPTIVE_PORTAL_LOGIN:I = 0xc

.field public static final NOTIFICATION_FOR_MALICIOUS_HOTSPOT_DETECTION:I = 0x11

.field public static final NOTIFICATION_FOR_SCC_DIFF:I = 0x6

.field public static final NOTIFICATION_FOR_SHARE_PROFILE_NETWORK_EXPIRED:I = 0xf

.field public static final NOTIFICATION_FOR_SHARE_PROFILE_RECEPTION:I = 0xe

.field public static final NOTIFICATION_FOR_SHARE_PROFILE_TRANSMISSION:I = 0x10

.field public static final NOTIFICATION_FOR_SNS_EXCEPTION:I = 0xb

.field public static final NOTIFICATION_FOR_SNS_POOR_CONNECTION:I = 0x9

.field public static final NOTIFICATION_FOR_WWSM_PATCHER:I = 0x12

.field public static final NOT_AUTHORIZED:I = 0x9

.field public static final OLSRD_ERROR:I = 0x14

.field public static final OXYGEN_SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "com.samsung.android.net.wifi.OXYGEN_SCAN_RESULTS"

.field public static final RSSI_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.RSSI_CHANGED"

.field public static final RSSI_LEVELS:I = 0x5

.field public static final RSSI_PKTCNT_FETCH:I = 0x25014

.field public static final RSSI_PKTCNT_FETCH_FAILED:I = 0x25016

.field public static final RSSI_PKTCNT_FETCH_SUCCEEDED:I = 0x25015

.field public static final SAP_START_FAILURE_GENERAL:I = 0x0

.field public static final SAP_START_FAILURE_NO_CHANNEL:I = 0x1

.field public static final SAVE_NETWORK:I = 0x25007

.field public static final SAVE_NETWORK_FAILED:I = 0x25008

.field public static final SAVE_NETWORK_SUCCEEDED:I = 0x25009

.field public static final SCAN_RESULTS_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.SCAN_RESULTS"

.field public static final SEC_CMD_GET_PASSPOINT_STATE:I = 0xff

.field public static final SEC_COMMAND_ID_ADD_CRED:I = 0xd2

.field public static final SEC_COMMAND_ID_ADD_HISTORICAL_DUMPLOG:I = 0x4e

.field public static final SEC_COMMAND_ID_ANS_EXCEPTION_ANSWER:I = 0xc9

.field public static final SEC_COMMAND_ID_AUTO_CONNECT:I = 0x1

.field public static final SEC_COMMAND_ID_BACKUP_RESTORE:I = 0x3d

.field public static final SEC_COMMAND_ID_CHECK_SUPPORT_80211AC:I = 0x49

.field public static final SEC_COMMAND_ID_CONTROL_SENSOR_MONITOR:I = 0x4f

.field public static final SEC_COMMAND_ID_DELAY_DISCONNECT_TRANSITION:I = 0x51

.field public static final SEC_COMMAND_ID_DELETE_RAW_WIFI_PROFILE:I = 0x105

.field public static final SEC_COMMAND_ID_DISABLE_NETWORK_WITH_REASON:I = 0xcb

.field public static final SEC_COMMAND_ID_DNS_RECHECK:I = 0x19

.field public static final SEC_COMMAND_ID_FETCH_ANQP:I = 0xfe

.field public static final SEC_COMMAND_ID_GET_BAND:I = 0xa2

.field public static final SEC_COMMAND_ID_GET_CHAMELEON_ENABLED:I = 0x14

.field public static final SEC_COMMAND_ID_GET_CHAMELEON_MAXUSER:I = 0x16

.field public static final SEC_COMMAND_ID_GET_CHAMELEON_TETHEREDDATA:I = 0x15

.field public static final SEC_COMMAND_ID_GET_COUNTRY_REV:I = 0xa0

.field public static final SEC_COMMAND_ID_GET_DFS_SCAN_MODE:I = 0xa4

.field public static final SEC_COMMAND_ID_GET_DHCP_RENEW_AFTER_ROAMING_MODE:I = 0xb4

.field public static final SEC_COMMAND_ID_GET_FWS_OPEN_AP_CHECK:I = 0xdc

.field public static final SEC_COMMAND_ID_GET_INTERNET_CHECK_OPTION:I = 0x22

.field public static final SEC_COMMAND_ID_GET_PREFER_BAND:I = 0x1e

.field public static final SEC_COMMAND_ID_GET_RECONNECT:I = 0xc8

.field public static final SEC_COMMAND_ID_GET_ROAM_DELTA:I = 0x66

.field public static final SEC_COMMAND_ID_GET_ROAM_SCAN_CHANNELS:I = 0x6c

.field public static final SEC_COMMAND_ID_GET_ROAM_SCAN_CONTROL:I = 0x6a

.field public static final SEC_COMMAND_ID_GET_ROAM_SCAN_PERIOD:I = 0x68

.field public static final SEC_COMMAND_ID_GET_ROAM_TRIGGER:I = 0x64

.field public static final SEC_COMMAND_ID_GET_SCAN_CHANNEL_TIME:I = 0x82

.field public static final SEC_COMMAND_ID_GET_SCAN_CONTROLLER_SETTINGS:I = 0xdf

.field public static final SEC_COMMAND_ID_GET_SCAN_HOME_AWAY_TIME:I = 0x86

.field public static final SEC_COMMAND_ID_GET_SCAN_HOME_TIME:I = 0x84

.field public static final SEC_COMMAND_ID_GET_SCAN_NPROBES:I = 0x88

.field public static final SEC_COMMAND_ID_GET_SCAN_RESULTS_EX:I = 0x21

.field public static final SEC_COMMAND_ID_GET_SPECIAL_SSID:I = 0x102

.field public static final SEC_COMMAND_ID_GET_WES_MODE:I = 0xaa

.field public static final SEC_COMMAND_ID_GET_WIFIAP_RVFMODE:I = 0x1c

.field public static final SEC_COMMAND_ID_GET_WIFIAP_STANUM:I = 0x3

.field public static final SEC_COMMAND_ID_GET_WIFIAP_TEST_MODE:I = 0xbf

.field public static final SEC_COMMAND_ID_GET_WIFI_PASSPHRASE:I = 0x27

.field public static final SEC_COMMAND_ID_HS20_CLEAR_BLACKLIST:I = 0x2d

.field public static final SEC_COMMAND_ID_HS20_ENABLE:I = 0x29

.field public static final SEC_COMMAND_ID_HS20_FETCH_ANQP:I = 0x2b

.field public static final SEC_COMMAND_ID_HS20_INTERWORKING_SELECT:I = 0x2a

.field public static final SEC_COMMAND_ID_INIT:I = 0x0

.field public static final SEC_COMMAND_ID_INIT_SCAN_INTERVAL:I = 0x2

.field public static final SEC_COMMAND_ID_IS_IBSS_SUPPORTED:I = 0x3e

.field public static final SEC_COMMAND_ID_IW_ADD_NETWORK:I = 0xfd

.field public static final SEC_COMMAND_ID_KT_DISCONNECTION_PRIORITY:I = 0x54

.field public static final SEC_COMMAND_ID_LIST_CRED:I = 0xcf

.field public static final SEC_COMMAND_ID_LOAD_CRED:I = 0x2c

.field public static final SEC_COMMAND_ID_LOGGING:I = 0x4d

.field public static final SEC_COMMAND_ID_LTECOEX:I = 0x3f

.field public static final SEC_COMMAND_ID_PARTIAL_SCAN:I = 0x24

.field public static final SEC_COMMAND_ID_PRE_SCAN:I = 0x26

.field public static final SEC_COMMAND_ID_PROFILE_BACKUP_RESTORE:I = 0xcd

.field public static final SEC_COMMAND_ID_READ_WHITELIST:I = 0x5

.field public static final SEC_COMMAND_ID_REASSOC:I = 0x97

.field public static final SEC_COMMAND_ID_RELOAD_HIDDEN_AP_LIST:I = 0xf0

.field public static final SEC_COMMAND_ID_RELOAD_SIM_STATE:I = 0x2e

.field public static final SEC_COMMAND_ID_REMOVED_CRED:I = 0xce

.field public static final SEC_COMMAND_ID_REMOVE_CRED_ALL:I = 0xd0

.field public static final SEC_COMMAND_ID_RESET_CONFIGURATION:I = 0xf2

.field public static final SEC_COMMAND_ID_RESET_SPECIAL_SSID:I = 0x104

.field public static final SEC_COMMAND_ID_RESET_WIFIAP:I = 0xc5

.field public static final SEC_COMMAND_ID_RMC_ENABLE:I = 0x32

.field public static final SEC_COMMAND_ID_RMC_TXRATE:I = 0x33

.field public static final SEC_COMMAND_ID_SEC_RECONNECT_ENABLED:I = 0x53

.field public static final SEC_COMMAND_ID_SEND_ACTION_FRAME:I = 0x96

.field public static final SEC_COMMAND_ID_SEND_SELECTED_WIFI_PROFILE:I = 0xcc

.field public static final SEC_COMMAND_ID_SETTINGS_SOFT_RESET:I = 0xc1

.field public static final SEC_COMMAND_ID_SETWMMPS:I = 0x48

.field public static final SEC_COMMAND_ID_SET_ALLOW_TO_CONNECT:I = 0x25

.field public static final SEC_COMMAND_ID_SET_AMPDU_MPDU:I = 0x11

.field public static final SEC_COMMAND_ID_SET_BAND:I = 0xa3

.field public static final SEC_COMMAND_ID_SET_CAPTIVE_PORTAL_LOGIN_URL:I = 0x101

.field public static final SEC_COMMAND_ID_SET_CAPTIVE_PORTAL_VAR:I = 0x100

.field public static final SEC_COMMAND_ID_SET_COUNTRYCODE:I = 0x37

.field public static final SEC_COMMAND_ID_SET_COUNTRY_REV:I = 0xa1

.field public static final SEC_COMMAND_ID_SET_CRED:I = 0xd1

.field public static final SEC_COMMAND_ID_SET_DFS_SCAN_MODE:I = 0xa5

.field public static final SEC_COMMAND_ID_SET_DHCP_RENEW_AFTER_ROAMING_MODE:I = 0xb5

.field public static final SEC_COMMAND_ID_SET_FWS_OPEN_AP_CHECK:I = 0xdd

.field public static final SEC_COMMAND_ID_SET_IBSS_AMPDU:I = 0x34

.field public static final SEC_COMMAND_ID_SET_IBSS_ANTENNA_MODE:I = 0x35

.field public static final SEC_COMMAND_ID_SET_IMS_RSSI_POLL_STATE:I = 0x18

.field public static final SEC_COMMAND_ID_SET_INTERNET_CHECK_OPTION:I = 0x23

.field public static final SEC_COMMAND_ID_SET_MINIMIZE_RETRY:I = 0x13

.field public static final SEC_COMMAND_ID_SET_PREFER_BAND:I = 0x1f

.field public static final SEC_COMMAND_ID_SET_ROAM_DELTA:I = 0x67

.field public static final SEC_COMMAND_ID_SET_ROAM_SCAN_CHANNELS:I = 0x6d

.field public static final SEC_COMMAND_ID_SET_ROAM_SCAN_CONTROL:I = 0x6b

.field public static final SEC_COMMAND_ID_SET_ROAM_SCAN_PERIOD:I = 0x69

.field public static final SEC_COMMAND_ID_SET_ROAM_TRIGGER:I = 0x65

.field public static final SEC_COMMAND_ID_SET_RPS_MODE:I = 0x4b

.field public static final SEC_COMMAND_ID_SET_SCAN_CHANNEL_TIME:I = 0x83

.field public static final SEC_COMMAND_ID_SET_SCAN_CONTROLLER_SETTINGS:I = 0xde

.field public static final SEC_COMMAND_ID_SET_SCAN_HOME_AWAY_TIME:I = 0x87

.field public static final SEC_COMMAND_ID_SET_SCAN_HOME_TIME:I = 0x85

.field public static final SEC_COMMAND_ID_SET_SCAN_NPROBES:I = 0x89

.field public static final SEC_COMMAND_ID_SET_SEC_WHITELIST:I = 0x52

.field public static final SEC_COMMAND_ID_SET_SKIP_SCAN_ASSOC_LOCK:I = 0x4c

.field public static final SEC_COMMAND_ID_SET_SPECIAL_SSID:I = 0x103

.field public static final SEC_COMMAND_ID_SET_WECHAT_WIFI_INFO:I = 0x106

.field public static final SEC_COMMAND_ID_SET_WES_MODE:I = 0xab

.field public static final SEC_COMMAND_ID_SET_WIFIAP_DISASSOC_STA:I = 0x4

.field public static final SEC_COMMAND_ID_SET_WIFIAP_MACADDR_ACL:I = 0xc2

.field public static final SEC_COMMAND_ID_SET_WIFIAP_MAXCLIENT:I = 0xe

.field public static final SEC_COMMAND_ID_SET_WIFIAP_RVFMODE:I = 0x1b

.field public static final SEC_COMMAND_ID_SET_WIFIAP_TEST_MODE:I = 0xc0

.field public static final SEC_COMMAND_ID_SET_WIFIAP_TX_POWER:I = 0xc3

.field public static final SEC_COMMAND_ID_SET_WIFIAP_WPS_PBC:I = 0xbe

.field public static final SEC_COMMAND_ID_SET_WIFI_ENABLED_WITH_P2P:I = 0x1a

.field public static final SEC_COMMAND_ID_SET_WIFI_ENABLED_WITH_RIL:I = 0x28

.field public static final SEC_COMMAND_ID_SET_WIFI_SCAN_WITH_P2P:I = 0x4a

.field public static final SEC_COMMAND_ID_SHOW_APLIST_EVENT:I = 0x10

.field public static final SEC_COMMAND_ID_SHUTDOWN_WIFI:I = 0xe6

.field public static final SEC_COMMAND_ID_SKIP_AUTO_CONNECTION:I = 0x20

.field public static final SEC_COMMAND_ID_STOP_PERIODIC_SCAN:I = 0x12

.field public static final SEC_COMMAND_ID_UNLOCK_MOBILITY_NETWORK:I = 0x1d

.field public static final SEC_COMMAND_ID_UPDATE_AUTOJOIN:I = 0x47

.field public static final SEC_COMMAND_ID_UPDATE_SMART_NETWORK_SWITCH_PARAMETERS:I = 0xf1

.field public static final SEC_COMMAND_ID_VERSION:I = 0x0

.field public static final SEC_COMMAND_ID_WIFI_CONNECTION_TYPE:I = 0xf

.field public static final SEC_COMMAND_ID_WLAN_ENABLE_WARNING:I = 0x46

.field public static final SEC_COMMAND_ID_WPS_AP_METHOD:I = 0xca

.field public static final START_WPS:I = 0x2500a

.field public static final START_WPS_SUCCEEDED:I = 0x2500b

.field public static final SUPPLICANT_CONNECTION_CHANGE_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.CONNECTION_CHANGE"

.field public static final SUPPLICANT_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.supplicant.STATE_CHANGE"

.field public static final SUPPLICANT_WAPI_EVENT:Ljava/lang/String; = "android.net.wifi.supplicant.WAPI_EVENT"

.field private static final TAG:Ljava/lang/String; = "WifiManager"

.field public static final VENDORS_NOTIFICATION_ID:I = 0x2df96b

.field public static final WAPI_EVENT_AUTH_FAIL_CODE:I = 0x10

.field public static final WAPI_EVENT_CERT_FAIL_CODE:I = 0x11

.field public static final WIFI_AP_DRIVER_STATE_HANGED:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_AP_DRIVER_STATE_HANGED"

.field public static final WIFI_AP_INTERFACE_STATE_CREATED:I = 0x1

.field public static final WIFI_AP_INTERFACE_STATE_DELETED:I = 0x2

.field public static final WIFI_AP_INTERFACE_STATE_ERRORED:I = 0x3

.field public static final WIFI_AP_SET_INTEFACE:Ljava/lang/String; = "com.samsung.android.net.wifi.softap_interface"

.field public static final WIFI_AP_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STATE_CHANGED"

.field public static final WIFI_AP_STATE_DISABLED:I = 0xb

.field public static final WIFI_AP_STATE_DISABLING:I = 0xa

.field public static final WIFI_AP_STATE_ENABLED:I = 0xd

.field public static final WIFI_AP_STATE_ENABLING:I = 0xc

.field public static final WIFI_AP_STATE_FAILED:I = 0xe

.field public static final WIFI_AP_STA_ASSOCIATED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

.field public static final WIFI_AP_STA_ASSOC_LIST_AVAILABLE_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STA_ASSOC_LIST_AVAILABLE_ACTION"

.field public static final WIFI_AP_STA_STATUS_CHANGED_ACTION:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

.field public static final WIFI_AP_WPS_STATE_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_WPS_STATE_ACTION"

.field public static final WIFI_CREDENTIAL_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_CREDENTIAL_CHANGED"

.field public static final WIFI_CREDENTIAL_FORGOT:I = 0x1

.field public static final WIFI_CREDENTIAL_SAVED:I = 0x0

.field public static final WIFI_DIALOG_CANCEL_ACTION:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

.field public static final WIFI_DIALOG_ENABLING_HOTSPOT:I = 0x2

.field public static final WIFI_DIALOG_ENABLING_WIFI:I = 0x1

.field public static final WIFI_ENABLED_FROM_MHS:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_MHS"

.field public static final WIFI_FEATURE_ADDITIONAL_STA:I = 0x800

.field public static final WIFI_FEATURE_AP_STA:I = 0x8000

.field public static final WIFI_FEATURE_BATCH_SCAN:I = 0x200

.field public static final WIFI_FEATURE_D2AP_RTT:I = 0x100

.field public static final WIFI_FEATURE_D2D_RTT:I = 0x80

.field public static final WIFI_FEATURE_EPR:I = 0x4000

.field public static final WIFI_FEATURE_HAL_EPNO:I = 0x40000

.field public static final WIFI_FEATURE_INFRA:I = 0x1

.field public static final WIFI_FEATURE_INFRA_5G:I = 0x2

.field public static final WIFI_FEATURE_LINK_LAYER_STATS:I = 0x10000

.field public static final WIFI_FEATURE_LOGGER:I = 0x20000

.field public static final WIFI_FEATURE_MOBILE_HOTSPOT:I = 0x10

.field public static final WIFI_FEATURE_NAN:I = 0x40

.field public static final WIFI_FEATURE_P2P:I = 0x8

.field public static final WIFI_FEATURE_PASSPOINT:I = 0x4

.field public static final WIFI_FEATURE_PNO:I = 0x400

.field public static final WIFI_FEATURE_SCANNER:I = 0x20

.field public static final WIFI_FEATURE_TDLS:I = 0x1000

.field public static final WIFI_FEATURE_TDLS_OFFCHANNEL:I = 0x2000

.field public static final WIFI_FREQUENCY_BAND_2GHZ:I = 0x2

.field public static final WIFI_FREQUENCY_BAND_5GHZ:I = 0x1

.field public static final WIFI_FREQUENCY_BAND_AUTO:I = 0x0

.field public static final WIFI_LINK_STATUS_AC:I = 0x1

.field public static final WIFI_LINK_STATUS_AC_MIMO:I = 0x3

.field public static final WIFI_LINK_STATUS_MIMO:I = 0x2

.field public static final WIFI_LINK_STATUS_NOT_AC_MIMO:I = 0x0

.field public static final WIFI_MODE_FULL:I = 0x1

.field public static final WIFI_MODE_FULL_HIGH_PERF:I = 0x3

.field public static final WIFI_MODE_SCAN_ONLY:I = 0x2

.field public static final WIFI_OXYGEN_STATE_CHANGED_ACTION:Ljava/lang/String; = "com.samsung.android.net.wifi.WIFI_OXYGEN_STATE_CHANGE"

.field public static final WIFI_P2P_DISABLED:Ljava/lang/String; = "com.samsung.android.net.wifi.p2p_disabled"

.field public static final WIFI_SCAN_AVAILABLE:Ljava/lang/String; = "wifi_scan_available"

.field public static final WIFI_SHOW_NOTIFICATION_MESSAGE:Ljava/lang/String; = "com.samsung.android.net.wifi.SHOW_NOTI_MESSAGE"

.field public static final WIFI_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_STATE_CHANGED"

.field public static final WIFI_STATE_DISABLED:I = 0x1

.field public static final WIFI_STATE_DISABLING:I = 0x0

.field public static final WIFI_STATE_ENABLED:I = 0x3

.field public static final WIFI_STATE_ENABLING:I = 0x2

.field public static final WIFI_STATE_UNKNOWN:I = 0x4

.field public static final WPS_AUTH_FAILURE:I = 0x6

.field public static final WPS_COMPLETED:I = 0x2500d

.field public static final WPS_FAILED:I = 0x2500c

.field public static final WPS_OVERLAP_ERROR:I = 0x3

.field public static final WPS_TIMED_OUT:I = 0x7

.field public static final WPS_TKIP_ONLY_PROHIBITED:I = 0x5

.field public static final WPS_WEP_PROHIBITED:I = 0x4

.field private static final mVersionOfCallSECApi:I = 0x1

.field private static sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

.field private static sCM:Landroid/net/ConnectivityManager;

.field private static sConnected:Ljava/util/concurrent/CountDownLatch;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sListenerKey:I

.field private static final sListenerMap:Landroid/util/SparseArray;

.field private static final sListenerMapLock:Ljava/lang/Object;

.field private static sThreadRefCount:I

.field private static final sThreadRefLock:Ljava/lang/Object;


# instance fields
.field private mActiveLockCount:I

.field private mContext:Landroid/content/Context;

.field private mNetworkCallback:Landroid/net/wifi/WifiManager$PinningNetworkCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "sCM"
    .end annotation
.end field

.field mService:Landroid/net/wifi/IWifiManager;

.field private final mTargetSdkVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 113
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_2

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/net/wifi/WifiManager;->DBG:Z

    .line 114
    const-string v0, "eng"

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-eq v0, v2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    sput-boolean v1, Landroid/net/wifi/WifiManager;->DBGMHS:Z

    .line 202
    invoke-static {}, Landroid/net/wifi/WifiApCust;->getInstance()Landroid/net/wifi/WifiApCust;

    sget-object v0, Landroid/net/wifi/WifiApCust;->mMHSCustomer:Ljava/lang/String;

    sput-object v0, Landroid/net/wifi/WifiManager;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    .line 1074
    sput v2, Landroid/net/wifi/WifiManager;->sListenerKey:I

    .line 1075
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    .line 1076
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    .line 1082
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiManager;->sThreadRefLock:Ljava/lang/Object;

    return-void

    :cond_2
    move v0, v2

    .line 113
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/IWifiManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/IWifiManager;

    .prologue
    .line 1101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1102
    iput-object p1, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    .line 1103
    iput-object p2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 1104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/net/wifi/WifiManager;->mTargetSdkVersion:I

    .line 1105
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->init()V

    .line 1106
    return-void
.end method

.method static synthetic access$000(I)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 112
    invoke-static {p0}, Landroid/net/wifi/WifiManager;->removeListener(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/android/internal/util/AsyncChannel;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 112
    sput-object p0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p0
.end method

.method static synthetic access$200()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Landroid/net/wifi/WifiManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400()Landroid/util/SparseArray;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$500()Landroid/net/ConnectivityManager;
    .locals 1

    .prologue
    .line 112
    sget-object v0, Landroid/net/wifi/WifiManager;->sCM:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 112
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->unregisterPinningNetworkCallback()V

    return-void
.end method

.method static synthetic access$800(Landroid/net/wifi/WifiManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 112
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$808(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 112
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$810(Landroid/net/wifi/WifiManager;)I
    .locals 2
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 112
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method static synthetic access$820(Landroid/net/wifi/WifiManager;I)I
    .locals 1
    .param p0, "x0"    # Landroid/net/wifi/WifiManager;
    .param p1, "x1"    # I

    .prologue
    .line 112
    iget v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroid/net/wifi/WifiManager;->mActiveLockCount:I

    return v0
.end method

.method private addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1237
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1239
    :goto_0
    return v1

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static calculateSignalLevel(II)I
    .locals 7
    .param p0, "rssi"    # I
    .param p1, "numLevels"    # I

    .prologue
    const/4 v2, 0x0

    const/16 v6, -0x4b

    const/16 v5, -0x53

    const/16 v4, -0x59

    .line 2117
    const/4 v3, 0x5

    if-ne p1, v3, :cond_5

    .line 2118
    if-gt p0, v4, :cond_1

    .line 2136
    :cond_0
    :goto_0
    return v2

    .line 2120
    :cond_1
    if-le p0, v4, :cond_2

    if-gt p0, v5, :cond_2

    .line 2121
    const/4 v2, 0x1

    goto :goto_0

    .line 2122
    :cond_2
    if-le p0, v5, :cond_3

    if-gt p0, v6, :cond_3

    .line 2123
    const/4 v2, 0x2

    goto :goto_0

    .line 2124
    :cond_3
    if-le p0, v6, :cond_4

    const/16 v2, -0x40

    if-gt p0, v2, :cond_4

    .line 2125
    const/4 v2, 0x3

    goto :goto_0

    .line 2127
    :cond_4
    const/4 v2, 0x4

    goto :goto_0

    .line 2129
    :cond_5
    const/16 v3, -0x64

    if-le p0, v3, :cond_0

    .line 2131
    const/16 v2, -0x37

    if-lt p0, v2, :cond_6

    .line 2132
    add-int/lit8 v2, p1, -0x1

    goto :goto_0

    .line 2134
    :cond_6
    const/high16 v0, 0x42340000    # 45.0f

    .line 2135
    .local v0, "inputRange":F
    add-int/lit8 v2, p1, -0x1

    int-to-float v1, v2

    .line 2136
    .local v1, "outputRange":F
    add-int/lit8 v2, p0, 0x64

    int-to-float v2, v2

    mul-float/2addr v2, v1

    div-float/2addr v2, v0

    float-to-int v2, v2

    goto :goto_0
.end method

.method public static compareSignalLevel(II)I
    .locals 1
    .param p0, "rssiA"    # I
    .param p1, "rssiB"    # I

    .prologue
    .line 2150
    sub-int v0, p0, p1

    return v0
.end method

.method private getSupportedFeatures()I
    .locals 2

    .prologue
    .line 1437
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getSupportedFeatures()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1439
    :goto_0
    return v1

    .line 1438
    :catch_0
    move-exception v0

    .line 1439
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2926
    sget-object v4, Landroid/net/wifi/WifiManager;->sThreadRefLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2927
    :try_start_0
    sget v3, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    if-ne v3, v5, :cond_1

    .line 2928
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;

    move-result-object v2

    .line 2929
    .local v2, "messenger":Landroid/os/Messenger;
    if-nez v2, :cond_0

    .line 2930
    const/4 v3, 0x0

    sput-object v3, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2931
    monitor-exit v4

    .line 2948
    .end local v2    # "messenger":Landroid/os/Messenger;
    :goto_0
    return-void

    .line 2934
    .restart local v2    # "messenger":Landroid/os/Messenger;
    :cond_0
    new-instance v3, Landroid/os/HandlerThread;

    const-string v5, "WifiManager"

    invoke-direct {v3, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v3, Landroid/net/wifi/WifiManager;->sHandlerThread:Landroid/os/HandlerThread;

    .line 2935
    new-instance v3, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v3}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    sput-object v3, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 2936
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v3, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v3, Landroid/net/wifi/WifiManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    .line 2938
    sget-object v3, Landroid/net/wifi/WifiManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 2939
    new-instance v1, Landroid/net/wifi/WifiManager$ServiceHandler;

    sget-object v3, Landroid/net/wifi/WifiManager;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/net/wifi/WifiManager$ServiceHandler;-><init>(Landroid/os/Looper;)V

    .line 2940
    .local v1, "handler":Landroid/os/Handler;
    sget-object v3, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v5, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5, v1, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2942
    :try_start_1
    sget-object v3, Landroid/net/wifi/WifiManager;->sConnected:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2947
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "messenger":Landroid/os/Messenger;
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 2943
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "messenger":Landroid/os/Messenger;
    :catch_0
    move-exception v0

    .line 2944
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "WifiManager"

    const-string/jumbo v5, "interrupted wait at init"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private initConnectivityManager()V
    .locals 2

    .prologue
    .line 2958
    sget-object v0, Landroid/net/wifi/WifiManager;->sCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 2959
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    sput-object v0, Landroid/net/wifi/WifiManager;->sCM:Landroid/net/ConnectivityManager;

    .line 2960
    sget-object v0, Landroid/net/wifi/WifiManager;->sCM:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 2961
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bad luck, ConnectivityService not started."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2964
    :cond_0
    return-void
.end method

.method private isCustomizedByKccAgent()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2258
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.sec.knox.kccagent/shared_prefs/customized.xml"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2259
    .local v0, "kccAgentSharedPref":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isFeatureSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 1444
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->getSupportedFeatures()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static putListener(Ljava/lang/Object;)I
    .locals 3
    .param p0, "listener"    # Ljava/lang/Object;

    .prologue
    .line 2905
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 2913
    :goto_0
    return v0

    .line 2907
    :cond_0
    sget-object v2, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2909
    :cond_1
    :try_start_0
    sget v0, Landroid/net/wifi/WifiManager;->sListenerKey:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Landroid/net/wifi/WifiManager;->sListenerKey:I

    .line 2910
    .local v0, "key":I
    if-eqz v0, :cond_1

    .line 2911
    sget-object v1, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2912
    monitor-exit v2

    goto :goto_0

    .end local v0    # "key":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private registerPinningNetworkCallback()V
    .locals 5

    .prologue
    .line 3017
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->initConnectivityManager()V

    .line 3018
    sget-object v3, Landroid/net/wifi/WifiManager;->sCM:Landroid/net/ConnectivityManager;

    monitor-enter v3

    .line 3019
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mNetworkCallback:Landroid/net/wifi/WifiManager$PinningNetworkCallback;

    if-nez v2, :cond_0

    .line 3021
    new-instance v2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    .line 3025
    .local v1, "request":Landroid/net/NetworkRequest;
    new-instance v2, Landroid/net/wifi/WifiManager$PinningNetworkCallback;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Landroid/net/wifi/WifiManager$PinningNetworkCallback;-><init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiManager$1;)V

    iput-object v2, p0, Landroid/net/wifi/WifiManager;->mNetworkCallback:Landroid/net/wifi/WifiManager$PinningNetworkCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3027
    :try_start_1
    sget-object v2, Landroid/net/wifi/WifiManager;->sCM:Landroid/net/ConnectivityManager;

    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mNetworkCallback:Landroid/net/wifi/WifiManager$PinningNetworkCallback;

    invoke-virtual {v2, v1, v4}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3032
    .end local v1    # "request":Landroid/net/NetworkRequest;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 3033
    return-void

    .line 3028
    .restart local v1    # "request":Landroid/net/NetworkRequest;
    :catch_0
    move-exception v0

    .line 3029
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "WifiManager"

    const-string v4, "Failed to register network callback"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3032
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "request":Landroid/net/NetworkRequest;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private static removeListener(I)Ljava/lang/Object;
    .locals 3
    .param p0, "key"    # I

    .prologue
    .line 2917
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 2921
    :goto_0
    return-object v0

    .line 2918
    :cond_0
    sget-object v2, Landroid/net/wifi/WifiManager;->sListenerMapLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2919
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2920
    .local v0, "listener":Ljava/lang/Object;
    sget-object v1, Landroid/net/wifi/WifiManager;->sListenerMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 2921
    monitor-exit v2

    goto :goto_0

    .line 2922
    .end local v0    # "listener":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static showWebBrowserAtCaptivePortal()Z
    .locals 10

    .prologue
    .line 4629
    const-string/jumbo v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4630
    .local v5, "mSalesCode":Ljava/lang/String;
    const-string v6, "TTR MAX TRG COA COS DDE DTM CRO DHR DNL TNL DPL TPL MBM TMH TMS TMT TMZ"

    .line 4631
    .local v6, "salesCodeList":Ljava/lang/String;
    if-eqz v5, :cond_2

    .line 4632
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 4633
    .local v1, "CodeList":[Ljava/lang/String;
    move-object v2, v1

    .local v2, "arr$":[Ljava/lang/String;
    array-length v4, v2

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v0, v2, v3

    .line 4634
    .local v0, "Code":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 4635
    sget-boolean v7, Landroid/net/wifi/WifiManager;->DBG:Z

    if-eqz v7, :cond_0

    const-string v7, "WifiManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SalesCode is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4636
    :cond_0
    const/4 v7, 0x1

    .line 4640
    .end local v0    # "Code":Ljava/lang/String;
    .end local v1    # "CodeList":[Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :goto_1
    return v7

    .line 4633
    .restart local v0    # "Code":Ljava/lang/String;
    .restart local v1    # "CodeList":[Ljava/lang/String;
    .restart local v2    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "len$":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4640
    .end local v0    # "Code":Ljava/lang/String;
    .end local v1    # "CodeList":[Ljava/lang/String;
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public static suppressBrowserOnCaptivePortal()Z
    .locals 3

    .prologue
    .line 4748
    const-string/jumbo v1, "persist.sys.vzw_wifi_running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4749
    .local v0, "wifiSetupRunning":Ljava/lang/String;
    const-string v1, "VZW"

    sget-object v2, Landroid/net/wifi/WifiManager;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4751
    const/4 v1, 0x1

    .line 4753
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private unregisterPinningNetworkCallback()V
    .locals 4

    .prologue
    .line 3036
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->initConnectivityManager()V

    .line 3037
    sget-object v2, Landroid/net/wifi/WifiManager;->sCM:Landroid/net/ConnectivityManager;

    monitor-enter v2

    .line 3038
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mNetworkCallback:Landroid/net/wifi/WifiManager$PinningNetworkCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 3040
    :try_start_1
    sget-object v1, Landroid/net/wifi/WifiManager;->sCM:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mNetworkCallback:Landroid/net/wifi/WifiManager$PinningNetworkCallback;

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3044
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Landroid/net/wifi/WifiManager;->mNetworkCallback:Landroid/net/wifi/WifiManager$PinningNetworkCallback;

    .line 3046
    :cond_0
    monitor-exit v2

    .line 3047
    return-void

    .line 3041
    :catch_0
    move-exception v0

    .line 3042
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v1, "WifiManager"

    const-string v3, "Failed to unregister network callback"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3046
    .end local v0    # "e":Ljava/lang/SecurityException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private validateChannel()V
    .locals 2

    .prologue
    .line 2951
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No permission to access and change wifi or a bad initialization"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2953
    :cond_0
    return-void
.end method


# virtual methods
.method public TstartScan(I)Z
    .locals 14
    .param p1, "band"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 1637
    :try_start_0
    iget-object v9, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v9}, Landroid/net/wifi/IWifiManager;->getChannelList()Ljava/util/List;

    move-result-object v0

    .line 1638
    .local v0, "SupportedChannels":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1640
    .local v3, "channelsTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 1641
    packed-switch p1, :pswitch_data_0

    move v9, v11

    .line 1690
    .end local v0    # "SupportedChannels":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    .end local v3    # "channelsTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :goto_0
    return v9

    .line 1643
    .restart local v0    # "SupportedChannels":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    .restart local v3    # "channelsTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_0
    iget-object v9, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface {v9, v12, v13}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V

    move v9, v10

    .line 1644
    goto :goto_0

    .line 1646
    :pswitch_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiChannel;

    .line 1647
    .local v2, "c":Landroid/net/wifi/WifiChannel;
    iget v9, v2, Landroid/net/wifi/WifiChannel;->freqMHz:I

    const/16 v12, 0x1388

    if-le v9, v12, :cond_0

    .line 1648
    iget v9, v2, Landroid/net/wifi/WifiChannel;->freqMHz:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1688
    .end local v0    # "SupportedChannels":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    .end local v2    # "c":Landroid/net/wifi/WifiChannel;
    .end local v3    # "channelsTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    .line 1689
    .local v4, "e":Landroid/os/RemoteException;
    const-string v9, "WifiManager"

    const-string v10, "TstartScan() failed!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v11

    .line 1690
    goto :goto_0

    .line 1653
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "SupportedChannels":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiChannel;>;"
    .restart local v3    # "channelsTemp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :pswitch_2
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiChannel;

    .line 1654
    .restart local v2    # "c":Landroid/net/wifi/WifiChannel;
    iget v9, v2, Landroid/net/wifi/WifiChannel;->freqMHz:I

    const/16 v12, 0xbb8

    if-ge v9, v12, :cond_1

    .line 1655
    iget v9, v2, Landroid/net/wifi/WifiChannel;->freqMHz:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v2    # "c":Landroid/net/wifi/WifiChannel;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_2
    move v9, v11

    .line 1663
    goto :goto_0

    .line 1666
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-eqz v9, :cond_5

    .line 1667
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v8, v9, [I

    .line 1668
    .local v8, "scanningChannelArray":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 1669
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v8, v5

    .line 1668
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1671
    :cond_4
    const-string v9, "WifiManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TstartScan()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v8}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1674
    :try_start_2
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 1675
    .local v7, "msg":Landroid/os/Message;
    const/16 v9, 0x24

    iput v9, v7, Landroid/os/Message;->what:I

    .line 1676
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1677
    .local v1, "b":Landroid/os/Bundle;
    const-string v9, "channel"

    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 1678
    iput-object v1, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1679
    iget-object v9, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v9, v7}, Landroid/net/wifi/IWifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move v9, v10

    .line 1687
    goto/16 :goto_0

    .line 1680
    .end local v1    # "b":Landroid/os/Bundle;
    .end local v7    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v4

    .line 1681
    .restart local v4    # "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v9, "WifiManager"

    const-string/jumbo v10, "mService.startScan() failed!"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move v9, v11

    .line 1682
    goto/16 :goto_0

    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v5    # "i":I
    .end local v8    # "scanningChannelArray":[I
    :cond_5
    move v9, v11

    .line 1685
    goto/16 :goto_0

    .line 1641
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v0, -0x1

    .line 1198
    if-nez p1, :cond_0

    .line 1202
    :goto_0
    return v0

    .line 1201
    :cond_0
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1202
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_0
.end method

.method public addToBlacklist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 2503
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addToBlacklist(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2504
    const/4 v1, 0x1

    .line 2506
    :goto_0
    return v1

    .line 2505
    :catch_0
    move-exception v0

    .line 2506
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public addToSBlacklist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    .line 2538
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->addToSBlacklist(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2539
    const/4 v1, 0x1

    .line 2541
    :goto_0
    return v1

    .line 2540
    :catch_0
    move-exception v0

    .line 2541
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .param p1, "uriString"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "data"    # [B

    .prologue
    .line 2314
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/IWifiManager;->buildWifiConfig(Ljava/lang/String;Ljava/lang/String;[B)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2317
    :goto_0
    return-object v1

    .line 2315
    :catch_0
    move-exception v0

    .line 2316
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught RemoteException trying to build wifi config: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public callSECApi(Landroid/os/Message;)I
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3900
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_0

    .line 3901
    const/4 v1, 0x1

    .line 3906
    :goto_0
    return v1

    .line 3904
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 3905
    :catch_0
    move-exception v0

    .line 3906
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3920
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3922
    :goto_0
    return-object v1

    .line 3921
    :catch_0
    move-exception v0

    .line 3922
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public cancelWps(Landroid/net/wifi/WifiManager$WpsCallback;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$WpsCallback;

    .prologue
    .line 3187
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 3188
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2500e

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 3189
    return-void
.end method

.method public clearBlacklist()Z
    .locals 2

    .prologue
    .line 2520
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->clearBlacklist()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2521
    const/4 v1, 0x1

    .line 2523
    :goto_0
    return v1

    .line 2522
    :catch_0
    move-exception v0

    .line 2523
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearSBlacklist()Z
    .locals 2

    .prologue
    .line 2556
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->clearSBlacklist()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2557
    const/4 v1, 0x1

    .line 2559
    :goto_0
    return v1

    .line 2558
    :catch_0
    move-exception v0

    .line 2559
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public connect(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .param p1, "networkId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 3088
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3089
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 3090
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25001

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 3091
    return-void
.end method

.method public connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 3066
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3067
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 3070
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25001

    const/4 v2, -0x1

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 3072
    return-void
.end method

.method public createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 4170
    new-instance v0, Landroid/net/wifi/WifiManager$MulticastLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/net/wifi/WifiManager$MulticastLock;-><init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 2
    .param p1, "lockType"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 4136
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 4152
    new-instance v0, Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Landroid/net/wifi/WifiManager$WifiLock;-><init>(Landroid/net/wifi/WifiManager;ILjava/lang/String;Landroid/net/wifi/WifiManager$1;)V

    return-object v0
.end method

.method public disable(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 3146
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3147
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 3148
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25011

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 3149
    return-void
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;)V
    .locals 2
    .param p1, "SSID"    # Ljava/lang/String;

    .prologue
    .line 3158
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "SSID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3160
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3163
    :goto_0
    return-void

    .line 3161
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disableNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1314
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->disableNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1316
    :goto_0
    return v1

    .line 1315
    :catch_0
    move-exception v0

    .line 1316
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disconnect()Z
    .locals 2

    .prologue
    .line 1327
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1328
    const/4 v1, 0x1

    .line 1330
    :goto_0
    return v1

    .line 1329
    :catch_0
    move-exception v0

    .line 1330
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableAggressiveHandover(I)V
    .locals 1
    .param p1, "enabled"    # I

    .prologue
    .line 4465
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->enableAggressiveHandover(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4469
    :goto_0
    return-void

    .line 4466
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enableAutoJoinWhenAssociated(Z)Z
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 4541
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->enableAutoJoinWhenAssociated(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4543
    :goto_0
    return v1

    .line 4542
    :catch_0
    move-exception v0

    .line 4543
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 5
    .param p1, "netId"    # I
    .param p2, "disableOthers"    # Z

    .prologue
    .line 1286
    if-eqz p2, :cond_2

    iget v3, p0, Landroid/net/wifi/WifiManager;->mTargetSdkVersion:I

    const/16 v4, 0x15

    if-ge v3, v4, :cond_2

    const/4 v1, 0x1

    .line 1287
    .local v1, "pin":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1288
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->registerPinningNetworkCallback()V

    .line 1293
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v3, p1, p2}, Landroid/net/wifi/IWifiManager;->enableNetwork(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1298
    .local v2, "success":Z
    :goto_1
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 1299
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->unregisterPinningNetworkCallback()V

    .line 1302
    :cond_1
    return v2

    .line 1286
    .end local v1    # "pin":Z
    .end local v2    # "success":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 1294
    .restart local v1    # "pin":Z
    :catch_0
    move-exception v0

    .line 1295
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    .restart local v2    # "success":Z
    goto :goto_1
.end method

.method public enableVerboseLogging(I)V
    .locals 4
    .param p1, "verbose"    # I

    .prologue
    .line 4439
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->enableVerboseLogging(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4444
    :goto_0
    return-void

    .line 4440
    :catch_0
    move-exception v0

    .line 4442
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableVerboseLogging "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public enableWifiSharing(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 4661
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->enableWifiSharing(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4663
    :goto_0
    return v1

    .line 4662
    :catch_0
    move-exception v0

    .line 4663
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public factoryReset()V
    .locals 1

    .prologue
    .line 4515
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->factoryReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4518
    :goto_0
    return-void

    .line 4516
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public fetchHs20OsuProviders()Z
    .locals 2

    .prologue
    .line 1894
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->fetchHs20OsuProviders()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1896
    :goto_0
    return v1

    .line 1895
    :catch_0
    move-exception v0

    .line 1896
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 4370
    :try_start_0
    sget-object v1, Landroid/net/wifi/WifiManager;->sThreadRefLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4371
    :try_start_1
    sget v0, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroid/net/wifi/WifiManager;->sThreadRefCount:I

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 4372
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    .line 4374
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4376
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4378
    return-void

    .line 4374
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 4376
    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public forget(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 3
    .param p1, "netId"    # I
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 3131
    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Network id cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3132
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 3133
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25004

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 3134
    return-void
.end method

.method public getAggressiveHandover()I
    .locals 2

    .prologue
    .line 4478
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getAggressiveHandover()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4480
    :goto_0
    return v1

    .line 4479
    :catch_0
    move-exception v0

    .line 4480
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllowScansWithTraffic()I
    .locals 2

    .prologue
    .line 4502
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getAllowScansWithTraffic()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4504
    :goto_0
    return v1

    .line 4503
    :catch_0
    move-exception v0

    .line 4504
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBatchedScanResults()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1788
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1790
    :goto_0
    return-object v1

    .line 1789
    :catch_0
    move-exception v0

    .line 1790
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChannelList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1389
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getChannelList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1391
    :goto_0
    return-object v1

    .line 1390
    :catch_0
    move-exception v0

    .line 1391
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3215
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfigFile()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3217
    :goto_0
    return-object v1

    .line 3216
    :catch_0
    move-exception v0

    .line 3217
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1129
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConfiguredNetworks()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1132
    :goto_0
    return-object v1

    .line 1130
    :catch_0
    move-exception v0

    .line 1131
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WifiManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught RemoteException trying to get configured networks: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .prologue
    .line 1841
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1843
    :goto_0
    return-object v1

    .line 1842
    :catch_0
    move-exception v0

    .line 1843
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;
    .locals 2

    .prologue
    .line 1163
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getConnectionStatistics()Landroid/net/wifi/WifiConnectionStatistics;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1165
    :goto_0
    return-object v1

    .line 1164
    :catch_0
    move-exception v0

    .line 1165
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getControllerActivityEnergyInfo(I)Landroid/net/wifi/WifiActivityEnergyInfo;
    .locals 6
    .param p1, "updateType"    # I

    .prologue
    const/4 v2, 0x0

    .line 1563
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v3, :cond_0

    move-object v1, v2

    .line 1580
    :goto_0
    return-object v1

    .line 1566
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isEnhancedPowerReportingSupported()Z

    move-result v3

    if-nez v3, :cond_1

    move-object v1, v2

    .line 1567
    goto :goto_0

    .line 1569
    :cond_1
    monitor-enter p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1570
    :try_start_1
    iget-object v3, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v3}, Landroid/net/wifi/IWifiManager;->reportActivityInfo()Landroid/net/wifi/WifiActivityEnergyInfo;

    move-result-object v1

    .line 1571
    .local v1, "record":Landroid/net/wifi/WifiActivityEnergyInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/wifi/WifiActivityEnergyInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1572
    monitor-exit p0

    goto :goto_0

    .line 1576
    .end local v1    # "record":Landroid/net/wifi/WifiActivityEnergyInfo;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1577
    :catch_0
    move-exception v0

    .line 1578
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "WifiManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getControllerActivityEnergyInfo: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 1580
    goto :goto_0

    .line 1574
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "record":Landroid/net/wifi/WifiActivityEnergyInfo;
    :cond_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    goto :goto_0
.end method

.method public getCountryCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1948
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->getCountryCode()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1951
    :goto_0
    return-object v0

    .line 1950
    :catch_0
    move-exception v1

    .line 1951
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCountryRev()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3418
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getCountryRev()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3420
    :goto_0
    return-object v1

    .line 3419
    :catch_0
    move-exception v0

    .line 3420
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentNetwork()Landroid/net/Network;
    .locals 2

    .prologue
    .line 4527
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getCurrentNetwork()Landroid/net/Network;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4529
    :goto_0
    return-object v1

    .line 4528
    :catch_0
    move-exception v0

    .line 4529
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 2

    .prologue
    .line 2007
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2009
    :goto_0
    return-object v1

    .line 2008
    :catch_0
    move-exception v0

    .line 2009
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getEnableAutoJoinWhenAssociated()Z
    .locals 2

    .prologue
    .line 4553
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getEnableAutoJoinWhenAssociated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4555
    :goto_0
    return v1

    .line 4554
    :catch_0
    move-exception v0

    .line 4555
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFrequencyBand()I
    .locals 2

    .prologue
    .line 1981
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getFrequencyBand()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1983
    :goto_0
    return v1

    .line 1982
    :catch_0
    move-exception v0

    .line 1983
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getFullRoamScanPeriod()I
    .locals 2

    .prologue
    .line 3351
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getFullRoamScanPeriod()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3353
    :goto_0
    return v1

    .line 3352
    :catch_0
    move-exception v0

    .line 3353
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getHalBasedAutojoinOffload()I
    .locals 1

    .prologue
    .line 4576
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->getHalBasedAutojoinOffload()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 4579
    :goto_0
    return v0

    .line 4577
    :catch_0
    move-exception v0

    .line 4579
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHs20OsuProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/hs20/WifiHs20OsuProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1905
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getHs20OsuProviders()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1907
    :goto_0
    return-object v1

    .line 1906
    :catch_0
    move-exception v0

    .line 1907
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLinkStatus()I
    .locals 2

    .prologue
    .line 3439
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getLinkStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3441
    :goto_0
    return v1

    .line 3440
    :catch_0
    move-exception v0

    .line 3441
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "scanResult"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 1177
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->getMatchingWifiConfig(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1179
    :goto_0
    return-object v1

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 3533
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3535
    :goto_0
    return-object v1

    .line 3534
    :catch_0
    move-exception v0

    .line 3535
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .locals 3

    .prologue
    .line 4426
    :try_start_0
    const-string/jumbo v1, "pppoe"

    const-string v2, "WifiManager: getPPPOEInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4429
    :goto_0
    return-object v1

    .line 4428
    :catch_0
    move-exception v0

    .line 4429
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPrivilegedConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1153
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getPrivilegedConfiguredNetworks()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1155
    :goto_0
    return-object v1

    .line 1154
    :catch_0
    move-exception v0

    .line 1155
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProvisionSuccess()Z
    .locals 2

    .prologue
    .line 4678
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getProvisionSuccess()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4680
    :goto_0
    return v1

    .line 4679
    :catch_0
    move-exception v0

    .line 4680
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRoamBand()I
    .locals 2

    .prologue
    .line 3385
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamBand()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3387
    :goto_0
    return v1

    .line 3386
    :catch_0
    move-exception v0

    .line 3387
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRoamDelta()I
    .locals 2

    .prologue
    .line 3283
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamDelta()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3285
    :goto_0
    return v1

    .line 3284
    :catch_0
    move-exception v0

    .line 3285
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRoamScanPeriod()I
    .locals 2

    .prologue
    .line 3317
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamScanPeriod()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3319
    :goto_0
    return v1

    .line 3318
    :catch_0
    move-exception v0

    .line 3319
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getRoamTrigger()I
    .locals 2

    .prologue
    .line 3249
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getRoamTrigger()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3251
    :goto_0
    return v1

    .line 3250
    :catch_0
    move-exception v0

    .line 3251
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSBlacklist()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2575
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getSBlacklist()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2577
    :goto_0
    return-object v1

    .line 2576
    :catch_0
    move-exception v0

    .line 2577
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1856
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/wifi/IWifiManager;->getScanResults(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1858
    :goto_0
    return-object v1

    .line 1857
    :catch_0
    move-exception v0

    .line 1858
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;
    .locals 2
    .param p1, "netID"    # I

    .prologue
    .line 1143
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->getSpecificNetwork(I)Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1145
    :goto_0
    return-object v1

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSupportedChannels()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiChannel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3521
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getChannelList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3523
    :goto_0
    return-object v1

    .line 3522
    :catch_0
    move-exception v0

    .line 3523
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTxPacketCount(Landroid/net/wifi/WifiManager$TxPacketCountListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/net/wifi/WifiManager$TxPacketCountListener;

    .prologue
    .line 2102
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 2103
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25014

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(III)V

    .line 2104
    return-void
.end method

.method public getVerboseLoggingLevel()I
    .locals 2

    .prologue
    .line 4453
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getVerboseLoggingLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4455
    :goto_0
    return v1

    .line 4454
    :catch_0
    move-exception v0

    .line 4455
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApChameleonSsid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2369
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApChameleonSsid()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2371
    :goto_0
    return-object v1

    .line 2370
    :catch_0
    move-exception v0

    .line 2371
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApConfigTxPower()I
    .locals 2

    .prologue
    .line 2404
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApConfigTxPower()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2406
    :goto_0
    return v1

    .line 2405
    :catch_0
    move-exception v0

    .line 2406
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 2300
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2302
    :goto_0
    return-object v1

    .line 2301
    :catch_0
    move-exception v0

    .line 2302
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2448
    const-string/jumbo v0, "wlan0"

    return-object v0
.end method

.method public getWifiApStaList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2358
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApStaList()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2360
    :goto_0
    return-object v1

    .line 2359
    :catch_0
    move-exception v0

    .line 2360
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getWifiApState()I
    .locals 2

    .prologue
    .line 2275
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2277
    :goto_0
    return v1

    .line 2276
    :catch_0
    move-exception v0

    .line 2277
    .local v0, "e":Landroid/os/RemoteException;
    const/16 v1, 0xe

    goto :goto_0
.end method

.method public getWifiApTimeOut()I
    .locals 2

    .prologue
    .line 2392
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiApTimeOut()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2394
    :goto_0
    return v1

    .line 2393
    :catch_0
    move-exception v0

    .line 2394
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getWifiIBSSState()I
    .locals 2

    .prologue
    .line 3490
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiIBSSEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3492
    :goto_0
    return v1

    .line 3491
    :catch_0
    move-exception v0

    .line 3492
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3200
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->getWifiServiceMessenger()Landroid/os/Messenger;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 3204
    :goto_0
    return-object v1

    .line 3201
    :catch_0
    move-exception v0

    .line 3202
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 3203
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3204
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method

.method public getWifiState()I
    .locals 2

    .prologue
    .line 2080
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2082
    :goto_0
    return v1

    .line 2081
    :catch_0
    move-exception v0

    .line 2082
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public getWifiVername()Ljava/lang/String;
    .locals 3

    .prologue
    .line 4808
    const-string v1, "WifiManager"

    const-string v2, "getWifiVername"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4810
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->getWifiVerName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4812
    :goto_0
    return-object v1

    .line 4811
    :catch_0
    move-exception v0

    .line 4812
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "NG"

    goto :goto_0
.end method

.method public getWpsNfcConfigurationToken(I)Ljava/lang/String;
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1829
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->getWpsNfcConfigurationToken(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1831
    :goto_0
    return-object v1

    .line 1830
    :catch_0
    move-exception v0

    .line 1831
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initializeMulticastFiltering()Z
    .locals 2

    .prologue
    .line 4361
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->initializeMulticastFiltering()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4362
    const/4 v1, 0x1

    .line 4364
    :goto_0
    return v1

    .line 4363
    :catch_0
    move-exception v0

    .line 4364
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public is5GHzBandSupported()Z
    .locals 1

    .prologue
    .line 1450
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isAdditionalStaSupported()Z
    .locals 1

    .prologue
    .line 1527
    const/16 v0, 0x800

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isAllowWifiWarning()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4607
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_ConfigLocalSecurityPolicy"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4608
    .local v0, "ChinaNalSecurityType":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "ChinaNalSecurity"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, ""

    const-string v7, "CHINA_UP"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    move v3, v4

    .line 4610
    .local v3, "isCscWifiEnableWarning":Z
    :goto_0
    const-string v6, "WifiManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isAllowWifiWarning() -> isCscWifiEnableWarning : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ChinaNalSecurityType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4612
    :try_start_0
    iget-object v6, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v6}, Landroid/net/wifi/IWifiManager;->checkWarningPopup()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 4613
    .local v2, "isAllowPopup":Z
    if-eqz v3, :cond_1

    if-eqz v2, :cond_1

    .line 4616
    .end local v2    # "isAllowPopup":Z
    :goto_1
    return v4

    .end local v3    # "isCscWifiEnableWarning":Z
    :cond_0
    move v3, v5

    .line 4608
    goto :goto_0

    .restart local v2    # "isAllowPopup":Z
    .restart local v3    # "isCscWifiEnableWarning":Z
    :cond_1
    move v4, v5

    .line 4613
    goto :goto_1

    .line 4614
    .end local v2    # "isAllowPopup":Z
    :catch_0
    move-exception v1

    .line 4615
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "WifiManager"

    const-string v5, "RemoteException occured. WifiManager.isAllowWifiWarning()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    .line 4616
    goto :goto_1
.end method

.method public isBatchedScanSupported()Z
    .locals 2

    .prologue
    .line 1761
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isBatchedScanSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1762
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCaptivePortalException()Z
    .locals 3

    .prologue
    .line 4798
    const-string v1, "WifiManager"

    const-string/jumbo v2, "isCaptivePortalException"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4800
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isCaptivePortalException()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4802
    :goto_0
    return v1

    .line 4801
    :catch_0
    move-exception v0

    .line 4802
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDetectedAsMaliciousHotspot(Ljava/lang/String;)Z
    .locals 3
    .param p1, "bssid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 4768
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4774
    :cond_0
    :goto_0
    return v1

    .line 4772
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, p1}, Landroid/net/wifi/IWifiManager;->isDetectedAsMaliciousHotspot(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 4773
    :catch_0
    move-exception v0

    .line 4774
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isDeviceToApRttSupported()Z
    .locals 1

    .prologue
    .line 1511
    const/4 v0, 0x0

    return v0
.end method

.method public isDeviceToDeviceRttSupported()Z
    .locals 1

    .prologue
    .line 1501
    const/4 v0, 0x0

    return v0
.end method

.method public isDualBandSupported()Z
    .locals 2

    .prologue
    .line 1994
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isDualBandSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1996
    :goto_0
    return v1

    .line 1995
    :catch_0
    move-exception v0

    .line 1996
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnhancedPowerReportingSupported()Z
    .locals 1

    .prologue
    .line 1549
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isHs20OsuProviderAvailable()Z
    .locals 2

    .prologue
    .line 1883
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isHs20OsuProviderAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1885
    :goto_0
    return v1

    .line 1884
    :catch_0
    move-exception v0

    .line 1885
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 4349
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isMulticastEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4351
    :goto_0
    return v1

    .line 4350
    :catch_0
    move-exception v0

    .line 4351
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNanSupported()Z
    .locals 1

    .prologue
    .line 1491
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isOffChannelTdlsSupported()Z
    .locals 1

    .prologue
    .line 1542
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isP2pSupported()Z
    .locals 1

    .prologue
    .line 1465
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isPasspointDefaultOn()Z
    .locals 2

    .prologue
    .line 4781
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isPasspointDefaultOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4783
    :goto_0
    return v1

    .line 4782
    :catch_0
    move-exception v0

    .line 4783
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPasspointMenuVisible()Z
    .locals 2

    .prologue
    .line 4790
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isPasspointMenuVisible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4792
    :goto_0
    return v1

    .line 4791
    :catch_0
    move-exception v0

    .line 4792
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPasspointSupported()Z
    .locals 1

    .prologue
    .line 1458
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isPortableHotspotSupported()Z
    .locals 1

    .prologue
    .line 1474
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isPreferredNetworkOffloadSupported()Z
    .locals 1

    .prologue
    .line 1519
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isReconnecting()I
    .locals 3

    .prologue
    .line 4591
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 4592
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0xc8

    iput v2, v1, Landroid/os/Message;->what:I

    .line 4595
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2, v1}, Landroid/net/wifi/IWifiManager;->callSECApi(Landroid/os/Message;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 4597
    :goto_0
    return v2

    .line 4596
    :catch_0
    move-exception v0

    .line 4597
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public isScanAlwaysAvailable()Z
    .locals 2

    .prologue
    .line 1872
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isScanAlwaysAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1874
    :goto_0
    return v1

    .line 1873
    :catch_0
    move-exception v0

    .line 1874
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTdlsSupported()Z
    .locals 1

    .prologue
    .line 1534
    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isUserAction()Z
    .locals 8

    .prologue
    .line 2235
    iget-object v5, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2236
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 2237
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2238
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 2239
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 2240
    .local v4, "pName":Ljava/lang/String;
    const-string v5, "WifiManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "processName = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    const-string v5, "com.android.systemui"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.android.settings"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.sec.android.easysettings"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.sec.android.emergencymode.service"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.sec.NetworkPowerSaving"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.android.nfc"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.samsung.android.app.sreminder"

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "com.sec.knox.kccagent"

    iget-object v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->isCustomizedByKccAgent()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2249
    :cond_1
    const/4 v5, 0x1

    .line 2253
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "pName":Ljava/lang/String;
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isWifiApConcurrentSupported()Z
    .locals 1

    .prologue
    .line 2433
    const/4 v0, 0x0

    return v0
.end method

.method public isWifiApEnabled()Z
    .locals 2

    .prologue
    .line 2289
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiEnabled()Z
    .locals 2

    .prologue
    .line 2092
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiIBSSEnabled()Z
    .locals 2

    .prologue
    .line 3507
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiIBSSState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiScannerSupported()Z
    .locals 1

    .prologue
    .line 1483
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiManager;->isFeatureSupported(I)Z

    move-result v0

    return v0
.end method

.method public isWifiSharingEnabled()Z
    .locals 2

    .prologue
    .line 4652
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->isWifiSharingEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4654
    :goto_0
    return v1

    .line 4653
    :catch_0
    move-exception v0

    .line 4654
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public pingSupplicant()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1370
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    if-nez v2, :cond_0

    .line 1375
    :goto_0
    return v1

    .line 1373
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v2}, Landroid/net/wifi/IWifiManager;->pingSupplicant()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1374
    :catch_0
    move-exception v0

    .line 1375
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public pollBatchedScan()V
    .locals 1

    .prologue
    .line 1816
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0}, Landroid/net/wifi/IWifiManager;->pollBatchedScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1818
    :goto_0
    return-void

    .line 1817
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reassociate()Z
    .locals 2

    .prologue
    .line 1357
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reassociate()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    const/4 v1, 0x1

    .line 1360
    :goto_0
    return v1

    .line 1359
    :catch_0
    move-exception v0

    .line 1360
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reconnect()Z
    .locals 2

    .prologue
    .line 1342
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->reconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1343
    const/4 v1, 0x1

    .line 1345
    :goto_0
    return v1

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .param p1, "netId"    # I

    .prologue
    .line 1253
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->removeNetwork(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1255
    :goto_0
    return v1

    .line 1254
    :catch_0
    move-exception v0

    .line 1255
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;)Z
    .locals 4
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;

    .prologue
    .line 1742
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroid/net/wifi/IWifiManager;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1743
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/WorkSource;)Z
    .locals 3
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1748
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {v1, p1, v2, p2}, Landroid/net/wifi/IWifiManager;->requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1749
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$ActionListener;

    .prologue
    .line 3112
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3113
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 3114
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x25007

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 3115
    return-void
.end method

.method public saveConfiguration()Z
    .locals 2

    .prologue
    .line 1921
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->saveConfiguration()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1923
    :goto_0
    return v1

    .line 1922
    :catch_0
    move-exception v0

    .line 1923
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAllowScansWithTraffic(I)V
    .locals 1
    .param p1, "enabled"    # I

    .prologue
    .line 4490
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setAllowScansWithTraffic(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4494
    :goto_0
    return-void

    .line 4491
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "country"    # Ljava/lang/String;
    .param p2, "persist"    # Z

    .prologue
    .line 1936
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1938
    :goto_0
    return-void

    .line 1937
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCountryRev(Ljava/lang/String;)Z
    .locals 2
    .param p1, "countryRev"    # Ljava/lang/String;

    .prologue
    .line 3402
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setCountryRev(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3404
    :goto_0
    return v1

    .line 3403
    :catch_0
    move-exception v0

    .line 3404
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFrequencyBand(IZ)V
    .locals 1
    .param p1, "band"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 1966
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1968
    :goto_0
    return-void

    .line 1967
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setFullRoamScanPeriod(I)Z
    .locals 2
    .param p1, "fullRoamScanPeriod"    # I

    .prologue
    .line 3334
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setFullRoamScanPeriod(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3336
    :goto_0
    return v1

    .line 3335
    :catch_0
    move-exception v0

    .line 3336
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHalBasedAutojoinOffload(I)V
    .locals 1
    .param p1, "enabled"    # I

    .prologue
    .line 4564
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->setHalBasedAutojoinOffload(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4568
    :goto_0
    return-void

    .line 4565
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setIsFmcNetwork(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 3551
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setIsFmcNetwork(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3553
    :goto_0
    return v1

    .line 3552
    :catch_0
    move-exception v0

    .line 3553
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProvisionSuccess(Z)Z
    .locals 2
    .param p1, "set"    # Z

    .prologue
    .line 4670
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setProvisionSuccess(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4672
    :goto_0
    return v1

    .line 4671
    :catch_0
    move-exception v0

    .line 4672
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRoamBand(I)Z
    .locals 2
    .param p1, "roamBand"    # I

    .prologue
    .line 3368
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamBand(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3370
    :goto_0
    return v1

    .line 3369
    :catch_0
    move-exception v0

    .line 3370
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRoamDelta(I)Z
    .locals 2
    .param p1, "roamDelta"    # I

    .prologue
    .line 3266
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamDelta(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3268
    :goto_0
    return v1

    .line 3267
    :catch_0
    move-exception v0

    .line 3268
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRoamScanPeriod(I)Z
    .locals 2
    .param p1, "roamScanPeriod"    # I

    .prologue
    .line 3300
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamScanPeriod(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3302
    :goto_0
    return v1

    .line 3301
    :catch_0
    move-exception v0

    .line 3302
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRoamTrigger(I)Z
    .locals 2
    .param p1, "roamTrigger"    # I

    .prologue
    .line 3232
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setRoamTrigger(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3234
    :goto_0
    return v1

    .line 3233
    :catch_0
    move-exception v0

    .line 3234
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTdlsEnabled(Ljava/net/InetAddress;Z)V
    .locals 2
    .param p1, "remoteIPAddress"    # Ljava/net/InetAddress;
    .param p2, "enable"    # Z

    .prologue
    .line 2603
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/net/wifi/IWifiManager;->enableTdls(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2607
    :goto_0
    return-void

    .line 2604
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTdlsEnabledWithMacAddress(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 2617
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2621
    :goto_0
    return-void

    .line 2618
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWifiApConfigTxPower(I)Z
    .locals 2
    .param p1, "txPowerMode"    # I

    .prologue
    .line 2415
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApConfigTxPower(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2416
    const/4 v1, 0x1

    .line 2418
    :goto_0
    return v1

    .line 2417
    :catch_0
    move-exception v0

    .line 2418
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 2329
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2330
    const/4 v1, 0x1

    .line 2332
    :goto_0
    return v1

    .line 2331
    :catch_0
    move-exception v0

    .line 2332
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApConfigurationToDefault()Z
    .locals 2

    .prologue
    .line 2345
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->setWifiApConfigurationToDefault()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2346
    const/4 v1, 0x1

    .line 2348
    :goto_0
    return v1

    .line 2347
    :catch_0
    move-exception v0

    .line 2348
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 18
    .param p1, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "enabled"    # Z

    .prologue
    .line 2167
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 2168
    .local v9, "packageName":Ljava/lang/String;
    const-string v10, "WifiManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setWifiApEnabled : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "packageName : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    sget-boolean v10, Landroid/net/wifi/WifiManager;->DBGMHS:Z

    if-eqz v10, :cond_0

    const-string v10, "WifiManager"

    new-instance v11, Ljava/lang/Throwable;

    invoke-direct {v11}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v11}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    :cond_0
    :try_start_0
    new-instance v8, Landroid/os/Message;

    invoke-direct {v8}, Landroid/os/Message;-><init>()V

    .line 2173
    .local v8, "msg":Landroid/os/Message;
    const/16 v10, 0x4e

    iput v10, v8, Landroid/os/Message;->what:I

    .line 2174
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2175
    .local v3, "args":Landroid/os/Bundle;
    sget-boolean v10, Landroid/net/wifi/WifiManager;->DBGMHS:Z

    if-eqz v10, :cond_4

    .line 2176
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    .line 2177
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v4, v10, v11

    .line 2178
    .local v4, "callerElement":Ljava/lang/StackTraceElement;
    const-string v10, "extra_log"

    const-string v11, "%s: %s%n"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "yy/MM/dd kk:mm:ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setWifiApEnabled("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "():"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    .end local v4    # "callerElement":Ljava/lang/StackTraceElement;
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_0
    iput-object v3, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2190
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 2192
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v10, v0, v1}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2197
    if-eqz p2, :cond_3

    const-string v10, "CMCC"

    sget-object v11, Landroid/net/wifi/WifiManager;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiManager;->isUserAction()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2198
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    const-string v11, "connectivity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    .line 2199
    .local v7, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v6

    .line 2200
    .local v6, "isMobileDataEnabled":Z
    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2201
    .local v2, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v6, :cond_1

    .line 2202
    if-eqz v2, :cond_5

    .line 2203
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    if-eqz v10, :cond_1

    .line 2204
    const/4 v6, 0x0

    .line 2209
    :cond_1
    :goto_1
    if-nez v6, :cond_2

    .line 2210
    if-eqz v2, :cond_2

    .line 2211
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v10

    const/4 v11, 0x7

    if-ne v10, v11, :cond_2

    .line 2212
    const/4 v6, 0x1

    .line 2216
    :cond_2
    const-string v10, "WifiManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CMCC isMobileDataEnabled : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " wifi:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " wifisharing:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiManager;->isWifiSharingEnabled()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiManager;->isWifiSharingEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2218
    if-nez v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v10

    if-nez v10, :cond_3

    .line 2219
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    const v12, 0x10407f2

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 2227
    .end local v2    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v6    # "isMobileDataEnabled":Z
    .end local v7    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    :cond_3
    :goto_2
    const/4 v10, 0x1

    .end local v3    # "args":Landroid/os/Bundle;
    .end local v8    # "msg":Landroid/os/Message;
    :goto_3
    return v10

    .line 2185
    .restart local v3    # "args":Landroid/os/Bundle;
    .restart local v8    # "msg":Landroid/os/Message;
    :cond_4
    :try_start_1
    const-string v10, "extra_log"

    const-string v11, "%s: %s%n"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string/jumbo v14, "yy/MM/dd kk:mm:ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-static {v14, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setWifiApEnabled("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ") : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 2193
    .end local v3    # "args":Landroid/os/Bundle;
    .end local v8    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v5

    .line 2194
    .local v5, "e":Landroid/os/RemoteException;
    const/4 v10, 0x0

    goto :goto_3

    .line 2206
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v2    # "activeNetwork":Landroid/net/NetworkInfo;
    .restart local v3    # "args":Landroid/os/Bundle;
    .restart local v6    # "isMobileDataEnabled":Z
    .restart local v7    # "mConnectivityManager":Landroid/net/ConnectivityManager;
    .restart local v8    # "msg":Landroid/os/Message;
    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 2222
    :cond_6
    if-nez v6, :cond_3

    .line 2223
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    const v12, 0x10407f2

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method public setWifiApTimeOut(I)Z
    .locals 2
    .param p1, "sec"    # I

    .prologue
    .line 2380
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->setWifiApTimeOut(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2381
    const/4 v1, 0x1

    .line 2383
    :goto_0
    return v1

    .line 2382
    :catch_0
    move-exception v0

    .line 2383
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setWifiEnabled(Z)Z
    .locals 14
    .param p1, "enabled"    # Z

    .prologue
    const/4 v7, 0x0

    .line 2020
    iget-object v8, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2021
    .local v4, "packageName":Ljava/lang/String;
    sget-boolean v8, Landroid/net/wifi/WifiManager;->DBG:Z

    if-eqz v8, :cond_0

    .line 2022
    const-string v8, "WifiManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setWifiEnabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "packageName : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    const-string v8, "WifiManager"

    new-instance v9, Ljava/lang/Throwable;

    invoke-direct {v9}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    :cond_0
    if-eqz p1, :cond_4

    .line 2026
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isAllowWifiWarning()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v8

    const/16 v9, 0xb

    if-eq v8, v9, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_4

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v8

    const/4 v9, 0x3

    if-eq v8, v9, :cond_4

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isUserAction()Z

    move-result v8

    if-nez v8, :cond_4

    .line 2032
    iget-object v8, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iget-object v9, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2034
    .local v2, "label":Ljava/lang/String;
    sget-boolean v8, Landroid/net/wifi/WifiManager;->DBG:Z

    if-eqz v8, :cond_2

    const-string v8, "WifiManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "label :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2036
    :cond_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 2037
    .local v6, "wifiEnableWarningIntent":Landroid/content/Intent;
    const-string v8, "com.android.settings"

    const-string v9, "com.android.settings.wifi.WifiWarningDialog"

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2039
    const/high16 v8, 0x14800000

    invoke-virtual {v6, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2041
    const-string v8, "dialog_type"

    const-string/jumbo v9, "wlan_enable_warning"

    invoke-virtual {v6, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2042
    const-string v8, "dialog_name"

    invoke-virtual {v6, v8, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2043
    const-string v8, "WifiManager"

    const-string v9, "WifiManager.setWifiEnabled Prepare to stat activity: WifiWarningDialog"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    .line 2046
    .local v5, "userId":I
    :try_start_0
    iget-object v9, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    const-string v8, "com.android.systemui"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    :goto_0
    invoke-virtual {v9, v6, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2067
    .end local v2    # "label":Ljava/lang/String;
    .end local v5    # "userId":I
    .end local v6    # "wifiEnableWarningIntent":Landroid/content/Intent;
    :goto_1
    return v7

    .line 2046
    .restart local v2    # "label":Ljava/lang/String;
    .restart local v5    # "userId":I
    .restart local v6    # "wifiEnableWarningIntent":Landroid/content/Intent;
    :cond_3
    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v5}, Landroid/os/UserHandle;-><init>(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2048
    :catch_0
    move-exception v1

    .line 2049
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v8, "WifiManager"

    const-string v9, "ActivityNotFoundException occured. WifiManager.startActivityAsUser()"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 2057
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    .end local v2    # "label":Ljava/lang/String;
    .end local v5    # "userId":I
    .end local v6    # "wifiEnableWarningIntent":Landroid/content/Intent;
    :cond_4
    :try_start_1
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 2058
    .local v3, "msg":Landroid/os/Message;
    const/16 v8, 0x4e

    iput v8, v3, Landroid/os/Message;->what:I

    .line 2059
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2060
    .local v0, "args":Landroid/os/Bundle;
    const-string v8, "extra_log"

    new-instance v9, Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "yy/MM/dd kk:mm:ss "

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " WifiManager.setWifiEnabled("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2062
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2063
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 2065
    iget-object v8, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v8, p1}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v7

    goto :goto_1

    .line 2066
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :catch_1
    move-exception v1

    .line 2067
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public setWifiIBSSEnabled(Z)Z
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    .line 3454
    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 3458
    .local v3, "packageName":Ljava/lang/String;
    :try_start_0
    const-string v4, "WifiManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setWifiIBSSEnabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3459
    sget-boolean v4, Landroid/net/wifi/WifiManager;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "WifiManager"

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3462
    :cond_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 3463
    .local v2, "msg":Landroid/os/Message;
    const/16 v4, 0x4e

    iput v4, v2, Landroid/os/Message;->what:I

    .line 3464
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3465
    .local v0, "args":Landroid/os/Bundle;
    const-string v4, "extra_log"

    new-instance v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiManager.setWifiIBSSEnabled("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3467
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3468
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 3471
    iget-object v4, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v4, p1}, Landroid/net/wifi/IWifiManager;->setWifiIBSSEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 3474
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :goto_0
    return v4

    .line 3472
    :catch_0
    move-exception v1

    .line 3473
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "WifiManager"

    const-string v5, "RemoteException occured. WifiManager.setWifiIBSSEnabled()"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3474
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public startCustomizedScan(Landroid/net/wifi/ScanSettings;)Z
    .locals 3
    .param p1, "requested"    # Landroid/net/wifi/ScanSettings;

    .prologue
    .line 1712
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1713
    const/4 v1, 0x1

    .line 1715
    :goto_0
    return v1

    .line 1714
    :catch_0
    move-exception v0

    .line 1715
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startCustomizedScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)Z
    .locals 2
    .param p1, "requested"    # Landroid/net/wifi/ScanSettings;
    .param p2, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1722
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1723
    const/4 v1, 0x1

    .line 1725
    :goto_0
    return v1

    .line 1724
    :catch_0
    move-exception v0

    .line 1725
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startLocationRestrictedScan(Landroid/os/WorkSource;)Z
    .locals 2
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1618
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->startLocationRestrictedScan(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1619
    const/4 v1, 0x1

    .line 1621
    :goto_0
    return v1

    .line 1620
    :catch_0
    move-exception v0

    .line 1621
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startMediaShare(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "remoteMacAddress"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 2632
    if-eqz p2, :cond_0

    .line 2633
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/net/wifi/IWifiManager;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V

    .line 2635
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/IWifiManager;->enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2639
    :goto_0
    return-void

    .line 2636
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/PPPOEConfig;

    .prologue
    .line 4390
    :try_start_0
    const-string/jumbo v1, "pppoe"

    const-string v2, "WifiManager: startPPPOE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4391
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1, p1}, Landroid/net/wifi/IWifiManager;->startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4396
    :goto_0
    return-void

    .line 4392
    :catch_0
    move-exception v0

    .line 4394
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "pppoe"

    const-string v2, "RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startScan()Z
    .locals 4

    .prologue
    .line 1591
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1592
    const/4 v1, 0x1

    .line 1594
    :goto_0
    return v1

    .line 1593
    :catch_0
    move-exception v0

    .line 1594
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startScan(Landroid/os/WorkSource;)Z
    .locals 3
    .param p1, "workSource"    # Landroid/os/WorkSource;

    .prologue
    .line 1602
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Landroid/net/wifi/IWifiManager;->startScan(Landroid/net/wifi/ScanSettings;Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1603
    const/4 v1, 0x1

    .line 1605
    :goto_0
    return v1

    .line 1604
    :catch_0
    move-exception v0

    .line 1605
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startWifi()Z
    .locals 2

    .prologue
    .line 2466
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->startWifi()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2467
    const/4 v1, 0x1

    .line 2469
    :goto_0
    return v1

    .line 2468
    :catch_0
    move-exception v0

    .line 2469
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public startWps(Landroid/net/wifi/WpsInfo;Landroid/net/wifi/WifiManager$WpsCallback;)V
    .locals 4
    .param p1, "config"    # Landroid/net/wifi/WpsInfo;
    .param p2, "listener"    # Landroid/net/wifi/WifiManager$WpsCallback;

    .prologue
    .line 3174
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3175
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiManager;->validateChannel()V

    .line 3176
    sget-object v0, Landroid/net/wifi/WifiManager;->sAsyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x2500a

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/net/wifi/WifiManager;->putListener(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    .line 3177
    return-void
.end method

.method public stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V
    .locals 1
    .param p1, "requested"    # Landroid/net/wifi/BatchedScanSettings;

    .prologue
    .line 1776
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/IWifiManager;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    :goto_0
    return-void

    .line 1777
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopPPPOE()V
    .locals 3

    .prologue
    .line 4408
    :try_start_0
    const-string/jumbo v1, "pppoe"

    const-string v2, "WifiManager: stopPPPOE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopPPPOE()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4414
    :goto_0
    return-void

    .line 4410
    :catch_0
    move-exception v0

    .line 4412
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "pppoe"

    const-string v2, "RemoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopWifi()Z
    .locals 2

    .prologue
    .line 2486
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiManager;->mService:Landroid/net/wifi/IWifiManager;

    invoke-interface {v1}, Landroid/net/wifi/IWifiManager;->stopWifi()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2487
    const/4 v1, 0x1

    .line 2489
    :goto_0
    return v1

    .line 2488
    :catch_0
    move-exception v0

    .line 2489
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1221
    if-eqz p1, :cond_0

    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez v0, :cond_1

    .line 1222
    :cond_0
    const/4 v0, -0x1

    .line 1224
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    goto :goto_0
.end method
