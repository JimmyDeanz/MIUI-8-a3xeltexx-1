.class final Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDeathRecipient"
.end annotation


# instance fields
.field final mApp:Lcom/android/server/am/ProcessRecord;

.field final mAppThread:Landroid/app/IApplicationThread;

.field final mPid:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;)V
    .locals 2
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "pid"    # I
    .param p4, "thread"    # Landroid/app/IApplicationThread;

    .prologue
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mApp:Lcom/android/server/am/ProcessRecord;

    iput-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mSystemUIProcessRecord:Lcom/android/server/am/ProcessRecord;

    :cond_0
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v1, "com.android.systemui.recents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mApp:Lcom/android/server/am/ProcessRecord;

    iput-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mRecentProcessRecord:Lcom/android/server/am/ProcessRecord;

    :cond_1
    iget-object v0, p2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mApp:Lcom/android/server/am/ProcessRecord;

    iput-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mPhoneProcessRecord:Lcom/android/server/am/ProcessRecord;

    :cond_2
    iput p3, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mPid:I

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mAppThread:Landroid/app/IApplicationThread;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .prologue
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mPid:I

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$AppDeathRecipient;->mAppThread:Landroid/app/IApplicationThread;

    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;Z)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
