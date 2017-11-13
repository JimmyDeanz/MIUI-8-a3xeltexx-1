.class Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IccCardProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "iccCardProxyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/IccCardProxy;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/IccCardProxy;Lcom/android/internal/telephony/uicc/IccCardProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/IccCardProxy;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/IccCardProxy$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/IccCardProxy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.sec.android.app.secsetupwizard.SETUPWIZARD_COMPLETE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v6, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    # invokes: Lcom/android/internal/telephony/uicc/IccCardProxy;->prepareStartSimManagement()V
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$100(Lcom/android/internal/telephony/uicc/IccCardProxy;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "com.samsung.intent.action.QCOMHOTSWAP"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "QCOM"

    const-string v3, "QCOM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "QCOM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_ConfigSIMswap"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v6, :cond_3

    const-string v2, "CTC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string v3, "skip QCOMHOTSWAP intent CTC"

    # invokes: Lcom/android/internal/telephony/uicc/IccCardProxy;->logi(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$200(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    # setter for: Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsStartSimManagement:Z
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$302(Z)Z

    const-string v2, "REASON"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .local v1, "simreason":Z
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy$iccCardProxyBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const-string v3, "Receive QCOMHOTSWAP false intent so sIsStartSimManagement setted false for initial"

    # invokes: Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$400(Lcom/android/internal/telephony/uicc/IccCardProxy;Ljava/lang/String;)V

    # setter for: Lcom/android/internal/telephony/uicc/IccCardProxy;->sIsCheckingCTCSim:Z
    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->access$502(Z)Z

    goto :goto_0
.end method
