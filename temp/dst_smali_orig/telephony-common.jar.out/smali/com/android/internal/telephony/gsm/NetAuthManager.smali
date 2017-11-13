.class public Lcom/android/internal/telephony/gsm/NetAuthManager;
.super Landroid/os/Handler;
.source "NetAuthManager.java"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public checkApnInfo()V
    .locals 0

    .prologue
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    return-void
.end method

.method public getNamId()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, ""

    return-object v0
.end method

.method public getNamPwd()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, ""

    return-object v0
.end method

.method public getNamState()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public setNamAccount()V
    .locals 0

    .prologue
    return-void
.end method

.method public setNamAccount(Z)V
    .locals 0
    .param p1, "apnChanged"    # Z

    .prologue
    return-void
.end method
