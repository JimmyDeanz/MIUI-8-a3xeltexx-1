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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeyInfo()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->mKeyInfo:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    return-object v0
.end method

.method public getSupportedProtocolVariant()Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->mSupportedProtocolVariant:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    return-object v0
.end method

.method public getX509Data()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->mX509Data:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    return-object v0
.end method

.method public getmSupportedKeyProtectionMethod()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->mSupportedKeyProtectionMethod:Ljava/lang/String;

    return-object v0
.end method

.method public setKeyInfo(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;)V
    .locals 0
    .param p1, "mKeyInfo"    # Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->mKeyInfo:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$EncryptionKeyType;

    return-void
.end method

.method public setSupportedKeyProtectionMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "mSupportedKeyProtectionMethod"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->mSupportedKeyProtectionMethod:Ljava/lang/String;

    return-void
.end method

.method public setSupportedProtocolVariant(Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;)V
    .locals 0
    .param p1, "mSupportedProtocolVariant"    # Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->mSupportedProtocolVariant:Lcom/android/server/enterprise/otp/engine/common/OTPEnums$ProtocolVariantType;

    return-void
.end method

.method public setX509Data(Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;)V
    .locals 0
    .param p1, "mX509Data"    # Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/ProtocolVariant;->mX509Data:Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/signature/X509Data;

    return-void
.end method
