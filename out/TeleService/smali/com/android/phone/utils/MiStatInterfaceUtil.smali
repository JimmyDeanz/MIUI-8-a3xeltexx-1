.class public Lcom/android/phone/utils/MiStatInterfaceUtil;
.super Ljava/lang/Object;
.source "MiStatInterfaceUtil.java"


# static fields
.field public static CHANNEL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "default channel"

    sput-object v0, Lcom/android/phone/utils/MiStatInterfaceUtil;->CHANNEL:Ljava/lang/String;

    return-void
.end method

.method public static final init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const-string v0, "2882303761517356493"

    const-string v1, "5421735629493"

    sget-object v2, Lcom/android/phone/utils/MiStatInterfaceUtil;->CHANNEL:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V

    .line 30
    return-void
.end method

.method public static final recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
