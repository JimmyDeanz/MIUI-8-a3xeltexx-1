.class Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDataObserver;
.super Landroid/content/pm/IPackageDataObserver$Stub;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDataObserver"
.end annotation


# instance fields
.field finished:Z

.field result:Z

.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0

    .prologue
    .line 1891
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDataObserver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/pm/IPackageDataObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveCompleted(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "succeeded"    # Z

    .prologue
    .line 1895
    monitor-enter p0

    .line 1896
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDataObserver;->finished:Z

    .line 1897
    iput-boolean p2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageDataObserver;->result:Z

    .line 1898
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1899
    monitor-exit p0

    .line 1900
    return-void

    .line 1899
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
