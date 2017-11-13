.class Lcom/android/internal/telephony/SubscriptionController$3;
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
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v1

    .local v1, "subId":I
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v0

    .local v0, "slotId":I
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$3;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    # invokes: Lcom/android/internal/telephony/SubscriptionController;->setDefaultVoiceSlotId(I)V
    invoke-static {v2, v0}, Lcom/android/internal/telephony/SubscriptionController;->access$000(Lcom/android/internal/telephony/SubscriptionController;I)V

    return-void
.end method
