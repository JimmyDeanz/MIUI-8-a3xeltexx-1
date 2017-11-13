.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;
.super Ljava/lang/Object;
.source "KeyProvClientHello.java"


# instance fields
.field private mAuthenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

.field private mDeviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

.field private mKeyID:[B

.field private mPrefixDS:Ljava/lang/String;

.field private mPrefixDSKPP:Ljava/lang/String;

.field private mPrefixPKCS5:Ljava/lang/String;

.field private mPrefixPSKC:Ljava/lang/String;

.field private mPrefixXENC:Ljava/lang/String;

.field private mProtocolVariant:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

.field private mSupportedEncryptionAlgorithms:Ljava/lang/String;

.field private mSupportedKeyPackageFormat:Ljava/lang/String;

.field private mSupportedKeyTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportedMacAlgorithms:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mAuthenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    return-object v0
.end method

.method public getDeviceInfo()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mDeviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    return-object v0
.end method

.method public getKeyID()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mKeyID:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mKeyID:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPrefixDSKPP()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mPrefixDSKPP:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixPKCS5()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mPrefixPKCS5:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixPSKC()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mPrefixPSKC:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefixXENC()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mPrefixXENC:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocolVariant()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mProtocolVariant:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    return-object v0
.end method

.method public getSupportedEncryptionAlgorithms()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mSupportedEncryptionAlgorithms:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedKeyPackageFormat()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mSupportedKeyPackageFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportedKeyTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mSupportedKeyTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSupportedMacAlgorithms()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mSupportedMacAlgorithms:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getmPrefixDS()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mPrefixDS:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthenticationData(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;)V
    .locals 0
    .param p1, "mAuthenticationData"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mAuthenticationData:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationData;

    return-void
.end method

.method public setDeviceInfo(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;)V
    .locals 0
    .param p1, "mDeviceInfo"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mDeviceInfo:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/DeviceInfo;

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

    iput-object v1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mKeyID:[B

    return-void
.end method

.method public setPrefixDS(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPrefixDS"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mPrefixDS:Ljava/lang/String;

    return-void
.end method

.method public setPrefixDSKPP(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPrefixDSKPP"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mPrefixDSKPP:Ljava/lang/String;

    return-void
.end method

.method public setPrefixPKCS5(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPrefixPKCS5"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mPrefixPKCS5:Ljava/lang/String;

    return-void
.end method

.method public setPrefixPSKC(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPrefixPSKC"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mPrefixPSKC:Ljava/lang/String;

    return-void
.end method

.method public setPrefixXENC(Ljava/lang/String;)V
    .locals 0
    .param p1, "mPrefixXENC"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mPrefixXENC:Ljava/lang/String;

    return-void
.end method

.method public setProtocolVariant(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;)V
    .locals 0
    .param p1, "mProtocolVariant"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mProtocolVariant:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;

    return-void
.end method

.method public setSupportedEncryptionAlgorithms(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSupportedEncryptionAlgorithms"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mSupportedEncryptionAlgorithms:Ljava/lang/String;

    return-void
.end method

.method public setSupportedKeyPackageFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSupportedKeyPackageFormat"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mSupportedKeyPackageFormat:Ljava/lang/String;

    return-void
.end method

.method public setSupportedKeyTypes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mSupportedKeyTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mSupportedKeyTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public setSupportedMacAlgorithms(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSupportedMacAlgorithms"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mSupportedMacAlgorithms:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "mVersion"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyProvClientHello;->mVersion:Ljava/lang/String;

    return-void
.end method
