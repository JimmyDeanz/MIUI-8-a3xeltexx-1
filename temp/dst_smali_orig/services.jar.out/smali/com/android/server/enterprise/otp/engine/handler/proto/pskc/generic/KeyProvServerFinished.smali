.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;
.super Ljava/lang/Object;
.source "KeyProvServerFinished.java"


# instance fields
.field private mAuthenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

.field private mDSKPPKeyPackage:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

.field private mMACType:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

.field private mPrefixDS:Ljava/lang/String;

.field private mPrefixDSKPP:Ljava/lang/String;

.field private mPrefixDkey:Ljava/lang/String;

.field private mPrefixPSKC:Ljava/lang/String;

.field private mPrefixPkcs5:Ljava/lang/String;

.field private mPrefixXENC:Ljava/lang/String;

.field private mSessionId:Ljava/lang/String;

.field private mStatus:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mAuthenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    return-object v0
.end method

.method public getDSKPPKeyPackage()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mDSKPPKeyPackage:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    return-object v0
.end method

.method public getMACType()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mMACType:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

    return-object v0
.end method

.method public getPrefixDS()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mPrefixDS:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixDSKPP()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mPrefixDSKPP:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixDkey()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mPrefixDkey:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixPSKC()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mPrefixPSKC:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixPkcs5()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mPrefixPkcs5:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixXENC()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mPrefixXENC:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthenticationData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;)V
    .locals 0
    .param p1, "mAuthenticationData"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mAuthenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;

    return-void
.end method

.method public setDSKPPKeyPackage(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;)V
    .locals 0
    .param p1, "DSKPPKeyPackage"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mDSKPPKeyPackage:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DSKPPKeyPackage;

    return-void
.end method

.method public setMACType(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;)V
    .locals 0
    .param p1, "MACType"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mMACType:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;

    return-void
.end method

.method public setPrefixDS(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPrefixDS"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mPrefixDS:Ljava/lang/String;

    return-void
.end method

.method public setPrefixDSKPP(Ljava/lang/String;)V
    .locals 0
    .param p1, "PrefixDSKPP"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mPrefixDSKPP:Ljava/lang/String;

    return-void
.end method

.method public setPrefixDkey(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPrefixDkey"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mPrefixDkey:Ljava/lang/String;

    return-void
.end method

.method public setPrefixPSKC(Ljava/lang/String;)V
    .locals 0
    .param p1, "PrefixPSKC"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mPrefixPSKC:Ljava/lang/String;

    return-void
.end method

.method public setPrefixPkcs5(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPrefixPkcs5"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mPrefixPkcs5:Ljava/lang/String;

    return-void
.end method

.method public setPrefixXENC(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPrefixXENC"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mPrefixXENC:Ljava/lang/String;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mSessionId:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mStatus:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvServerFinished;->mVersion:Ljava/lang/String;

    return-void
.end method
