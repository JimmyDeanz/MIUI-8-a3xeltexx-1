.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;
.super Ljava/lang/Object;
.source "KeyProvTrigger.java"


# instance fields
.field private mAuthenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

.field private mDeviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

.field private mKeyID:[B

.field private mPrefixDSKPP:Ljava/lang/String;

.field private mPrefixPSKC:Ljava/lang/String;

.field private mServerURL:Ljava/lang/String;

.field private mTokenPlatformInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

.field private mVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthenticationData()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->mAuthenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->mDeviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    return-object v0
.end method

.method public getKeyID()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->mKeyID:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefixDSKPP()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->mPrefixDSKPP:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixPSKC()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->mPrefixPSKC:Ljava/lang/String;

    return-object v0
.end method

.method public getServerURL()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->mServerURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTokenPlatformInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->mTokenPlatformInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthenticationData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;)V
    .locals 0
    .param p1, "mAuthenticationData"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->mAuthenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    return-void
.end method

.method public setDeviceInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;)V
    .locals 0
    .param p1, "mDeviceInfo"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->mDeviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    return-void
.end method

.method public setKeyID(Ljava/lang/String;)V
    .locals 2
    .param p1, "mKeyID"    # Ljava/lang/String;

    .prologue
    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .local v0, "keyID":[B
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->mKeyID:[B

    return-void
.end method

.method public setPrefixDSKPP(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPrefixDSKPP"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->mPrefixDSKPP:Ljava/lang/String;

    return-void
.end method

.method public setPrefixPSKC(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPrefixPSKC"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->mPrefixPSKC:Ljava/lang/String;

    return-void
.end method

.method public setServerURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "mServerURL"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->mServerURL:Ljava/lang/String;

    return-void
.end method

.method public setTokenPlatformInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;)V
    .locals 0
    .param p1, "mTokenPlatformInfo"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->mTokenPlatformInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mVersion"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvTrigger;->mVersion:Ljava/lang/String;

    return-void
.end method
