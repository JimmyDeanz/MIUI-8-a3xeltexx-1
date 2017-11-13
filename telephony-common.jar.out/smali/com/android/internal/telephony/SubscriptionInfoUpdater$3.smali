.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;
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
    .line 266
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfUpdate"    # Z

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$3;->this$0:Lcom/android/internal/telephony/SubscriptionInfoUpdater;

    const/4 v1, 0x1

    # invokes: Lcom/android/internal/telephony/SubscriptionInfoUpdater;->UpdatePhoneOnState(I)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/SubscriptionInfoUpdater;->access$200(Lcom/android/internal/telephony/SubscriptionInfoUpdater;I)V

    .line 270
    return-void
.end method
