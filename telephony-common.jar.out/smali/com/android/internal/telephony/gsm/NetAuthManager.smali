.class public Lcom/android/internal/telephony/gsm/NetAuthManager;
.super Landroid/os/Handler;
.source "NetAuthManager.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 55
    return-void
.end method


# virtual methods
.method public checkApnInfo()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public getNamId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string v0, ""

    return-object v0
.end method

.method public getNamPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, ""

    return-object v0
.end method

.method public getNamState()Z
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method public setNamAccount()V
    .locals 0

    .prologue
    .line 100
    return-void
.end method

.method public setNamAccount(Z)V
    .locals 0
    .param p1, "apnChanged"    # Z

    .prologue
    .line 104
    return-void
.end method
