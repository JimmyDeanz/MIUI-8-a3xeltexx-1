.class Lcom/android/server/notification/NotificationManagerService$5;
.super Lcom/android/server/notification/ZenModeHelper$Callback;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .prologue
    .line 1182
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Lcom/android/server/notification/ZenModeHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigChanged()V
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->savePolicyFile()V

    .line 1186
    return-void
.end method

.method onPolicyChanged()V
    .locals 2

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "android.app.action.NOTIFICATION_POLICY_CHANGED"

    # invokes: Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$3100(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 1199
    return-void
.end method

.method onZenModeChanged()V
    .locals 2

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "android.app.action.INTERRUPTION_FILTER_CHANGED"

    # invokes: Lcom/android/server/notification/NotificationManagerService;->sendRegisteredOnlyBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->access$3100(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 1191
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1192
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    # invokes: Lcom/android/server/notification/NotificationManagerService;->updateInterruptionFilterLocked()V
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$3200(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1193
    monitor-exit v1

    .line 1194
    return-void

    .line 1193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
