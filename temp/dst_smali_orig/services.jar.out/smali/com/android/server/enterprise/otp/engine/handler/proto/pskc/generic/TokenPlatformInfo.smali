.class public Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;
.super Ljava/lang/Object;
.source "TokenPlatformInfo.java"


# instance fields
.field private mAlgoLocation:Ljava/lang/String;

.field private mKeyLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlgoLocation()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->mAlgoLocation:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyLocation()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->mKeyLocation:Ljava/lang/String;

    return-object v0
.end method

.method public setAlgoLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlgoLocation"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->mAlgoLocation:Ljava/lang/String;

    return-void
.end method

.method public setKeyLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "mKeyLocation"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/TokenPlatformInfo;->mKeyLocation:Ljava/lang/String;

    return-void
.end method
