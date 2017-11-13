.class public final Landroid/net/wifi/WifiConfiguration$Visibility;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Visibility"
.end annotation


# instance fields
.field public BSSID24:Ljava/lang/String;

.field public BSSID5:Ljava/lang/String;

.field public age24:J

.field public age5:J

.field public bandPreferenceBoost:I

.field public currentNetworkBoost:I

.field public lastChoiceBoost:I

.field public lastChoiceConfig:Ljava/lang/String;

.field public num24:I

.field public num5:I

.field public rssi24:I

.field public rssi5:I

.field public score:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    sget v0, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    .line 584
    sget v0, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    .line 585
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration$Visibility;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration$Visibility;

    .prologue
    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 588
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    .line 589
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    .line 590
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->age24:J

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->age24:J

    .line 591
    iget-wide v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->age5:J

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->age5:J

    .line 592
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    .line 593
    iget v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    iput v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    .line 594
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    .line 595
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    .line 596
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 601
    .local v0, "sbuf":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    sget v2, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-le v1, v2, :cond_0

    .line 603
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi24:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->num24:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID24:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    :cond_0
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    sget v2, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    if-le v1, v2, :cond_1

    .line 610
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->rssi5:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->num5:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->BSSID5:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    :cond_1
    iget v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->score:I

    if-eqz v1, :cond_2

    .line 616
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->score:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 617
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->currentNetworkBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 618
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->bandPreferenceBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 619
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceConfig:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 620
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 621
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration$Visibility;->lastChoiceConfig:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :cond_2
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
