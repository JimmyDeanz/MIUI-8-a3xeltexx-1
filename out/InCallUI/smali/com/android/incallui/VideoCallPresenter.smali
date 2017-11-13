.class public Lcom/android/incallui/VideoCallPresenter;
.super Lcom/android/incallui/Presenter;
.source "VideoCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/InCallCameraManager$CameraSelectionListener;
.implements Lcom/android/incallui/InCallPresenter$InCallDetailsListener;
.implements Lcom/android/incallui/InCallPresenter$InCallOrientationListener;
.implements Lcom/android/incallui/InCallPresenter$InCallStateListener;
.implements Lcom/android/incallui/InCallPresenter$IncomingCallListener;
.implements Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;
.implements Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;
.implements Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/VideoCallPresenter$1;,
        Lcom/android/incallui/VideoCallPresenter$VideoCallUi;,
        Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/incallui/Presenter",
        "<",
        "Lcom/android/incallui/VideoCallPresenter$VideoCallUi;",
        ">;",
        "Lcom/android/incallui/InCallCameraManager$CameraSelectionListener;",
        "Lcom/android/incallui/InCallPresenter$InCallDetailsListener;",
        "Lcom/android/incallui/InCallPresenter$InCallOrientationListener;",
        "Lcom/android/incallui/InCallPresenter$InCallStateListener;",
        "Lcom/android/incallui/InCallPresenter$IncomingCallListener;",
        "Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;",
        "Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;",
        "Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;"
    }
.end annotation


# static fields
.field private static mIsVideoMode:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentCallState:I

.field private mCurrentVideoState:I

.field private mDeviceOrientation:I

.field private mIsFullScreen:Z

.field private mMinimumVideoDimension:F

.field private mOrientationMode:I

.field private mPreviewSurfaceState:I

.field private mPrimaryCall:Lcom/android/incallui/Call;

.field mSessionModificationResetHandler:Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;

.field private mVideoCall:Landroid/telecom/InCallService$VideoCall;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/android/incallui/Presenter;-><init>()V

    .line 133
    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    .line 138
    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    .line 143
    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 148
    iput-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsFullScreen:Z

    .line 155
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mOrientationMode:I

    .line 1430
    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/VideoCallPresenter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/incallui/VideoCallPresenter;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsFullScreen:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/incallui/VideoCallPresenter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/incallui/VideoCallPresenter;

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->toggleFullScreen()V

    return-void
.end method

.method private adjustPreviewToFullScreen(II)Landroid/graphics/Point;
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1053
    if-le p1, p2, :cond_0

    .line 1054
    move v2, p1

    .line 1055
    .local v2, "temp":I
    move p1, p2

    .line 1056
    move p2, v2

    .line 1058
    .end local v2    # "temp":I
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 1060
    .local v0, "result":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1061
    .local v3, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v3, :cond_1

    .line 1062
    const-string v4, "adjustPreviewToFullScreen ui is null"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1075
    :goto_0
    return-object v0

    .line 1066
    :cond_1
    invoke-interface {v3}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    .line 1068
    .local v1, "screenSize":Landroid/graphics/Point;
    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    int-to-float v5, p1

    div-float/2addr v4, v5

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    int-to-float v6, p2

    div-float/2addr v5, v6

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 1069
    iget v4, v1, Landroid/graphics/Point;->x:I

    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 1070
    int-to-float v4, p2

    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    int-to-float v5, p1

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 1072
    :cond_2
    int-to-float v4, p1

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    int-to-float v5, p2

    div-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v0, Landroid/graphics/Point;->x:I

    .line 1073
    iget v4, v1, Landroid/graphics/Point;->y:I

    iput v4, v0, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private autoHideFullScreen()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1335
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mSessionModificationResetHandler:Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;->removeMessages(I)V

    .line 1336
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mSessionModificationResetHandler:Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1337
    return-void
.end method

.method private changeVideoCall(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 633
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v1

    .line 634
    .local v1, "videoCall":Landroid/telecom/InCallService$VideoCall;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeVideoCall to videoCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mVideoCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 636
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v2, :cond_0

    .line 642
    :cond_0
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-nez v2, :cond_3

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 644
    .local v0, "hasChanged":Z
    :goto_0
    iput-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 645
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v2, :cond_1

    if-nez p1, :cond_4

    .line 646
    :cond_1
    const-string v2, "Video call or primary call is null. Return"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    :cond_2
    :goto_1
    return-void

    .line 642
    .end local v0    # "hasChanged":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 650
    .restart local v0    # "hasChanged":Z
    :cond_4
    invoke-static {p1}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 651
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->enterVideoMode(Lcom/android/incallui/Call;)V

    goto :goto_1
.end method

.method private checkForCallStateChange(Lcom/android/incallui/Call;)V
    .locals 8
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v5, 0x1

    .line 464
    invoke-static {p1}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    .line 465
    .local v2, "isVideoCall":Z
    iget v6, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-eq v6, v7, :cond_1

    move v1, v5

    .line 467
    .local v1, "hasCallStateChanged":Z
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkForCallStateChange: isVideoCall= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " hasCallStateChanged="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isVideoMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    if-nez v1, :cond_2

    .line 492
    :cond_0
    :goto_1
    return-void

    .line 465
    .end local v1    # "hasCallStateChanged":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 475
    .restart local v1    # "hasCallStateChanged":Z
    :cond_2
    if-eqz v2, :cond_0

    .line 476
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v0

    .line 479
    .local v0, "cameraManager":Lcom/android/incallui/InCallCameraManager;
    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v4

    .line 480
    .local v4, "prevCameraId":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->updateCameraSelection(Lcom/android/incallui/Call;)V

    .line 481
    invoke-virtual {v0}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v3

    .line 483
    .local v3, "newCameraId":Ljava/lang/String;
    invoke-static {v4, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {p1}, Lcom/android/incallui/CallUtils;->isActiveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 484
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    .line 486
    :cond_3
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    .line 488
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(I)V

    .line 489
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->configPreviewSize()V

    goto :goto_1
.end method

.method private checkForOrientationAllowedChange(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 599
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 600
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    invoke-static {p1}, Lcom/android/incallui/VoLTEProxy;->getOrientationMode(Lcom/android/incallui/Call;)I

    move-result v0

    .line 604
    .local v0, "orientationMode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForOrientationAllowedChange: currentOrientationMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mOrientationMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newOrientationMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 607
    iget v1, p0, Lcom/android/incallui/VideoCallPresenter;->mOrientationMode:I

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 609
    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mOrientationMode:I

    goto :goto_0
.end method

.method private checkForVideoCallChange(Lcom/android/incallui/Call;)V
    .locals 3
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 618
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    .line 619
    .local v0, "videoCall":Landroid/telecom/InCallService$VideoCall;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkForVideoCallChange: videoCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mVideoCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 621
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 622
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->changeVideoCall(Lcom/android/incallui/Call;)V

    .line 624
    :cond_0
    return-void
.end method

.method private checkForVideoStateChange(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 446
    invoke-static {p1}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    .line 447
    .local v1, "isVideoCall":Z
    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    .line 449
    .local v0, "hasVideoStateChanged":Z
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkForVideoStateChange: isVideoCall= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " hasVideoStateChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isVideoMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 453
    if-nez v0, :cond_2

    .line 461
    :cond_0
    :goto_1
    return-void

    .line 447
    .end local v0    # "hasVideoStateChanged":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 455
    .restart local v0    # "hasVideoStateChanged":Z
    :cond_2
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->updateCameraSelection(Lcom/android/incallui/Call;)V

    .line 456
    if-eqz v1, :cond_3

    .line 457
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->enterVideoMode(Lcom/android/incallui/Call;)V

    goto :goto_1

    .line 458
    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 459
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    goto :goto_1
.end method

.method private cleanupSurfaces()V
    .locals 2

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 519
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_0

    .line 520
    const-string v1, "cleanupSurfaces"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 524
    :goto_0
    return-void

    .line 523
    :cond_0
    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->cleanupSurfaces()V

    goto :goto_0
.end method

.method private configPreviewSize()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 495
    const-string v5, "config preview view size"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 497
    .local v4, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v4, :cond_0

    .line 498
    const-string v5, "Error VideoCallUi is null. Return."

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    :goto_0
    return-void

    .line 502
    :cond_0
    invoke-interface {v4}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getPreviewSurfaceSize()Landroid/graphics/Point;

    move-result-object v3

    .line 503
    .local v3, "previewSize":Landroid/graphics/Point;
    if-eqz v3, :cond_2

    .line 504
    const/high16 v0, 0x3f800000    # 1.0f

    .line 505
    .local v0, "aspectRatio":F
    iget v5, v3, Landroid/graphics/Point;->x:I

    if-lez v5, :cond_1

    iget v5, v3, Landroid/graphics/Point;->y:I

    if-lez v5, :cond_1

    .line 506
    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float v0, v5, v6

    .line 508
    :cond_1
    iget v5, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    invoke-direct {p0, v5, v0}, Lcom/android/incallui/VideoCallPresenter;->setPreviewSize(IF)V

    .line 510
    .end local v0    # "aspectRatio":F
    :cond_2
    iget-object v5, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 511
    .local v2, "previewMarginTop":I
    iget-object v5, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 512
    .local v1, "previewMarginRight":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call is active, set margin top= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", right="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 513
    const/16 v5, 0x35

    invoke-interface {v4, v5}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setPreviewGravity(I)V

    .line 514
    invoke-interface {v4, v7, v2, v1, v7}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setPreviewMargin(IIII)V

    goto :goto_0
.end method

.method private enableZoomControl(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 738
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 739
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_0

    .line 740
    const-string v1, "Error VideoCallUi is null. Return."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 744
    :goto_0
    return-void

    .line 743
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->enableZoomControl(Z)V

    goto :goto_0
.end method

.method private enterVideoMode(Lcom/android/incallui/Call;)V
    .locals 6
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v5, 0x1

    .line 669
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v2

    .line 670
    .local v2, "videoCall":Landroid/telecom/InCallService$VideoCall;
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    .line 671
    .local v0, "newVideoState":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterVideoMode videoCall= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " videoState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 672
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 673
    .local v1, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v1, :cond_0

    .line 674
    const-string v3, "Error VideoCallUi is null so returning"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 698
    :goto_0
    return-void

    .line 678
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(I)V

    .line 682
    if-eqz v2, :cond_2

    .line 683
    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->isDisplayVideoSurfaceCreated()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 684
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling setDisplaySurface with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getDisplayVideoSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 685
    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getDisplayVideoSurface()Landroid/view/Surface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    .line 687
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enterVideoMode mDeviceOrientation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 688
    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    invoke-virtual {v2, v3}, Landroid/telecom/InCallService$VideoCall;->setDeviceOrientation(I)V

    .line 689
    invoke-interface {v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->isPreviewVideoSurfaceCreated()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 690
    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->isCameraRequired(I)Z

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    .line 693
    :cond_2
    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    .line 695
    sput-boolean v5, Lcom/android/incallui/VideoCallPresenter;->mIsVideoMode:Z

    .line 696
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/incallui/ProximitySensor;->onVideoMode(Z)V

    .line 697
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/incallui/InCallActivity;->enableInCallOrientationEventListener(Z)V

    goto :goto_0
.end method

.method private exitVideoMode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 768
    const-string v1, "exitVideoMode"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 769
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 770
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_0

    .line 788
    :goto_0
    return-void

    .line 773
    :cond_0
    invoke-interface {v0, v3}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setDisplayRotation(I)V

    .line 774
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/InCallPresenter;->setInCallAllowsOrientationChange(Z)V

    .line 775
    iput v3, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    .line 776
    iget v1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    invoke-direct {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->showVideoUi(I)V

    .line 778
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {p0, v1, v3}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitVideoMode mIsFullScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/VideoCallPresenter;->mIsFullScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 781
    iget-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->mIsFullScreen:Z

    if-eqz v1, :cond_1

    .line 782
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->toggleFullScreen()V

    .line 784
    :cond_1
    sput-boolean v3, Lcom/android/incallui/VideoCallPresenter;->mIsVideoMode:Z

    .line 785
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mSessionModificationResetHandler:Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;->removeMessages(I)V

    .line 786
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getProximitySensor()Lcom/android/incallui/ProximitySensor;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/ProximitySensor;->onVideoMode(Z)V

    .line 787
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/incallui/InCallActivity;->enableInCallOrientationEventListener(Z)V

    goto :goto_0
.end method

.method private static isCameraDirectionSet(Lcom/android/incallui/Call;)Z
    .locals 2
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1414
    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/Call$VideoSettings;->getCameraDir()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCameraRequired()Z
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/VideoCallPresenter;->isCameraRequired(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCameraRequired(I)Z
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 656
    invoke-static {p0}, Lcom/android/incallui/CallAdapterUtils;->isBidirectional(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/CallAdapterUtils;->isTransmissionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPrimaryCallChanged(Lcom/android/incallui/Call;)V
    .locals 4
    .param p1, "newPrimaryCall"    # Lcom/android/incallui/Call;

    .prologue
    .line 527
    invoke-static {p1}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v0

    .line 528
    .local v0, "isVideoCall":Z
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v1

    .line 530
    .local v1, "isVideoMode":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrimaryCallChanged: isVideoCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isVideoMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 536
    const-string v2, "onPrimaryCallChanged: Exiting video mode..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 537
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 538
    :cond_1
    if-eqz v0, :cond_0

    .line 539
    const-string v2, "onPrimaryCallChanged: Entering video mode..."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 541
    invoke-static {p1}, Lcom/android/incallui/VideoCallPresenter;->updateCameraSelection(Lcom/android/incallui/Call;)V

    .line 542
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->enterVideoMode(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method private setDisplayVideoSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDisplayVideoSize:Received peer width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " peer height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1322
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1323
    .local v1, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v1, :cond_0

    .line 1329
    :goto_0
    return-void

    .line 1327
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/VideoCallPresenter;->adjustDisplayToFullScreen(II)Landroid/graphics/Point;

    move-result-object v0

    .line 1328
    .local v0, "size":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-interface {v1, v2, v3}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setDisplayVideoSize(II)V

    goto :goto_0
.end method

.method private setPreviewSize(IF)V
    .locals 3
    .param p1, "orientation"    # I
    .param p2, "aspectRatio"    # F

    .prologue
    .line 1303
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1304
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_0

    .line 1311
    :goto_0
    return-void

    .line 1308
    :cond_0
    iget v1, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    float-to-int v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    iget v1, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    mul-float/2addr v1, p2

    float-to-int v1, v1

    :goto_1
    invoke-interface {v0, v2, v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setPreviewSize(II)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    div-float/2addr v1, p2

    float-to-int v1, v1

    goto :goto_1
.end method

.method private showVideoUi(I)V
    .locals 3
    .param p1, "videoState"    # I

    .prologue
    .line 794
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 795
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_0

    .line 796
    const-string v1, "showVideoUi, VideoCallUi is null returning"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 819
    :goto_0
    return-void

    .line 800
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showVideoUi, videoState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 802
    invoke-static {p1}, Lcom/android/incallui/CallAdapterUtils;->isBidirectional(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 804
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 805
    :cond_1
    const-string v1, "Show video Ui like ReceptionUi when incoming call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 806
    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->showVideoReceptionUi()V

    .line 817
    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-static {p1}, Lcom/android/incallui/CallAdapterUtils;->isAudioOnly(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->enableScreenTimeout(Z)V

    goto :goto_0

    .line 808
    :cond_2
    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->showVideoBidrectionalUi()V

    goto :goto_1

    .line 810
    :cond_3
    invoke-static {p1}, Lcom/android/incallui/CallAdapterUtils;->isTransmissionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 811
    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->showVideoTransmissionUi()V

    goto :goto_1

    .line 812
    :cond_4
    invoke-static {p1}, Lcom/android/incallui/CallAdapterUtils;->isReceptionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 813
    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->showVideoReceptionUi()V

    goto :goto_1

    .line 815
    :cond_5
    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->hideVideoUi()V

    goto :goto_1
.end method

.method private static toCameraDirection(I)I
    .locals 1
    .param p0, "videoState"    # I

    .prologue
    .line 1407
    invoke-static {p0}, Lcom/android/incallui/CallAdapterUtils;->isTransmissionEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/CallAdapterUtils;->isBidirectional(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static toSimpleString(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 1
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1419
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->toSimpleString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private toggleFullScreen()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 342
    iget-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->mIsFullScreen:Z

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->mIsFullScreen:Z

    .line 343
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mSessionModificationResetHandler:Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;

    invoke-virtual {v1, v2}, Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;->removeMessages(I)V

    .line 344
    iget-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->mIsFullScreen:Z

    if-nez v1, :cond_0

    .line 345
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mSessionModificationResetHandler:Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 347
    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/VideoCallPresenter;->mIsFullScreen:Z

    invoke-virtual {v1, v2}, Lcom/android/incallui/InCallPresenter;->setFullScreenVideoState(Z)V

    .line 348
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 349
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-eqz v0, :cond_1

    .line 350
    iget-boolean v1, p0, Lcom/android/incallui/VideoCallPresenter;->mIsFullScreen:Z

    invoke-interface {v0, v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setFullScreenMode(Z)V

    .line 352
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "toggleFullScreen: mIsFullScreen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/VideoCallPresenter;->mIsFullScreen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isVideoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 353
    return-void

    .line 342
    .end local v0    # "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateCallCache(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 551
    if-nez p1, :cond_0

    .line 552
    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    .line 553
    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    .line 554
    iput-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 555
    iput-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    .line 562
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    .line 558
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoCall()Landroid/telecom/InCallService$VideoCall;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    .line 559
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    .line 560
    iput-object p1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    goto :goto_0
.end method

.method private static updateCameraSelection(Lcom/android/incallui/Call;)V
    .locals 6
    .param p0, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1340
    const-string v3, "VideoCallPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCameraSelection: call="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    const-string v3, "VideoCallPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCameraSelection: call="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->toSimpleString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 1344
    .local v0, "activeCall":Lcom/android/incallui/Call;
    const/4 v1, -0x1

    .line 1348
    .local v1, "cameraDir":I
    if-nez p0, :cond_0

    .line 1349
    const/4 v1, -0x1

    .line 1350
    const-string v3, "VideoCallPresenter"

    const-string v4, "updateCameraSelection: Call object is null. Setting camera direction to default value (CAMERA_DIRECTION_UNKNOWN)"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1398
    :goto_0
    const-string v3, "VideoCallPresenter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCameraSelection: Setting camera direction to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Call="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v2

    .line 1402
    .local v2, "cameraManager":Lcom/android/incallui/InCallCameraManager;
    if-nez v1, :cond_7

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/incallui/InCallCameraManager;->setUseFrontFacingCamera(Z)V

    .line 1404
    return-void

    .line 1355
    .end local v2    # "cameraManager":Lcom/android/incallui/InCallCameraManager;
    :cond_0
    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isAudioCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1356
    const/4 v1, -0x1

    .line 1357
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/incallui/Call$VideoSettings;->setCameraDir(I)V

    goto :goto_0

    .line 1363
    :cond_1
    invoke-static {v0}, Lcom/android/incallui/CallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isIncomingVideoCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1364
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/Call$VideoSettings;->getCameraDir()I

    move-result v1

    goto :goto_0

    .line 1369
    :cond_2
    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isOutgoingVideoCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isCameraDirectionSet(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1370
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/VideoCallPresenter;->toCameraDirection(I)I

    move-result v1

    .line 1371
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/incallui/Call$VideoSettings;->setCameraDir(I)V

    goto :goto_0

    .line 1376
    :cond_3
    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isOutgoingVideoCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1377
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/Call$VideoSettings;->getCameraDir()I

    move-result v1

    goto :goto_0

    .line 1382
    :cond_4
    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isActiveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {p0}, Lcom/android/incallui/VideoCallPresenter;->isCameraDirectionSet(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1383
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/VideoCallPresenter;->toCameraDirection(I)I

    move-result v1

    .line 1384
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/incallui/Call$VideoSettings;->setCameraDir(I)V

    goto/16 :goto_0

    .line 1389
    :cond_5
    invoke-static {p0}, Lcom/android/incallui/CallUtils;->isActiveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1390
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoSettings()Lcom/android/incallui/Call$VideoSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/Call$VideoSettings;->getCameraDir()I

    move-result v1

    goto/16 :goto_0

    .line 1395
    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v3

    invoke-static {v3}, Lcom/android/incallui/VideoCallPresenter;->toCameraDirection(I)I

    move-result v1

    goto/16 :goto_0

    .line 1402
    .restart local v2    # "cameraManager":Lcom/android/incallui/InCallCameraManager;
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method private updateFullScreen()V
    .locals 1

    .prologue
    .line 1285
    iget-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsFullScreen:Z

    if-nez v0, :cond_1

    .line 1286
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->autoHideFullScreen()V

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1287
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isCallButtonVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/VideoCallPresenter;->mIsFullScreen:Z

    if-eqz v0, :cond_0

    .line 1288
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->toggleFullScreen()V

    goto :goto_0
.end method

.method private updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 5
    .param p1, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1255
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1256
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_1

    .line 1282
    :cond_0
    :goto_0
    return-void

    .line 1260
    :cond_1
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_2

    .line 1261
    invoke-interface {v0, v2}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setDisplayRotation(I)V

    .line 1262
    invoke-interface {v0, v2}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setFullScreenMode(Z)V

    .line 1263
    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setFullScreenPreviewPosition()V

    .line 1264
    invoke-interface {v0, v2}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setPreviewOnTouchListener(Z)V

    .line 1267
    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1268
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_3

    .line 1269
    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->initPreviewPosition()V

    .line 1270
    invoke-interface {v0, v4}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->showBackground(Z)V

    .line 1271
    invoke-interface {v0, v4}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setPreviewOnTouchListener(Z)V

    .line 1272
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {v0, v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setDisplayVideoAlpha(F)V

    .line 1273
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->updateFullScreen()V

    goto :goto_0

    .line 1274
    :cond_3
    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p1, v1, :cond_0

    .line 1275
    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setFullScreenPreviewPosition()V

    .line 1276
    invoke-interface {v0, v3}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setDisplayVideoAlpha(F)V

    goto :goto_0

    .line 1279
    :cond_4
    invoke-interface {v0, v2}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->showBackground(Z)V

    .line 1280
    invoke-interface {v0, v3}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setDisplayVideoAlpha(F)V

    goto :goto_0
.end method

.method private updateVideoCall(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 592
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForVideoCallChange(Lcom/android/incallui/Call;)V

    .line 593
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForVideoStateChange(Lcom/android/incallui/Call;)V

    .line 594
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForCallStateChange(Lcom/android/incallui/Call;)V

    .line 595
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->checkForOrientationAllowedChange(Lcom/android/incallui/Call;)V

    .line 596
    return-void
.end method


# virtual methods
.method public adjustDisplayToFullScreen(II)Landroid/graphics/Point;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 984
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 986
    .local v0, "result":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 987
    .local v2, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v2, :cond_0

    .line 988
    const-string v3, "adjustDisplayToFullScreen ui is null"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1032
    :goto_0
    return-object v0

    .line 993
    :cond_0
    invoke-interface {v2}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    .line 995
    .local v1, "screenSize":Landroid/graphics/Point;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustToFullScreen width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 996
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustToFullScreen screen.x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", screen.y="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 998
    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 1001
    :sswitch_0
    int-to-float v3, p1

    int-to-float v4, p2

    div-float/2addr v3, v4

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_1

    .line 1002
    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 1003
    int-to-float v3, p2

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, p1

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 1005
    :cond_1
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    int-to-float v4, p1

    div-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    int-to-float v5, p2

    div-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 1006
    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 1007
    int-to-float v3, p2

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, p1

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 1009
    :cond_2
    int-to-float v3, p1

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, p2

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 1010
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 1016
    :sswitch_1
    int-to-float v3, p1

    int-to-float v4, p2

    div-float/2addr v3, v4

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_4

    .line 1017
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    int-to-float v4, p2

    div-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    int-to-float v5, p1

    div-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 1018
    int-to-float v3, p1

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, p2

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 1019
    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 1021
    :cond_3
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 1022
    int-to-float v3, p2

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, p1

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 1025
    :cond_4
    int-to-float v3, p1

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    int-to-float v4, p2

    div-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 1026
    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v0, Landroid/graphics/Point;->y:I

    goto/16 :goto_0

    .line 998
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method public enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V
    .locals 5
    .param p1, "videoCall"    # Landroid/telecom/InCallService$VideoCall;
    .param p2, "isCameraRequired"    # Z

    .prologue
    const/4 v4, 0x0

    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableCamera: VideoCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enabling="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    if-nez p1, :cond_0

    .line 703
    const-string v2, "enableCamera: VideoCall is null."

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 725
    :goto_0
    return-void

    .line 707
    :cond_0
    if-eqz p2, :cond_2

    .line 708
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getInCallCameraManager()Lcom/android/incallui/InCallCameraManager;

    move-result-object v1

    .line 710
    .local v1, "cameraManager":Lcom/android/incallui/InCallCameraManager;
    invoke-virtual {v1}, Lcom/android/incallui/InCallCameraManager;->getActiveCameraId()Ljava/lang/String;

    move-result-object v0

    .line 712
    .local v0, "cameraId":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 713
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 714
    if-nez v0, :cond_1

    .line 715
    const-string v2, "enableCamera: the active camera id is null"

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 719
    :cond_1
    invoke-virtual {p1}, Landroid/telecom/InCallService$VideoCall;->requestCameraCapabilities()V

    goto :goto_0

    .line 721
    .end local v0    # "cameraId":Ljava/lang/String;
    .end local v1    # "cameraManager":Lcom/android/incallui/InCallCameraManager;
    :cond_2
    iput v4, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 722
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/telecom/InCallService$VideoCall;->setCamera(Ljava/lang/String;)V

    .line 723
    invoke-direct {p0, v4}, Lcom/android/incallui/VideoCallPresenter;->enableZoomControl(Z)V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    .line 195
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/incallui/VideoCallPresenter;->mMinimumVideoDimension:F

    .line 197
    new-instance v0, Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;-><init>(Lcom/android/incallui/VideoCallPresenter;Lcom/android/incallui/VideoCallPresenter$1;)V

    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mSessionModificationResetHandler:Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;

    .line 199
    sget-object v0, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/incallui/VideoCallPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 200
    return-void
.end method

.method public isVideoMode()Z
    .locals 1

    .prologue
    .line 547
    sget-boolean v0, Lcom/android/incallui/VideoCallPresenter;->mIsVideoMode:Z

    return v0
.end method

.method public onActiveCameraSelectionChanged(Z)V
    .locals 3
    .param p1, "isUsingFrontFacingCamera"    # Z

    .prologue
    .line 1106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActiveCameraSelectionChanged: front facing camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1108
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1109
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_0

    .line 1110
    const-string v1, "onActiveCameraSelectionChanged: VideoCallUi is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1114
    :goto_0
    return-void

    .line 1113
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/incallui/VideoCallPresenter;->enableZoomControl(Z)V

    goto :goto_0
.end method

.method public onCallDataUsageChange(J)V
    .locals 3
    .param p1, "dataUsage"    # J

    .prologue
    .line 1140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallDataUsageChange dataUsage="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1141
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1142
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_0

    .line 1143
    const-string v1, "onCallDataUsageChange: VideoCallUi is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1147
    :cond_0
    return-void
.end method

.method public onCallSessionEvent(I)V
    .locals 3
    .param p1, "event"    # I

    .prologue
    .line 1123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCallSessionEvent event ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1124
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1125
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_0

    .line 1126
    const-string v1, "onCallSessionEvent: VideoCallUi is null"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1131
    :cond_0
    return-void
.end method

.method public onCameraDimensionsChange(Lcom/android/incallui/Call;II)V
    .locals 9
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 900
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onCameraDimensionsChange call="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " height="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 902
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 903
    .local v4, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v4, :cond_1

    .line 904
    const-string v5, "onCameraDimensionsChange ui is null"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 942
    :cond_0
    :goto_0
    return-void

    .line 908
    :cond_1
    iget-object v5, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 909
    const-string v5, "Call is not primary call"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 913
    :cond_2
    const/4 v5, 0x2

    iput v5, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 914
    invoke-interface {v4, p2, p3}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setPreviewSurfaceSize(II)V

    .line 915
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 917
    const/high16 v0, 0x3f800000    # 1.0f

    .line 918
    .local v0, "aspectRatio":F
    if-lez p2, :cond_3

    if-lez p3, :cond_3

    .line 919
    int-to-float v5, p2

    int-to-float v6, p3

    div-float v0, v5, v6

    .line 921
    :cond_3
    iget v5, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    invoke-direct {p0, v5, v0}, Lcom/android/incallui/VideoCallPresenter;->setPreviewSize(IF)V

    .line 922
    iget-object v5, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08001d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 923
    .local v2, "previewMarginTop":I
    iget-object v5, p0, Lcom/android/incallui/VideoCallPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08001e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 924
    .local v1, "previewMarginRight":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Call is active, set margin top= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", right="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 926
    invoke-interface {v4, v7, v2, v1, v7}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setPreviewMargin(IIII)V

    .line 927
    const/16 v5, 0x35

    invoke-interface {v4, v5}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setPreviewGravity(I)V

    .line 938
    .end local v0    # "aspectRatio":F
    .end local v1    # "previewMarginRight":I
    .end local v2    # "previewMarginTop":I
    :goto_1
    invoke-interface {v4}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->isPreviewVideoSurfaceCreated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 939
    iput v8, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 940
    iget-object v5, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-interface {v4}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getPreviewVideoSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 929
    :cond_4
    const-string v5, "Call is not active, full screen"

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 930
    invoke-direct {p0, p2, p3}, Lcom/android/incallui/VideoCallPresenter;->adjustPreviewToFullScreen(II)Landroid/graphics/Point;

    move-result-object v3

    .line 931
    .local v3, "size":Landroid/graphics/Point;
    const/16 v5, 0x11

    invoke-interface {v4, v5}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setPreviewGravity(I)V

    .line 932
    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-interface {v4, v5, v6}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setPreviewSize(II)V

    .line 933
    invoke-interface {v4, v7, v7, v7, v7}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setPreviewMargin(IIII)V

    goto :goto_1
.end method

.method public onDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call$Details;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "details"    # Landroid/telecom/Call$Details;

    .prologue
    .line 573
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onDetailsChanged call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mPrimaryCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 575
    if-nez p1, :cond_0

    .line 589
    :goto_0
    return-void

    .line 579
    :cond_0
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 580
    const-string v0, " onDetailsChanged: Details not for current active call so returning. "

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 585
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->updateVideoCall(Lcom/android/incallui/Call;)V

    .line 588
    invoke-direct {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->updateCallCache(Lcom/android/incallui/Call;)V

    goto :goto_0
.end method

.method public onDeviceOrientationChanged(I)V
    .locals 6
    .param p1, "screenOrientation"    # I

    .prologue
    const/4 v0, 0x1

    .line 1159
    iget v4, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    if-ne v4, p1, :cond_1

    .line 1189
    :cond_0
    :goto_0
    return-void

    .line 1162
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeviceOrientationChanged: orientation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsVideoMode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/incallui/VideoCallPresenter;->mIsVideoMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1163
    iput p1, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    .line 1164
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 1165
    .local v3, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-eqz v3, :cond_2

    sget-boolean v4, Lcom/android/incallui/VideoCallPresenter;->mIsVideoMode:Z

    if-nez v4, :cond_3

    .line 1166
    :cond_2
    const-string v4, "onDeviceOrientationChanged: VideoCallUi is null"

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1169
    :cond_3
    invoke-interface {v3}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getPreviewSize()Landroid/graphics/Point;

    move-result-object v2

    .line 1170
    .local v2, "previewDimensions":Landroid/graphics/Point;
    if-eqz v2, :cond_0

    .line 1174
    iget v4, p0, Lcom/android/incallui/VideoCallPresenter;->mOrientationMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    iget v4, p0, Lcom/android/incallui/VideoCallPresenter;->mOrientationMode:I

    if-eq v4, v0, :cond_5

    .line 1177
    .local v0, "isCvoEnabled":Z
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeviceOrientationChanged: orientation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "currMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/incallui/VideoCallPresenter;->mOrientationMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1179
    invoke-interface {v3, p1}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setDisplayRotation(I)V

    .line 1180
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-eqz v4, :cond_4

    .line 1181
    iget-object v4, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    iget v5, p0, Lcom/android/incallui/VideoCallPresenter;->mDeviceOrientation:I

    invoke-virtual {v4, v5}, Landroid/telecom/InCallService$VideoCall;->setDeviceOrientation(I)V

    .line 1184
    :cond_4
    invoke-interface {v3}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getDisplaySurfaceSize()Landroid/graphics/Point;

    move-result-object v1

    .line 1185
    .local v1, "point":Landroid/graphics/Point;
    if-eqz v1, :cond_0

    .line 1186
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDeviceOrientationChanged: DisplaySurfaceSize x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1187
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v4, v5}, Lcom/android/incallui/VideoCallPresenter;->setDisplayVideoSize(II)V

    goto/16 :goto_0

    .line 1174
    .end local v0    # "isCvoEnabled":Z
    .end local v1    # "point":Landroid/graphics/Point;
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onDowngradeToAudio(Lcom/android/incallui/Call;)V
    .locals 0
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1252
    return-void
.end method

.method public onIncomingCall(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V
    .locals 1
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 382
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/incallui/VideoCallPresenter;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    .line 383
    return-void
.end method

.method public onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V
    .locals 4
    .param p1, "oldState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p2, "newState"    # Lcom/android/incallui/InCallPresenter$InCallState;
    .param p3, "callList"    # Lcom/android/incallui/CallList;

    .prologue
    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChange oldState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " newState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isVideoMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 397
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v2, :cond_1

    .line 399
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->isVideoMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 400
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->exitVideoMode()V

    .line 403
    :cond_0
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->cleanupSurfaces()V

    .line 407
    :cond_1
    const/4 v0, 0x0

    .line 408
    .local v0, "primary":Lcom/android/incallui/Call;
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCOMING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v2, :cond_5

    .line 413
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 414
    invoke-static {v0}, Lcom/android/incallui/CallUtils;->isActiveVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 415
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 429
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v1, 0x1

    .line 430
    .local v1, "primaryChanged":Z
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChange primaryChanged="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 431
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChange primary= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 432
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStateChange mPrimaryCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 433
    if-eqz v1, :cond_9

    .line 434
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-nez v2, :cond_3

    .line 435
    iput-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    .line 437
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->onPrimaryCallChanged(Lcom/android/incallui/Call;)V

    .line 441
    :cond_4
    :goto_2
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->updateCallCache(Lcom/android/incallui/Call;)V

    .line 442
    invoke-direct {p0, p2, v0}, Lcom/android/incallui/VideoCallPresenter;->updateUi(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/Call;)V

    .line 443
    return-void

    .line 417
    .end local v1    # "primaryChanged":Z
    :cond_5
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v2, :cond_6

    .line 418
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_0

    .line 419
    :cond_6
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->PENDING_OUTGOING:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v2, :cond_7

    .line 420
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    goto :goto_0

    .line 421
    :cond_7
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne p2, v2, :cond_2

    .line 422
    invoke-virtual {p3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    .line 423
    sget-object v2, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-eq p1, v2, :cond_2

    .line 424
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    iget v3, p0, Lcom/android/incallui/VideoCallPresenter;->mOrientationMode:I

    invoke-static {v3}, Lcom/android/incallui/CallUtils;->toUiOrientationMode(I)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/android/incallui/InCallPresenter;->setInCallAllowsOrientationChange(Lcom/android/incallui/Call;I)V

    goto/16 :goto_0

    .line 429
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 438
    .restart local v1    # "primaryChanged":Z
    :cond_9
    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v2, :cond_4

    .line 439
    invoke-direct {p0, v0}, Lcom/android/incallui/VideoCallPresenter;->updateVideoCall(Lcom/android/incallui/Call;)V

    goto :goto_2
.end method

.method public onSurfaceClick(I)V
    .locals 2
    .param p1, "surfaceId"    # I

    .prologue
    .line 363
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 364
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->INCALL:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_0

    .line 365
    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->toggleFullScreen()V

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0
.end method

.method public onSurfaceCreated(I)V
    .locals 5
    .param p1, "surface"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceCreated surface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mVideoCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceCreated PreviewSurfaceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceCreated presenter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 259
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-nez v1, :cond_2

    .line 260
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceCreated: Error bad state VideoCallUi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mVideoCall="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 277
    :cond_1
    :goto_0
    return-void

    .line 267
    :cond_2
    if-ne p1, v4, :cond_4

    .line 268
    iget v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    if-ne v1, v4, :cond_3

    .line 269
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    .line 270
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getPreviewVideoSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 271
    :cond_3
    iget v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPreviewSurfaceState:I

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/incallui/VideoCallPresenter;->isCameraRequired()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 272
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {p0, v1, v3}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    goto :goto_0

    .line 274
    :cond_4
    if-ne p1, v3, :cond_1

    .line 275
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-interface {v0}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->getDisplayVideoSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public onSurfaceDestroyed(I)V
    .locals 3
    .param p1, "surface"    # I

    .prologue
    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceDestroyed: mSurfaceId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-nez v1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isChangingConfigurations()Z

    move-result v0

    .line 329
    .local v0, "isChangingConfigurations":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSurfaceDestroyed: isChangingConfigurations="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 331
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 332
    if-nez v0, :cond_2

    .line 333
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    goto :goto_0

    .line 335
    :cond_2
    const-string v1, "onSurfaceDestroyed: Activity is being destroyed due to configuration changes. Not closing the camera."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSurfaceReleased(I)V
    .locals 3
    .param p1, "surface"    # I

    .prologue
    const/4 v2, 0x0

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceReleased: mSurfaceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 299
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    if-nez v0, :cond_1

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceReleased: VideoCall is null. mSurfaceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 306
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v0, v2}, Landroid/telecom/InCallService$VideoCall;->setDisplaySurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 307
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    invoke-virtual {v0, v2}, Landroid/telecom/InCallService$VideoCall;->setPreviewSurface(Landroid/view/Surface;)V

    .line 309
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mVideoCall:Landroid/telecom/InCallService$VideoCall;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/VideoCallPresenter;->enableCamera(Landroid/telecom/InCallService$VideoCall;Z)V

    goto :goto_0
.end method

.method public bridge synthetic onUiReady(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->onUiReady(Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V

    return-void
.end method

.method public onUiReady(Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V
    .locals 2
    .param p1, "ui"    # Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .prologue
    const/4 v1, 0x0

    .line 209
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiReady(Lcom/android/incallui/Ui;)V

    .line 210
    const-string v0, "onUiReady:"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 214
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 215
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 216
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->addOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    .line 219
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V

    .line 220
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V

    .line 221
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->addSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    .line 223
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentVideoState:I

    .line 224
    iput v1, p0, Lcom/android/incallui/VideoCallPresenter;->mCurrentCallState:I

    .line 225
    return-void
.end method

.method public bridge synthetic onUiUnready(Lcom/android/incallui/Ui;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    invoke-virtual {p0, p1}, Lcom/android/incallui/VideoCallPresenter;->onUiUnready(Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V

    return-void
.end method

.method public onUiUnready(Lcom/android/incallui/VideoCallPresenter$VideoCallUi;)V
    .locals 1
    .param p1, "ui"    # Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .prologue
    .line 234
    invoke-super {p0, p1}, Lcom/android/incallui/Presenter;->onUiUnready(Lcom/android/incallui/Ui;)V

    .line 235
    const-string v0, "onUiUnready:"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 238
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeDetailsListener(Lcom/android/incallui/InCallPresenter$InCallDetailsListener;)V

    .line 239
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeIncomingCallListener(Lcom/android/incallui/InCallPresenter$IncomingCallListener;)V

    .line 240
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallPresenter;->removeOrientationListener(Lcom/android/incallui/InCallPresenter$InCallOrientationListener;)V

    .line 242
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeSurfaceChangeListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SurfaceChangeListener;)V

    .line 243
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeVideoEventListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$VideoEventListener;)V

    .line 244
    invoke-static {}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->getInstance()Lcom/android/incallui/InCallVideoCallCallbackNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallVideoCallCallbackNotifier;->removeSessionModificationListener(Lcom/android/incallui/InCallVideoCallCallbackNotifier$SessionModificationListener;)V

    .line 246
    return-void
.end method

.method public onUpdatePeerDimensions(Lcom/android/incallui/Call;II)V
    .locals 4
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/16 v3, 0x2710

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdatePeerDimensions: width= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 851
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 852
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_1

    .line 853
    const-string v1, "VideoCallUi is null. Bail out"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 856
    :cond_1
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 857
    const-string v1, "Current call is not equal to primary call. Bail out"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 862
    :cond_2
    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-ge p2, v3, :cond_0

    if-ge p3, v3, :cond_0

    .line 863
    invoke-interface {v0, p2, p3}, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;->setDisplaySurfaceSize(II)V

    .line 864
    invoke-direct {p0, p2, p3}, Lcom/android/incallui/VideoCallPresenter;->setDisplayVideoSize(II)V

    goto :goto_0
.end method

.method public onUpgradeToVideoFail(ILcom/android/incallui/Call;)V
    .locals 5
    .param p1, "status"    # I
    .param p2, "call"    # Lcom/android/incallui/Call;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgradeToVideoFail status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", call="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1223
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v1, p2}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1224
    :cond_0
    const-string v1, "UpgradeToVideoFail received for non-primary call"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1227
    :cond_1
    if-nez p2, :cond_2

    .line 1247
    :goto_0
    return-void

    .line 1230
    :cond_2
    const-string v1, "onUpgradeToVideoFail VoLTEProxy.SESSION_MODIFY_REQUEST_REJECTED_BY_REMOTE=-1"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1232
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mSessionModificationResetHandler:Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;

    invoke-virtual {v1, v4}, Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;->removeMessages(I)V

    .line 1233
    if-ne p1, v3, :cond_3

    .line 1234
    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    .line 1243
    :goto_1
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mSessionModificationResetHandler:Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;

    invoke-virtual {v1, v4, p2}, Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1245
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mSessionModificationResetHandler:Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1236
    .end local v0    # "msg":Landroid/os/Message;
    :cond_3
    if-ne p1, v3, :cond_4

    .line 1237
    const/4 v1, 0x5

    invoke-virtual {p2, v1}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_1

    .line 1240
    :cond_4
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_1
.end method

.method public onUpgradeToVideoRequest(Lcom/android/incallui/Call;I)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoState"    # I

    .prologue
    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpgradeToVideoRequest call = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new video state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1194
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0, p1}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1195
    :cond_0
    const-string v0, "UpgradeToVideoRequest received for non-primary call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1198
    :cond_1
    if-nez p1, :cond_2

    .line 1204
    :goto_0
    return-void

    .line 1202
    :cond_2
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mSessionModificationResetHandler:Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/VideoCallPresenter$VideoCallHandler;->removeMessages(I)V

    .line 1203
    invoke-virtual {p1, p2}, Lcom/android/incallui/Call;->setSessionModificationTo(I)V

    goto :goto_0
.end method

.method public onUpgradeToVideoSuccess(Lcom/android/incallui/Call;)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;

    .prologue
    .line 1208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpgradeToVideoSuccess call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1209
    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-static {v0, p1}, Lcom/android/incallui/Call;->areSame(Lcom/android/incallui/Call;Lcom/android/incallui/Call;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1210
    :cond_0
    const-string v0, "UpgradeToVideoSuccess received for non-primary call"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1213
    :cond_1
    if-nez p1, :cond_2

    .line 1218
    :goto_0
    return-void

    .line 1217
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/incallui/Call;->setSessionModificationState(I)V

    goto :goto_0
.end method

.method public onVideoQualityChanged(Lcom/android/incallui/Call;I)V
    .locals 2
    .param p1, "call"    # Lcom/android/incallui/Call;
    .param p2, "videoQuality"    # I

    .prologue
    .line 876
    iget-object v1, p0, Lcom/android/incallui/VideoCallPresenter;->mPrimaryCall:Lcom/android/incallui/Call;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 880
    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/VideoCallPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/VideoCallPresenter$VideoCallUi;

    .line 881
    .local v0, "ui":Lcom/android/incallui/VideoCallPresenter$VideoCallUi;
    if-nez v0, :cond_0

    .line 882
    const-string v1, "Error VideoCallUi is null. Return."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method
