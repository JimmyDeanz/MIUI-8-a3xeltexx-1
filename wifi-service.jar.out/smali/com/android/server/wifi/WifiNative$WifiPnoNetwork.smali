.class public Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;
.super Ljava/lang/Object;
.source "WifiNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WifiPnoNetwork"
.end annotation


# instance fields
.field SSID:Ljava/lang/String;

.field auth:I

.field configKey:Ljava/lang/String;

.field flags:I

.field rssi_threshold:I

.field final synthetic this$0:Lcom/android/server/wifi/WifiNative;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiNative;Landroid/net/wifi/WifiConfiguration;I)V
    .locals 2
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p3, "threshold"    # I

    .prologue
    const/4 v1, 0x1

    .line 3282
    iput-object p1, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->this$0:Lcom/android/server/wifi/WifiNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3283
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3284
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->SSID:Ljava/lang/String;

    .line 3285
    iput v1, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->flags:I

    .line 3289
    :goto_0
    iput p3, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->rssi_threshold:I

    .line 3290
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3291
    iget v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->auth:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->auth:I

    .line 3301
    :goto_1
    iget v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->flags:I

    or-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->flags:I

    .line 3302
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->configKey:Ljava/lang/String;

    .line 3303
    return-void

    .line 3287
    :cond_0
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 3292
    :cond_1
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3294
    :cond_2
    iget v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->auth:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->auth:I

    goto :goto_1

    .line 3295
    :cond_3
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    .line 3296
    iget v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->auth:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->auth:I

    goto :goto_1

    .line 3298
    :cond_4
    iget v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->auth:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->auth:I

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3308
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3309
    const-string v1, " flags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3310
    const-string v1, " rssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->rssi_threshold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3311
    const-string v1, " auth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wifi/WifiNative$WifiPnoNetwork;->auth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
