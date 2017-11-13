.class public Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
.super Ljava/lang/Object;
.source "WifiHs20PPSMO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SpIcon;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PreferredRoamingPartner;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$ProtoPortTupple;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SPExclusionList;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$TrustRoot;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsageLimits;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeOI;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$MinBackHaulThreshold;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$OtherHomePartner;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$NetworkID;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PasswordUsername;,
        Lcom/android/server/wifi/hs20/WifiHs20PPSMO$PolicyUpdate;
    }
.end annotation


# instance fields
.field public aaaServerTrustRootObj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wifi/hs20/WifiHs20PPSMO$AAAServerTrustRoot;",
            ">;"
        }
    .end annotation
.end field

.field public acl:I

.field public action:I

.field public credentialObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;

.field public domainName:Ljava/lang/String;

.field public ext:[B

.field public fqdn:Ljava/lang/String;

.field public homeSPObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$HomeSP;

.field public hotspotID:Ljava/lang/String;

.field public policyObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Policy;

.field public ppsMoId:Ljava/lang/String;

.field public subscriptionParametersObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionParameters;

.field public subscriptionPriority:I

.field public subscriptionRemediationObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionRemediation;

.field public subscriptionUpdate:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SubscriptionUpdate;

.field public updateIdentifier:I

.field public userPriority:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
