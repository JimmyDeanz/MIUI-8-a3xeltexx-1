.class Lcom/android/server/wifi/WifiServiceImpl$5;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v0, ""

    .local v0, "mMCCMNC":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .local v1, "simState_int":I
    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->filePathDefaultAp:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1800()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->filePathGeneralinfo:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1900()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mFirstScanAddProfile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2000()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->isBootCompleted:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1100(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getVendorApInfo()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->checkNetworkName()V
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->access$2100(Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;)V

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfileLoaded:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2200()Z

    move-result v2

    if-nez v2, :cond_0

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mReMovableDefaultAp:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1600()Z

    move-result v2

    if-eqz v2, :cond_2

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->filePathDefaultApCheck:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1700()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    move-result-object v2

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->checkWifiVendorProfile([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;Z)V

    :cond_0
    :goto_0
    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mFirstScanAddProfile:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiServiceImpl;->access$2002(Z)Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    move-result-object v2

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->checkWifiVendorProfile([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;Z)V

    goto :goto_0

    :cond_3
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->filePathGeneralinfo:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1900()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->filePathDefaultAp:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1800()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mFirstScanAddProfile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2000()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->isBootCompleted:Z
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$1100(Lcom/android/server/wifi/WifiServiceImpl;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getVendorApInfo()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getGeneralNwInfo()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getPrevNetworkName()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    move-result-object v2

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->removeChangedWifiProfile([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;)V

    const-string v2, ""

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mMatchedPrevNetworkName:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mRemoveWifiProfile:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2500()Z

    move-result v2

    if-nez v2, :cond_4

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfileLoaded:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2200()Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mReMovableDefaultAp:Z
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1600()Z

    move-result v2

    if-eqz v2, :cond_6

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->filePathDefaultApCheck:Ljava/io/File;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$1700()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    move-result-object v2

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->checkWifiVendorProfile([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;Z)V

    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->getPostNetworkName()V

    # setter for: Lcom/android/server/wifi/WifiServiceImpl;->mFirstScanAddProfile:Z
    invoke-static {v4}, Lcom/android/server/wifi/WifiServiceImpl;->access$2002(Z)Z

    goto/16 :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$5;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mWifiProfile:Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;
    invoke-static {v2}, Lcom/android/server/wifi/WifiServiceImpl;->access$600(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;

    move-result-object v2

    # getter for: Lcom/android/server/wifi/WifiServiceImpl;->mApInfo:[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;
    invoke-static {}, Lcom/android/server/wifi/WifiServiceImpl;->access$2300()[Lcom/android/server/wifi/WifiServiceImpl$ApInfo;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiServiceImpl$WifiProfile;->checkWifiVendorProfile([Lcom/android/server/wifi/WifiServiceImpl$ApInfo;Z)V

    goto :goto_2
.end method
