.class Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
.super Ljava/lang/Object;
.source "MediaFocusControl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/MediaFocusControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplayInfoForServer"
.end annotation


# instance fields
.field private mArtworkExpectedHeight:I

.field private mArtworkExpectedWidth:I

.field private mClientNotifListComp:Landroid/content/ComponentName;

.field private mEnabled:Z

.field private final mRcDisplay:Landroid/media/IRemoteControlDisplay;

.field private final mRcDisplayBinder:Landroid/os/IBinder;

.field private mWantsPositionSync:Z

.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/media/IRemoteControlDisplay;II)V
    .locals 1
    .param p2, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    const/4 v0, -0x1

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I

    iput v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z

    iput-object p2, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {p2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I

    iput p4, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mWantsPositionSync:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .prologue
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Landroid/content/ComponentName;)Landroid/content/ComponentName;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .param p1, "x1"    # Landroid/content/ComponentName;

    .prologue
    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mClientNotifListComp:Landroid/content/ComponentName;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mEnabled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)Landroid/media/IRemoteControlDisplay;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .prologue
    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .prologue
    iget v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedWidth:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .prologue
    iget v0, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mArtworkExpectedHeight:I

    return p1
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .prologue
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mPRStack:Ljava/util/Stack;
    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl;->access$2000(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/Stack;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    const-string v2, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteControl: display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " died"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->this$0:Lcom/android/server/audio/MediaFocusControl;

    # getter for: Lcom/android/server/audio/MediaFocusControl;->mRcDisplays:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/audio/MediaFocusControl;->access$2100(Lcom/android/server/audio/MediaFocusControl;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;

    .local v0, "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    iget-object v2, v0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-ne v2, v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    monitor-exit v3

    .end local v0    # "di":Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;
    :goto_0
    return-void

    :cond_1
    monitor-exit v3

    goto :goto_0

    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public init()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MediaFocusControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerRemoteControlDisplay() has a dead client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public release()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$DisplayInfoForServer;->mRcDisplayBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "MediaFocusControl"

    const-string v2, "Error in DisplaInfoForServer.relase()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
