.class Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMStatusBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Lcom/android/internal/telephony/dataconnection/DcTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/dataconnection/DcTracker;
    .param p2, "x1"    # Lcom/android/internal/telephony/dataconnection/DcTracker$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "iccState":Ljava/lang/String;
    const-string v2, "IMSI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DCT"

    const-string v3, "!@Boot_SVC : IMSI Ready"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/dataconnection/DcTracker;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .local v1, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    const-string v2, "IMSI"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "READY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIMStatusBroadcastReceiver: INTENT_VALUE_ICC state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const-string v3, "SIMStatusBroadcastReceiver: SIMRecords / getOperatorNumeric returned null, Do not anything."

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v2, ""

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIMStatusBroadcastReceiver: SIMRecords / getOperatorNumeric returned : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$SIMStatusBroadcastReceiver;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->onInitialAttachApn()V
    invoke-static {v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$300(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    goto :goto_1
.end method
