.class final Lcom/android/internal/telephony/DeviceReportingSecurityChecker$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceReportingSecurityChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DeviceReportingSecurityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 97
    const-string v1, "DeviceReportingSecurityChecker"

    const-string v2, "onReceive mSimStateReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    # getter for: Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->access$000()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 100
    .local v0, "simState":I
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 101
    # invokes: Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->isTMOSIM()Z
    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const/4 v1, 0x1

    # setter for: Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsTmoSim:Z
    invoke-static {v1}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->access$202(Z)Z

    .line 111
    :goto_0
    const-string v1, "DeviceReportingSecurityChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsTmoSim: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsTmoSim:Z
    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->access$200()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 104
    :cond_0
    const-string v1, "DeviceReportingSecurityChecker"

    const-string v2, "SIM card is not TMO\'s SIM!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    # setter for: Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsTmoSim:Z
    invoke-static {v3}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->access$202(Z)Z

    goto :goto_0

    .line 108
    :cond_1
    const-string v1, "DeviceReportingSecurityChecker"

    const-string v2, "SIM state is not ready!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    # setter for: Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsTmoSim:Z
    invoke-static {v3}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->access$202(Z)Z

    goto :goto_0
.end method
