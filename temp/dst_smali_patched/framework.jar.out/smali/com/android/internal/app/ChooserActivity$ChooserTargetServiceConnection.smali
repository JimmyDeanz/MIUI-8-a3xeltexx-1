.class Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChooserTargetServiceConnection"
.end annotation


# instance fields
.field private mChooserActivity:Lcom/android/internal/app/ChooserActivity;

.field private final mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

.field private mConnectedComponent:Landroid/content/ComponentName;

.field private final mLock:Ljava/lang/Object;

.field private final mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity;Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;)V
    .locals 1
    .param p1, "chooserActivity"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "dri"    # Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection$1;-><init>(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)V

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mConnectedComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;)Lcom/android/internal/app/ChooserActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    iget-object v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    if-nez v2, :cond_0

    const-string v2, "ChooserActivity"

    const-string v4, "destroyed ChooserTargetServiceConnection got onServiceConnected"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    invoke-static {p2}, Landroid/service/chooser/IChooserTargetService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/chooser/IChooserTargetService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "icts":Landroid/service/chooser/IChooserTargetService;
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolvedComponentName()Landroid/content/ComponentName;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    iget-object v5, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserTargetResult:Landroid/service/chooser/IChooserTargetResult;

    invoke-interface {v1, v2, v4, v5}, Landroid/service/chooser/IChooserTargetService;->getChooserTargets(Landroid/content/ComponentName;Landroid/content/IntentFilter;Landroid/service/chooser/IChooserTargetResult;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v3

    goto :goto_0

    .end local v1    # "icts":Landroid/service/chooser/IChooserTargetService;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v1    # "icts":Landroid/service/chooser/IChooserTargetService;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string v2, "ChooserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Querying ChooserTargetService "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v2, p0}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;
    invoke-static {v2}, Lcom/android/internal/app/ChooserActivity;->access$000(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->destroy()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    if-nez v0, :cond_0

    const-string v0, "ChooserActivity"

    const-string v2, "destroyed ChooserTargetServiceConnection got onServiceDisconnected"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ChooserActivity;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$000(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mServiceConnections:Ljava/util/List;
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$000(Lcom/android/internal/app/ChooserActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    # getter for: Lcom/android/internal/app/ChooserActivity;->mChooserHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->access$200(Lcom/android/internal/app/ChooserActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mChooserActivity:Lcom/android/internal/app/ChooserActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ChooserActivity;->sendVoiceChoicesIfNeeded()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mConnectedComponent:Landroid/content/ComponentName;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChooserTargetServiceConnection{service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mConnectedComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserTargetServiceConnection;->mOriginalTarget:Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivity$DisplayResolveInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/ActivityInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
