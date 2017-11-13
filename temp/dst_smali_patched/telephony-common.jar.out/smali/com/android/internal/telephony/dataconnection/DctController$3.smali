.class Lcom/android/internal/telephony/dataconnection/DctController$3;
.super Landroid/os/Handler;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x320

    if-lt v4, v5, :cond_3

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchStateMachine:[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->access$100(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchStateMachine;

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Lcom/android/internal/telephony/dataconnection/DctController;)Landroid/os/Handler;

    move-result-object v4

    add-int/lit16 v5, v1, 0x320

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Lcom/android/internal/telephony/dataconnection/DctController;)Landroid/os/Handler;

    move-result-object v4

    add-int/lit16 v5, v1, 0x320

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mPhones:[Lcom/android/internal/telephony/PhoneProxy;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->access$300(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/PhoneProxy;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    add-int/lit16 v5, v5, -0x320

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .local v2, "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v4, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DcTracker;

    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mRspHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/internal/telephony/dataconnection/DctController;->access$200(Lcom/android/internal/telephony/dataconnection/DctController;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcTracker;->unregisterForAllDataDisconnected(Landroid/os/Handler;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_PHONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    add-int/lit16 v5, v5, -0x320

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_DATA_DISCONNECT."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->access$400(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    add-int/lit16 v5, v5, -0x320

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyDataDisconnected()V

    const-string v4, "CTC"

    sget-object v5, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .end local v1    # "i":I
    .end local v2    # "phoneBase":Lcom/android/internal/telephony/PhoneBase;
    :cond_2
    :goto_1
    return-void

    :cond_3
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x2bc

    if-lt v4, v5, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_PHONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    add-int/lit16 v5, v5, -0x2bc

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_EMERGENCY_CALL_END."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .local v3, "toggle":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->access$400(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    add-int/lit16 v5, v5, -0x2bc

    aget-object v4, v4, v5

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyEmergencyCallToggled(I)V

    goto :goto_1

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "toggle":Ljava/lang/Integer;
    :cond_4
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x258

    if-lt v4, v5, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_PHONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    add-int/lit16 v5, v5, -0x258

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_DATA_DETACH."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->access$400(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    add-int/lit16 v5, v5, -0x258

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyDataDetached()V

    goto :goto_1

    :cond_5
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v5, 0x1f4

    if-lt v4, v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_PHONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    add-int/lit16 v5, v5, -0x1f4

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_DATA_ATTACH."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/internal/telephony/dataconnection/DctController;->logd(Ljava/lang/String;)V
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->access$000(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mDcSwitchAsyncChannel:[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->access$400(Lcom/android/internal/telephony/dataconnection/DctController;)[Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    add-int/lit16 v5, v5, -0x1f4

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DcSwitchAsyncChannel;->notifyDataAttached()V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    # getter for: Lcom/android/internal/telephony/dataconnection/DctController;->mNetworkFactory:[Landroid/net/NetworkFactory;
    invoke-static {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->access$700(Lcom/android/internal/telephony/dataconnection/DctController;)[Landroid/net/NetworkFactory;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    add-int/lit16 v5, v5, -0x1f4

    aget-object v4, v4, v5

    check-cast v4, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DctController$TelephonyNetworkFactory;->evalPendingRequest()V

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DctController$3;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/dataconnection/DctController;->processRequests()V

    goto/16 :goto_1
.end method
