.class Lcom/android/server/policy/PhoneWindowManager$32;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$32;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$32;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->updateSettings()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$32;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$500(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->updateSettings()V

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$32;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$32;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/policy/PhoneWindowManager;->mLastSystemUiFlags:I

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$32;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->updateSystemUiVisibilityLw()I
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$3800(Lcom/android/server/policy/PhoneWindowManager;)I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$32;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mSPWM:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$500(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->setCurrentUser(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
