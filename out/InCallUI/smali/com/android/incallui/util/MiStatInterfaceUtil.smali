.class public Lcom/android/incallui/util/MiStatInterfaceUtil;
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

    sput-object v0, Lcom/android/incallui/util/MiStatInterfaceUtil;->CHANNEL:Ljava/lang/String;

    return-void
.end method

.method public static final init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const-string v0, "2882303761517368087"

    const-string v1, "5431736885087"

    sget-object v2, Lcom/android/incallui/util/MiStatInterfaceUtil;->CHANNEL:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V

    .line 87
    return-void
.end method

.method public static final recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "category"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 91
    :try_start_0
    invoke-static {p0, p1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
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
    .line 99
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static final varargs recordVideoCallCountEvent(ZZZZ[Ljava/lang/String;)V
    .locals 4
    .param p0, "hasConferenceDiff"    # Z
    .param p1, "hasVideoDiff"    # Z
    .param p2, "isVtConferenceCall"    # Z
    .param p3, "isVideoCall"    # Z
    .param p4, "keys"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    if-eqz p0, :cond_3

    .line 109
    if-eqz p2, :cond_0

    .line 110
    const-string v0, "video_call"

    aget-object v1, p4, v2

    invoke-static {v0, v1}, Lcom/android/incallui/util/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    if-eqz p1, :cond_2

    .line 113
    const-string v1, "video_call"

    if-eqz p3, :cond_1

    aget-object v0, p4, v3

    :goto_0
    invoke-static {v1, v0}, Lcom/android/incallui/util/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_1
    return-void

    .line 113
    :cond_1
    const/4 v0, 0x2

    aget-object v0, p4, v0

    goto :goto_0

    .line 116
    :cond_2
    const-string v0, "video_call"

    aget-object v1, p4, v3

    invoke-static {v0, v1}, Lcom/android/incallui/util/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 119
    :cond_3
    if-eqz p1, :cond_5

    .line 120
    const-string v1, "video_call"

    if-eqz p3, :cond_4

    aget-object v0, p4, v2

    :goto_2
    invoke-static {v1, v0}, Lcom/android/incallui/util/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    aget-object v0, p4, v3

    goto :goto_2

    .line 123
    :cond_5
    const-string v0, "video_call"

    aget-object v1, p4, v2

    invoke-static {v0, v1}, Lcom/android/incallui/util/MiStatInterfaceUtil;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
