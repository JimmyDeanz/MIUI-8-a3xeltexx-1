.class public Lcom/android/server/wifi/hs20/WifiHs20DBStore;
.super Ljava/lang/Object;
.source "WifiHs20DBStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hs20/WifiHs20DBStore$SpIcon;,
        Lcom/android/server/wifi/hs20/WifiHs20DBStore$DevDetailsSPCertificate;,
        Lcom/android/server/wifi/hs20/WifiHs20DBStore$DevDetailsEAP;,
        Lcom/android/server/wifi/hs20/WifiHs20DBStore$DevDetails;,
        Lcom/android/server/wifi/hs20/WifiHs20DBStore$Fqdn;,
        Lcom/android/server/wifi/hs20/WifiHs20DBStore$OtherHomePartner;,
        Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeOI;,
        Lcom/android/server/wifi/hs20/WifiHs20DBStore$Credential;,
        Lcom/android/server/wifi/hs20/WifiHs20DBStore$HomeSPNetwork;,
        Lcom/android/server/wifi/hs20/WifiHs20DBStore$SPExclusionList;,
        Lcom/android/server/wifi/hs20/WifiHs20DBStore$AAAServerTrustRoot;,
        Lcom/android/server/wifi/hs20/WifiHs20DBStore$Tupple;,
        Lcom/android/server/wifi/hs20/WifiHs20DBStore$BackhaulBandwidthThreshold;,
        Lcom/android/server/wifi/hs20/WifiHs20DBStore$PreferredRoamingPartner;,
        Lcom/android/server/wifi/hs20/WifiHs20DBStore$PolicySubscriptionUpdate;,
        Lcom/android/server/wifi/hs20/WifiHs20DBStore$HotSpot;
    }
.end annotation


# static fields
.field private static AUTHORITY:Ljava/lang/String; = null

.field private static AUTHORITY_SLASH:Ljava/lang/String; = null

.field public static final DEV_DETAIL_EAP_TABLE:Ljava/lang/String; = "dev_details_eap"

.field public static final DEV_DETAIL_SPCERTIFICATE_TABLE:Ljava/lang/String; = "hotspot_sp_certificate"

.field public static final DEV_DETAIL_TABLE:Ljava/lang/String; = "dev_details"

.field public static final HOTSPOT_AAASERVER_TRUSTTROOT_TABLE:Ljava/lang/String; = "hotspot_aaaserver_trustroot"

.field public static final HOTSPOT_BACKHAUL_BANDWIDTH_THRESHOLD_TABLE:Ljava/lang/String; = "hostspot_backhaul_bandwidth_threshold"

.field public static final HOTSPOT_CREDENTIALS_TABLE:Ljava/lang/String; = "hotspot_credentials"

.field public static final HOTSPOT_FQDN_TABLE:Ljava/lang/String; = "hotspot_fqdn"

.field public static final HOTSPOT_HOMEOILIST_TABLE:Ljava/lang/String; = "hotspot_homeoilist"

.field public static final HOTSPOT_HOMESP_NETWORK_TABLE:Ljava/lang/String; = "hotspot_homesp_network"

.field public static final HOTSPOT_HOMESP_OTHERHOME_PARTNER_TABLE:Ljava/lang/String; = "hotspot_otherhome_partner"

.field public static final HOTSPOT_POLICY_SUBSCRIPTION_UPDATE_TABLE:Ljava/lang/String; = "hotspot_policy_subsription_update"

.field public static final HOTSPOT_PREFERRED_ROAMING_PARTNER_TABLE:Ljava/lang/String; = "hotspot_preferredroaming_partnerlist"

.field public static final HOTSPOT_SPEXCLUSION_LIST_TABLE:Ljava/lang/String; = "hotspot_spexclusion_list"

.field public static final HOTSPOT_TABLE:Ljava/lang/String; = "hotspot"

.field public static final HOTSPOT_TUPPLE_TABLE:Ljava/lang/String; = "hotspot_tupple"

.field public static final SERVICE_PROVICER_ICON_TABLE:Ljava/lang/String; = "sp_icon"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "com.samsung.passpoint"

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore;->AUTHORITY:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/server/wifi/hs20/WifiHs20DBStore;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore;->AUTHORITY_SLASH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20DBStore;->AUTHORITY_SLASH:Ljava/lang/String;

    return-object v0
.end method
