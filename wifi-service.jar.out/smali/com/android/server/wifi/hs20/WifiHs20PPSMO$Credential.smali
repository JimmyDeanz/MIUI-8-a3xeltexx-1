.class public Lcom/android/server/wifi/hs20/WifiHs20PPSMO$Credential;
.super Ljava/lang/Object;
.source "WifiHs20PPSMO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hs20/WifiHs20PPSMO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Credential"
.end annotation


# instance fields
.field public checkAAAServerCertStatus:Z

.field public creationDate:Ljava/lang/String;

.field public credentialID:I

.field public credentialType:I

.field public digitalCertificateObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$DigitalCertificate;

.field public eapMethod:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$EAPMethod;

.field public expirationDate:Ljava/lang/String;

.field public hs20AAAFP:Ljava/lang/String;

.field public methodType:I

.field public realm:Ljava/lang/String;

.field public simObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$SIM;

.field public usernamePasswordObj:Lcom/android/server/wifi/hs20/WifiHs20PPSMO$UsernamePassword;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
