.class public Lcom/android/server/bridge/BridgeProxy$AccountsChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AccountsChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .locals 0

    .prologue
    .line 2345
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$AccountsChangedReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2348
    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2349
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$AccountsChangedReceiver;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/bridge/BridgeProxy;->mAccountChanged:Z
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$4602(Lcom/android/server/bridge/BridgeProxy;Z)Z

    .line 2351
    :cond_0
    return-void
.end method
