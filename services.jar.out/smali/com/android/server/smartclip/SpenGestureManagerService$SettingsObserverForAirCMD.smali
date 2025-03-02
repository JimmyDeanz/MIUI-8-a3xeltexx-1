.class Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;
.super Landroid/database/ContentObserver;
.source "SpenGestureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserverForAirCMD"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1661
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    .line 1662
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1663
    return-void
.end method

.method private isFloatingEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1688
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_cmd_use_minimized"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 1666
    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1100()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1668
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;->isFloatingEnabled()Z

    move-result v2

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDFloatingEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3902(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    .line 1669
    const-string v1, "air_cmd_use_minimized"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1671
    return-void
.end method

.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 1675
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;->isFloatingEnabled()Z

    move-result v1

    .line 1677
    .local v1, "floatingEnabled":Z
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDFloatingEnabled:Z
    invoke-static {v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3900(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 1678
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # setter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mAirCMDFloatingEnabled:Z
    invoke-static {v2, v1}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$3902(Lcom/android/server/smartclip/SpenGestureManagerService;Z)Z

    .line 1679
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # getter for: Lcom/android/server/smartclip/SpenGestureManagerService;->mIsPenInserted:Z
    invoke-static {v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$600(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1680
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1681
    .local v0, "extras":Landroid/os/Bundle;
    const-string/jumbo v2, "floating_enabled"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1682
    iget-object v2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$SettingsObserverForAirCMD;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    # invokes: Lcom/android/server/smartclip/SpenGestureManagerService;->sendAirCommandStateChangeIntent(Landroid/os/Bundle;)V
    invoke-static {v2, v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->access$1400(Lcom/android/server/smartclip/SpenGestureManagerService;Landroid/os/Bundle;)V

    .line 1685
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    return-void
.end method
