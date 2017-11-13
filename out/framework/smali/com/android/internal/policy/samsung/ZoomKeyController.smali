.class public Lcom/android/internal/policy/samsung/ZoomKeyController;
.super Ljava/lang/Object;
.source "ZoomKeyController.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final LAUNCH_ZOOM_MOVE_REPEAT_COUNT:I = 0x4

.field private static final SAFE_DEBUG:Z

.field private static final SCANCODE_ZOOM_RING_IN:I = 0x225

.field private static final SCANCODE_ZOOM_RING_OUT:I = 0x226

.field private static final TAG:Ljava/lang/String; = "ZoomKeyController"


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field private mControlZoomRingKey:Z

.field mKeyguardManager:Landroid/app/KeyguardManager;

.field private mZoomMoveActionList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 38
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/samsung/ZoomKeyController;->SAFE_DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mControlZoomRingKey:Z

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mZoomMoveActionList:Ljava/util/ArrayList;

    .line 54
    iput-object p1, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mAudioManager:Landroid/media/AudioManager;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method private isControlZoomRing()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mControlZoomRingKey:Z

    return v0
.end method

.method private isDeviceProvisioned()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 211
    iget-object v1, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isRotateZoomRingtoLaunchApp()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 181
    monitor-enter p0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mZoomMoveActionList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 183
    .local v0, "size":I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mZoomMoveActionList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mZoomMoveActionList:Ljava/util/ArrayList;

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_0

    .line 187
    monitor-exit p0

    move v1, v2

    .line 192
    :goto_0
    return v1

    .line 190
    :cond_0
    monitor-exit p0

    move v1, v3

    .line 192
    goto :goto_0

    .line 190
    .end local v0    # "size":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isZoomRingKeyEvent(II)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "scanCode"    # I

    .prologue
    .line 143
    const/16 v0, 0xa8

    if-ne p1, v0, :cond_0

    const/16 v0, 0x225

    if-eq p2, v0, :cond_1

    :cond_0
    const/16 v0, 0xa9

    if-ne p1, v0, :cond_2

    const/16 v0, 0x226

    if-ne p2, v0, :cond_2

    .line 145
    :cond_1
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchModeDialApp()V
    .locals 5

    .prologue
    .line 196
    sget-boolean v2, Lcom/android/internal/policy/samsung/ZoomKeyController;->SAFE_DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "ZoomKeyController"

    const-string v3, "launch ModeDial App"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.modedialapplication"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 199
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/samsung/ZoomKeyController;->isDeviceProvisioned()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "ZoomKeyController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t found component="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    const-string v2, "ZoomKeyController"

    const-string v3, "Can\'t found launch intent for mode dial application"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onInputZoomRingMoveAction(IIZ)V
    .locals 3
    .param p1, "action"    # I
    .param p2, "repeatCount"    # I
    .param p3, "canceled"    # Z

    .prologue
    const/4 v2, 0x1

    .line 155
    monitor-enter p0

    .line 156
    if-ne p1, v2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mZoomMoveActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    monitor-exit p0

    .line 171
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/samsung/ZoomKeyController;->isControlZoomRing()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_1

    if-eqz p2, :cond_2

    .line 160
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/samsung/ZoomKeyController;->resetZoomMoveActionList()V

    .line 161
    monitor-exit p0

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 163
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mZoomMoveActionList:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    if-ne p1, v2, :cond_3

    .line 166
    invoke-direct {p0}, Lcom/android/internal/policy/samsung/ZoomKeyController;->isRotateZoomRingtoLaunchApp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    invoke-direct {p0}, Lcom/android/internal/policy/samsung/ZoomKeyController;->launchModeDialApp()V

    .line 170
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private resetZoomMoveActionList()V
    .locals 2

    .prologue
    .line 174
    sget-boolean v0, Lcom/android/internal/policy/samsung/ZoomKeyController;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZoomKeyController"

    const-string/jumbo v1, "reset ZoomMoveActionList"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    monitor-enter p0

    .line 176
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mZoomMoveActionList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 177
    monitor-exit p0

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setStateControlZoomRing(I)V
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 128
    if-nez p1, :cond_0

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mControlZoomRingKey:Z

    .line 137
    :goto_0
    return-void

    .line 131
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mControlZoomRingKey:Z

    .line 132
    invoke-direct {p0}, Lcom/android/internal/policy/samsung/ZoomKeyController;->resetZoomMoveActionList()V

    goto :goto_0
.end method


# virtual methods
.method public handleKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 58
    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/samsung/ZoomKeyController;->handleKeyEvent(Landroid/view/KeyEvent;I)Z

    move-result v0

    return v0
.end method

.method public handleKeyEvent(Landroid/view/KeyEvent;I)Z
    .locals 8
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "streamType"    # I

    .prologue
    const/4 v5, 0x1

    .line 62
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 63
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 64
    .local v2, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v4

    .line 65
    .local v4, "scanCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    .line 67
    .local v3, "repeatCount":I
    sparse-switch v2, :sswitch_data_0

    .line 105
    :cond_0
    const/4 v5, 0x0

    :cond_1
    :goto_0
    return v5

    .line 70
    :sswitch_0
    invoke-direct {p0, v2, v4}, Lcom/android/internal/policy/samsung/ZoomKeyController;->isZoomRingKeyEvent(II)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 72
    invoke-direct {p0}, Lcom/android/internal/policy/samsung/ZoomKeyController;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_0

    .line 77
    invoke-direct {p0, v0}, Lcom/android/internal/policy/samsung/ZoomKeyController;->setStateControlZoomRing(I)V

    goto :goto_0

    .line 79
    :cond_2
    if-nez v0, :cond_3

    .line 80
    invoke-direct {p0}, Lcom/android/internal/policy/samsung/ZoomKeyController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Landroid/media/AudioManager;->handleKeyDown(Landroid/view/KeyEvent;I)V

    goto :goto_0

    .line 82
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 83
    iget-object v6, p0, Lcom/android/internal/policy/samsung/ZoomKeyController;->mContext:Landroid/content/Context;

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 85
    .local v1, "audioManager":Landroid/media/AudioManager;
    if-eqz v1, :cond_1

    .line 86
    invoke-direct {p0}, Lcom/android/internal/policy/samsung/ZoomKeyController;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Landroid/media/AudioManager;->handleKeyUp(Landroid/view/KeyEvent;I)V

    goto :goto_0

    .line 95
    .end local v1    # "audioManager":Landroid/media/AudioManager;
    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/policy/samsung/ZoomKeyController;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v6

    if-nez v6, :cond_0

    .line 99
    invoke-direct {p0}, Lcom/android/internal/policy/samsung/ZoomKeyController;->isControlZoomRing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 100
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v6

    invoke-direct {p0, v0, v3, v6}, Lcom/android/internal/policy/samsung/ZoomKeyController;->onInputZoomRingMoveAction(IIZ)V

    goto :goto_0

    .line 67
    :sswitch_data_0
    .sparse-switch
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
        0x40a -> :sswitch_1
    .end sparse-switch
.end method
