.class Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RUIMRecordsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/RuimRecords$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.samsung.intent.action.Slot1setCardDataInit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v3, "com.samsung.intent.action.Slot1setCardDataInit"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    const-string v2, "gsm.sim.selectnetwork"

    const-string v3, "CDMA"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->setCardDataInit()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "com.samsung.intent.action.setRuimCardDataInit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v3, "com.samsung.intent.action.setRuimCardDataInit"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v3, "gsm.sim.state"

    const-string v4, "ABSENT"

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/uicc/RuimRecords;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "state":Ljava/lang/String;
    const-string v2, "READY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$RUIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->setCardDataInit()V

    goto :goto_0
.end method
