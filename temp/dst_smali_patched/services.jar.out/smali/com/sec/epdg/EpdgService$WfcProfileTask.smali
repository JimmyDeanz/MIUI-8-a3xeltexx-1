.class Lcom/sec/epdg/EpdgService$WfcProfileTask;
.super Landroid/os/AsyncTask;
.source "EpdgService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/EpdgService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfcProfileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mSsid:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/epdg/EpdgService;


# direct methods
.method constructor <init>(Lcom/sec/epdg/EpdgService;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .param p2, "h"    # Landroid/os/Handler;
    .param p3, "ssid"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/sec/epdg/EpdgService$WfcProfileTask;->this$0:Lcom/sec/epdg/EpdgService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/sec/epdg/EpdgService$WfcProfileTask;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/sec/epdg/EpdgService$WfcProfileTask;->mSsid:Ljava/lang/String;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {v0}, Lcom/sec/epdg/EpdgService$WfcProfileTask;->setDefaultExecutor(Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private doExec()Ljava/lang/Boolean;
    .locals 7

    .prologue
    const-class v4, Lcom/sec/epdg/EpdgService$WfcProfileTask;

    monitor-enter v4

    const/4 v1, 0x0

    .local v1, "status":Z
    :try_start_0
    invoke-static {}, Lcom/sec/epdg/EpdgWfcProfileReader;->getInstance()Lcom/sec/epdg/EpdgWfcProfileReader;

    move-result-object v3

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2600()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/epdg/EpdgWfcProfileReader;->checkWfcStatus(Landroid/content/Context;)I

    move-result v2

    .local v2, "wfc_state":I
    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2600()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "wifi_call_enable"

    const/4 v6, -0x1

    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/sec/epdg/EpdgService$WfcProfileTask;->this$0:Lcom/sec/epdg/EpdgService;

    # invokes: Lcom/sec/epdg/EpdgService;->setVowifiSetting(I)V
    invoke-static {v3, v2}, Lcom/sec/epdg/EpdgService;->access$11400(Lcom/sec/epdg/EpdgService;I)V

    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgWfcProfileReader;->getInstance()Lcom/sec/epdg/EpdgWfcProfileReader;

    move-result-object v3

    # getter for: Lcom/sec/epdg/EpdgService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$2600()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/epdg/EpdgService$WfcProfileTask;->mSsid:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Lcom/sec/epdg/EpdgWfcProfileReader;->checkWfcProfileStatus(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .end local v2    # "wfc_state":I
    :goto_0
    :try_start_1
    const-string v3, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WfcProfileTask:doInBackground - completed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, v1}, Ljava/lang/Boolean;-><init>(Z)V

    monitor-exit v4

    return-object v3

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/database/CursorIndexOutOfBoundsException;
    const-string v3, "[EPDGService]"

    const-string v5, "WfcProfileTask:doInBackground - CursorIndexOutOfBoundsException"

    invoke-static {v3, v5}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/database/CursorIndexOutOfBoundsException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/database/CursorIndexOutOfBoundsException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    const-string v3, "[EPDGService]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unhandled exception in reading Content Provider objects:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/sec/epdg/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const-string v0, "[EPDGService]"

    const-string v1, "WfcProfileTask:doInBackground - started"

    invoke-static {v0, v1}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/sec/epdg/EpdgService$WfcProfileTask;->doExec()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/epdg/EpdgService$WfcProfileTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const-string v1, "[EPDGService]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WfcProfileTask:onPostExecute: result is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[EPDGService]"

    const-string v2, "AP WFC enable"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    # getter for: Lcom/sec/epdg/EpdgService;->mEpdgHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->access$1500()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x4b

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    const/4 v1, 0x0

    # setter for: Lcom/sec/epdg/EpdgService;->mWfcProfileTask:Lcom/sec/epdg/EpdgService$WfcProfileTask;
    invoke-static {v1}, Lcom/sec/epdg/EpdgService;->access$3102(Lcom/sec/epdg/EpdgService$WfcProfileTask;)Lcom/sec/epdg/EpdgService$WfcProfileTask;

    return-void

    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const-string v1, "[EPDGService]"

    const-string v2, "AP WFC disable"

    invoke-static {v1, v2}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .restart local v0    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/sec/epdg/EpdgService$WfcProfileTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
