.class Lcom/android/phone/NetworkQueryService$2;
.super Lcom/android/phone/INetworkQueryService$Stub;
.source "NetworkQueryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkQueryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkQueryService;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkQueryService;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    invoke-direct {p0}, Lcom/android/phone/INetworkQueryService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;I)V
    .locals 4
    .param p1, "cb"    # Lcom/android/phone/INetworkQueryServiceCallback;
    .param p2, "phoneId"    # I

    .prologue
    .line 110
    if-eqz p1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v2, v1, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v1, v1, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registering callback "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$100(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    # getter for: Lcom/android/phone/NetworkQueryService;->mState:I
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$300(Lcom/android/phone/NetworkQueryService;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 139
    :goto_0
    monitor-exit v2

    .line 141
    :cond_0
    return-void

    .line 120
    :pswitch_0
    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 121
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 122
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v1, v1, Lcom/android/phone/NetworkQueryService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 124
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    const/4 v3, -0x2

    # setter for: Lcom/android/phone/NetworkQueryService;->mState:I
    invoke-static {v1, v3}, Lcom/android/phone/NetworkQueryService;->access$302(Lcom/android/phone/NetworkQueryService;I)I

    .line 125
    const-string v1, "starting new query"

    # invokes: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 128
    .restart local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    :try_start_1
    const-string v1, "phone is null"

    # invokes: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$100(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :pswitch_1
    const-string v1, "query already in progress"

    # invokes: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$100(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/phone/INetworkQueryServiceCallback;

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Lcom/android/phone/NetworkQueryService$2;->unregisterCallback(Lcom/android/phone/INetworkQueryServiceCallback;)V

    .line 155
    return-void
.end method

.method public unregisterCallback(Lcom/android/phone/INetworkQueryServiceCallback;)V
    .locals 3
    .param p1, "cb"    # Lcom/android/phone/INetworkQueryServiceCallback;

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v1, v0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 163
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregistering callback "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/NetworkQueryService;->access$100(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v0, v0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 165
    monitor-exit v1

    .line 167
    :cond_0
    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
