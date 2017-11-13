.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;
.super Ljava/lang/Object;
.source "AuthenticationCodeMAC.java"


# instance fields
.field private mIterationCount:I

.field private mMac:Ljava/lang/String;

.field private mMacAlgo:Ljava/lang/String;

.field private mNonce:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIterationCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->mIterationCount:I

    return v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method public getMacAlgo()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->mMacAlgo:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->mNonce:Ljava/lang/String;

    return-object v0
.end method

.method public setIterationCount(I)V
    .locals 0
    .param p1, "mIterationCount"    # I

    .prologue
    iput p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->mIterationCount:I

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMac"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->mMac:Ljava/lang/String;

    return-void
.end method

.method public setMacAlgo(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMacAlgo"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->mMacAlgo:Ljava/lang/String;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNonce"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/AuthenticationCodeMAC;->mNonce:Ljava/lang/String;

    return-void
.end method
