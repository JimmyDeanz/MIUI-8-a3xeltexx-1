.class Lcom/android/server/policy/GlobalActions$43;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->isSimReady()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    .prologue
    .line 4767
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$43;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 4769
    # getter for: Lcom/android/server/policy/GlobalActions;->sIsConfirmingGuard:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$100()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 4770
    const/4 v0, 0x0

    :try_start_0
    # setter for: Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->access$202(Z)Z

    .line 4771
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$43;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v2}, Lcom/android/server/policy/GlobalActions;->access$8702(Lcom/android/server/policy/GlobalActions;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 4772
    monitor-exit v1

    .line 4773
    return-void

    .line 4772
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
