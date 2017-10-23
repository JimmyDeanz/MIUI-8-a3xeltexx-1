.class final Lcom/android/internal/telephony/DeviceReportingSecurityChecker$2;
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
    .line 115
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 118
    const-string v1, "DeviceReportingSecurityChecker"

    const-string v2, "onReceive mSysScopeReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    const-string v1, "status"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SysScope scanning finished"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    const-string v1, "Result"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->sysScopeResult:I
    invoke-static {v1}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->access$302(I)I

    .line 124
    const-string v1, "DeviceReportingSecurityChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sysScopeResult : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->sysScopeResult:I
    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->access$300()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    # getter for: Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->sysScopeResult:I
    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->access$300()I

    move-result v1

    # getter for: Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->SYS_NOK:I
    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->access$400()I

    move-result v2

    if-eq v1, v2, :cond_0

    # getter for: Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->sysScopeResult:I
    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->access$300()I

    move-result v1

    # getter for: Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->SYS_NOT_SCANNED:I
    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->access$500()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 126
    :cond_0
    # setter for: Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsSysScopeStatus:Z
    invoke-static {v4}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->access$602(Z)Z

    .line 131
    :cond_1
    :goto_0
    const-string v1, "DeviceReportingSecurityChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsSysScopeStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsSysScopeStatus:Z
    invoke-static {}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->access$600()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    return-void

    .line 128
    :cond_2
    const/4 v1, 0x1

    # setter for: Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->mIsSysScopeStatus:Z
    invoke-static {v1}, Lcom/android/internal/telephony/DeviceReportingSecurityChecker;->access$602(Z)Z

    goto :goto_0
.end method
