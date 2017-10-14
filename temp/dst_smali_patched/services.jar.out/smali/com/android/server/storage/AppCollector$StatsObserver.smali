.class Lcom/android/server/storage/AppCollector$StatsObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "AppCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/AppCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsObserver"
.end annotation


# instance fields
.field private mCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPackageStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageStats;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/storage/AppCollector;


# direct methods
.method public constructor <init>(Lcom/android/server/storage/AppCollector;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/storage/AppCollector;
    .param p2, "count"    # I

    .prologue
    iput-object p1, p0, Lcom/android/server/storage/AppCollector$StatsObserver;->this$0:Lcom/android/server/storage/AppCollector;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/storage/AppCollector$StatsObserver;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/storage/AppCollector$StatsObserver;->mPackageStats:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 2
    .param p1, "packageStats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/storage/AppCollector$StatsObserver;->mPackageStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/storage/AppCollector$StatsObserver;->mCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/storage/AppCollector$StatsObserver;->this$0:Lcom/android/server/storage/AppCollector;

    invoke-static {v0}, Lcom/android/server/storage/AppCollector;->-get0(Lcom/android/server/storage/AppCollector;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/storage/AppCollector$StatsObserver;->mPackageStats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
