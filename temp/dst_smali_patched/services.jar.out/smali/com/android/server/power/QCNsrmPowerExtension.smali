.class public final Lcom/android/server/power/QCNsrmPowerExtension;
.super Ljava/lang/Object;
.source "QCNsrmPowerExtension.java"


# static fields
.field static final TAG:Ljava/lang/String; = "QCNsrmPowerExtn"

.field static final localLOGV:Z


# instance fields
.field private final mPmsBlockedUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private pmHandle:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 1
    .param p1, "handle"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/QCNsrmPowerExtension;->mPmsBlockedUids:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/power/QCNsrmPowerExtension;->pmHandle:Lcom/android/server/power/PowerManagerService;

    return-void
.end method

.method private checkWorkSourceObjectId(ILcom/android/server/power/PowerManagerService$WakeLock;)Z
    .locals 4
    .param p1, "uid"    # I
    .param p2, "wl"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    :try_start_0
    iget-object v2, p2, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p2, Lcom/android/server/power/PowerManagerService$WakeLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v2, v1}, Landroid/os/WorkSource;->get(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    return v3

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    return v3
.end method

.method private updatePmsBlockedUids(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/power/QCNsrmPowerExtension;->mPmsBlockedUids:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/QCNsrmPowerExtension;->mPmsBlockedUids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private updatePmsBlockedWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z
    .locals 3
    .param p1, "wakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;
    .param p2, "update"    # Z

    .prologue
    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mFlags:I

    const v1, 0xffff

    and-int/2addr v0, v1

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eq v0, p2, :cond_1

    iget-object v0, p0, Lcom/android/server/power/QCNsrmPowerExtension;->pmHandle:Lcom/android/server/power/PowerManagerService;

    if-eqz v0, :cond_1

    iput-boolean p2, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    iget-boolean v0, p1, Lcom/android/server/power/PowerManagerService$WakeLock;->mDisabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/QCNsrmPowerExtension;->pmHandle:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockReleasedLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/QCNsrmPowerExtension;->pmHandle:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/power/PowerManagerService;->notifyWakeLockAcquiredLocked(Lcom/android/server/power/PowerManagerService$WakeLock;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected checkPmsBlockedWakelocks(IIILjava/lang/String;Lcom/android/server/power/PowerManagerService$WakeLock;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "flags"    # I
    .param p4, "tag"    # Ljava/lang/String;
    .param p5, "pMwakeLock"    # Lcom/android/server/power/PowerManagerService$WakeLock;

    .prologue
    iget-object v0, p0, Lcom/android/server/power/QCNsrmPowerExtension;->mPmsBlockedUids:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p5, v0}, Lcom/android/server/power/QCNsrmPowerExtension;->updatePmsBlockedWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    :cond_0
    return-void
.end method

.method protected processPmsBlockedUid(IZLjava/util/ArrayList;)Z
    .locals 5
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, "mWakeLocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/PowerManagerService$WakeLock;>;"
    const/4 v0, 0x0

    .local v0, "changed":Z
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/QCNsrmPowerExtension;->updatePmsBlockedUidAllowed(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .local v2, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    if-eqz v2, :cond_2

    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-eq v3, p1, :cond_1

    invoke-direct {p0, p1, v2}, Lcom/android/server/power/QCNsrmPowerExtension;->checkWorkSourceObjectId(ILcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const-string v4, "*sync*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_2

    :cond_1
    invoke-direct {p0, v2, p2}, Lcom/android/server/power/QCNsrmPowerExtension;->updatePmsBlockedWakelock(Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_3
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/server/power/QCNsrmPowerExtension;->pmHandle:Lcom/android/server/power/PowerManagerService;

    iget v4, v3, Lcom/android/server/power/PowerManagerService;->mDirty:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/server/power/PowerManagerService;->mDirty:I

    iget-object v3, p0, Lcom/android/server/power/QCNsrmPowerExtension;->pmHandle:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v3}, Lcom/android/server/power/PowerManagerService;->updatePowerStateLocked()V

    :cond_4
    return v0
.end method

.method protected updatePmsBlockedUidAllowed(IZ)Z
    .locals 2
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/QCNsrmPowerExtension;->updatePmsBlockedUids(IZ)V

    const/4 v0, 0x0

    return v0
.end method
