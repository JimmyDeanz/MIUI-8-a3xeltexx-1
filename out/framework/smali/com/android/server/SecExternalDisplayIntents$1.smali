.class Lcom/android/server/SecExternalDisplayIntents$1;
.super Landroid/content/BroadcastReceiver;
.source "SecExternalDisplayIntents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayIntents;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecExternalDisplayIntents;


# direct methods
.method constructor <init>(Lcom/android/server/SecExternalDisplayIntents;)V
    .locals 0

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 224
    const/4 v9, -0x1

    .line 225
    .local v9, "value":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "action":Ljava/lang/String;
    :try_start_0
    iget-object v10, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    # getter for: Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;
    invoke-static {v10}, Lcom/android/server/SecExternalDisplayIntents;->access$000(Lcom/android/server/SecExternalDisplayIntents;)Ljava/util/HashMap;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 228
    .local v0, "IntentInfo":I
    const-string v10, "SecExternalDisplayIntents_Java"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Intent Recieved ..  -"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "BroadCast Map value - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->toStatus(I)Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    move-result-object v10

    if-nez v10, :cond_1

    .line 388
    .end local v0    # "IntentInfo":I
    :cond_0
    :goto_0
    return-void

    .line 232
    .restart local v0    # "IntentInfo":I
    :cond_1
    sget-object v10, Lcom/android/server/SecExternalDisplayIntents$2;->$SwitchMap$com$android$server$SecExternalDisplayIntents$EDSRecievedIntent:[I

    invoke-static {v0}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->toStatus(I)Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto :goto_0

    .line 235
    :pswitch_0
    sget-boolean v10, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v10, :cond_2

    .line 236
    const-string v10, "SecExternalDisplayIntents_Java"

    const-string v11, "entered HDMI Case"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_2
    const-string/jumbo v10, "state"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 238
    .local v7, "bStatus":Z
    iget-object v10, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v10, v10, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v10, v7}, Lcom/android/server/SecExternalDisplayService;->handleHDMIConnection(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 384
    .end local v0    # "IntentInfo":I
    .end local v7    # "bStatus":Z
    :catch_0
    move-exception v8

    .line 386
    .local v8, "e":Ljava/lang/Exception;
    const-string v10, "SecExternalDisplayIntents_Java"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception at :: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v0    # "IntentInfo":I
    :pswitch_1
    :try_start_1
    sget-boolean v10, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v10, :cond_3

    .line 243
    const-string v10, "SecExternalDisplayIntents_Java"

    const-string v11, "entered rear camera Case"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_3
    iget-object v10, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    sget-object v11, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->REAR:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    invoke-virtual {v11}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->ordinal()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/SecExternalDisplayIntents;->handleCameraConnection(I)Z

    goto :goto_0

    .line 248
    :pswitch_2
    sget-boolean v10, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v10, :cond_4

    .line 249
    const-string v10, "SecExternalDisplayIntents_Java"

    const-string v11, "entered Front Case"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_4
    iget-object v10, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    sget-object v11, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->FRONT:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    invoke-virtual {v11}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->ordinal()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/SecExternalDisplayIntents;->handleCameraConnection(I)Z

    goto :goto_0

    .line 254
    :pswitch_3
    sget-boolean v10, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v10, :cond_5

    .line 255
    const-string v10, "SecExternalDisplayIntents_Java"

    const-string v11, "entered Camera Stop Case"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_5
    iget-object v10, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    sget-object v11, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->STOP:Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;

    invoke-virtual {v11}, Lcom/android/server/SecExternalDisplayOrientation$EDS_CameraStatus;->ordinal()I

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/SecExternalDisplayIntents;->handleCameraConnection(I)Z

    goto/16 :goto_0

    .line 260
    :pswitch_4
    sget-boolean v10, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v10, :cond_6

    .line 261
    const-string v10, "SecExternalDisplayIntents_Java"

    const-string v11, "entered RVF Case"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_6
    const-string/jumbo v10, "running"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 263
    .local v6, "bRVFStatus":Z
    iget-object v10, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    invoke-virtual {v10, v6}, Lcom/android/server/SecExternalDisplayIntents;->handleRVFConnection(Z)Z

    goto/16 :goto_0

    .line 267
    .end local v6    # "bRVFStatus":Z
    :pswitch_5
    sget-boolean v10, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v10, :cond_7

    .line 268
    const-string v10, "SecExternalDisplayIntents_Java"

    const-string v11, "entered WFD Case"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_7
    const-string/jumbo v10, "state"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 270
    .local v3, "bAllShareCastConnectedFlag":I
    iget-object v10, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v10, v10, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v10, v3}, Lcom/android/server/SecExternalDisplayService;->handleWFDConnection(I)Z

    goto/16 :goto_0

    .line 276
    .end local v3    # "bAllShareCastConnectedFlag":I
    :pswitch_6
    sget-boolean v10, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v10, :cond_8

    .line 277
    const-string v10, "SecExternalDisplayIntents_Java"

    const-string v11, "entered Camera Start Case"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_8
    iget-object v10, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v10, v10, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/SecExternalDisplayService;->handleAlarm(Z)Z

    goto/16 :goto_0

    .line 284
    :pswitch_7
    sget-boolean v10, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v10, :cond_9

    .line 285
    const-string v10, "SecExternalDisplayIntents_Java"

    const-string v11, "entered Camera Stop Case"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_9
    iget-object v10, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v10, v10, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/SecExternalDisplayService;->handleAlarm(Z)Z

    goto/16 :goto_0

    .line 290
    :pswitch_8
    sget-boolean v10, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v10, :cond_a

    .line 291
    const-string v10, "SecExternalDisplayIntents_Java"

    const-string v11, "entered SideSync Connected Case"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_a
    iget-object v10, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/SecExternalDisplayIntents;->handleSideSyncConnection(Z)Z

    goto/16 :goto_0

    .line 296
    :pswitch_9
    sget-boolean v10, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v10, :cond_b

    .line 297
    const-string v10, "SecExternalDisplayIntents_Java"

    const-string v11, "entered SideSync DC Case"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_b
    iget-object v10, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/SecExternalDisplayIntents;->handleSideSyncConnection(Z)Z

    goto/16 :goto_0

    .line 303
    :pswitch_a
    sget-boolean v10, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v10, :cond_c

    .line 304
    const-string v10, "SecExternalDisplayIntents_Java"

    const-string v11, "entered ScreenRecorder Case"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    :cond_c
    const/4 v1, 0x0

    .line 306
    .local v1, "SRState":Ljava/lang/String;
    const-string v10, "IsRunning"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 307
    const-string v10, "SecExternalDisplayIntents_Java"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ScreenRecorder State is: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string/jumbo v10, "run"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 310
    iget-object v10, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v10, v10, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v11, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SCREENRECORDING:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v11}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v11

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    goto/16 :goto_0

    .line 311
    :cond_d
    const-string/jumbo v10, "stop"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 312
    iget-object v10, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v10, v10, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    sget-object v11, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->EDS_CONNECTION_STATUS_SCREENRECORDING:Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;

    invoke-virtual {v11}, Lcom/android/server/SecExternalDisplayService$EDSFlagStatus;->ordinal()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SecExternalDisplayService;->SecExternalDisplaySetStatus(IZ)Z

    goto/16 :goto_0

    .line 316
    .end local v1    # "SRState":Ljava/lang/String;
    :pswitch_b
    sget-boolean v10, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v10, :cond_e

    .line 317
    const-string v10, "SecExternalDisplayIntents_Java"

    const-string v11, "entered SmartDock Case"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_e
    const-string v10, "android.intent.extra.device_state"

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 319
    .local v5, "bMouseDockedFlag":I
    const-string/jumbo v10, "sys.hmt.connected"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 320
    .local v4, "bHMTConnection":Z
    const-string v10, "SecExternalDisplayIntents_Java"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Smart Dock Event Received !!!!!  Dock Status :  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " HMT Status :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    if-nez v4, :cond_0

    .line 322
    iget-object v10, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v10, v10, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v10, v5}, Lcom/android/server/SecExternalDisplayService;->handleSmartDockConnection(I)Z

    goto/16 :goto_0

    .line 326
    .end local v4    # "bHMTConnection":Z
    .end local v5    # "bMouseDockedFlag":I
    :pswitch_c
    sget-boolean v10, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v10, :cond_0

    .line 327
    const-string v10, "SecExternalDisplayIntents_Java"

    const-string v11, "entered ScreenLock Case"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 335
    :pswitch_d
    sget-boolean v10, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v10, :cond_0

    .line 336
    const-string v10, "SecExternalDisplayIntents_Java"

    const-string v11, "entered Screen Unlocked Case"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 344
    :pswitch_e
    sget-boolean v10, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v10, :cond_f

    .line 345
    const-string v10, "SecExternalDisplayIntents_Java"

    const-string v11, "Entered Video Start Case"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_f
    iget-object v10, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v10, v10, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/SecExternalDisplayService;->handleVideo(Z)Z

    goto/16 :goto_0

    .line 352
    :pswitch_f
    sget-boolean v10, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v10, :cond_10

    .line 353
    const-string v10, "SecExternalDisplayIntents_Java"

    const-string v11, "Entered Video Stop Case"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_10
    iget-object v10, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v10, v10, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/SecExternalDisplayService;->handleVideo(Z)Z

    goto/16 :goto_0

    .line 360
    :pswitch_10
    sget-boolean v10, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v10, :cond_11

    .line 361
    const-string v10, "SecExternalDisplayIntents_Java"

    const-string v11, "entered Presentation Start Case"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_11
    iget-object v10, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v10, v10, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/SecExternalDisplayService;->handlePresentation(Z)V

    goto/16 :goto_0

    .line 366
    :pswitch_11
    sget-boolean v10, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v10, :cond_12

    .line 367
    const-string v10, "SecExternalDisplayIntents_Java"

    const-string v11, "entered Presentation Stop Case"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :cond_12
    iget-object v10, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    iget-object v10, v10, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/SecExternalDisplayService;->handlePresentation(Z)V

    goto/16 :goto_0

    .line 372
    :pswitch_12
    sget-boolean v10, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v10, :cond_13

    .line 373
    const-string v10, "SecExternalDisplayIntents_Java"

    const-string v11, "Entered Kddi auShareLink connect case"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_13
    iget-object v10, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/server/SecExternalDisplayIntents;->handleKddiAuShareLink(Z)Z

    goto/16 :goto_0

    .line 378
    :pswitch_13
    sget-boolean v10, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v10, :cond_14

    .line 379
    const-string v10, "SecExternalDisplayIntents_Java"

    const-string v11, "Entered Kddi auShareLink disconnect case"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_14
    iget-object v10, p0, Lcom/android/server/SecExternalDisplayIntents$1;->this$0:Lcom/android/server/SecExternalDisplayIntents;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/server/SecExternalDisplayIntents;->handleKddiAuShareLink(Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch
.end method
