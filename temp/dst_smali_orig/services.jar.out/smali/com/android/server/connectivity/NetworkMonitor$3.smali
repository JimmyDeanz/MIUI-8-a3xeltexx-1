.class Lcom/android/server/connectivity/NetworkMonitor$3;
.super Landroid/app/IProcessObserver$Stub;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    const v7, 0x82010

    const/4 v6, 0x0

    if-eqz p3, :cond_1

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->removeMessages(I)V
    invoke-static {v3, v7}, Lcom/android/server/connectivity/NetworkMonitor;->access$4700(Lcom/android/server/connectivity/NetworkMonitor;I)V

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCurrentUid:I
    invoke-static {v3, p2}, Lcom/android/server/connectivity/NetworkMonitor;->access$4802(Lcom/android/server/connectivity/NetworkMonitor;I)I

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {p2}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCurrentTxByteUid:J
    invoke-static {v3, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$4902(Lcom/android/server/connectivity/NetworkMonitor;J)J

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .local v2, "pkgs":[Ljava/lang/String;
    aget-object v1, v2, v6

    .local v1, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$4100(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$1000(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v3

    const-string v5, "connectivity"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v4, v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$4102(Lcom/android/server/connectivity/NetworkMonitor;Landroid/net/ConnectivityManager;)Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$4100(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/ConnectivityManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .local v0, "mobileInfo":Landroid/net/NetworkInfo;
    const-string v3, "NetworkMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onForegroundActivitiesChanged: pid-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", packageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mIsCaptivePortalLoginActivityCreated:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivityCreated:Z
    invoke-static {v5}, Lcom/android/server/connectivity/NetworkMonitor;->access$5000(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mSmartDetectionAvailable:Z
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$4600(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "NetworkMonitor"

    const-string v4, "onForegroundActivitiesChanged: calling state"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "mobileInfo":Landroid/net/NetworkInfo;
    .end local v1    # "packageName":Ljava/lang/String;
    .end local v2    # "pkgs":[Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .restart local v0    # "mobileInfo":Landroid/net/NetworkInfo;
    .restart local v1    # "packageName":Ljava/lang/String;
    .restart local v2    # "pkgs":[Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "NetworkMonitor"

    const-string v4, "onForegroundActivitiesChanged: mobile data not connected"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/16 v3, 0x3e8

    if-ne v3, p2, :cond_4

    const-string v3, "NetworkMonitor"

    const-string v4, "onForegroundActivitiesChanged: skip system uid"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivity:Z
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$5100(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "NetworkMonitor"

    const-string v4, "onForegroundActivitiesChanged: DO NOT check after captiveportallogin"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivity:Z
    invoke-static {v3, v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$5102(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    goto :goto_0

    :cond_5
    const-string v3, "com.android.captiveportallogin"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivity:Z
    invoke-static {v3, v4}, Lcom/android/server/connectivity/NetworkMonitor;->access$5102(Lcom/android/server/connectivity/NetworkMonitor;Z)Z

    :cond_6
    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # getter for: Lcom/android/server/connectivity/NetworkMonitor;->mIsCaptivePortalLoginActivityCreated:Z
    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$5000(Lcom/android/server/connectivity/NetworkMonitor;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # invokes: Lcom/android/server/connectivity/NetworkMonitor;->isSmartCPDetectException(Ljava/lang/String;)Z
    invoke-static {v3, v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$5200(Lcom/android/server/connectivity/NetworkMonitor;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    # setter for: Lcom/android/server/connectivity/NetworkMonitor;->mCaptivePortalTxCheckSec:I
    invoke-static {v3, v6}, Lcom/android/server/connectivity/NetworkMonitor;->access$5302(Lcom/android/server/connectivity/NetworkMonitor;I)I

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$3;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v7, v4, v5}, Lcom/android/server/connectivity/NetworkMonitor;->sendMessageDelayed(IJ)V

    goto :goto_0
.end method

.method public onProcessDied(II)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    return-void
.end method

.method public onProcessStateChanged(III)V
    .locals 0
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "procState"    # I

    .prologue
    return-void
.end method
