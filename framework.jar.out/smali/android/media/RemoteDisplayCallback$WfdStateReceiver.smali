.class Landroid/media/RemoteDisplayCallback$WfdStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RemoteDisplayCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteDisplayCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WfdStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/RemoteDisplayCallback;


# direct methods
.method private constructor <init>(Landroid/media/RemoteDisplayCallback;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/RemoteDisplayCallback;Landroid/media/RemoteDisplayCallback$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/media/RemoteDisplayCallback;
    .param p2, "x1"    # Landroid/media/RemoteDisplayCallback$1;

    .prologue
    .line 219
    invoke-direct {p0, p1}, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;-><init>(Landroid/media/RemoteDisplayCallback;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 222
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "action":Ljava/lang/String;
    const-string v10, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 226
    const-string v10, "Control"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 227
    .local v8, "strSessionControl":Ljava/lang/String;
    if-eqz v8, :cond_0

    const-string/jumbo v10, "terminate"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 228
    # getter for: Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 229
    # getter for: Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v10

    invoke-interface {v10}, Landroid/media/RemoteDisplayCallback$Listener;->onTerminateRequested()V

    .line 321
    .end local v8    # "strSessionControl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    const-string v10, "com.samsung.wfd.LAUNCH_WFD_UPDATE"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 234
    const-string v10, "RemoteDisplayCallback"

    const-string/jumbo v11, "send command: UpdateUserInput >> 1"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v10, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v11, "upgd"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    # invokes: Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v10, v11, v12}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 236
    :cond_2
    const-string v10, "android.intent.action.WIFI_DISPLAY_UPDATE_INPUT_FROM_APP"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 237
    const-string v10, "RemoteDisplayCallback"

    const-string/jumbo v11, "send command: UpdateUserInput >> 0"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-object v10, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v11, "upgd"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    # invokes: Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v10, v11, v12}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 239
    :cond_3
    const-string v10, "android.intent.action.WIFI_DISPLAY_TCP_TRANSPORT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 244
    const/4 v10, 0x1

    # setter for: Landroid/media/RemoteDisplayCallback;->mWfdMode:I
    invoke-static {v10}, Landroid/media/RemoteDisplayCallback;->access$302(I)I

    .line 245
    iget-object v10, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v11, "tcp"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    # invokes: Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v10, v11, v12}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 246
    :cond_4
    const-string v10, "android.intent.action.WIFI_DISPLAY_UDP_TRANSPORT"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 251
    const/4 v10, 0x0

    # setter for: Landroid/media/RemoteDisplayCallback;->mWfdMode:I
    invoke-static {v10}, Landroid/media/RemoteDisplayCallback;->access$302(I)I

    .line 252
    iget-object v10, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v11, "udp"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    # invokes: Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v10, v11, v12}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 253
    :cond_5
    const-string v10, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 256
    const-string v10, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 257
    .local v2, "audio_type":I
    const-string v10, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 261
    .local v3, "currVolume":I
    const/4 v10, 0x3

    if-ne v2, v10, :cond_0

    .line 262
    iget-object v10, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->mStreamVol:I
    invoke-static {v10}, Landroid/media/RemoteDisplayCallback;->access$400(Landroid/media/RemoteDisplayCallback;)I

    move-result v10

    if-ne v10, v3, :cond_6

    .line 263
    const-string v10, "RemoteDisplayCallback"

    const-string/jumbo v11, "same volume! skip to send command!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 265
    :cond_6
    # getter for: Landroid/media/RemoteDisplayCallback;->mWfdMode:I
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$300()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    .line 266
    iget-object v10, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # setter for: Landroid/media/RemoteDisplayCallback;->mStreamVol:I
    invoke-static {v10, v3}, Landroid/media/RemoteDisplayCallback;->access$402(Landroid/media/RemoteDisplayCallback;I)I

    .line 267
    const-string v10, "RemoteDisplayCallback"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "send command: curr stream vol:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->mStreamVol:I
    invoke-static {v12}, Landroid/media/RemoteDisplayCallback;->access$400(Landroid/media/RemoteDisplayCallback;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v10, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v11, "vol"

    iget-object v12, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    # getter for: Landroid/media/RemoteDisplayCallback;->mStreamVol:I
    invoke-static {v12}, Landroid/media/RemoteDisplayCallback;->access$400(Landroid/media/RemoteDisplayCallback;)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    # invokes: Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v10, v11, v12}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 271
    .end local v2    # "audio_type":I
    .end local v3    # "currVolume":I
    :cond_7
    const-string v10, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 272
    const-string/jumbo v10, "state"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 273
    const-string/jumbo v10, "state"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_0

    .line 275
    const-string/jumbo v10, "state"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    # getter for: Landroid/media/RemoteDisplayCallback;->mWfdMode:I
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$300()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    # getter for: Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$500()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 277
    # getter for: Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 278
    # getter for: Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v10

    invoke-interface {v10}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V

    goto/16 :goto_0

    .line 282
    :cond_8
    const-string v10, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 283
    const-string v10, "android.bluetooth.profile.extra.STATE"

    const/4 v11, 0x2

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 284
    .local v7, "state":I
    const-string v10, "RemoteDisplayCallback"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "action << WIFIDISPLAY_BLUETOOTH_HEADSET_ACTION, state : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "MODE : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Landroid/media/RemoteDisplayCallback;->mWfdMode:I
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$300()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v10, 0x2

    if-ne v7, v10, :cond_0

    .line 287
    :try_start_0
    const-string v10, "RemoteDisplayCallback"

    const-string v11, "Thead on"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    const-wide/16 v10, 0x7d0

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    .line 289
    const-string v10, "RemoteDisplayCallback"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mAudioManager.isBluetoothA2dpOn() : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    # getter for: Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$600()Landroid/media/AudioManager;

    move-result-object v12

    invoke-virtual {v12}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    # getter for: Landroid/media/RemoteDisplayCallback;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$600()Landroid/media/AudioManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v10

    if-eqz v10, :cond_0

    # getter for: Landroid/media/RemoteDisplayCallback;->mWfdMode:I
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$300()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    # getter for: Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$500()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 291
    const-string v10, "RemoteDisplayCallback"

    const-string/jumbo v11, "isBluetoothA2dpOn()"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    # getter for: Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 293
    # getter for: Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v10

    invoke-interface {v10}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 296
    :catch_0
    move-exception v5

    .line 297
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v10, "RemoteDisplayCallback"

    const-string v11, "Thread exception!!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 300
    .end local v5    # "e":Ljava/lang/InterruptedException;
    .end local v7    # "state":I
    :cond_9
    const-string v10, "android.intent.action.MAR_SLAVE_SMB"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 301
    const-string/jumbo v10, "maxBitrate"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 302
    .local v6, "maxBitrate":I
    if-lez v6, :cond_0

    .line 303
    const-string v10, "RemoteDisplayCallback"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "action << android.intent.action.MAR_SLAVE_SMB : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iget-object v10, p0, Landroid/media/RemoteDisplayCallback$WfdStateReceiver;->this$0:Landroid/media/RemoteDisplayCallback;

    const-string/jumbo v11, "smb"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    # invokes: Landroid/media/RemoteDisplayCallback;->sendCmd(Ljava/lang/String;Ljava/lang/Object;)V
    invoke-static {v10, v11, v12}, Landroid/media/RemoteDisplayCallback;->access$200(Landroid/media/RemoteDisplayCallback;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 306
    .end local v6    # "maxBitrate":I
    :cond_a
    const-string v10, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 308
    const-string v10, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 309
    .local v9, "stream":I
    const-string v10, "android.media.EXTRA_VOLUME_STREAM_DEVICES"

    const/4 v11, -0x1

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 311
    .local v4, "devices":I
    const-string v10, "android.media.EXTRA_VOLUME_STREAM_MUSIC_ADDRESS"

    const-string v11, ""

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 312
    .local v1, "address":Ljava/lang/String;
    const-string v10, "RemoteDisplayCallback"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " stream use "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    const v10, 0x8000

    if-eq v4, v10, :cond_0

    # getter for: Landroid/media/RemoteDisplayCallback;->mWfdMode:I
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$300()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    # getter for: Landroid/media/RemoteDisplayCallback;->mIsVideoCase:Z
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$500()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 316
    # getter for: Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 317
    # getter for: Landroid/media/RemoteDisplayCallback;->mListener:Landroid/media/RemoteDisplayCallback$Listener;
    invoke-static {}, Landroid/media/RemoteDisplayCallback;->access$100()Landroid/media/RemoteDisplayCallback$Listener;

    move-result-object v10

    invoke-interface {v10}, Landroid/media/RemoteDisplayCallback$Listener;->onHeadSetConnected()V

    goto/16 :goto_0
.end method
