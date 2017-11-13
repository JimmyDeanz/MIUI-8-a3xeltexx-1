.class Lcom/android/server/wifi/WifiNotificationController$6;
.super Landroid/database/ContentObserver;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiNotificationController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNotificationController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController$6;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v4, 0x0

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->LOW_SIGNAL_URI:Landroid/net/Uri;
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController;->access$3300()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$6;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->checkIfLowSignalFromProvider()Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$3400(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v0

    .local v0, "lowSignal":Z
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$6;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mLowSignal:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$2800(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$6;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$2900(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$6;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const-wide/16 v2, 0x0

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J
    invoke-static {v1, v2, v3}, Lcom/android/server/wifi/WifiNotificationController;->access$3002(Lcom/android/server/wifi/WifiNotificationController;J)J

    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$6;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # setter for: Lcom/android/server/wifi/WifiNotificationController;->mLowSignal:Z
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiNotificationController;->access$2802(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$6;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z
    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->access$2900(Lcom/android/server/wifi/WifiNotificationController;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$6;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$6;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    # getter for: Lcom/android/server/wifi/WifiNotificationController;->mNumOpenNetworks:I
    invoke-static {v2}, Lcom/android/server/wifi/WifiNotificationController;->access$3500(Lcom/android/server/wifi/WifiNotificationController;)I

    move-result v2

    # invokes: Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    invoke-static {v1, v4, v2, v4, v4}, Lcom/android/server/wifi/WifiNotificationController;->access$3200(Lcom/android/server/wifi/WifiNotificationController;ZIZI)V

    .end local v0    # "lowSignal":Z
    :cond_1
    return-void
.end method
