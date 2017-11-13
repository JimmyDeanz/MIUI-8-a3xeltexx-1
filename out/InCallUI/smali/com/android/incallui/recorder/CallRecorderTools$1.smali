.class Lcom/android/incallui/recorder/CallRecorderTools$1;
.super Ljava/lang/Object;
.source "CallRecorderTools.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/recorder/CallRecorderTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/recorder/CallRecorderTools;


# direct methods
.method constructor <init>(Lcom/android/incallui/recorder/CallRecorderTools;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/incallui/recorder/CallRecorderTools$1;->this$0:Lcom/android/incallui/recorder/CallRecorderTools;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 84
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderTools$1;->this$0:Lcom/android/incallui/recorder/CallRecorderTools;

    invoke-static {p2}, Lcom/android/incallui/recorder/ICallRecorderCommand$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/incallui/recorder/ICallRecorderCommand;

    move-result-object v4

    # setter for: Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderService:Lcom/android/incallui/recorder/ICallRecorderCommand;
    invoke-static {v3, v4}, Lcom/android/incallui/recorder/CallRecorderTools;->access$102(Lcom/android/incallui/recorder/CallRecorderTools;Lcom/android/incallui/recorder/ICallRecorderCommand;)Lcom/android/incallui/recorder/ICallRecorderCommand;

    .line 86
    :try_start_0
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderTools$1;->this$0:Lcom/android/incallui/recorder/CallRecorderTools;

    # getter for: Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderService:Lcom/android/incallui/recorder/ICallRecorderCommand;
    invoke-static {v3}, Lcom/android/incallui/recorder/CallRecorderTools;->access$100(Lcom/android/incallui/recorder/CallRecorderTools;)Lcom/android/incallui/recorder/ICallRecorderCommand;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/recorder/CallRecorderTools$1;->this$0:Lcom/android/incallui/recorder/CallRecorderTools;

    # getter for: Lcom/android/incallui/recorder/CallRecorderTools;->mRecorderCallback:Lcom/android/incallui/recorder/CallRecorderTools$RecorderCallback;
    invoke-static {v4}, Lcom/android/incallui/recorder/CallRecorderTools;->access$200(Lcom/android/incallui/recorder/CallRecorderTools;)Lcom/android/incallui/recorder/CallRecorderTools$RecorderCallback;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/incallui/recorder/ICallRecorderCommand;->registerCallback(Lcom/android/incallui/recorder/IRecorderCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    :goto_0
    iget-object v3, p0, Lcom/android/incallui/recorder/CallRecorderTools$1;->this$0:Lcom/android/incallui/recorder/CallRecorderTools;

    # getter for: Lcom/android/incallui/recorder/CallRecorderTools;->mListeners:Ljava/util/Set;
    invoke-static {v3}, Lcom/android/incallui/recorder/CallRecorderTools;->access$300(Lcom/android/incallui/recorder/CallRecorderTools;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/recorder/CallRecorderToolsListener;

    .line 91
    .local v2, "listener":Lcom/android/incallui/recorder/CallRecorderToolsListener;
    invoke-interface {v2}, Lcom/android/incallui/recorder/CallRecorderToolsListener;->callStartWaitingRecord()V

    goto :goto_1

    .line 87
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/incallui/recorder/CallRecorderToolsListener;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "mRecorderService.registerCallback RemoteException"

    invoke-static {p0, v3, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 93
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 97
    const-string v0, "RecorderService has disconnected"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    return-void
.end method
