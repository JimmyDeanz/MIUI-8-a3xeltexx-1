.class Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field finished:Z

.field result:Z

.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0

    .prologue
    .line 4275
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDeleteObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageDeleted(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I

    .prologue
    const/4 v0, 0x1

    .line 4281
    monitor-enter p0

    .line 4282
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDeleteObserver;->finished:Z

    .line 4283
    if-ne p2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDeleteObserver;->result:Z

    .line 4284
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 4285
    monitor-exit p0

    .line 4286
    return-void

    .line 4283
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 4285
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
