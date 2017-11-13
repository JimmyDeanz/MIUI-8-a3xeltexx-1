.class Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$1;
.super Ljava/lang/Object;
.source "TelephonyConnector.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;


# direct methods
.method constructor <init>(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$1;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$1;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-static {p2}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    move-result-object v5

    iput-object v5, v4, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    iget-object v4, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$1;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    iget-object v4, v4, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$1;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    # getter for: Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->registerCallbacks:Z
    invoke-static {v4}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->access$100(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    :try_start_1
    const-string v4, "com.android.internal.telephony.PhoneFactory"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .local v3, "phoneFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "getDefaultPhone"

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "getDefaultPhone":Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$1;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    const/4 v6, 0x0

    const/4 v4, 0x0

    check-cast v4, [Ljava/lang/Object;

    invoke-virtual {v2, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, v5, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->phone:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "getDefaultPhone":Ljava/lang/reflect/Method;
    .end local v3    # "phoneFactoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$1;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    iget-object v4, v4, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    iget-object v5, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$1;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    # getter for: Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mCallback:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephonyCallback;
    invoke-static {v5}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->access$200(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;)Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephonyCallback;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;->registerCallBack(Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephonyCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_1
    :try_start_3
    monitor-exit p0

    :goto_2
    return-void

    :cond_1
    iget-object v4, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$1;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    # invokes: Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->scheduleRebind()V
    invoke-static {v4}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->access$000(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;)V

    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string v4, "ItsOnOEM.TelephonyConnector"

    const-string v5, "Unable to get phone proxy"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .local v1, "e1":Landroid/os/RemoteException;
    const-string v4, "ItsOnOEM.TelephonyConnector"

    const-string v5, "Remote failed: registerCallBack"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$1;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->mIoTelephony:Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephony;

    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$1;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    iget-boolean v0, v0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->keepBind:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$1;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    # invokes: Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->scheduleRebind()V
    invoke-static {v0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->access$000(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;)V

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
