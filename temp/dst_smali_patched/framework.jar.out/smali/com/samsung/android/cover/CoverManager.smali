.class public Lcom/samsung/android/cover/CoverManager;
.super Ljava/lang/Object;
.source "CoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;,
        Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;,
        Lcom/samsung/android/cover/CoverManager$CoverStateListener;,
        Lcom/samsung/android/cover/CoverManager$StateListener;,
        Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;,
        Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    }
.end annotation


# static fields
.field public static final COVER_MODE_HIDE_SVIEW_ONCE:I = 0x2

.field public static final COVER_MODE_NONE:I = 0x0

.field public static final COVER_MODE_SVIEW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CoverManager"

.field private static sIsFilpCoverSystemFeatureEnabled:Z

.field private static sIsNfcLedCoverSystemFeatureEnabled:Z

.field private static sIsSViewCoverSystemFeatureEnabled:Z

.field private static sIsSystemFeatureQueried:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/cover/ICoverManager;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSystemFeatureQueried:Z

    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mToken:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->initSystemFeature()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/cover/CoverManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/cover/CoverManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized getService()Lcom/samsung/android/cover/ICoverManager;
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "cover"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/cover/ICoverManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/cover/ICoverManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;

    if-nez v0, :cond_0

    const-string v0, "CoverManager"

    const-string v1, "warning: no COVER_MANAGER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mService:Lcom/samsung/android/cover/ICoverManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private initSystemFeature()V
    .locals 2

    .prologue
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSystemFeatureQueried:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.flip"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.sview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    iget-object v0, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.cover.nfcledcover"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSystemFeatureQueried:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const-string v2, "CoverManager"

    const-string v3, "addLedNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportNfcLedCover()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CoverManager"

    const-string v3, "addLedNotification : This device does not support NFC Led cover"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_2

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "CoverManager only available from system UID."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-nez p1, :cond_3

    const-string v2, "CoverManager"

    const-string v3, "addLedNotification : Null notification data!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/cover/ICoverManager;->addLedNotification(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "addLedNotification in sendData to NFC : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableCoverManager(Z)V
    .locals 4
    .param p1, "disable"    # Z

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/cover/CoverManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/samsung/android/cover/ICoverManager;->disableCoverManager(ZLandroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "RemoteException in disalbeCoverManager : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 6

    .prologue
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "CoverManager"

    const-string v5, "getCoverState : This device is not supported cover"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    const/16 v5, 0x3e8

    if-eq v4, v5, :cond_2

    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "CoverManager only available from system UID."

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/samsung/android/cover/ICoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .local v0, "coverState":Lcom/samsung/android/cover/CoverState;
    if-nez v0, :cond_0

    const-string v4, "CoverManager"

    const-string v5, "getCoverState : coverState is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "coverState":Lcom/samsung/android/cover/CoverState;
    .end local v2    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_3
    :goto_1
    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v4, "CoverManager"

    const-string v5, "RemoteException in getCoverState: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public isCoverManagerDisabled()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "disabled":Z
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v2

    .local v2, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/samsung/android/cover/ICoverManager;->isCoverManagerDisabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .end local v2    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "CoverManager"

    const-string v4, "RemoteException in isCoverManagerDisabled : "

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method isSupportCover()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSupportNfcLedCover()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsNfcLedCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportSViewCover()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    return v0
.end method

.method isSupportTypeOfCover(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_1
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsFilpCoverSystemFeatureEnabled:Z

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/samsung/android/cover/CoverManager;->sIsSViewCoverSystemFeatureEnabled:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public registerListener(Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .prologue
    const-string v6, "CoverManager"

    const-string v7, "registerListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "CoverManager"

    const-string v7, "registerListener : This device is not supported cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_2

    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "CoverManager only available from system UID."

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    if-nez p1, :cond_3

    const-string v6, "CoverManager"

    const-string v7, "registerListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .local v1, "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;

    .local v2, "delegate":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v1, v2

    .end local v2    # "delegate":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    :cond_5
    if-nez v1, :cond_6

    new-instance v1, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;

    .end local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    const/4 v6, 0x0

    invoke-direct {v1, p0, p1, v6}, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager;Lcom/samsung/android/cover/CoverManager$CoverStateListener;Landroid/os/Handler;)V

    .restart local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v6, 0x2

    invoke-interface {v5, v1, v0, v6}, Lcom/samsung/android/cover/ICoverManager;->registerListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "CoverManager"

    const-string v7, "RemoteException in registerListener: "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V
    .locals 8
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$StateListener;

    .prologue
    const-string v6, "CoverManager"

    const-string v7, "registerListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "CoverManager"

    const-string v7, "registerListener : This device is not supported cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_2

    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "CoverManager only available from system UID."

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    if-nez p1, :cond_3

    const-string v6, "CoverManager"

    const-string v7, "registerListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .local v1, "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;

    .local v2, "delegate":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    invoke-virtual {v2}, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v1, v2

    .end local v2    # "delegate":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    :cond_5
    if-nez v1, :cond_6

    new-instance v1, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;

    .end local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    const/4 v6, 0x0

    invoke-direct {v1, p0, p1, v6}, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager;Lcom/samsung/android/cover/CoverManager$StateListener;Landroid/os/Handler;)V

    .restart local v1    # "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v5, v1, v0}, Lcom/samsung/android/cover/ICoverManager;->registerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v3

    .local v3, "e":Landroid/os/RemoteException;
    const-string v6, "CoverManager"

    const-string v7, "RemoteException in registerListener: "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public registerNfcTouchListener(ILcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    .prologue
    const-string v6, "CoverManager"

    const-string v7, "registerNfcTouchListener"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportNfcLedCover()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "CoverManager"

    const-string v7, "registerNfcTouchListener : This device does not support NFC Led cover"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v6

    const/16 v7, 0x3e8

    if-eq v6, v7, :cond_2

    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "CoverManager only available from system UID."

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    if-nez p2, :cond_3

    const-string v6, "CoverManager"

    const-string v7, "registerNfcTouchListener : listener is null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .local v4, "nfcTouchListener":Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

    .local v1, "delegate":Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v4, v1

    .end local v1    # "delegate":Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;
    :cond_5
    if-nez v4, :cond_6

    new-instance v4, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

    .end local v4    # "nfcTouchListener":Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;
    const/4 v6, 0x0

    invoke-direct {v4, p0, p2, v6}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;-><init>(Lcom/samsung/android/cover/CoverManager;Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;Landroid/os/Handler;)V

    .restart local v4    # "nfcTouchListener":Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;
    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v5

    .local v5, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v5, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/samsung/android/cover/CoverManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v0, "cm":Landroid/content/ComponentName;
    if-eqz v4, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v5, p1, v4, v0}, Lcom/samsung/android/cover/ICoverManager;->registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "cm":Landroid/content/ComponentName;
    .end local v5    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    const-string v6, "CoverManager"

    const-string v7, "RemoteException in registerNfcTouchListener: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const-string v2, "CoverManager"

    const-string v3, "removeLedNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportNfcLedCover()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CoverManager"

    const-string v3, "removeLedNotification : This device does not support NFC Led cover"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_2

    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "CoverManager only available from system UID."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    if-nez p1, :cond_3

    const-string v2, "CoverManager"

    const-string v3, "removeLedNotification : Null notification data!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1}, Lcom/samsung/android/cover/ICoverManager;->removeLedNotification(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "removeLedNotification in sendData to NFC : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendDataToCover(I[B)V
    .locals 4
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->sendDataToCover(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "RemoteException in sendData : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendDataToNfcLedCover(I[B)V
    .locals 4
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/cover/ICoverManager;->sendDataToNfcLedCover(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "RemoteException in sendData to NFC : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendPowerKeyToCover()V
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v1

    .local v1, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/samsung/android/cover/ICoverManager;->sendPowerKeyToCover()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CoverManager"

    const-string v3, "RemoteException in sendPowerKeyToCover() : "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCoverModeToWindow(Landroid/view/Window;I)V
    .locals 3
    .param p1, "window"    # Landroid/view/Window;
    .param p2, "coverMode"    # I

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportSViewCover()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "CoverManager"

    const-string v2, "setSViewCoverModeToWindow : This device is not supported s view cover"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_2

    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "CoverManager only available from system UID."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "wlp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v0, :cond_0

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public unregisterListener(Lcom/samsung/android/cover/CoverManager$CoverStateListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    .prologue
    const-string v5, "CoverManager"

    const-string v6, "unregisterListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "CoverManager"

    const-string v6, "unregisterListener : This device is not supported cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_2

    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "CoverManager only available from system UID."

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    if-nez p1, :cond_3

    const-string v5, "CoverManager"

    const-string v6, "unregisterListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .local v0, "coverListener":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;

    .local v1, "delegate":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$CoverStateListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, v1

    .end local v1    # "delegate":Lcom/samsung/android/cover/CoverManager$CoverStateListenerDelegate;
    :cond_5
    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v4

    .local v4, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v4, :cond_0

    invoke-interface {v4, v0}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mCoverStateListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v4    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "CoverManager"

    const-string v6, "RemoteException in unregisterListener: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$StateListener;

    .prologue
    const-string v5, "CoverManager"

    const-string v6, "unregisterListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportCover()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "CoverManager"

    const-string v6, "unregisterListener : This device is not supported cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_2

    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "CoverManager only available from system UID."

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    if-nez p1, :cond_3

    const-string v5, "CoverManager"

    const-string v6, "unregisterListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .local v0, "coverListener":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;>;"
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;

    .local v1, "delegate":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;->getListener()Lcom/samsung/android/cover/CoverManager$StateListener;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v0, v1

    .end local v1    # "delegate":Lcom/samsung/android/cover/CoverManager$CoverListenerDelegate;
    :cond_5
    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v4

    .local v4, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v4, :cond_0

    invoke-interface {v4, v0}, Lcom/samsung/android/cover/ICoverManager;->unregisterCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v4    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    const-string v5, "CoverManager"

    const-string v6, "RemoteException in unregisterListener: "

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterNfcTouchListener(Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;)V
    .locals 7
    .param p1, "listener"    # Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListener;

    .prologue
    const-string v5, "CoverManager"

    const-string v6, "unregisterNfcTouchListener"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/cover/CoverManager;->isSupportNfcLedCover()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "CoverManager"

    const-string v6, "unregisterNfcTouchListener : This device does not support NFC Led cover"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    const/16 v6, 0x3e8

    if-eq v5, v6, :cond_2

    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "CoverManager only available from system UID."

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    if-nez p1, :cond_3

    const-string v5, "CoverManager"

    const-string v6, "unregisterNfcTouchListener : listener is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    .local v3, "nfcTouchListener":Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;
    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;

    .local v0, "delegate":Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;->getListener()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v3, v0

    .end local v0    # "delegate":Lcom/samsung/android/cover/CoverManager$NfcLedCoverTouchListenerDelegate;
    :cond_5
    if-eqz v3, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager;->getService()Lcom/samsung/android/cover/ICoverManager;

    move-result-object v4

    .local v4, "svc":Lcom/samsung/android/cover/ICoverManager;
    if-eqz v4, :cond_0

    invoke-interface {v4, v3}, Lcom/samsung/android/cover/ICoverManager;->unregisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/cover/CoverManager;->mNfcLedCoverTouchListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v4    # "svc":Lcom/samsung/android/cover/ICoverManager;
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "CoverManager"

    const-string v6, "RemoteException in unregisterNfcTouchListener: "

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
