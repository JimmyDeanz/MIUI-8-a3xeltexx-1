.class Lcom/android/server/enterprise/security/SecurityPolicy$2;
.super Landroid/content/BroadcastReceiver;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;->formatExternalStorageCard()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

.field final synthetic val$lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;Ljava/lang/Object;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$2;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    iput-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$2;->val$lock:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, "path":Ljava/lang/String;
    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/security/SecurityPolicy$2;->val$lock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$2;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/enterprise/security/SecurityPolicy;->mMediaFormatRet:Z
    invoke-static {v3, v5}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$1102(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z

    iget-object v3, p0, Lcom/android/server/enterprise/security/SecurityPolicy$2;->val$lock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catch Ljava/lang/IllegalMonitorStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v4

    :cond_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalMonitorStateException;
    const-string v3, "SecurityPolicy"

    const-string v5, "formatStorageCard - IllegalMonitorStateException"

    invoke-static {v3, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalMonitorStateException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method
