.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$7;
.super Ljava/lang/Object;
.source "SubscriptionInfoUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$7;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$7;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    iget-object v1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$7;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mSlotId:I
    invoke-static {v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1200(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)I

    move-result v1

    const-string v2, "LOCKED"

    iget-object v3, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$7;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    # getter for: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->mReason:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1300(Lcom/android/internal/telephony/SubscriptionInfoUpdater;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->broadcastSimStateChanged(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$1400(Lcom/android/internal/telephony/SubscriptionInfoUpdater;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
