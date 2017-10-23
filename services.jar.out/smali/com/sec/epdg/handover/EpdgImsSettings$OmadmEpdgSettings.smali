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

    .line 257
    iput-object p1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiA:I

    .line 259
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiB:I

    .line 260
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp1:I

    .line 261
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp2:I

    .line 262
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp3:I

    .line 263
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mCdmaRssi:I

    .line 264
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgLteTimer:I

    .line 265
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdg1xTimer:I

    .line 266
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdg1xTimer:I

    .line 267
    iput v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgWifiTimer:I

    .line 268
    return-void
.end method


# virtual methods
.method public getCdmaRssi()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mCdmaRssi:I

    return v0
.end method

.method public getLteRsrp1()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp1:I

    return v0
.end method

.method public getLteRsrp2()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp2:I

    return v0
.end method

.method public getLteRsrp3()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp3:I

    return v0
.end method

.method public getTepdg1xTimer()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdg1xTimer:I

    return v0
.end method

.method public getTepdgLteTimer()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgLteTimer:I

    return v0
.end method

.method public getTepdgWifiTimer()I
    .locals 1

    .prologue
    .line 405
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgWifiTimer:I

    return v0
.end method

.method public getWifiRssiA()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiA:I

    return v0
.end method

.method public getWifiRssiB()I
    .locals 1

    .prologue
    .line 293
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

    .line 361
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 362
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 363
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

    .line 364
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 365
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getCdmaRssi()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string/jumbo v3, "smartwificdmarssi"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mCdmaRssi:I

    .line 370
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

    .line 313
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 314
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 315
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

    .line 316
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 317
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 318
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string/jumbo v3, "smartwifirsrp1"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp1:I

    .line 322
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

    .line 329
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 330
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
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

    .line 332
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 333
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 334
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string/jumbo v3, "smartwifirsrp2"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp2:I

    .line 338
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

    .line 345
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 346
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 347
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

    .line 348
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 349
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 350
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string/jumbo v3, "smartwifirsrp3"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mLteRsrp3:I

    .line 354
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

    .line 393
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 394
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 395
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

    .line 396
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 397
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string/jumbo v3, "tepdg1xtimer"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdg1xTimer:I

    .line 402
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

    .line 377
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 378
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 379
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

    .line 380
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 381
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 382
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string/jumbo v3, "tepdgltetimer"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgLteTimer:I

    .line 386
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

    .line 409
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 410
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 411
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

    .line 412
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 413
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 414
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string/jumbo v3, "sysseltimer"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mTepdgWifiTimer:I

    .line 418
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

    .line 275
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 276
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
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

    .line 278
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 279
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 280
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInVoice()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string/jumbo v3, "smartwifirssiroveinvoice"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :cond_0
    :goto_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiA:I

    .line 290
    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_1
    return-void

    .line 284
    .restart local v0    # "settingVal":Ljava/lang/String;
    .restart local v1    # "val":I
    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 285
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string/jumbo v3, "smartwifirssia"

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

    .line 297
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 298
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
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

    .line 300
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 301
    .local v1, "val":I
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 302
    iget-object v2, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->this$0:Lcom/sec/epdg/handover/EpdgImsSettings;

    # getter for: Lcom/sec/epdg/handover/EpdgImsSettings;->mEpdgSettingsWriter:Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v2}, Lcom/sec/epdg/handover/EpdgImsSettings;->access$000(Lcom/sec/epdg/handover/EpdgImsSettings;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v2

    const-string/jumbo v3, "smartwifirssib"

    invoke-virtual {v2, v3, v0}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_0
    iput v1, p0, Lcom/sec/epdg/handover/EpdgImsSettings$OmadmEpdgSettings;->mWifiRssiB:I

    .line 306
    .end local v0    # "settingVal":Ljava/lang/String;
    .end local v1    # "val":I
    :cond_1
    return-void
.end method
