.class public Lcom/android/incallui/CallToolsPresenter;
.super Lcom/android/incallui/Presenter;
.source "CallToolsPresenter.java"

# interfaces
.implements Lcom/android/incallui/AudioModeProvider$AudioModeListener;
.implements Lcom/android/incallui/CallList$ActiveSubChangeListener;
.implements Lcom/android/incallui/InCallCameraManager$CameraSelectionListener;
.implements Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/CallToolsPresenter$CallToolsUi;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/CallToolsPresenter$CallToolsUi;",
        ">;",
        "Lcom/android/incallui/AudioModeProvider$AudioModeListener;",
        "Lcom/android/incallui/CallList$ActiveSubChangeListener;",
        "Lcom/android/incallui/InCallCameraManager$CameraSelectionListener;",
        "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;"
    }
.end annotation


# instance fields
.field private isMute:Z

.field private isVideoCall:Z

.field private mAutomaticallyMuted:Z

.field private mCall:Lcom/android/incallui/Call;

.field private mConferenceModeOn:Z

.field private mLastCallKey:Ljava/lang/String;

.field private mLastOrientation:I

.field private mMode:I

.field private mNeedRecord:Z

.field private mPreviousFgCallState:I

.field private mPreviousMuteState:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 33
    iput-boolean v1, p0, Lcom/android/incallui/CallToolsPresenter;->mAutomaticallyMuted:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/incallui/CallToolsPresenter;->mPreviousMuteState:Z

    .line 35
    iput-boolean v1, p0, Lcom/android/incallui/CallToolsPresenter;->mNeedRecord:Z

    .line 36
    iput v1, p0, Lcom/android/incallui/CallToolsPresenter;->mPreviousFgCallState:I

    .line 38
    iput-boolean v1, p0, Lcom/android/incallui/CallToolsPresenter;->mConferenceModeOn:Z

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/CallToolsPresenter;->mLastCallKey:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/incallui/CallToolsPresenter;->mMode:I

    .line 50
    iput v1, p0, Lcom/android/incallui/CallToolsPresenter;->mLastOrientation:I

    .line 55
    return-void
.end method

.method private isNeedUpdateUI(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)Z
    .locals 3
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;

    .prologue
    .line 180
    iget-object v2, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v2}, Lcom/android/incallui/Call;->getCallKeyForCallPresenter(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "callKey":Ljava/lang/String;
    if-ne p1, p2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/CallToolsPresenter;->mLastCallKey:Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 182
    .local v1, "isCallChanged":Z
    :goto_0
    iput-object v0, p0, Lcom/android/incallui/CallToolsPresenter;->mLastCallKey:Ljava/lang/String;

    .line 183
    return v1

    .line 181
    .end local v1    # "isCallChanged":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 22
    .param p1, "state"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallToolsPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v18

    check-cast v18, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;

    .line 244
    .local v18, "ui":Lcom/android/incallui/CallToolsPresenter$CallToolsUi;
    if-nez v18, :cond_1

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v19

    invoke-static/range {v19 .. v19}, Lcom/android/incallui/CallAdapterUtils;->isVideo(I)Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/CallToolsPresenter;->isVideoCall:Z

    .line 250
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/CallToolsPresenter;->isVideoCall:Z

    move/from16 v19, v0

    if-eqz v19, :cond_9

    const/4 v11, 0x2

    .line 251
    .local v11, "newMode":I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/CallToolsPresenter;->mMode:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-eq v0, v11, :cond_2

    .line 252
    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/incallui/CallToolsPresenter;->mMode:I

    .line 253
    invoke-interface/range {v18 .. v18}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->changeCallToolMode()V

    .line 254
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v11, v0, :cond_a

    .line 255
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/CallToolsPresenter;->isMute:Z

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->setVideoMute(Z)V

    .line 263
    .end local v11    # "newMode":I
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    sget-object v19, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallToolsPresenter;->isVideoCall()Z

    move-result v19

    if-nez v19, :cond_4

    .line 264
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/CallToolsPresenter;->mLastOrientation:I

    move/from16 v19, v0

    const/16 v20, 0x0

    invoke-interface/range {v18 .. v20}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->startRotationAnimator(II)V

    .line 265
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/incallui/CallToolsPresenter;->mLastOrientation:I

    .line 268
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isConnectingOrConnected()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/android/incallui/InCallPresenter$InCallState;->isIncoming()Z

    move-result v19

    if-nez v19, :cond_b

    if-eqz p2, :cond_b

    const/4 v8, 0x1

    .line 271
    .local v8, "isEnabled":Z
    :goto_3
    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->setEnabled(Z)V

    .line 273
    const-string v19, "Updating call UI for call: "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    if-eqz v8, :cond_0

    .line 276
    invoke-static/range {p2 .. p2}, Lcom/android/incallui/CallUtils;->isImsRegistered(Lcom/android/incallui/Call;)Z

    move-result v9

    .line 277
    .local v9, "isImsRegisted":Z
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->isGenericConferenceCall()Z

    move-result v19

    if-eqz v19, :cond_c

    if-nez v9, :cond_c

    const/4 v3, 0x0

    .line 279
    .local v3, "canAdd":Z
    :goto_4
    const/16 v19, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v19

    if-eqz v19, :cond_e

    invoke-static/range {p2 .. p2}, Lcom/android/incallui/CallCapabilitiesUtils;->canHold(Lcom/android/incallui/Call;)Z

    move-result v19

    if-eqz v19, :cond_e

    const/4 v4, 0x1

    .line 280
    .local v4, "enableHoldOption":Z
    :goto_5
    const/16 v19, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v17

    .line 281
    .local v17, "supportHold":Z
    const/16 v19, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v15

    .line 283
    .local v15, "showMergeOption":Z
    move v12, v3

    .line 288
    .local v12, "showAddCallOption":Z
    const/16 v19, 0x8

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->isGenericConferenceCall()Z

    move-result v19

    if-nez v19, :cond_6

    :cond_5
    invoke-static {}, Lcom/android/incallui/CallCapabilitiesUtils;->canSwap()Z

    move-result v19

    if-eqz v19, :cond_f

    :cond_6
    const/16 v16, 0x1

    .line 291
    .local v16, "showSwapOption":Z
    :goto_6
    if-nez v16, :cond_10

    if-eqz v4, :cond_10

    const/4 v13, 0x1

    .line 293
    .local v13, "showHoldOption":Z
    :goto_7
    const/16 v19, 0x40

    move-object/from16 v0, p2

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v19

    if-eqz v19, :cond_11

    invoke-static/range {p2 .. p2}, Lcom/android/incallui/CallCapabilitiesUtils;->canMute(Lcom/android/incallui/Call;)Z

    move-result v19

    if-eqz v19, :cond_11

    const/4 v5, 0x1

    .line 294
    .local v5, "enableMute":Z
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallToolsPresenter;->isVideoCall()Z

    move-result v19

    if-eqz v19, :cond_12

    .line 295
    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->enableVideoMute(Z)V

    .line 301
    :goto_9
    if-nez v13, :cond_7

    if-eqz v16, :cond_13

    :cond_7
    if-eqz v15, :cond_13

    if-eqz v12, :cond_13

    const/4 v7, 0x1

    .line 303
    .local v7, "isCdmaConferenceOverflowScenario":Z
    :goto_a
    if-nez v7, :cond_14

    if-eqz v15, :cond_14

    const/4 v14, 0x1

    .line 305
    .local v14, "showMerge":Z
    :goto_b
    if-eqz v14, :cond_15

    .line 306
    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->showMerge(Z)V

    .line 307
    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->showAddCall(Z)V

    .line 318
    :goto_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/CallToolsPresenter;->isVideoCall:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    .line 319
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_17

    const/16 v19, 0x1

    :goto_d
    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->enableRcsMessageButton(Z)V

    .line 320
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getState()I

    move-result v19

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_18

    const/16 v19, 0x1

    :goto_e
    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->enableSwitchToVoiceButton(Z)V

    .line 323
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/CallToolsPresenter;->maybeShowContactOrVideoButton()V

    .line 325
    if-eqz v13, :cond_1a

    .line 326
    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->showHold(Z)V

    .line 327
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getState()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_19

    const/16 v19, 0x1

    :goto_f
    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->setHold(Z)V

    .line 328
    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->enableHold(Z)V

    .line 329
    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->showSwap(Z)V

    .line 355
    :goto_10
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v19

    if-eqz v19, :cond_1e

    if-nez v7, :cond_1e

    const/4 v10, 0x1

    .line 356
    .local v10, "mShowManageConference":Z
    :goto_11
    const/16 v19, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getSubId()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1f

    const/4 v6, 0x1

    .line 357
    .local v6, "isCDMAPhone":Z
    :goto_12
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 358
    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->showMerge(Z)V

    .line 359
    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->showAddCall(Z)V

    goto/16 :goto_0

    .line 250
    .end local v3    # "canAdd":Z
    .end local v4    # "enableHoldOption":Z
    .end local v5    # "enableMute":Z
    .end local v6    # "isCDMAPhone":Z
    .end local v7    # "isCdmaConferenceOverflowScenario":Z
    .end local v8    # "isEnabled":Z
    .end local v9    # "isImsRegisted":Z
    .end local v10    # "mShowManageConference":Z
    .end local v12    # "showAddCallOption":Z
    .end local v13    # "showHoldOption":Z
    .end local v14    # "showMerge":Z
    .end local v15    # "showMergeOption":Z
    .end local v16    # "showSwapOption":Z
    .end local v17    # "supportHold":Z
    :cond_9
    const/4 v11, 0x1

    goto/16 :goto_1

    .line 257
    .restart local v11    # "newMode":I
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/CallToolsPresenter;->isMute:Z

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->setMute(Z)V

    goto/16 :goto_2

    .line 268
    .end local v11    # "newMode":I
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 277
    .restart local v8    # "isEnabled":Z
    .restart local v9    # "isImsRegisted":Z
    :cond_c
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/TelecomAdapter;->canAddCall()Z

    move-result v19

    if-eqz v19, :cond_d

    invoke-static/range {p2 .. p2}, Lcom/android/incallui/CallCapabilitiesUtils;->canAdd(Lcom/android/incallui/Call;)Z

    move-result v19

    if-eqz v19, :cond_d

    const/4 v3, 0x1

    goto/16 :goto_4

    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 279
    .restart local v3    # "canAdd":Z
    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 288
    .restart local v4    # "enableHoldOption":Z
    .restart local v12    # "showAddCallOption":Z
    .restart local v15    # "showMergeOption":Z
    .restart local v17    # "supportHold":Z
    :cond_f
    const/16 v16, 0x0

    goto/16 :goto_6

    .line 291
    .restart local v16    # "showSwapOption":Z
    :cond_10
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 293
    .restart local v13    # "showHoldOption":Z
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 297
    .restart local v5    # "enableMute":Z
    :cond_12
    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->enableMute(Z)V

    .line 298
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/CallToolsPresenter;->isMute:Z

    move/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->setMute(Z)V

    goto/16 :goto_9

    .line 301
    :cond_13
    const/4 v7, 0x0

    goto/16 :goto_a

    .line 303
    .restart local v7    # "isCdmaConferenceOverflowScenario":Z
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_b

    .line 308
    .restart local v14    # "showMerge":Z
    :cond_15
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/incallui/CallList;->getCurrentCallCount()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_16

    .line 309
    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->showMerge(Z)V

    .line 310
    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->showAddCall(Z)V

    .line 311
    move-object/from16 v0, v18

    invoke-interface {v0, v15}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->enableMerge(Z)V

    goto/16 :goto_c

    .line 313
    :cond_16
    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->showMerge(Z)V

    .line 314
    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->showAddCall(Z)V

    .line 315
    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->enableAddCall(Z)V

    goto/16 :goto_c

    .line 319
    :cond_17
    const/16 v19, 0x0

    goto/16 :goto_d

    .line 320
    :cond_18
    const/16 v19, 0x0

    goto/16 :goto_e

    .line 327
    :cond_19
    const/16 v19, 0x0

    goto/16 :goto_f

    .line 330
    :cond_1a
    if-eqz v16, :cond_1b

    .line 331
    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->showHold(Z)V

    .line 332
    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->showSwap(Z)V

    goto/16 :goto_10

    .line 334
    :cond_1b
    if-eqz v17, :cond_1d

    .line 335
    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->showHold(Z)V

    .line 336
    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->enableHold(Z)V

    .line 337
    invoke-virtual/range {p2 .. p2}, Lcom/android/incallui/Call;->getState()I

    move-result v19

    const/16 v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1c

    const/16 v19, 0x1

    :goto_13
    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->setHold(Z)V

    .line 338
    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->showSwap(Z)V

    goto/16 :goto_10

    .line 337
    :cond_1c
    const/16 v19, 0x0

    goto :goto_13

    .line 340
    :cond_1d
    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->showHold(Z)V

    .line 341
    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->enableHold(Z)V

    .line 342
    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->showSwap(Z)V

    goto/16 :goto_10

    .line 355
    :cond_1e
    const/4 v10, 0x0

    goto/16 :goto_11

    .line 356
    .restart local v10    # "mShowManageConference":Z
    :cond_1f
    const/4 v6, 0x0

    goto/16 :goto_12
.end method


# virtual methods
.method public getCallToolMode()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Lcom/android/incallui/CallToolsPresenter;->mMode:I

    return v0
.end method

.method public initCallTool()V
    .locals 3

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/CallToolsPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 120
    :cond_0
    return-void
.end method

.method public initVtView()V
    .locals 2

    .prologue
    .line 498
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsPresenter;->maybeShowContactOrVideoButton()V

    .line 499
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->setPauseVideoButton(Z)V

    .line 502
    :cond_0
    return-void
.end method

.method public isSipCall()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 191
    iget-object v2, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v2, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v1

    .line 194
    :cond_1
    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->getInstance()Lcom/android/incallui/ContactInfoCache;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    .line 195
    .local v0, "contactInfo":Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isSipCall:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isVideoCall()Z
    .locals 1

    .prologue
    .line 519
    iget-boolean v0, p0, Lcom/android/incallui/CallToolsPresenter;->isVideoCall:Z

    return v0
.end method

.method public isVtConferenceCall()Z
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v0}, Lcom/android/incallui/CallUtils;->isVtConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v0

    return v0
.end method

.method public maybeShowContactOrVideoButton()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 523
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;

    .line 524
    .local v4, "ui":Lcom/android/incallui/CallToolsPresenter$CallToolsUi;
    if-nez v4, :cond_0

    .line 552
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v7, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v7, :cond_1

    .line 528
    invoke-interface {v4, v5}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->showSwitchToVideoButton(Z)V

    .line 529
    invoke-interface {v4, v6}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->showContactButton(Z)V

    goto :goto_0

    .line 533
    :cond_1
    iget-object v7, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v7}, Lcom/android/incallui/CallUtils;->isImsRegistered(Lcom/android/incallui/Call;)Z

    move-result v2

    .line 534
    .local v2, "isImsRegisted":Z
    iget-object v7, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v7}, Lcom/android/incallui/CallAdapterUtils;->hasLocalVoiceCapabilities(Lcom/android/incallui/Call;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v7}, Lcom/android/incallui/CallAdapterUtils;->hasLocalVideoCapabilities(Lcom/android/incallui/Call;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_2
    move v0, v6

    .line 535
    .local v0, "canVideoCall":Z
    :goto_1
    const-string v7, "Show video "

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {p0, v7, v8}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 536
    iget-object v7, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v7}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    .line 538
    .local v1, "isConference":Z
    const/4 v3, 0x0

    .line 541
    .local v3, "isShouldShowVideo":Z
    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getCurrentCallCount()I

    move-result v7

    if-eq v7, v6, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/CallList;->getCurrentCallCount()I

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_4

    .line 545
    :cond_3
    const/4 v3, 0x1

    .line 546
    if-eqz v0, :cond_6

    iget-object v7, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getSessionModificationState()I

    move-result v7

    if-eq v7, v6, :cond_6

    iget-object v7, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v7}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    move v7, v6

    :goto_2
    invoke-interface {v4, v7}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->enableSwitchToVideoButton(Z)V

    .line 550
    :cond_4
    invoke-interface {v4, v3}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->showSwitchToVideoButton(Z)V

    .line 551
    if-nez v3, :cond_7

    :goto_3
    invoke-interface {v4, v6}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->showContactButton(Z)V

    goto :goto_0

    .end local v0    # "canVideoCall":Z
    .end local v1    # "isConference":Z
    .end local v3    # "isShouldShowVideo":Z
    :cond_5
    move v0, v5

    .line 534
    goto :goto_1

    .restart local v0    # "canVideoCall":Z
    .restart local v1    # "isConference":Z
    .restart local v3    # "isShouldShowVideo":Z
    :cond_6
    move v7, v5

    .line 546
    goto :goto_2

    :cond_7
    move v6, v5

    .line 551
    goto :goto_3
.end method

.method public onActiveCameraSelectionChanged(Z)V
    .locals 2
    .param p1, "isUsingFrontFacingCamera"    # Z

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_0

    .line 491
    :goto_0
    return-void

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->setSwitchCameraButton(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onActiveSubChanged(I)V
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 85
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->getPotentialStateFromCallList(Lcom/android/incallui/CallList;)Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    .line 87
    .local v0, "state":Lcom/android/incallui/InCallPresenter$InCallState;
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/incallui/CallToolsPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 88
    return-void
.end method

.method public onAddCallClick()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 226
    iput-boolean v1, p0, Lcom/android/incallui/CallToolsPresenter;->mAutomaticallyMuted:Z

    .line 227
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/CallToolsPresenter;->mPreviousMuteState:Z

    .line 229
    invoke-virtual {p0, v1}, Lcom/android/incallui/CallToolsPresenter;->onMuteClick(Z)V

    .line 230
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/TelecomAdapter;->addCall()V

    .line 231
    return-void
.end method

.method public onAddRcsMessageClicked()V
    .locals 5

    .prologue
    .line 408
    iget-object v1, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "smsto"

    iget-object v3, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 413
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 414
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;

    invoke-interface {v1}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAudioMode(I)V
    .locals 0
    .param p1, "newMode"    # I

    .prologue
    .line 97
    return-void
.end method

.method public onDeviceOrientationChanged(I)V
    .locals 2
    .param p1, "screenOrientation"    # I

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;

    .line 170
    .local v0, "ui":Lcom/android/incallui/CallToolsPresenter$CallToolsUi;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/CallToolsPresenter;->isVideoCall()Z

    move-result v1

    if-nez v1, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget v1, p0, Lcom/android/incallui/CallToolsPresenter;->mLastOrientation:I

    invoke-interface {v0, v1, p1}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->startRotationAnimator(II)V

    .line 175
    iput p1, p0, Lcom/android/incallui/CallToolsPresenter;->mLastOrientation:I

    goto :goto_0
.end method

.method public onHoldClick(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 207
    :cond_0
    if-eqz p1, :cond_1

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Putting the call on hold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->holdCall(Ljava/lang/String;)V

    goto :goto_0

    .line 211
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing the call from hold: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->unholdCall(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 92
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/CallToolsPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 93
    return-void
.end method

.method public onMergeClick()V
    .locals 2

    .prologue
    .line 217
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->isConferenceExceeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    const v0, 0x7f0c00d7

    invoke-static {v0}, Lcom/android/incallui/util/Utils;->displayMsg(I)V

    .line 222
    :goto_0
    return-void

    .line 221
    :cond_0
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;

    .line 102
    .local v0, "ui":Lcom/android/incallui/CallToolsPresenter$CallToolsUi;
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsPresenter;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    invoke-interface {v0, p1}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->setVideoMute(Z)V

    .line 109
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/incallui/CallToolsPresenter;->isMute:Z

    .line 110
    return-void

    .line 106
    :cond_1
    invoke-interface {v0, p1}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->setMute(Z)V

    goto :goto_0
.end method

.method public onMuteClick(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "turning on mute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/incallui/TelecomAdapter;->mute(Z)V

    .line 201
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 3
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/CallToolsPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;

    invoke-interface {v0}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->isInCallToolPanelContentInit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_4

    .line 128
    :cond_2
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    .line 129
    iget-object v0, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_3

    .line 130
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    .line 140
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/incallui/CallToolsPresenter;->isNeedUpdateUI(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore NeedUpdateUI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallToolsPresenter;->mLastCallKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_4
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_5

    .line 133
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveOrBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    goto :goto_1

    .line 134
    :cond_5
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_6

    .line 135
    iput-object v2, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    goto :goto_1

    .line 137
    :cond_6
    iput-object v2, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    goto :goto_1

    .line 145
    :cond_7
    iget-object v0, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_9

    .line 146
    iget-object v0, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/CallToolsPresenter;->mPreviousFgCallState:I

    .line 151
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-direct {p0, p2, v0}, Lcom/android/incallui/CallToolsPresenter;->updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    .line 153
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v0, :cond_0

    .line 154
    iput-boolean v1, p0, Lcom/android/incallui/CallToolsPresenter;->mConferenceModeOn:Z

    .line 155
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;

    invoke-interface {v0, v1}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->setPauseVideoButton(Z)V

    goto/16 :goto_0

    .line 147
    :cond_9
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p2, v0, :cond_8

    .line 148
    iput v1, p0, Lcom/android/incallui/CallToolsPresenter;->mPreviousFgCallState:I

    goto :goto_2
.end method

.method public onSupportedAudioMode(I)V
    .locals 0
    .param p1, "modeMask"    # I

    .prologue
    .line 114
    return-void
.end method

.method public onSwapClick()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Swapping the call: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 239
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/TelecomAdapter;->swap(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUiReady(Lcom/android/incallui/CallToolsPresenter$CallToolsUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/CallToolsPresenter$CallToolsUi;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 61
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->addListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 64
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 65
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 66
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->addActiveSubChangeListener(Lcom/android/incallui/CallList$ActiveSubChangeListener;)V

    .line 67
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallCameraManager;->addCameraSelectionListener(Lcom/android/incallui/InCallCameraManager$CameraSelectionListener;)V

    .line 68
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    .line 69
    return-void
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallToolsPresenter;->onUiReady(Lcom/android/incallui/CallToolsPresenter$CallToolsUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/CallToolsPresenter$CallToolsUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/CallToolsPresenter$CallToolsUi;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 75
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 76
    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/AudioModeProvider;->removeListener(Lcom/android/incallui/AudioModeProvider$AudioModeListener;)V

    .line 77
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 78
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/CallList;->removeActiveSubChangeListener(Lcom/android/incallui/CallList$ActiveSubChangeListener;)V

    .line 79
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallCameraManager;->removeCameraSelectionListener(Lcom/android/incallui/InCallCameraManager$CameraSelectionListener;)V

    .line 80
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    .line 81
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/CallToolsPresenter;->onUiUnready(Lcom/android/incallui/CallToolsPresenter$CallToolsUi;)V

    return-void
.end method

.method public pauseVideoClicked(Z)V
    .locals 7
    .param p1, "pause"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 465
    iget-object v3, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v3, :cond_1

    .line 483
    :cond_0
    :goto_0
    return-void

    .line 468
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    .line 469
    .local v2, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-eqz v2, :cond_0

    .line 473
    :try_start_0
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;

    if-nez p1, :cond_3

    move v6, v4

    :goto_1
    invoke-interface {v3, v6}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->enableSwitchCamera(Z)V

    .line 474
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getVideoCallFragment()Lcom/android/incallui/VideoCallFragment;

    move-result-object v1

    .line 475
    .local v1, "fragment":Lcom/android/incallui/VideoCallFragment;
    if-eqz v1, :cond_2

    .line 476
    if-nez p1, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v1, v3}, Lcom/android/incallui/VideoCallFragment;->showPreviewVideo(Z)V

    .line 477
    invoke-virtual {v1}, Lcom/android/incallui/VideoCallFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/VideoCallPresenter;

    if-nez p1, :cond_5

    :goto_3
    invoke-virtual {v3, v2, v4}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    .line 479
    :cond_2
    iget-object v3, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v3, p1}, Lcom/android/incallui/VoLTEProxy;->modifySessionWhenCloseCamera(Lcom/android/incallui/Call;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 480
    .end local v1    # "fragment":Lcom/android/incallui/VideoCallFragment;
    :catch_0
    move-exception v0

    .line 481
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pauseVideoClicked exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    move v6, v5

    .line 473
    goto :goto_1

    .restart local v1    # "fragment":Lcom/android/incallui/VideoCallFragment;
    :cond_4
    move v3, v5

    .line 476
    goto :goto_2

    :cond_5
    move v4, v5

    .line 477
    goto :goto_3
.end method

.method public refreshMuteState()V
    .locals 2

    .prologue
    .line 367
    iget-boolean v0, p0, Lcom/android/incallui/CallToolsPresenter;->mAutomaticallyMuted:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/incallui/CallToolsPresenter;->mPreviousMuteState:Z

    if-eq v0, v1, :cond_1

    .line 369
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    if-nez v0, :cond_0

    .line 375
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-boolean v0, p0, Lcom/android/incallui/CallToolsPresenter;->mPreviousMuteState:Z

    invoke-virtual {p0, v0}, Lcom/android/incallui/CallToolsPresenter;->onMuteClick(Z)V

    .line 374
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/CallToolsPresenter;->mAutomaticallyMuted:Z

    goto :goto_0
.end method

.method public switchCameraClicked(Z)V
    .locals 5
    .param p1, "useFrontFacingCamera"    # Z

    .prologue
    .line 441
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v2

    .line 442
    .local v2, "cameraManager":Lcom/android/incallui/InCallCameraManager;
    invoke-virtual {v2, p1}, Lcom/android/incallui/InCallCameraManager;->setUseFrontFacingCamera(Z)V

    .line 443
    iget-object v4, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v3

    .line 444
    .local v3, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-nez v3, :cond_1

    .line 456
    :cond_0
    :goto_0
    return-void

    .line 447
    :cond_1
    invoke-virtual {v2}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v1

    .line 448
    .local v1, "cameraId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 449
    invoke-virtual {v2}, Lcom/android/incallui/InCallCameraManager;->isUsingFrontFacingCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x0

    .line 452
    .local v0, "cameraDir":I
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v4}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/incallui/Call$VideoSettings;->setCameraDir(I)V

    .line 453
    invoke-virtual {v3, v1}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v3}, Landroid/telecom/InCallService$VideoCall;->requestCameraCapabilities()V

    goto :goto_0

    .line 449
    .end local v0    # "cameraDir":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public switchToVideoClicked()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 378
    iget-object v3, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v3, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    iget-object v3, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    .line 382
    .local v1, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-eqz v1, :cond_0

    .line 385
    iget-object v3, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/CallAdapterUtils;->hasRemoteVoiceCapabilities(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-static {v3}, Lcom/android/incallui/CallAdapterUtils;->hasRemoteVideoCapabilities(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v0, v2

    .line 386
    .local v0, "canVideoCall":Z
    :goto_1
    const-string v3, "switchToVideoClicked suport video "

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    if-nez v0, :cond_4

    .line 388
    const v2, 0x7f0c00d8

    invoke-static {v2}, Lcom/android/incallui/util/Utils;->displayMsg(I)V

    goto :goto_0

    .line 385
    .end local v0    # "canVideoCall":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 391
    .restart local v0    # "canVideoCall":Z
    :cond_4
    iget-object v3, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v3, v2}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 392
    new-instance v2, Landroid/telecom/VideoProfile;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_0
.end method

.method public switchToVoiceClicked()V
    .locals 3

    .prologue
    .line 396
    iget-object v2, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    if-nez v2, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    iget-object v2, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    .line 400
    .local v0, "videoCall":Landroid/telecom/InCallService$VideoCall;
    if-eqz v0, :cond_0

    .line 403
    new-instance v1, Landroid/telecom/VideoProfile;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    .line 404
    .local v1, "videoProfile":Landroid/telecom/VideoProfile;
    invoke-virtual {v0, v1}, Landroid/telecom/InCallService$VideoCall;->sendSessionModifyRequest(Landroid/telecom/VideoProfile;)V

    goto :goto_0
.end method

.method public updateHold()V
    .locals 3

    .prologue
    .line 505
    invoke-virtual {p0}, Lcom/android/incallui/CallToolsPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;

    .line 506
    .local v0, "ui":Lcom/android/incallui/CallToolsPresenter$CallToolsUi;
    if-nez v0, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/android/incallui/CallToolsPresenter;->mCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v0, v1}, Lcom/android/incallui/CallToolsPresenter$CallToolsUi;->setHold(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
