.class Lcom/android/internal/telephony/SubscriptionController$4;
.super Landroid/database/ContentObserver;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$4;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$4;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$4;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v0

    .local v0, "slotId":I
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$4;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSlotId()I
    invoke-static {v2}, Lcom/android/internal/telephony/SubscriptionController;->access$100(Lcom/android/internal/telephony/SubscriptionController;)I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$4;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DefaultDataSubIdObserver] changed subId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->access$200(Lcom/android/internal/telephony/SubscriptionController;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$4;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->setDefaultDataSlotId(I)V
    invoke-static {v2, v0}, Lcom/android/internal/telephony/SubscriptionController;->access$300(Lcom/android/internal/telephony/SubscriptionController;I)V

    :cond_0
    return-void
.end method
