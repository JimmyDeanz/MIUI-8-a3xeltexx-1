.class final Lcom/android/server/midi/MidiService$Client;
.super Ljava/lang/Object;
.source "MidiService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/midi/MidiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Client"
.end annotation


# instance fields
.field private final mDeviceConnections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/midi/MidiService$DeviceConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/midi/IMidiDeviceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPid:I

.field private final mToken:Landroid/os/IBinder;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;Landroid/os/IBinder;)V
    .locals 1
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/android/server/midi/MidiService$Client;->this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    .line 135
    iput-object p2, p0, Lcom/android/server/midi/MidiService$Client;->mToken:Landroid/os/IBinder;

    .line 136
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    .line 137
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    iput v0, p0, Lcom/android/server/midi/MidiService$Client;->mPid:I

    .line 138
    return-void
.end method

.method private close()V
    .locals 5

    .prologue
    .line 222
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Client;->this$0:Lcom/android/server/midi/MidiService;

    # getter for: Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/midi/MidiService;->access$200(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3

    .line 223
    :try_start_0
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Client;->this$0:Lcom/android/server/midi/MidiService;

    # getter for: Lcom/android/server/midi/MidiService;->mClients:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/midi/MidiService;->access$200(Lcom/android/server/midi/MidiService;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/midi/MidiService$Client;->mToken:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Client;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    invoke-interface {v2, p0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 225
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 227
    iget-object v2, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 228
    .local v0, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$DeviceConnection;->getDevice()Lcom/android/server/midi/MidiService$Device;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/midi/MidiService$Device;->removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V

    goto :goto_0

    .line 225
    .end local v0    # "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 230
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method public addDeviceConnection(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/IMidiDeviceOpenCallback;)V
    .locals 3
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;
    .param p2, "callback"    # Landroid/media/midi/IMidiDeviceOpenCallback;

    .prologue
    .line 156
    new-instance v0, Lcom/android/server/midi/MidiService$DeviceConnection;

    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {v0, v1, p1, p0, p2}, Lcom/android/server/midi/MidiService$DeviceConnection;-><init>(Lcom/android/server/midi/MidiService;Lcom/android/server/midi/MidiService$Device;Lcom/android/server/midi/MidiService$Client;Landroid/media/midi/IMidiDeviceOpenCallback;)V

    .line 157
    .local v0, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$DeviceConnection;->getToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {p1, v0}, Lcom/android/server/midi/MidiService$Device;->addDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V

    .line 159
    return-void
.end method

.method public addListener(Landroid/media/midi/IMidiDeviceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public binderDied()V
    .locals 3

    .prologue
    .line 234
    const-string v0, "MidiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Client died: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-direct {p0}, Lcom/android/server/midi/MidiService$Client;->close()V

    .line 236
    return-void
.end method

.method public deviceAdded(Lcom/android/server/midi/MidiService$Device;)V
    .locals 6
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;

    .prologue
    .line 182
    iget v4, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    invoke-virtual {p1, v4}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    .line 186
    .local v0, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/midi/IMidiDeviceListener;

    .line 187
    .local v3, "listener":Landroid/media/midi/IMidiDeviceListener;
    invoke-interface {v3, v0}, Landroid/media/midi/IMidiDeviceListener;->onDeviceAdded(Landroid/media/midi/MidiDeviceInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 189
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Landroid/media/midi/IMidiDeviceListener;
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "MidiService"

    const-string v5, "remote exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deviceRemoved(Lcom/android/server/midi/MidiService$Device;)V
    .locals 6
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;

    .prologue
    .line 196
    iget v4, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    invoke-virtual {p1, v4}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 198
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v0

    .line 200
    .local v0, "deviceInfo":Landroid/media/midi/MidiDeviceInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/midi/IMidiDeviceListener;

    .line 201
    .local v3, "listener":Landroid/media/midi/IMidiDeviceListener;
    invoke-interface {v3, v0}, Landroid/media/midi/IMidiDeviceListener;->onDeviceRemoved(Landroid/media/midi/MidiDeviceInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 203
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Landroid/media/midi/IMidiDeviceListener;
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "MidiService"

    const-string v5, "remote exception"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public deviceStatusChanged(Lcom/android/server/midi/MidiService$Device;Landroid/media/midi/MidiDeviceStatus;)V
    .locals 5
    .param p1, "device"    # Lcom/android/server/midi/MidiService$Device;
    .param p2, "status"    # Landroid/media/midi/MidiDeviceStatus;

    .prologue
    .line 210
    iget v3, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    invoke-virtual {p1, v3}, Lcom/android/server/midi/MidiService$Device;->isUidAllowed(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/midi/IMidiDeviceListener;

    .line 214
    .local v2, "listener":Landroid/media/midi/IMidiDeviceListener;
    invoke-interface {v2, p2}, Landroid/media/midi/IMidiDeviceListener;->onDeviceStatusChanged(Landroid/media/midi/MidiDeviceStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 216
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Landroid/media/midi/IMidiDeviceListener;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "MidiService"

    const-string v4, "remote exception"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    return v0
.end method

.method public removeDeviceConnection(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 163
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 164
    .local v0, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$DeviceConnection;->getDevice()Lcom/android/server/midi/MidiService$Device;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/midi/MidiService$Device;->removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V

    .line 167
    :cond_0
    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 168
    invoke-direct {p0}, Lcom/android/server/midi/MidiService$Client;->close()V

    .line 170
    :cond_1
    return-void
.end method

.method public removeDeviceConnection(Lcom/android/server/midi/MidiService$DeviceConnection;)V
    .locals 2
    .param p1, "connection"    # Lcom/android/server/midi/MidiService$DeviceConnection;

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/midi/MidiService$DeviceConnection;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/android/server/midi/MidiService$Client;->close()V

    .line 178
    :cond_0
    return-void
.end method

.method public removeListener(Landroid/media/midi/IMidiDeviceListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/midi/IMidiDeviceListener;

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 150
    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-direct {p0}, Lcom/android/server/midi/MidiService$Client;->close()V

    .line 153
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Client: UID: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 241
    .local v2, "sb":Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/android/server/midi/MidiService$Client;->mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 242
    const-string v3, " PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    iget v3, p0, Lcom/android/server/midi/MidiService$Client;->mPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    const-string v3, " listener count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Client;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    const-string v3, " Device Connections:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-object v3, p0, Lcom/android/server/midi/MidiService$Client;->mDeviceConnections:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/midi/MidiService$DeviceConnection;

    .line 248
    .local v0, "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    const-string v3, " <device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Lcom/android/server/midi/MidiService$DeviceConnection;->getDevice()Lcom/android/server/midi/MidiService$Device;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/midi/MidiService$Device;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/midi/MidiDeviceInfo;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 252
    .end local v0    # "connection":Lcom/android/server/midi/MidiService$DeviceConnection;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
