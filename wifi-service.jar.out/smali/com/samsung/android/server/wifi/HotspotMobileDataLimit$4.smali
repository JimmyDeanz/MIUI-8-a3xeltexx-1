.class Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$4;
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
    .line 96
    iput-object p1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$4;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 99
    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$4;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    # getter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$600(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_ap_mobile_data_limit_value"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "limit":Ljava/lang/String;
    const-string v1, "HotspotMobileDataLimit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APMobileDataLimitValue onChange, new limit : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    if-eqz v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit$4;->this$0:Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->mLimitData:Ljava/math/BigDecimal;
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;->access$1202(Lcom/samsung/android/server/wifi/HotspotMobileDataLimit;Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 103
    :cond_0
    return-void
.end method
