.class public Lcom/samsung/android/smartclip/SpenGestureManager;
.super Ljava/lang/Object;
.source "SpenGestureManager.java"


# static fields
.field public static final GLOBAL_AIR_BUTTON_ALL_ENABLE:I = -0x1

.field public static final GLOBAL_AIR_BUTTON_FLASHANNOTATE:I = 0x2

.field public static final GLOBAL_AIR_BUTTON_GALAXYFINDER:I = 0x3

.field public static final GLOBAL_AIR_BUTTON_MULTIWINDOW:I = 0x4

.field public static final GLOBAL_AIR_BUTTON_QUICKMEMO:I = 0x0

.field public static final GLOBAL_AIR_BUTTON_RAKEIN:I = 0x1

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mService:Lcom/samsung/android/smartclip/ISpenGestureService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "SpenGestureManager"

    sput-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/smartclip/SpenGestureManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    iput-object p1, p0, Lcom/samsung/android/smartclip/SpenGestureManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    return-void
.end method

.method private declared-synchronized getService()Lcom/samsung/android/smartclip/ISpenGestureService;
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    if-nez v0, :cond_0

    const-string v0, "spengestureservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    iget-object v0, p0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    if-nez v0, :cond_0

    const-string v0, "SpenGestureManager"

    const-string v1, "warning: no SpenGestureManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getAirButtonHitTest(III)I
    .locals 3
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/smartclip/ISpenGestureService;->getAirButtonHitTest(III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/smartclip/ISpenGestureService;->getScrollableAreaInfo(Landroid/graphics/Rect;Landroid/os/IBinder;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "viewHash"    # I
    .param p3, "skipWindowToken"    # Landroid/os/IBinder;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/smartclip/ISpenGestureService;->getScrollableViewInfo(Landroid/graphics/Rect;ILandroid/os/IBinder;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;
    .param p3, "extractionMode"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/smartclip/ISpenGestureService;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    return-object v2

    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSmartClipDataFromCurrentScreen()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .locals 5

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    check-cast v2, Landroid/graphics/Rect;

    const/4 v3, 0x0

    check-cast v3, Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/smartclip/ISpenGestureService;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    return-object v2

    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public injectInputEvent(IILjava/util/ArrayList;ZLandroid/os/IBinder;)V
    .locals 7
    .param p1, "targetX"    # I
    .param p2, "targetY"    # I
    .param p4, "waitUntilConsume"    # Z
    .param p5, "skipWindowToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/InputEvent;",
            ">;Z",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, "inputEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/InputEvent;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v0

    .local v0, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v3, v1, [Landroid/view/InputEvent;

    .local v3, "array":[Landroid/view/InputEvent;
    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "array":[Landroid/view/InputEvent;
    check-cast v3, [Landroid/view/InputEvent;

    .restart local v3    # "array":[Landroid/view/InputEvent;
    move v1, p1

    move v2, p2

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/samsung/android/smartclip/ISpenGestureService;->injectInputEvent(II[Landroid/view/InputEvent;ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "array":[Landroid/view/InputEvent;
    :cond_0
    return-void

    .end local v0    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_0
    move-exception v6

    .local v6, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public declared-synchronized isServiceAvailable()Z
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "spengestureservice"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v0

    .local v0, "service":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-nez v0, :cond_0

    sget-object v1, Lcom/samsung/android/smartclip/SpenGestureManager;->TAG:Ljava/lang/String;

    const-string v2, "isServiceAvailable : Service not available"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .end local v0    # "service":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendSmartClipRemoteRequestResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;)V
    .locals 3
    .param p1, "result"    # Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/samsung/android/smartclip/ISpenGestureService;->sendSmartClipRemoteRequestResult(Lcom/samsung/android/smartclip/SmartClipRemoteRequestResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setDisableGlobalAirBottonAppindex(I)V
    .locals 0
    .param p1, "index"    # I

    .prologue
    return-void
.end method

.method public setFocusWindow(I)V
    .locals 4
    .param p1, "focusSurfaceLayer"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/smartclip/SpenGestureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFocusWindow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    invoke-interface {v1, p1}, Lcom/samsung/android/smartclip/ISpenGestureService;->setFocusWindow(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
