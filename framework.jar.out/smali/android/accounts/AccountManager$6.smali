.class Landroid/accounts/AccountManager$6;
.super Landroid/accounts/AccountManager$AmsTask;
.source "AccountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/AccountManager;

.field final synthetic val$account:Landroid/accounts/Account;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;Landroid/accounts/Account;Landroid/app/Activity;)V
    .locals 0
    .param p2, "x0"    # Landroid/app/Activity;
    .param p3, "x1"    # Landroid/os/Handler;

    .prologue
    .line 904
    .local p4, "x2":Landroid/accounts/AccountManagerCallback;, "Landroid/accounts/AccountManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Landroid/accounts/AccountManager$6;->this$0:Landroid/accounts/AccountManager;

    iput-object p5, p0, Landroid/accounts/AccountManager$6;->val$account:Landroid/accounts/Account;

    iput-object p6, p0, Landroid/accounts/AccountManager$6;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/accounts/AccountManager$AmsTask;-><init>(Landroid/accounts/AccountManager;Landroid/app/Activity;Landroid/os/Handler;Landroid/accounts/AccountManagerCallback;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 907
    iget-object v0, p0, Landroid/accounts/AccountManager$6;->this$0:Landroid/accounts/AccountManager;

    # getter for: Landroid/accounts/AccountManager;->mService:Landroid/accounts/IAccountManager;
    invoke-static {v0}, Landroid/accounts/AccountManager;->access$000(Landroid/accounts/AccountManager;)Landroid/accounts/IAccountManager;

    move-result-object v1

    iget-object v2, p0, Landroid/accounts/AccountManager$6;->mResponse:Landroid/accounts/IAccountManagerResponse;

    iget-object v3, p0, Landroid/accounts/AccountManager$6;->val$account:Landroid/accounts/Account;

    iget-object v0, p0, Landroid/accounts/AccountManager$6;->val$activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v3, v0}, Landroid/accounts/IAccountManager;->removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Z)V

    .line 908
    return-void

    .line 907
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
