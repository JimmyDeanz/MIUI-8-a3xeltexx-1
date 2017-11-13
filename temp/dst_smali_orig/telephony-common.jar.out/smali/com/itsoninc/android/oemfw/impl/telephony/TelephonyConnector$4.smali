.class Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$4;
.super Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephonyCallback$Stub;
.source "TelephonyConnector.java"


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
    iput-object p1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$4;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-direct {p0}, Lcom/itsoninc/android/oemfw/api/v17/IItsOnTelephonyCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public setMobileDataEnable(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$4;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    # getter for: Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->telephonyHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->access$400(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$4;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    # getter for: Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->telephonyHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->access$400(Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setPreferredNetworkType(I)V
    .locals 7
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$4;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    iget-object v2, v2, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->phone:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "setPreferredNetworkType"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/os/Message;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .local v1, "setPreferredNetworkType":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$4;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    iget-object v2, v2, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->phone:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "setPreferredNetworkType":Ljava/lang/reflect/Method;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ItsOnOEM.TelephonyConnector"

    const-string v3, "Unable to set preferred network type"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public trySetupData()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector$4;->this$0:Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;

    invoke-virtual {v0}, Lcom/itsoninc/android/oemfw/impl/telephony/TelephonyConnector;->trySetupData()V

    return-void
.end method
