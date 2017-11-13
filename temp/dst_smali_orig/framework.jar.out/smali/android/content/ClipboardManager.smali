.class public Landroid/content/ClipboardManager;
.super Landroid/text/ClipboardManager;
.source "ClipboardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;
    }
.end annotation


# static fields
.field static final MSG_REPORT_PRIMARY_CLIP_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ClipboardManager"

.field private static sService:Landroid/content/IClipboard;

.field private static sServiceEx:Landroid/sec/clipboard/IClipboardService;

.field private static final sStaticLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPrimaryClipChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/content/ClipboardManager;->sStaticLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    invoke-direct {p0}, Landroid/text/ClipboardManager;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    new-instance v0, Landroid/content/ClipboardManager$1;

    invoke-direct {v0, p0}, Landroid/content/ClipboardManager$1;-><init>(Landroid/content/ClipboardManager;)V

    iput-object v0, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    new-instance v0, Landroid/content/ClipboardManager$2;

    invoke-direct {v0, p0}, Landroid/content/ClipboardManager$2;-><init>(Landroid/content/ClipboardManager;)V

    iput-object v0, p0, Landroid/content/ClipboardManager;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Landroid/content/ClipboardManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/content/ClipboardManager;

    .prologue
    iget-object v0, p0, Landroid/content/ClipboardManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static getService()Landroid/content/IClipboard;
    .locals 3

    .prologue
    sget-object v2, Landroid/content/ClipboardManager;->sStaticLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/content/ClipboardManager;->sService:Landroid/content/IClipboard;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/content/ClipboardManager;->sService:Landroid/content/IClipboard;

    monitor-exit v2

    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "clipboard"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/content/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IClipboard;

    move-result-object v1

    sput-object v1, Landroid/content/ClipboardManager;->sService:Landroid/content/IClipboard;

    sget-object v1, Landroid/content/ClipboardManager;->sService:Landroid/content/IClipboard;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getServiceEx()Landroid/sec/clipboard/IClipboardService;
    .locals 2

    .prologue
    sget-object v1, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "clipboardEx"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/sec/clipboard/IClipboardService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/clipboard/IClipboardService;

    move-result-object v1

    sput-object v1, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    sget-object v1, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    goto :goto_0
.end method


# virtual methods
.method public addPrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .locals 5
    .param p1, "what"    # Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .prologue
    iget-object v2, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    iget-object v4, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/content/IClipboard;->addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getPrimaryClip()Landroid/content/ClipData;
    .locals 6

    .prologue
    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v4

    invoke-interface {v4}, Landroid/sec/clipboard/IClipboardService;->getDataSize()I

    move-result v4

    if-gtz v4, :cond_0

    const-string v4, "ClipboardManager"

    const-string v5, "clipboardEx has no item."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v3

    :cond_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v4

    iget-object v5, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/IClipboard;->isSEContainerAndIsolated(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v4

    iget-object v5, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/IClipboard;->getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .local v2, "formatid":I
    sget-object v4, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-interface {v4, v2}, Landroid/sec/clipboard/IClipboardService;->GetClipboardData(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .local v0, "cbData":Landroid/sec/clipboard/data/ClipboardData;
    if-nez v0, :cond_2

    const-string v4, "ClipboardManager"

    const-string v5, "getPrimaryClip, cbData is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v2    # "formatid":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    .restart local v2    # "formatid":I
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    goto :goto_0

    .end local v0    # "cbData":Landroid/sec/clipboard/data/ClipboardData;
    .end local v2    # "formatid":I
    :cond_3
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v4

    iget-object v5, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/IClipboard;->getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    goto :goto_0
.end method

.method public getPrimaryClipDescription()Landroid/content/ClipDescription;
    .locals 4

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->getDataSize()I

    move-result v2

    if-gtz v2, :cond_0

    const-string v2, "ClipboardManager"

    const-string v3, "clipboardEx has no item."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v2

    iget-object v3, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/IClipboard;->getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    invoke-virtual {p0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    .local v0, "clip":Landroid/content/ClipData;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasPrimaryClip()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->getDataSize()I

    move-result v2

    if-gtz v2, :cond_0

    const-string v2, "ClipboardManager"

    const-string v3, "clipboardEx has no item."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v2

    iget-object v3, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/IClipboard;->hasPrimaryClip(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public hasText()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v2

    invoke-interface {v2}, Landroid/sec/clipboard/IClipboardService;->getDataSize()I

    move-result v2

    if-gtz v2, :cond_0

    const-string v2, "ClipboardManager"

    const-string v3, "clipboardEx has no item."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v2

    iget-object v3, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/IClipboard;->hasClipboardText(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;)V
    .locals 4
    .param p1, "what"    # Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    .prologue
    iget-object v2, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v1

    iget-object v3, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedServiceListener:Landroid/content/IOnPrimaryClipChangedListener$Stub;

    invoke-interface {v1, v3}, Landroid/content/IClipboard;->removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method reportPrimaryClipChanged()V
    .locals 5

    .prologue
    iget-object v4, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "N":I
    if-gtz v0, :cond_1

    monitor-exit v4

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Landroid/content/ClipboardManager;->mPrimaryClipChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .local v2, "listeners":[Ljava/lang/Object;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    aget-object v3, v2, v1

    check-cast v3, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;

    invoke-interface {v3}, Landroid/content/ClipboardManager$OnPrimaryClipChangedListener;->onPrimaryClipChanged()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "listeners":[Ljava/lang/Object;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setPrimaryClip(Landroid/content/ClipData;)V
    .locals 12
    .param p1, "clip"    # Landroid/content/ClipData;

    .prologue
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ClipData;->prepareToLeaveProcess()V

    :cond_0
    invoke-static {}, Landroid/content/ClipboardManager;->getService()Landroid/content/IClipboard;

    move-result-object v9

    iget-object v10, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, p1, v10}, Landroid/content/IClipboard;->setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, "callingUid":I
    const/4 v8, -0x1

    .local v8, "userId":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static {v9}, Landroid/os/PersonaManager;->isBBCContainer(I)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v8, 0x0

    :goto_0
    invoke-static {}, Landroid/content/ClipboardManager;->getServiceEx()Landroid/sec/clipboard/IClipboardService;

    move-result-object v9

    if-eqz v9, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v9

    if-lez v9, :cond_1

    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "text/plain"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_4

    new-instance v5, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v5}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .local v5, "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v9

    if-lez v9, :cond_1

    if-eqz v5, :cond_3

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/sec/clipboard/data/list/ClipboardDataText;->setText(Ljava/lang/CharSequence;)Z

    sget-object v9, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getFormat()I

    move-result v10

    const/4 v11, 0x1

    invoke-interface {v9, v10, v5, v11, v8}, Landroid/sec/clipboard/IClipboardService;->setData(ILandroid/sec/clipboard/data/ClipboardData;ZI)Z

    .end local v0    # "callingUid":I
    .end local v5    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v8    # "userId":I
    :cond_1
    :goto_1
    return-void

    .restart local v0    # "callingUid":I
    .restart local v8    # "userId":I
    :cond_2
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    goto :goto_0

    .restart local v5    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    :cond_3
    const-string v9, "ClipboardManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In ClipboardManager...sServiceEx : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", txt : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .end local v0    # "callingUid":I
    .end local v5    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v8    # "userId":I
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "callingUid":I
    .restart local v8    # "userId":I
    :cond_4
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "text/html"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_6

    new-instance v3, Landroid/sec/clipboard/data/list/ClipboardDataHtml;

    invoke-direct {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;-><init>()V

    .local v3, "html":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v9

    if-lez v9, :cond_1

    if-eqz v3, :cond_5

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p1, v10}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ClipData$Item;->getHtmlText()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->setHtmlInternal(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    sget-object v9, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataHtml;->getFormat()I

    move-result v10

    const/4 v11, 0x1

    invoke-interface {v9, v10, v3, v11, v8}, Landroid/sec/clipboard/IClipboardService;->setData(ILandroid/sec/clipboard/data/ClipboardData;ZI)Z

    goto :goto_1

    :cond_5
    const-string v9, "ClipboardManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In ClipboardManager...sServiceEx :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", html :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v3    # "html":Landroid/sec/clipboard/data/list/ClipboardDataHtml;
    :cond_6
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "text/uri-list"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_8

    new-instance v7, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    invoke-direct {v7}, Landroid/sec/clipboard/data/list/ClipboardDataUri;-><init>()V

    .local v7, "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v6

    .local v6, "uri":Landroid/net/Uri;
    if-eqz v7, :cond_7

    invoke-virtual {v7, v6}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->setUri(Landroid/net/Uri;)Z

    sget-object v9, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v7}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->getFormat()I

    move-result v10

    const/4 v11, 0x1

    invoke-interface {v9, v10, v7, v11, v8}, Landroid/sec/clipboard/IClipboardService;->setData(ILandroid/sec/clipboard/data/ClipboardData;ZI)Z

    goto/16 :goto_1

    :cond_7
    const-string v9, "ClipboardManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In ClipboardManager...sServiceEx :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uri :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v6    # "uri":Landroid/net/Uri;
    .end local v7    # "uriData":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    :cond_8
    invoke-virtual {p1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "text/vnd.android.intent"

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    if-nez v9, :cond_a

    new-instance v4, Landroid/sec/clipboard/data/list/ClipboardDataIntent;

    invoke-direct {v4}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;-><init>()V

    .local v4, "intent":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v9

    if-lez v9, :cond_1

    if-eqz v4, :cond_9

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->setIntent(Landroid/content/Intent;)Z

    sget-object v9, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v4}, Landroid/sec/clipboard/data/list/ClipboardDataIntent;->getFormat()I

    move-result v10

    const/4 v11, 0x1

    invoke-interface {v9, v10, v4, v11, v8}, Landroid/sec/clipboard/IClipboardService;->setData(ILandroid/sec/clipboard/data/ClipboardData;ZI)Z

    goto/16 :goto_1

    :cond_9
    const-string v9, "ClipboardManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In ClipboardManager...sServiceEx :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", intent :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v4    # "intent":Landroid/sec/clipboard/data/list/ClipboardDataIntent;
    :cond_a
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    iget-object v10, p0, Landroid/content/ClipboardManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v10}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "data":Ljava/lang/CharSequence;
    new-instance v5, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v5}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .restart local v5    # "txt":Landroid/sec/clipboard/data/list/ClipboardDataText;
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-lez v9, :cond_1

    if-eqz v5, :cond_1

    if-eqz v5, :cond_b

    invoke-virtual {v5, v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->setText(Ljava/lang/CharSequence;)Z

    sget-object v9, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataText;->getFormat()I

    move-result v10

    const/4 v11, 0x1

    invoke-interface {v9, v10, v5, v11, v8}, Landroid/sec/clipboard/IClipboardService;->setData(ILandroid/sec/clipboard/data/ClipboardData;ZI)Z

    goto/16 :goto_1

    :cond_b
    const-string v9, "ClipboardManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "In ClipboardManager...sServiceEx :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Landroid/content/ClipboardManager;->sServiceEx:Landroid/sec/clipboard/IClipboardService;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", txt :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    invoke-static {v0, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
