.class public Landroid/media/WFDUibcManager;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/WFDUibcManager$3;,
        Landroid/media/WFDUibcManager$EventQueue;,
        Landroid/media/WFDUibcManager$EventDispatcher;,
        Landroid/media/WFDUibcManager$Keyevnt_arrC;,
        Landroid/media/WFDUibcManager$UIBC_Mode;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static DISPLAY_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_EVENTS:I = 0xa

.field private static final MAX_KEY_EVENTS:I = 0xf

.field private static final TAG:Ljava/lang/String; = "WFDUibcManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCoupleShot:Z

.field private mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

.field private mEventDispatcherThread:Ljava/lang/Thread;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mNegRs_X:F

.field private mNegRs_Y:F

.field private mOrientation:I

.field private mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPresentDisplayID:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/media/WFDUibcManager;->DEBUG:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/media/WFDUibcManager;->DISPLAY_MAP:Ljava/util/HashMap;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/WFDUibcManager;->mOrientation:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/WFDUibcManager;->mCoupleShot:Z

    const/high16 v0, 0x44f00000    # 1920.0f

    iput v0, p0, Landroid/media/WFDUibcManager;->mNegRs_X:F

    const/high16 v0, 0x44870000    # 1080.0f

    iput v0, p0, Landroid/media/WFDUibcManager;->mNegRs_Y:F

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Landroid/media/WFDUibcManager$1;

    invoke-direct {v0, p0}, Landroid/media/WFDUibcManager$1;-><init>(Landroid/media/WFDUibcManager;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/media/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Landroid/media/WFDUibcManager;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "WFDUibcManager"

    const-string v1, "WFDUibcManager"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/media/WFDUibcManager$2;

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/media/WFDUibcManager$2;-><init>(Landroid/media/WFDUibcManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/media/WFDUibcManager;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Landroid/media/WFDUibcManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    iget v0, p0, Landroid/media/WFDUibcManager;->mPresentDisplayID:I

    return v0
.end method

.method static synthetic access$102(Landroid/media/WFDUibcManager;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/WFDUibcManager;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/WFDUibcManager;->mPresentDisplayID:I

    return p1
.end method

.method static synthetic access$200(Landroid/media/WFDUibcManager;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    iget v0, p0, Landroid/media/WFDUibcManager;->mOrientation:I

    return v0
.end method

.method static synthetic access$202(Landroid/media/WFDUibcManager;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/WFDUibcManager;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/media/WFDUibcManager;->mOrientation:I

    return p1
.end method

.method static synthetic access$400(Landroid/media/WFDUibcManager;)F
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    iget v0, p0, Landroid/media/WFDUibcManager;->mNegRs_X:F

    return v0
.end method

.method static synthetic access$500(Landroid/media/WFDUibcManager;)F
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    iget v0, p0, Landroid/media/WFDUibcManager;->mNegRs_Y:F

    return v0
.end method

.method static synthetic access$600(Landroid/media/WFDUibcManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    iget-object v0, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/WFDUibcManager;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/WFDUibcManager;

    .prologue
    iget-boolean v0, p0, Landroid/media/WFDUibcManager;->mCoupleShot:Z

    return v0
.end method


# virtual methods
.method public setCoupleShotMode(Z)V
    .locals 0
    .param p1, "isCoupleShot"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/media/WFDUibcManager;->mCoupleShot:Z

    return-void
.end method

.method public setUIBCNegotiagedResolution(FF)V
    .locals 0
    .param p1, "negRs_X"    # F
    .param p2, "negRs_Y"    # F

    .prologue
    iput p1, p0, Landroid/media/WFDUibcManager;->mNegRs_X:F

    iput p2, p0, Landroid/media/WFDUibcManager;->mNegRs_Y:F

    return-void
.end method

.method public start()Z
    .locals 2

    .prologue
    new-instance v0, Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, p0}, Landroid/media/WFDUibcManager$EventDispatcher;-><init>(Landroid/media/WFDUibcManager;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    iget-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-static {v0}, Landroid/media/RemoteDisplay;->nativeStartUIBC(Ljava/lang/Object;)V

    iget-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Landroid/media/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    const-string v0, "WFDUibcManager"

    const-string v1, "Uibc Manager started"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public start(I)Z
    .locals 2
    .param p1, "mSessionId"    # I

    .prologue
    new-instance v0, Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, p0}, Landroid/media/WFDUibcManager$EventDispatcher;-><init>(Landroid/media/WFDUibcManager;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    iget-object v0, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Landroid/media/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    const-string v0, "WFDUibcManager"

    const-string v1, "Uibc Manager start with sessionId"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public stop()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .local v1, "mDm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->isAuSLServiceRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_rotation"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v2, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    if-nez v2, :cond_1

    :goto_0
    return v5

    :cond_1
    iget-object v2, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    iput-boolean v4, v2, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    invoke-static {}, Landroid/media/RemoteDisplay;->nativeStopUIBC()V

    const-string v2, "WFDUibcManager"

    const-string v3, "Going to stop Uibc manager"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v2, "WFDUibcManager"

    const-string v3, "Uibc manager stopped"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v6, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    iput-object v6, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v2, "WFDUibcManager"

    const-string v3, "Error joining event dispatcher thread"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public stop(I)Z
    .locals 5
    .param p1, "mSessionId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    if-nez v1, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    const-string v1, "WFDUibcManager"

    const-string v2, "Going to stop Uibc manager"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string v1, "WFDUibcManager"

    const-string v2, "Uibc manager stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v4, p0, Landroid/media/WFDUibcManager;->mEventDispatcher:Landroid/media/WFDUibcManager$EventDispatcher;

    iput-object v4, p0, Landroid/media/WFDUibcManager;->mEventDispatcherThread:Ljava/lang/Thread;

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "WFDUibcManager"

    const-string v2, "Error joining event dispatcher thread"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
