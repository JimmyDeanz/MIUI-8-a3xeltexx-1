.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;
.super Ljava/lang/Object;
.source "MACTypeDSKPP.java"


# instance fields
.field private mAlgorithm:Ljava/lang/String;

.field private mMac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;->mAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;->mMac:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;->mAlgorithm:Ljava/lang/String;

    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mMac"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/MACTypeDSKPP;->mMac:Ljava/lang/String;

    return-void
.end method
