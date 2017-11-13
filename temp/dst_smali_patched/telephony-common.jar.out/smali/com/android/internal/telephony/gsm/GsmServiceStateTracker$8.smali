.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;
.super Ljava/lang/Object;
.source "GsmServiceStateTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPrefNetTypeForDataLockSim(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, "sleepCount":I
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DataLockFeature] Waiting for slave slot set GsmOnly. sleepCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    const/16 v2, 0x9

    if-le v1, v2, :cond_1

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setGsmOnlyModeFlag:Z
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2302(Z)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setGsmOnlyModeFlag:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2300()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2400(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget v3, v3, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mPreferredNetworkType:I

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    # getter for: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setAutoModeForSlot1:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2500()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x0

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->switchNetworkTo(I)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)V

    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v3, 0x1

    # invokes: Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->switchNetworkTo(I)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->access$2600(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
