.class Lcom/android/server/am/ActivityManagerService$22;
.super Ljava/lang/Thread;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->logStrictModeViolationToDropBox(Lcom/android/server/am/ProcessRecord;Landroid/os/StrictMode$ViolationInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$dbox:Landroid/os/DropBoxManager;

.field final synthetic val$dropboxTag:Ljava/lang/String;

.field final synthetic val$sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/os/DropBoxManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 18287
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$22;->this$0:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dbox:Landroid/os/DropBoxManager;

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dropboxTag:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 18291
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    monitor-enter v2

    .line 18292
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 18293
    .local v0, "report":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 18294
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$22;->val$sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->trimToSize()V

    .line 18295
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18296
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 18297
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dbox:Landroid/os/DropBoxManager;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$22;->val$dropboxTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 18299
    :cond_0
    return-void

    .line 18295
    .end local v0    # "report":Ljava/lang/String;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
