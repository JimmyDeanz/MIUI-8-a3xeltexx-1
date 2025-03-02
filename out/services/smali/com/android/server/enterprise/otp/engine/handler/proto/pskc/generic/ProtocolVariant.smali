.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;
.super Ljava/lang/Object;
.source "ProtocolVariant.java"


# instance fields
.field private mKeyInfo:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

.field private mSupportedKeyProtectionMethod:Ljava/lang/String;

.field private mSupportedProtocolVariant:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

.field private mX509Data:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyInfo()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->mKeyInfo:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    return-object v0
.end method

.method public getSupportedProtocolVariant()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->mSupportedProtocolVariant:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    return-object v0
.end method

.method public getX509Data()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->mX509Data:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    return-object v0
.end method

.method public getmSupportedKeyProtectionMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->mSupportedKeyProtectionMethod:Ljava/lang/String;

    return-object v0
.end method

.method public setKeyInfo(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;)V
    .locals 0
    .param p1, "mKeyInfo"    # Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->mKeyInfo:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    .line 46
    return-void
.end method

.method public setSupportedKeyProtectionMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSupportedKeyProtectionMethod"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->mSupportedKeyProtectionMethod:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setSupportedProtocolVariant(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;)V
    .locals 0
    .param p1, "mSupportedProtocolVariant"    # Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->mSupportedProtocolVariant:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    .line 22
    return-void
.end method

.method public setX509Data(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;)V
    .locals 0
    .param p1, "mX509Data"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->mX509Data:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    .line 38
    return-void
.end method
