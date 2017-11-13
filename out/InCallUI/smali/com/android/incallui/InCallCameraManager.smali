.class public Lcom/android/incallui/InCallCameraManager;
.super Ljava/lang/Object;
.source "InCallCameraManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallCameraManager$CameraSelectionListener;
    }
.end annotation


# instance fields
.field private final mCameraSelectionListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/incallui/InCallCameraManager$CameraSelectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFrontFacingCameraId:Ljava/lang/String;

.field private mIsInitialized:Z

.field private mRearFacingCameraId:Ljava/lang/String;

.field private mUseFrontFacingCamera:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mCameraSelectionListeners:Ljava/util/Set;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/InCallCameraManager;->mIsInitialized:Z

    .line 86
    iput-boolean v3, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    .line 87
    iput-object p1, p0, Lcom/android/incallui/InCallCameraManager;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method private maybeInitializeCameraList(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 131
    iget-boolean v6, p0, Lcom/android/incallui/InCallCameraManager;->mIsInitialized:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    const-string v6, "initializeCameraList"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    const/4 v2, 0x0

    .line 139
    .local v2, "cameraManager":Landroid/hardware/camera2/CameraManager;
    :try_start_0
    const-string v6, "camera"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    check-cast v2, Landroid/hardware/camera2/CameraManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .restart local v2    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    if-eqz v2, :cond_0

    .line 150
    const/4 v6, 0x0

    new-array v1, v6, [Ljava/lang/String;

    .line 152
    .local v1, "cameraIds":[Ljava/lang/String;
    :try_start_1
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 159
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_5

    .line 160
    const/4 v0, 0x0

    .line 162
    .local v0, "c":Landroid/hardware/camera2/CameraCharacteristics;
    :try_start_2
    aget-object v6, v1, v5

    invoke-virtual {v2, v6}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 168
    :goto_2
    if-eqz v0, :cond_2

    .line 169
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 170
    .local v4, "facingCharacteristic":I
    if-nez v4, :cond_3

    .line 171
    aget-object v6, v1, v5

    iput-object v6, p0, Lcom/android/incallui/InCallCameraManager;->mFrontFacingCameraId:Ljava/lang/String;

    .line 172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initializeCameraList mFrontFacingCameraId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/InCallCameraManager;->mFrontFacingCameraId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .end local v4    # "facingCharacteristic":I
    :cond_2
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 141
    .end local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v1    # "cameraIds":[Ljava/lang/String;
    .end local v2    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    .end local v5    # "i":I
    :catch_0
    move-exception v3

    .line 142
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "Could not get camera service."

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 153
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "cameraIds":[Ljava/lang/String;
    .restart local v2    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    :catch_1
    move-exception v3

    .line 154
    .local v3, "e":Landroid/hardware/camera2/CameraAccessException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not access camera: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    .end local v3    # "e":Landroid/hardware/camera2/CameraAccessException;
    .restart local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .restart local v4    # "facingCharacteristic":I
    .restart local v5    # "i":I
    :cond_3
    if-ne v4, v8, :cond_2

    .line 174
    iget-object v6, p0, Lcom/android/incallui/InCallCameraManager;->mRearFacingCameraId:Ljava/lang/String;

    if-nez v6, :cond_4

    .line 175
    aget-object v6, v1, v5

    iput-object v6, p0, Lcom/android/incallui/InCallCameraManager;->mRearFacingCameraId:Ljava/lang/String;

    .line 176
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initializeCameraList mRearFacingCameraId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/incallui/InCallCameraManager;->mRearFacingCameraId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 178
    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initializeCameraList mRearFacingCameraId already exist, not use cameraid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v1, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 183
    .end local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    .end local v4    # "facingCharacteristic":I
    :cond_5
    iput-boolean v8, p0, Lcom/android/incallui/InCallCameraManager;->mIsInitialized:Z

    .line 184
    const-string v6, "initializeCameraList : done"

    invoke-static {p0, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 165
    .restart local v0    # "c":Landroid/hardware/camera2/CameraCharacteristics;
    :catch_2
    move-exception v6

    goto/16 :goto_2

    .line 163
    :catch_3
    move-exception v6

    goto/16 :goto_2
.end method


# virtual methods
.method public addCameraSelectionListener(Lcom/android/incallui/InCallCameraManager$CameraSelectionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallCameraManager$CameraSelectionListener;

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mCameraSelectionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 191
    :cond_0
    return-void
.end method

.method public getActiveCameraId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/incallui/InCallCameraManager;->maybeInitializeCameraList(Landroid/content/Context;)V

    .line 118
    iget-boolean v0, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mFrontFacingCameraId:Ljava/lang/String;

    .line 121
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mRearFacingCameraId:Ljava/lang/String;

    goto :goto_0
.end method

.method public isUsingFrontFacingCamera()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    return v0
.end method

.method public removeCameraSelectionListener(Lcom/android/incallui/InCallCameraManager$CameraSelectionListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/incallui/InCallCameraManager$CameraSelectionListener;

    .prologue
    .line 194
    if-eqz p1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/incallui/InCallCameraManager;->mCameraSelectionListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 197
    :cond_0
    return-void
.end method

.method public setUseFrontFacingCamera(Z)V
    .locals 3
    .param p1, "useFrontFacingCamera"    # Z

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    .line 97
    iget-object v2, p0, Lcom/android/incallui/InCallCameraManager;->mCameraSelectionListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/InCallCameraManager$CameraSelectionListener;

    .line 98
    .local v1, "listener":Lcom/android/incallui/InCallCameraManager$CameraSelectionListener;
    iget-boolean v2, p0, Lcom/android/incallui/InCallCameraManager;->mUseFrontFacingCamera:Z

    invoke-interface {v1, v2}, Lcom/android/incallui/InCallCameraManager$CameraSelectionListener;->onActiveCameraSelectionChanged(Z)V

    goto :goto_0

    .line 100
    .end local v1    # "listener":Lcom/android/incallui/InCallCameraManager$CameraSelectionListener;
    :cond_0
    return-void
.end method
