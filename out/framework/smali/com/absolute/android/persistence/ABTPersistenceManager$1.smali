.class final Lcom/absolute/android/persistence/ABTPersistenceManager$1;
.super Ljava/lang/Object;
.source "ABTPersistenceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/absolute/android/persistence/ABTPersistenceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 898
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 905
    # getter for: Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;
    invoke-static {}, Lcom/absolute/android/persistence/ABTPersistenceManager;->access$000()Landroid/content/ServiceConnection;

    move-result-object v2

    monitor-enter v2

    .line 907
    :try_start_0
    invoke-static {p2}, Lcom/absolute/android/persistence/IABTPersistence$Stub;->asInterface(Landroid/os/IBinder;)Lcom/absolute/android/persistence/IABTPersistence;

    move-result-object v0

    .line 908
    .local v0, "persistenceService":Lcom/absolute/android/persistence/IABTPersistence;
    new-instance v1, Lcom/absolute/android/persistence/ABTPersistenceManager;

    invoke-direct {v1, v0}, Lcom/absolute/android/persistence/ABTPersistenceManager;-><init>(Lcom/absolute/android/persistence/IABTPersistence;)V

    # setter for: Lcom/absolute/android/persistence/ABTPersistenceManager;->s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;
    invoke-static {v1}, Lcom/absolute/android/persistence/ABTPersistenceManager;->access$102(Lcom/absolute/android/persistence/ABTPersistenceManager;)Lcom/absolute/android/persistence/ABTPersistenceManager;

    .line 909
    # getter for: Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;
    invoke-static {}, Lcom/absolute/android/persistence/ABTPersistenceManager;->access$000()Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 910
    monitor-exit v2

    .line 911
    return-void

    .line 910
    .end local v0    # "persistenceService":Lcom/absolute/android/persistence/IABTPersistence;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    .line 915
    # getter for: Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;
    invoke-static {}, Lcom/absolute/android/persistence/ABTPersistenceManager;->access$000()Landroid/content/ServiceConnection;

    move-result-object v1

    monitor-enter v1

    .line 917
    :try_start_0
    # getter for: Lcom/absolute/android/persistence/ABTPersistenceManager;->s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;
    invoke-static {}, Lcom/absolute/android/persistence/ABTPersistenceManager;->access$100()Lcom/absolute/android/persistence/ABTPersistenceManager;

    move-result-object v0

    const/4 v2, 0x0

    # invokes: Lcom/absolute/android/persistence/ABTPersistenceManager;->setService(Lcom/absolute/android/persistence/IABTPersistence;)V
    invoke-static {v0, v2}, Lcom/absolute/android/persistence/ABTPersistenceManager;->access$200(Lcom/absolute/android/persistence/ABTPersistenceManager;Lcom/absolute/android/persistence/IABTPersistence;)V

    .line 918
    monitor-exit v1

    .line 919
    return-void

    .line 918
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
