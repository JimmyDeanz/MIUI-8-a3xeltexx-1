.class Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;
.super Ljava/lang/Object;
.source "EpdgImsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/epdg/handover/EpdgImsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OmadmEpdgSettings"
.end annotation


# instance fields
.field private mCdmaRssi:I

.field private mLteRsrp1:I

.field private mLteRsrp2:I

.field private mLteRsrp3:I

.field private mTepdg1xTimer:I

.field private mTepdgLteTimer:I

.field private mTepdgWifiTimer:I

.field private mWifiRssiA:I

.field private mWifiRssiB:I

.field final synthetic this$0:Lcom/sec/epdg/handover/EpdgImsSettings;


# direct methods
.method public constructor <init>(Lcom/sec/epdg/handover/EpdgImsSettings;)V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiA:I

    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiB:I

    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp1:I

    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp2:I

    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp3:I

    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mCdmaRssi:I

    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgLteTimer:I

    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdg1xTimer:I

    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdg1xTimer:I

    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgWifiTimer:I

    return-void
.end method


# virtual methods
.method public getCdmaRssi()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mCdmaRssi:I

    return v0
.end method

.method public getLteRsrp1()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp1:I

    return v0
.end method

.method public getLteRsrp2()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp2:I

    return v0
.end method

.method public getLteRsrp3()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp3:I

    return v0
.end method

.method public getTepdg1xTimer()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdg1xTimer:I

    return v0
.end method

.method public getTepdgLteTimer()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgLteTimer:I

    return v0
.end method

.method public getTepdgWifiTimer()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgWifiTimer:I

    return v0
.end method

.method public getWifiRssiA()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiA:I

    return v0
.end method

.method public getWifiRssiB()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiB:I

    return v0
.end method

.method public setCdmaRssi(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x88

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPDG_TH1X : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getCdmaRssi()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string v3, "smartwificdmarssi"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mCdmaRssi:I

    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_1
    return-void
.end method

.method public setLteRsrp1(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x85

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPDG_THLTE1 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string v3, "smartwifirsrp1"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp1:I

    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_1
    return-void
.end method

.method public setLteRsrp2(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x86

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPDG_THLTE2 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string v3, "smartwifirsrp2"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp2:I

    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_1
    return-void
.end method

.method public setLteRsrp3(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x87

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPDG_THLTE3 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string v3, "smartwifirsrp3"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp3:I

    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_1
    return-void
.end method

.method public setTepdg1xTimer(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x8d

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T_EPDG_1X : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string v3, "tepdg1xtimer"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdg1xTimer:I

    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_1
    return-void
.end method

.method public setTepdgLteTimer(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x8b

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T_EPDG_LTE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string v3, "tepdgltetimer"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgLteTimer:I

    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_1
    return-void
.end method

.method public setTepdgWifiTimer(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x8c

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "T_EPDG_WIFI : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string v3, "sysseltimer"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgWifiTimer:I

    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_1
    return-void
.end method

.method public setWifiRssiA(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x89

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPDG_VOWT_A : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInVoice()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string v3, "smartwifirssiroveinvoice"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiA:I

    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_1
    return-void

    .restart local v0    # "settingVal":Ljava/lang/String;
    .restart local v1    # "val":I
    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string v3, "smartwifirssia"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setWifiRssiB(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sp":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v3, 0x8a

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "settingVal":Ljava/lang/String;
    const-string v2, "[EpdgImsSettings]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EPDG_VOWT_B : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string v3, "smartwifirssib"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiB:I

    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_1
    return-void
.end method
