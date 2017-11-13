.class Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$3;
.super Landroid/database/ContentObserver;
.source "HotspotMobileDataLimit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$3;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$3;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$3;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$600(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_ap_mobile_data_limit"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_0

    :goto_0
    # setter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mDataLimited:Z
    invoke-static {v2, v0}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$1102(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Z)Z

    const-string v0, "HotspotMobileDataLimit"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Mobile AP data limit change to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$3;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mDataLimited:Z
    invoke-static {v2}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$1100(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
