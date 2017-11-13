.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;
.super Landroid/database/ContentObserver;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfUpdate"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const-string v1, "NwMode Observer onChange hit !!!"

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$000(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$1;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v1, 0x1

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->updateNwModesInSubIdTable(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$100(Lcom/android/internal/telephony/SubscriptionInfoUpdater;Z)V

    return-void
.end method
