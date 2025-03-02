.class public Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthenticationResult"
.end annotation


# instance fields
.field private mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

.field private mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p3, "userId"    # I

    .prologue
    .line 375
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 376
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 377
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 378
    iput p3, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mUserId:I

    .line 379
    return-void
.end method


# virtual methods
.method public getCryptoObject()Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    return-object v0
.end method

.method public getFingerprint()Landroid/hardware/fingerprint/Fingerprint;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 400
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mUserId:I

    return v0
.end method
.method public constructor <init>(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 0
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "fingerprint"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p3, "userId"    # I

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 272
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 273
    iput p3, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mUserId:I

    .line 274
    return-void
.end method
.method public getUserId()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->mUserId:I

    return v0
.end method
.field private mUserId:I
