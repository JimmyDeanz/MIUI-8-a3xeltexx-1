.class public Lcom/android/server/wifi/hs20/WifiHs20Helper;
.super Ljava/lang/Object;
.source "WifiHs20Helper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hs20/WifiHs20Helper$HotspotTreeConstants;
    }
.end annotation


# static fields
.field public static final B64:I = 0x6

.field public static final BINARY:I = 0x4

.field public static final BOOL:I = 0x2

.field public static final CHAR:I = 0x1

.field public static final CRED_FILENAME:Ljava/lang/String; = "credential.conf"

.field public static final INTEGER:I = 0x0

.field public static final NODE:I = 0x5

.field public static final UNKNOWN_TYPE:I = -0x1

.field public static final WIFI_CONF_PATH:Ljava/lang/String; = "/data/misc/wifi/"

.field public static dbFieldMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static formatMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildHashMap()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x5

    const/4 v3, 0x1

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "CredentialPriority"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "URI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "CertURL"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "CertSHA256Fingerprint"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "MaximumBSSLoadValue"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "CreationDate"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "ExpirationDate"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "TypeOfSubscription"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "StartDate"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "DataLimit"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "TimeLimit"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "UsageInterval"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "FriendlyName"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "IconURL"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "FQDN"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "Extension"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "SSID"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "RoamingConsortiumOI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "PerProviderSubscription"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "PreferredRoamingPartnerList"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "RequiredProtoPortTuple"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "AAAServerTrustRoot"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "NetworkID"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "HomeOIList"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "MinBackhaulThreshold"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "Wi-Fi"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "Policy"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "PolicyUpdate"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "UsernamePassword"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "TrustRoot"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "SPExclusionList"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "SubscriptionUpdate"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "HomeSP"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "OtherHomePartners"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "UsageLimits"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "Credential"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "EAPMethod"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "DigitalCertificate"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "SIM"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "UpdateInterval"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "UpdateMethod"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "Restriction"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "Other"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "CertURL"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "CertSHA256Fingerprint"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "FQDN_Match"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "Priority"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "Country"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "NetworkType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "DLBandwidth"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "ULBandwidth"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "IPProtocol"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "PortNumber"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "HESSID"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "HOMESP_SSID"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "CreationDate"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "ExpirationDate"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "Username"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "Password"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "Password"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "MachineManaged"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "SoftTokenApp"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "AbleToShare"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "EAPType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "VendorID"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "VendorType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "InnerEAPType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "InnerVendorID"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "InnerVendorType"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "InnerMethod"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "CertificateType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "Realm"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "IMSI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "SIM_EAPType"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "checkAAAServerCertStatus"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "HomeOI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "HomeOIRequired"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "UpdateIdentifier"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "CertificateIssuerName"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "ManufacturingCertificate"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "DefaulBrowserPath"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "CertEnrollAppPath"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "IMEI_MEID"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "Wi-FiMACAddress"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "launchBrowserToURI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "negotiateClientCertTLS"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "getClientCertificate"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "CertEnrollAppPath"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "InnerMethod"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "Wi-FiMACAddress"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "ClientTriggerRedirectURI"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->formatMap:Ljava/util/Map;

    const-string v1, "getCertificate"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "CredentialPriority"

    const-string v2, "subscription_priority"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "URI"

    const-string v2, "uri"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "CertURL"

    const-string v2, "certurl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "CertSHA256Fingerprint"

    const-string v2, "cert_sha256_finger_print"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "MaximumBSSLoadValue"

    const-string v2, "maximumbss_load_value"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "CreationDate"

    const-string v2, "creation_date"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "ExpirationDate"

    const-string v2, "expiration_date"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "TypeOfSubscription"

    const-string v2, "type_of_subscription"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "StartDate"

    const-string v2, "start_date"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "DataLimit"

    const-string v2, "date_limit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "TimeLimit"

    const-string v2, "time_limit"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "UsageInterval"

    const-string v2, "usage_interval"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "FriendlyName"

    const-string v2, "friendly_name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "IconURL"

    const-string v2, "icon_url"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "FQDN"

    const-string v2, "fqdn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "Extension"

    const-string v2, "ext"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "SSID"

    const-string v2, "exclusion_ssids"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "RoamingConsortiumOI"

    const-string v2, "roamingconsortiumoi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "UpdateInterval"

    const-string v2, "update_interval"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "UpdateMethod"

    const-string v2, "update_method"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "Restriction"

    const-string v2, "restriction"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "Other"

    const-string v2, "other"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "CertURL"

    const-string v2, "certurl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "CertSHA256Fingerprint"

    const-string v2, "cert_sha256_finger_print"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "FQDN_Match"

    const-string v2, "fqdn_match"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "Priority"

    const-string v2, "priority"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "Country"

    const-string v2, "country"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "NetworkType"

    const-string v2, "network_type"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "DLBandwidth"

    const-string v2, "dlbandwidh"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "ULBandwidth"

    const-string v2, "ulbandwidth"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "IPProtocol"

    const-string v2, "ip_protocol"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "PortNumber"

    const-string v2, "port_number"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "HESSID"

    const-string v2, "hessid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "HOMESP_SSID"

    const-string v2, "ssid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "CreationDate"

    const-string v2, "creation_date"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "ExpirationDate"

    const-string v2, "expiration_date"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "Username"

    const-string v2, "username"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "Password"

    const-string v2, "password"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "MachineManaged"

    const-string v2, "machine_managed"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "SoftTokenApp"

    const-string v2, "soft_tokenapp"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "AbleToShare"

    const-string v2, "abletoshare"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "EAPType"

    const-string v2, "eap_type"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "VendorID"

    const-string v2, "vendor_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "VendorType"

    const-string v2, "vendor_type"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "InnerEAPType"

    const-string v2, "inner_eaptype"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "InnerVendorID"

    const-string v2, "inner_vendor_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "InnerVendorType"

    const-string v2, "inner_vendor_type"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "CertificateType"

    const-string v2, "certificate_type"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "Realm"

    const-string v2, "realm"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "IMSI"

    const-string v2, "imsi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "SIM_EAPType"

    const-string v2, "sim_eaptype"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "checkAAAServerCertStatus"

    const-string v2, "check_aaa_server_cert_status"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "HomeOI"

    const-string v2, "homeoi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "HomeOIRequired"

    const-string v2, "homeoirequired"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "PerProviderSubscription"

    const-string v2, "ppsmo_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "PreferredRoamingPartnerList"

    const-string v2, "server_roaming_partner_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "RequiredProtoPortTuple"

    const-string v2, "server_tupple_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "AAAServerTrustRoot"

    const-string v2, "server_trustroot_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "NetworkID"

    const-string v2, "server_network_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "HomeOIList"

    const-string v2, "server_homeoilist_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "MinBackhaulThreshold"

    const-string v2, "server_backhaul_threshold_id"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "Wi-Fi"

    const-string v2, "fqdn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "UpdateIdentifier"

    const-string v2, "update_identifier"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "CertificateIssuerName"

    const-string v2, "certificate_issuer_name"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "ManufacturingCertificate"

    const-string v2, "manufacturing_certificate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "CertEnrollAppPath"

    const-string v2, "cert_enrollapp_path"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "IMEI_MEID"

    const-string v2, "imei_meid"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "Wi-FiMACAddress"

    const-string v2, "wifi_macaddress"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "launchBrowserToURI"

    const-string v2, "launchbrowsertouri"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "negotiateClientCertTLS"

    const-string v2, "negotiateclientcerttls"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "InnerMethod"

    const-string v2, "inner_method"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "ClientTriggerRedirectURI"

    const-string v2, "client_trigger_redirect_uri"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/server/wifi/hs20/WifiHs20Helper;->dbFieldMap:Ljava/util/Map;

    const-string v1, "getCertificate"

    const-string v2, "getcertificate"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
