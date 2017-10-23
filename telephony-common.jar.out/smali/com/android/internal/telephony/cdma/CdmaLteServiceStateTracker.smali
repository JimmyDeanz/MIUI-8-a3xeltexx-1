.class public Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;
.super Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
.source "CdmaLteServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;
    }
.end annotation


# static fields
.field private static final DAN_DELAY_TIMER:I = 0x1388

.field private static final DCN_HYST_TIMER:I = 0x3a98

.field private static final EVENT_ALL_DATA_DISCONNECTED:I = 0x3e9

.field private static final EVENT_DCN_TIMER_START:I = 0x7d0

.field private static final EVENT_DCN_TIMER_STOP:I = 0x7d1


# instance fields
.field private mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

.field private final mCellInfoLte:Landroid/telephony/CellInfoLte;

.field private mDCNMessageTimer:Z

.field mLatestDataRadioTechnology:I

.field mPreferredNetworkType:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMALTEPhone;)V
    .locals 4
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .prologue
    const/4 v3, 0x0

    .line 110
    new-instance v0, Landroid/telephony/CellInfoLte;

    invoke-direct {v0}, Landroid/telephony/CellInfoLte;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/telephony/CellInfo;)V

    .line 102
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDCNMessageTimer:Z

    .line 111
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    .line 112
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v0, Landroid/telephony/CellInfoLte;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    .line 115
    iput v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    .line 118
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v0, Landroid/telephony/CellInfoLte;

    new-instance v1, Landroid/telephony/CellSignalStrengthLte;

    invoke-direct {v1}, Landroid/telephony/CellSignalStrengthLte;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/CellInfoLte;->setCellSignalStrength(Landroid/telephony/CellSignalStrengthLte;)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v0, Landroid/telephony/CellInfoLte;

    new-instance v1, Landroid/telephony/CellIdentityLte;

    invoke-direct {v1}, Landroid/telephony/CellIdentityLte;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    .line 121
    const-string v0, "CdmaLteServiceStateTracker Constructors"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method private PnnFromUicc()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1436
    const/4 v0, 0x0

    .line 1437
    .local v0, "displayname":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    .line 1438
    .local v3, "sim_app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v3, :cond_0

    .line 1439
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/SIMRecords;

    .line 1440
    .local v2, "sim":Lcom/android/internal/telephony/uicc/SIMRecords;
    const-string v4, "gsm.operator.numeric.real"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1441
    .local v1, "realOperatorNumeric":Ljava/lang/String;
    if-eqz v2, :cond_0

    iget-boolean v4, v2, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsEnabledPNN:Z

    if-eqz v4, :cond_0

    iget-boolean v4, v2, Lcom/android/internal/telephony/uicc/SIMRecords;->mIsPNNExist:Z

    if-eqz v4, :cond_0

    .line 1442
    invoke-virtual {v2, v1, v7, v7}, Lcom/android/internal/telephony/uicc/SIMRecords;->getAllEonsNames(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    .line 1443
    const-string v4, "CdmaSST"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Eons Name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    .end local v1    # "realOperatorNumeric":Ljava/lang/String;
    .end local v2    # "sim":Lcom/android/internal/telephony/uicc/SIMRecords;
    :cond_0
    return-object v0
.end method

.method private isDCNHystTimerRunning()Z
    .locals 1

    .prologue
    .line 1431
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDCNMessageTimer:Z

    return v0
.end method

.method private isInHomeSidNid(II)Z
    .locals 5
    .param p1, "sid"    # I
    .param p2, "nid"    # I

    .prologue
    const v4, 0xffff

    const/4 v1, 0x1

    .line 1299
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isSidsAllZeros()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1316
    :cond_0
    :goto_0
    return v1

    .line 1302
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    array-length v2, v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 1304
    if-eqz p1, :cond_0

    .line 1306
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 1309
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeSystemId:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eq v2, v4, :cond_0

    if-eqz p2, :cond_0

    if-eq p2, v4, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mHomeNetworkId:[I

    aget v2, v2, v0

    if-eq v2, p2, :cond_0

    .line 1306
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1316
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->unregisterForSimRecordsLoaded(Landroid/os/Handler;)V

    .line 127
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dispose()V

    .line 128
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1421
    const-string v0, "CdmaLteServiceStateTracker extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1422
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCdmaLtePhone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCdmaLtePhone:Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLatestDataRadioTechnology="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1427
    return-void
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1326
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_1

    .line 1327
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    .line 1340
    :cond_0
    :goto_0
    return-object v0

    .line 1329
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    .local v0, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v2

    .line 1332
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1335
    sget-boolean v1, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v1, :cond_0

    .line 1339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllCellInfo: arrayList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1333
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3

    .prologue
    .line 1346
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CDMALTEPhone;->getPhoneId()I

    move-result v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 139
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-boolean v9, v9, Lcom/android/internal/telephony/cdma/CDMAPhone;->mIsTheCurrentActivePhone:Z

    if-nez v9, :cond_1

    .line 140
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Received message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->what:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " while being destroyed. Ignoring."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 287
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget v9, p1, Landroid/os/Message;->what:I

    sparse-switch v9, :sswitch_data_0

    .line 285
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 147
    :sswitch_0
    const-string v9, "handleMessage EVENT_POLL_STATE_GPRS"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 148
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 149
    .local v1, "ar":Landroid/os/AsyncResult;
    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v9, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 153
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_1
    const-string v9, "handleMessage EVENT_POLL_STATE_NETWORK_SELECTION_MODE"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 154
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 155
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget v9, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v9, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    goto :goto_0

    .line 159
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    .line 161
    const/4 v6, 0x0

    .line 162
    .local v6, "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    instance-of v9, v9, Lcom/android/internal/telephony/uicc/RuimRecords;

    if-nez v9, :cond_9

    .line 163
    const-string v9, "IccRecords is not RuimRecords.."

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 165
    const-string v9, "ACG"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 166
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v10

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    .line 167
    .local v2, "cdmaUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v2, :cond_2

    .line 168
    const-string v9, "cdmaUiccApp is not Null."

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    .line 170
    .local v4, "mRuimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v4, :cond_8

    check-cast v4, Lcom/android/internal/telephony/uicc/RuimRecords;

    .end local v4    # "mRuimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    move-object v6, v4

    .line 174
    .end local v2    # "cdmaUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :cond_2
    :goto_1
    if-eqz v6, :cond_0

    .line 182
    :goto_2
    if-eqz v6, :cond_6

    .line 183
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->isProvisioned()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_SupportCSIM"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v9, :cond_5

    .line 187
    :cond_3
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMdn()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMdn:Ljava/lang/String;

    .line 188
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->getMin()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMin:Ljava/lang/String;

    .line 189
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->getSid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->getNid()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->parseSidNid(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/RuimRecords;->getPrlVersion()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    .line 192
    sget-boolean v9, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-nez v9, :cond_4

    .line 193
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MDN: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMdn:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", MIN: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mMin:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", PRL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 196
    :cond_4
    iput-boolean v13, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIsMinInfoReady:Z

    .line 199
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v10, "airplane_mode_on"

    invoke-static {v9, v10, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 200
    .local v0, "airplaneModeState":I
    const-string v9, "3"

    const-string v10, "ril.otasp_state"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    if-eq v0, v13, :cond_6

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateOtaspState()V

    .line 207
    .end local v0    # "airplaneModeState":I
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->prepareEri()V

    .line 211
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollState()V

    .line 212
    const-string v9, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 214
    :cond_7
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v10}, Landroid/telephony/ServiceState;->getState()I

    move-result v10

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->displayTimeDisplayScheme(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 170
    .restart local v2    # "cdmaUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v4    # "mRuimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 178
    .end local v2    # "cdmaUiccApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v4    # "mRuimRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :cond_9
    iget-object v6, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .end local v6    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    check-cast v6, Lcom/android/internal/telephony/uicc/RuimRecords;

    .restart local v6    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    goto/16 :goto_2

    .line 218
    .end local v6    # "ruim":Lcom/android/internal/telephony/uicc/RuimRecords;
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    goto/16 :goto_0

    .line 221
    :sswitch_4
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    .line 222
    .local v3, "dds":I
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v9

    invoke-virtual {v9, v3, p0}, Lcom/android/internal/telephony/ProxyController;->unregisterForAllDataDisconnected(ILandroid/os/Handler;)V

    .line 223
    monitor-enter p0

    .line 224
    :try_start_0
    iget-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v9, :cond_a

    .line 225
    const-string v9, "EVENT_ALL_DATA_DISCONNECTED, turn radio off now."

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hangupAndPowerOff()V

    .line 227
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 231
    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 229
    :cond_a
    :try_start_1
    const-string v9, "EVENT_ALL_DATA_DISCONNECTED is stale"

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 235
    .end local v3    # "dds":I
    :sswitch_5
    const-string v9, "CdmaSST"

    const-string v10, "EVENT_DCN_TIMER expired"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iput-boolean v12, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDCNMessageTimer:Z

    .line 237
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v7

    .line 238
    .local v7, "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    if-eqz v7, :cond_0

    .line 239
    const-string v9, "CdmaSST"

    const-string v10, "Sending domain change notification"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-virtual {v7, v12}, Lcom/android/internal/telephony/SMSDispatcher;->sendDomainChangeSms(B)V

    goto/16 :goto_0

    .line 245
    .end local v7    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :sswitch_6
    const-string v9, "CdmaSST"

    const-string v10, "EVENT_DCN_TIMER Started"

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iput-boolean v13, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDCNMessageTimer:Z

    .line 248
    const/16 v9, 0x7d1

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    const-wide/16 v10, 0x1388

    invoke-virtual {p0, v9, v10, v11}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 253
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 255
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    const/16 v9, 0x15

    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 256
    .local v5, "message":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v10, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPreferredNetworkType:I

    invoke-interface {v9, v10, v5}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 260
    .end local v1    # "ar":Landroid/os/AsyncResult;
    .end local v5    # "message":Landroid/os/Message;
    :sswitch_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 261
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v9, :cond_0

    .line 262
    iget-object v9, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Landroid/os/Message;

    invoke-static {v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v9

    iget-object v10, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    iput-object v10, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 264
    iget-object v9, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v9, Landroid/os/Message;

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 269
    .end local v1    # "ar":Landroid/os/AsyncResult;
    :sswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 271
    .restart local v1    # "ar":Landroid/os/AsyncResult;
    iget-object v9, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v9, :cond_b

    .line 272
    iget-object v9, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    check-cast v9, [I

    aget v9, v9, v12

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPreferredNetworkType:I

    .line 277
    :goto_4
    const/16 v9, 0x14

    iget-object v10, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    invoke-virtual {p0, v9, v10}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 278
    .restart local v5    # "message":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getGlobalModeNetworkType()I

    move-result v8

    .line 280
    .local v8, "toggledNetworkType":I
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v9, v8, v5}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 274
    .end local v5    # "message":Landroid/os/Message;
    .end local v8    # "toggledNetworkType":I
    :cond_b
    iget-object v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getGlobalModeNetworkType()I

    move-result v9

    iput v9, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_4

    .line 145
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_0
        0xe -> :sswitch_1
        0x10 -> :sswitch_3
        0x13 -> :sswitch_9
        0x14 -> :sswitch_7
        0x15 -> :sswitch_8
        0x1b -> :sswitch_2
        0x3e9 -> :sswitch_4
        0x7d0 -> :sswitch_6
        0x7d1 -> :sswitch_5
    .end sparse-switch
.end method

.method protected handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    .locals 31
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 294
    const/4 v2, 0x5

    move/from16 v0, p1

    if-ne v0, v2, :cond_b

    .line 295
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v27, v2

    check-cast v27, [Ljava/lang/String;

    .line 297
    .local v27, "states":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlePollStateResultMessage: EVENT_POLL_STATE_GPRS states.length="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, " states="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 301
    const/16 v19, 0x0

    .line 302
    .local v19, "newDataRAT":I
    const/16 v22, -0x1

    .line 304
    .local v22, "regState":I
    const/16 v16, -0x1

    .line 305
    .local v16, "lac":I
    const/4 v8, -0x1

    .line 308
    .local v8, "cid":I
    move-object/from16 v0, v27

    array-length v2, v0

    if-lez v2, :cond_3

    .line 310
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 313
    move-object/from16 v0, v27

    array-length v2, v0

    const/16 v29, 0x3

    move/from16 v0, v29

    if-lt v2, v0, :cond_1

    .line 314
    const/4 v2, 0x1

    aget-object v2, v27, v2

    if-eqz v2, :cond_0

    .line 315
    const/4 v2, 0x1

    aget-object v2, v27, v2

    const/16 v29, 0x10

    move/from16 v0, v29

    invoke-static {v2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v16

    .line 317
    :cond_0
    const/4 v2, 0x2

    aget-object v2, v27, v2

    if-eqz v2, :cond_1

    .line 318
    const/4 v2, 0x2

    aget-object v2, v27, v2

    const/16 v29, 0x10

    move/from16 v0, v29

    invoke-static {v2, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v8

    .line 321
    :cond_1
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDataLac:I

    .line 322
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDataCid:I

    .line 325
    move-object/from16 v0, v27

    array-length v2, v0

    const/16 v29, 0x4

    move/from16 v0, v29

    if-lt v2, v0, :cond_2

    const/4 v2, 0x3

    aget-object v2, v27, v2

    if-eqz v2, :cond_2

    .line 326
    const/4 v2, 0x3

    aget-object v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v19

    .line 332
    :cond_2
    :goto_0
    move-object/from16 v0, v27

    array-length v2, v0

    const/16 v29, 0xa

    move/from16 v0, v29

    if-lt v2, v0, :cond_3

    .line 339
    const/16 v21, 0x0

    .line 342
    .local v21, "operatorNumeric":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v21

    .line 343
    const/4 v2, 0x0

    const/16 v29, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 356
    .local v3, "mcc":I
    :goto_1
    const/4 v2, 0x3

    :try_start_2
    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result v4

    .line 366
    .local v4, "mnc":I
    :goto_2
    const/4 v2, 0x6

    :try_start_3
    aget-object v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v7

    .line 373
    .local v7, "tac":I
    :goto_3
    const/4 v2, 0x7

    :try_start_4
    aget-object v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    move-result v6

    .line 380
    .local v6, "pci":I
    :goto_4
    const/16 v2, 0x8

    :try_start_5
    aget-object v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    move-result v5

    .line 387
    .local v5, "eci":I
    :goto_5
    const/16 v2, 0x9

    :try_start_6
    aget-object v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7

    move-result v9

    .line 395
    .local v9, "csgid":I
    :goto_6
    new-instance v2, Landroid/telephony/CellIdentityLte;

    invoke-direct/range {v2 .. v7}, Landroid/telephony/CellIdentityLte;-><init>(IIIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlePollStateResultMessage: mNewLteCellIdentity="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 402
    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDataTac:I

    .line 406
    move-object/from16 v0, v27

    array-length v2, v0

    const/16 v29, 0xc

    move/from16 v0, v29

    if-lt v2, v0, :cond_3

    .line 408
    const/16 v2, 0xb

    :try_start_7
    aget-object v2, v27, v2

    if-eqz v2, :cond_3

    .line 409
    const/16 v2, 0xb

    aget-object v2, v27, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v23

    .line 410
    .local v23, "snapshotStatus":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setSnapshotStatus(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_8

    .line 427
    .end local v3    # "mcc":I
    .end local v4    # "mnc":I
    .end local v5    # "eci":I
    .end local v6    # "pci":I
    .end local v7    # "tac":I
    .end local v9    # "csgid":I
    .end local v21    # "operatorNumeric":Ljava/lang/String;
    .end local v23    # "snapshotStatus":I
    :cond_3
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v20

    .line 428
    .local v20, "oldDataRAT":I
    if-nez v20, :cond_4

    if-nez v19, :cond_6

    :cond_4
    invoke-static/range {v20 .. v20}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xe

    move/from16 v0, v19

    if-eq v0, v2, :cond_6

    :cond_5
    const/16 v2, 0xe

    move/from16 v0, v20

    if-ne v0, v2, :cond_7

    invoke-static/range {v19 .. v19}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 434
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v29, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->getSignalStrength(Landroid/os/Message;)V

    .line 437
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 438
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->regCodeToServiceState(I)I

    move-result v10

    .line 439
    .local v10, "dataRegState":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v10}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 443
    const-string v2, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 444
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v29, "gsm.network.type"

    invoke-static/range {v19 .. v19}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v29, "gsm.operator.ispsroaming"

    const-string v30, "true"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlPollStateResultMessage: CdmaLteSST setDataRegState="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, " regState="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, " dataRadioTechnology="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 508
    .end local v8    # "cid":I
    .end local v10    # "dataRegState":I
    .end local v16    # "lac":I
    .end local v19    # "newDataRAT":I
    .end local v20    # "oldDataRAT":I
    .end local v22    # "regState":I
    .end local v27    # "states":[Ljava/lang/String;
    :cond_9
    :goto_9
    return-void

    .line 328
    .restart local v8    # "cid":I
    .restart local v16    # "lac":I
    .restart local v19    # "newDataRAT":I
    .restart local v22    # "regState":I
    .restart local v27    # "states":[Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 329
    .local v12, "ex":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlePollStateResultMessage: error parsing GprsRegistrationState: "

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 344
    .end local v12    # "ex":Ljava/lang/NumberFormatException;
    .restart local v21    # "operatorNumeric":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 346
    .local v11, "e":Ljava/lang/Exception;
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v21

    .line 347
    const/4 v2, 0x0

    const/16 v29, 0x3

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-result v3

    .restart local v3    # "mcc":I
    goto/16 :goto_1

    .line 348
    .end local v3    # "mcc":I
    :catch_2
    move-exception v12

    .line 349
    .local v12, "ex":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlePollStateResultMessage: bad mcc operatorNumeric="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, " ex="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 351
    const-string v21, ""

    .line 352
    const v3, 0x7fffffff

    .restart local v3    # "mcc":I
    goto/16 :goto_1

    .line 357
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "ex":Ljava/lang/Exception;
    :catch_3
    move-exception v11

    .line 358
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlePollStateResultMessage: bad mnc operatorNumeric="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, " e="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 360
    const v4, 0x7fffffff

    .restart local v4    # "mnc":I
    goto/16 :goto_2

    .line 367
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v11

    .line 368
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlePollStateResultMessage: bad tac states[6]="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v29, 0x6

    aget-object v29, v27, v29

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, " e="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 370
    const v7, 0x7fffffff

    .restart local v7    # "tac":I
    goto/16 :goto_3

    .line 374
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v11

    .line 375
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlePollStateResultMessage: bad pci states[7]="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v29, 0x7

    aget-object v29, v27, v29

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, " e="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 377
    const v6, 0x7fffffff

    .restart local v6    # "pci":I
    goto/16 :goto_4

    .line 381
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v11

    .line 382
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlePollStateResultMessage: bad eci states[8]="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v29, 0x8

    aget-object v29, v27, v29

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, " e="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    .line 384
    const v5, 0x7fffffff

    .restart local v5    # "eci":I
    goto/16 :goto_5

    .line 388
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v11

    .line 392
    .restart local v11    # "e":Ljava/lang/Exception;
    const v9, 0x7fffffff

    .restart local v9    # "csgid":I
    goto/16 :goto_6

    .line 412
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v11

    .line 413
    .restart local v11    # "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "handlePollStateResultMessage: bad snapstatus states[11]="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v29, 0xb

    aget-object v29, v27, v29

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v29, " e="

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 452
    .end local v3    # "mcc":I
    .end local v4    # "mnc":I
    .end local v5    # "eci":I
    .end local v6    # "pci":I
    .end local v7    # "tac":I
    .end local v9    # "csgid":I
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v21    # "operatorNumeric":Ljava/lang/String;
    .restart local v10    # "dataRegState":I
    .restart local v20    # "oldDataRAT":I
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v29, "gsm.operator.ispsroaming"

    const-string v30, "false"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-virtual {v2, v0, v1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 462
    .end local v8    # "cid":I
    .end local v10    # "dataRegState":I
    .end local v16    # "lac":I
    .end local v19    # "newDataRAT":I
    .end local v20    # "oldDataRAT":I
    .end local v22    # "regState":I
    .end local v27    # "states":[Ljava/lang/String;
    :cond_b
    const/16 v2, 0xe

    move/from16 v0, p1

    if-ne v0, v2, :cond_10

    .line 464
    move-object/from16 v0, p2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v15, v2

    check-cast v15, [I

    .line 469
    .local v15, "ints":[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v29, v0

    const/4 v2, 0x0

    aget v2, v15, v2

    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v2, v0, :cond_f

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/telephony/ServiceState;->setIsManualSelection(Z)V

    .line 471
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v29, "CscFeature_RIL_SupportAllRat"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-nez v2, :cond_d

    .line 473
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v2

    const-string v29, "persist.radio.multisim.stackid"

    const-string v30, "0"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v2, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 474
    .local v26, "stackId":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v2

    const-string v29, "ril.ICC_TYPE"

    const-string v30, "1"

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v2, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 475
    .local v13, "iccType":Ljava/lang/String;
    const-string v2, "0"

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "3"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "4"

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 476
    :cond_c
    const-string v2, "Manual Selection with CTC card"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 477
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/16 v29, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 478
    new-instance v14, Landroid/content/Intent;

    const-string v2, "com.samsung.intent.action.ACTION_SIXMODE_MANUAL_SELECTION"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .local v14, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 480
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v29, 0x0

    move-object/from16 v0, v29

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 485
    .end local v13    # "iccType":Ljava/lang/String;
    .end local v14    # "intent":Landroid/content/Intent;
    .end local v26    # "stackId":Ljava/lang/String;
    :cond_d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v29, "CscFeature_RIL_NetworkInfoRat"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 486
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v28

    .line 487
    .local v28, "subId":I
    invoke-static/range {v28 .. v28}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v25

    .line 489
    .local v25, "sp1":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "network_selection_key"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v29, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 491
    .local v17, "network_selection_key":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "network_selection_name_key"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v29, ""

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 493
    .local v18, "network_selection_name_key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 495
    :cond_e
    const-string v2, "update manual selection mode to auto."

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v24

    .line 497
    .local v24, "sp":Landroid/content/SharedPreferences;
    invoke-interface/range {v24 .. v24}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 498
    .local v11, "e":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "network_selection_key"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v29, ""

    move-object/from16 v0, v29

    invoke-interface {v11, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "network_selection_name_key"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v29, ""

    move-object/from16 v0, v29

    invoke-interface {v11, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 500
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_9

    .line 469
    .end local v11    # "e":Landroid/content/SharedPreferences$Editor;
    .end local v17    # "network_selection_key":Ljava/lang/String;
    .end local v18    # "network_selection_name_key":Ljava/lang/String;
    .end local v24    # "sp":Landroid/content/SharedPreferences;
    .end local v25    # "sp1":Landroid/content/SharedPreferences;
    .end local v28    # "subId":I
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_a

    .line 506
    .end local v15    # "ints":[I
    :cond_10
    invoke-super/range {p0 .. p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V

    goto/16 :goto_9
.end method

.method public isConcurrentVoiceAndDataAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 1264
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1265
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_1

    .line 1288
    :cond_0
    :goto_0
    return v0

    .line 1270
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportVolte"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1272
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallTracker;->hasPsAutomaticCallOnly()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/internal/telephony/CallTracker;->mSkipDisableDataConnection:Z

    if-nez v1, :cond_0

    .line 1279
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    const/16 v2, 0xf

    if-eq v1, v2, :cond_0

    .line 1288
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1411
    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaLteSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1416
    const-string v0, "CdmaSST"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CdmaLteSST] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1417
    return-void
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "isGsm"    # Z

    .prologue
    const/16 v4, 0xe

    .line 1238
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1241
    const/4 p2, 0x1

    .line 1243
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z

    move-result v1

    .line 1245
    .local v1, "ssChanged":Z
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v3

    .line 1246
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1247
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Landroid/telephony/CellInfoLte;->setTimeStamp(J)V

    .line 1248
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/telephony/CellInfoLte;->setTimeStampType(I)V

    .line 1249
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    const v5, 0x7fffffff

    invoke-virtual {v2, v4, v5}, Landroid/telephony/CellSignalStrengthLte;->initialize(Landroid/telephony/SignalStrength;I)V

    .line 1252
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v2}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    .local v0, "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfoLte:Landroid/telephony/CellInfoLte;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V

    .line 1257
    .end local v0    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    :cond_2
    monitor-exit v3

    .line 1258
    return v1

    .line 1257
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public pollState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 512
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    .line 513
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aput v3, v0, v3

    .line 515
    sget-object v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker$1;->$SwitchMap$com$android$internal$telephony$CommandsInterface$RadioState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 541
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 543
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x19

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getOperator(Landroid/os/Message;)V

    .line 558
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 560
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDataRegistrationState(Landroid/os/Message;)V

    .line 562
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    .line 564
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPollingContext:[I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRegistrationState(Landroid/os/Message;)V

    .line 568
    :goto_1
    return-void

    .line 517
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 519
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 520
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 522
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollStateDone()V

    goto :goto_1

    .line 526
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 527
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->setStateInvalid()V

    .line 528
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setSignalStrengthDefaultValues()V

    .line 529
    iput-boolean v3, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 531
    const/16 v0, 0x12

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->pollStateDone()V

    goto :goto_0

    .line 515
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected pollStateDone()V
    .locals 74

    .prologue
    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateRoamingState()V

    .line 574
    sget-boolean v67, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v67, :cond_0

    const-string v67, "telephony.test.forceRoaming"

    const/16 v68, 0x0

    invoke-static/range {v67 .. v68}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v67

    if-eqz v67, :cond_0

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    const/16 v68, 0x1

    invoke-virtual/range {v67 .. v68}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    .line 579
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->useDataRegStateForDataOnlyDevices()V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v67

    if-nez v67, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0xe

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getSnapshotStatus()I

    move-result v67

    const/16 v68, 0x1

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_49

    .line 586
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getLteImsVoiceAvail()I

    move-result v68

    invoke-virtual/range {v67 .. v68}, Landroid/telephony/ServiceState;->setLteImsVoiceAvail(I)V

    .line 592
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->resetServiceStateInIwlanMode()V

    .line 593
    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "pollStateDone: lte 1 ss=["

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, "] newSS=["

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, "]"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v67

    if-eqz v67, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v67

    if-nez v67, :cond_4a

    const/16 v34, 0x1

    .line 598
    .local v34, "hasRegistered":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v67

    if-nez v67, :cond_4b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v67

    if-eqz v67, :cond_4b

    const/16 v29, 0x1

    .line 601
    .local v29, "hasDeregistered":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v67

    if-eqz v67, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v67

    if-nez v67, :cond_4c

    const/16 v21, 0x1

    .line 605
    .local v21, "hasCdmaDataConnectionAttached":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v67

    if-nez v67, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v67

    if-eqz v67, :cond_4d

    const/16 v23, 0x1

    .line 609
    .local v23, "hasCdmaDataConnectionDetached":Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v68

    move/from16 v0, v67

    move/from16 v1, v68

    if-eq v0, v1, :cond_4e

    const/16 v22, 0x1

    .line 612
    .local v22, "hasCdmaDataConnectionChanged":Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v68

    move/from16 v0, v67

    move/from16 v1, v68

    if-eq v0, v1, :cond_4f

    const/16 v35, 0x1

    .line 615
    .local v35, "hasVoiceRadioTechnologyChanged":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v68

    move/from16 v0, v67

    move/from16 v1, v68

    if-eq v0, v1, :cond_50

    const/16 v26, 0x1

    .line 618
    .local v26, "hasDataRadioTechnologyChanged":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_51

    const/16 v24, 0x1

    .line 620
    .local v24, "hasChanged":Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v67

    if-nez v67, :cond_52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v67

    if-eqz v67, :cond_52

    const/16 v38, 0x1

    .line 622
    .local v38, "hasVoiceRoamingOn":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v67

    if-eqz v67, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v67

    if-nez v67, :cond_53

    const/16 v37, 0x1

    .line 624
    .local v37, "hasVoiceRoamingOff":Z
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v67

    if-nez v67, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v67

    if-eqz v67, :cond_54

    const/16 v28, 0x1

    .line 626
    .local v28, "hasDataRoamingOn":Z
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v67

    if-eqz v67, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v67

    if-nez v67, :cond_55

    const/16 v27, 0x1

    .line 628
    .local v27, "hasDataRoamingOff":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Landroid/telephony/cdma/CdmaCellLocation;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_56

    const/16 v30, 0x1

    .line 630
    .local v30, "hasLocationChanged":Z
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v68

    move/from16 v0, v67

    move/from16 v1, v68

    if-eq v0, v1, :cond_57

    const/16 v36, 0x1

    .line 634
    .local v36, "hasVoiceRegStateChanged":Z
    :goto_e
    const/16 v25, 0x0

    .line 635
    .local v25, "hasCheckDAN":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v6

    .line 636
    .local v6, "NVT":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v9

    .line 640
    .local v9, "PVT":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mForceHasChanged:Z

    move/from16 v67, v0

    if-eqz v67, :cond_2

    .line 641
    const/16 v24, 0x1

    .line 642
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mForceHasChanged:Z

    .line 643
    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Change hasChanged to "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 648
    :cond_2
    const/16 v33, 0x0

    .line 649
    .local v33, "hasPlmnChanged":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v67

    if-eqz v67, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v67

    if-eqz v67, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    if-eq v0, v1, :cond_3

    .line 650
    const/16 v33, 0x1

    .line 654
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v67

    if-nez v67, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0xe

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0xd

    move/from16 v0, v67

    move/from16 v1, v68

    if-eq v0, v1, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0xd

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0xe

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_58

    :cond_5
    const/16 v19, 0x1

    .line 661
    .local v19, "has4gHandoff":Z
    :goto_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v67

    const-string v68, "CscFeature_RIL_SupportEpdg"

    invoke-virtual/range {v67 .. v68}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v67

    if-eqz v67, :cond_a

    .line 662
    if-nez v19, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0xe

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0x12

    move/from16 v0, v67

    move/from16 v1, v68

    if-eq v0, v1, :cond_9

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0x12

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0xe

    move/from16 v0, v67

    move/from16 v1, v68

    if-eq v0, v1, :cond_9

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0xd

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0x12

    move/from16 v0, v67

    move/from16 v1, v68

    if-eq v0, v1, :cond_9

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0x12

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0xd

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_59

    :cond_9
    const/16 v19, 0x1

    .line 673
    :cond_a
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0xe

    move/from16 v0, v67

    move/from16 v1, v68

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0xd

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_5a

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0xe

    move/from16 v0, v67

    move/from16 v1, v68

    if-eq v0, v1, :cond_5a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0xd

    move/from16 v0, v67

    move/from16 v1, v68

    if-eq v0, v1, :cond_5a

    const/16 v32, 0x1

    .line 679
    .local v32, "hasMultiApnSupport":Z
    :goto_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v67

    const-string v68, "CscFeature_RIL_SupportEpdg"

    invoke-virtual/range {v67 .. v68}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v67

    if-eqz v67, :cond_d

    .line 680
    if-nez v32, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0x12

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_5b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0x12

    move/from16 v0, v67

    move/from16 v1, v68

    if-eq v0, v1, :cond_5b

    :cond_c
    const/16 v32, 0x1

    .line 685
    :cond_d
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0x4

    move/from16 v0, v67

    move/from16 v1, v68

    if-lt v0, v1, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0x8

    move/from16 v0, v67

    move/from16 v1, v68

    if-gt v0, v1, :cond_5c

    const/16 v31, 0x1

    .line 690
    .local v31, "hasLostMultiApnSupport":Z
    :goto_13
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v67

    const-string v68, "CscFeature_RIL_SmsCml"

    invoke-virtual/range {v67 .. v68}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v67

    if-nez v67, :cond_5d

    .line 711
    :cond_e
    :goto_14
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v67

    const-string v68, "CscFeature_RIL_SupportVolte"

    invoke-virtual/range {v67 .. v68}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v67

    if-eqz v67, :cond_f

    const-string v67, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_f

    .line 713
    if-nez v9, :cond_f

    if-eqz v6, :cond_f

    const-string v67, "1"

    const-string v68, "persist.radio.sent.dan_sms"

    invoke-static/range {v68 .. v68}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_f

    .line 716
    const/16 v25, 0x1

    .line 721
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v67

    const-string v68, "phone"

    invoke-virtual/range {v67 .. v68}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v64

    check-cast v64, Landroid/telephony/TelephonyManager;

    .line 725
    .local v64, "tm":Landroid/telephony/TelephonyManager;
    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "pollStateDone: hasRegistered="

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " hasDeegistered="

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " hasCdmaDataConnectionAttached="

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " hasCdmaDataConnectionDetached="

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " hasCdmaDataConnectionChanged="

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " hasVoiceRadioTechnologyChanged= "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " hasDataRadioTechnologyChanged="

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " hasChanged="

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " hasVoiceRoamingOn="

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " hasVoiceRoamingOff="

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " hasDataRoamingOn="

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " hasDataRoamingOff="

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " hasLocationChanged="

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " has4gHandoff = "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " LatestDataRadioTechnology="

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    move/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " hasMultiApnSupport="

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " hasLostMultiApnSupport="

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v68

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v68

    move/from16 v0, v67

    move/from16 v1, v68

    if-eq v0, v1, :cond_11

    .line 749
    :cond_10
    const v67, 0xc3c4

    const/16 v68, 0x4

    move/from16 v0, v68

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v68, v0

    const/16 v69, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v70

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    aput-object v70, v68, v69

    const/16 v69, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v70

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    aput-object v70, v68, v69

    const/16 v69, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v70

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    aput-object v70, v68, v69

    const/16 v69, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v70, v0

    invoke-virtual/range {v70 .. v70}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v70

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    aput-object v70, v68, v69

    invoke-static/range {v67 .. v68}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 753
    :cond_11
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v67

    if-eqz v67, :cond_12

    if-eqz v32, :cond_12

    .line 754
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    move/from16 v67, v0

    const/16 v68, 0x4

    move/from16 v0, v67

    move/from16 v1, v68

    if-lt v0, v1, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    move/from16 v67, v0

    const/16 v68, 0x8

    move/from16 v0, v67

    move/from16 v1, v68

    if-gt v0, v1, :cond_12

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v67, v0

    const-string v68, "MultiApnSupport"

    invoke-virtual/range {v67 .. v68}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 760
    :cond_12
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaCdmaModel()Z

    move-result v67

    if-eqz v67, :cond_14

    if-eqz v31, :cond_14

    .line 761
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    move/from16 v67, v0

    const/16 v68, 0xe

    move/from16 v0, v67

    move/from16 v1, v68

    if-eq v0, v1, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    move/from16 v67, v0

    const/16 v68, 0xd

    move/from16 v0, v67

    move/from16 v1, v68

    if-eq v0, v1, :cond_13

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v67

    const-string v68, "CscFeature_RIL_SupportEpdg"

    invoke-virtual/range {v67 .. v68}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v67

    if-eqz v67, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    move/from16 v67, v0

    const/16 v68, 0x12

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_14

    .line 766
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    move-object/from16 v67, v0

    const-string v68, "LostMultiApnSupport"

    invoke-virtual/range {v67 .. v68}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 768
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v67

    const-string v68, "CscFeature_RIL_SupportVolte"

    invoke-virtual/range {v67 .. v68}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v67

    if-eqz v67, :cond_14

    const-string v67, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_14

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v59

    .line 771
    .local v59, "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    const/4 v13, 0x0

    .line 772
    .local v13, "canSend":Z
    const/16 v43, 0x0

    .line 773
    .local v43, "isHybrid":Z
    if-eqz v59, :cond_14

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v67

    if-eqz v67, :cond_5f

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/LegacyIms;->dcnAvailability()Z

    move-result v13

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/LegacyIms;->isHybridVolte()Z

    move-result v43

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/LegacyIms;->clearVolteRegistered()V

    .line 779
    if-eqz v13, :cond_14

    .line 780
    const-string v67, "CdmaSST"

    const-string v68, "Sending domain change notification"

    invoke-static/range {v67 .. v68}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/16 v67, 0x0

    move-object/from16 v0, v59

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendDomainChangeSms(B)V

    .line 782
    if-eqz v43, :cond_14

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getLegacyIms()Lcom/android/internal/telephony/LegacyIms;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/LegacyIms;->requestInitialImsRegistration()V

    .line 796
    .end local v13    # "canSend":Z
    .end local v43    # "isHybrid":Z
    .end local v59    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :cond_14
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    if-eqz v67, :cond_15

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLatestDataRadioTechnology:I

    .line 802
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v65, v0

    .line 803
    .local v65, "tss":Landroid/telephony/ServiceState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 804
    move-object/from16 v0, v65

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v60, v0

    .line 809
    .local v60, "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 810
    move-object/from16 v0, v60

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellLoc:Landroid/telephony/cdma/CdmaCellLocation;

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 814
    if-eqz v35, :cond_17

    .line 815
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updatePhoneObject()V

    .line 816
    const-string v67, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_16

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v67

    const-string v68, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v67 .. v68}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v67

    if-eqz v67, :cond_17

    .line 818
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    const-string v68, "gsm.voice.network.type"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v69

    invoke-static/range {v69 .. v69}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    :cond_17
    if-eqz v26, :cond_19

    .line 824
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v68

    move-object/from16 v0, v64

    move/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    .line 826
    const/16 v67, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v68

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_18

    .line 828
    const-string v67, "pollStateDone: IWLAN enabled"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 831
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0xe

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_60

    const-string v67, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_60

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v67

    const-string v68, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v67 .. v68}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v67

    if-nez v67, :cond_60

    .line 834
    const/16 v67, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->onSignalStrengthResult(Z)Z

    .line 842
    :cond_19
    :goto_16
    if-eqz v34, :cond_1a

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 846
    :cond_1a
    if-eqz v24, :cond_37

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v67, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->getPhoneId()I

    move-result v68

    invoke-virtual/range {v67 .. v68}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v67

    if-nez v67, :cond_61

    const/16 v20, 0x0

    .line 849
    .local v20, "hasBrandOverride":Z
    :goto_17
    if-nez v20, :cond_69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v67, v0

    invoke-interface/range {v67 .. v67}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v67

    if-eqz v67, :cond_69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isEriFileLoaded()Z

    move-result v67

    if-eqz v67, :cond_69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v67

    const/16 v68, 0xe

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v67

    const v68, 0x11200af

    invoke-virtual/range {v67 .. v68}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v67

    if-eqz v67, :cond_69

    .line 854
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v17

    .line 857
    .local v17, "eriText":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v67

    if-nez v67, :cond_63

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v17

    .line 874
    :cond_1c
    :goto_18
    const/16 v66, 0x1

    .line 876
    .local v66, "useERItext":Z
    const/16 v67, 0xb

    invoke-static/range {v67 .. v67}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v67

    if-eqz v67, :cond_1d

    const/16 v66, 0x0

    .line 878
    :cond_1d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v67

    const-string v68, "CscFeature_RIL_ExceptionSid"

    invoke-virtual/range {v67 .. v68}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v67

    if-eqz v67, :cond_1e

    const/16 v66, 0x0

    .line 879
    :cond_1e
    const-string v67, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_1f

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v67

    const-string v68, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v67 .. v68}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v67

    if-eqz v67, :cond_20

    .line 881
    :cond_1f
    const/16 v66, 0x0

    .line 883
    :cond_20
    if-eqz v66, :cond_66

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 915
    .end local v17    # "eriText":Ljava/lang/String;
    .end local v66    # "useERItext":Z
    :cond_21
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v67, v0

    if-eqz v67, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v67

    sget-object v68, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v67, v0

    if-eqz v67, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v67

    if-nez v67, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v67

    const/16 v68, 0xe

    move/from16 v0, v67

    move/from16 v1, v68

    if-eq v0, v1, :cond_24

    .line 923
    const/16 v56, 0x0

    .line 925
    .local v56, "showSpn":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v67

    const-string v68, "CscFeature_RIL_SupportCSIM"

    invoke-virtual/range {v67 .. v68}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v67

    if-eqz v67, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    instance-of v0, v0, Lcom/android/internal/telephony/uicc/RuimRecords;

    move/from16 v67, v0

    if-eqz v67, :cond_23

    .line 929
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v67, v0

    check-cast v67, Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/uicc/RuimRecords;->getCsimSpnDisplayCondition()Z

    move-result v56

    .line 933
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getCdmaEriIconIndex()I

    move-result v39

    .line 935
    .local v39, "iconIndex":I
    if-eqz v56, :cond_24

    const/16 v67, 0x1

    move/from16 v0, v39

    move/from16 v1, v67

    if-ne v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getNetworkId()I

    move-result v68

    move-object/from16 v0, p0

    move/from16 v1, v67

    move/from16 v2, v68

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isInHomeSidNid(II)Z

    move-result v67

    if-eqz v67, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v67, v0

    if-eqz v67, :cond_24

    .line 940
    const/16 v67, 0xb

    invoke-static/range {v67 .. v67}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v67

    if-nez v67, :cond_24

    const/16 v67, 0xc

    invoke-static/range {v67 .. v67}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v67

    if-nez v67, :cond_24

    const-string v67, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_24

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v67

    const-string v68, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v67 .. v68}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v67

    if-nez v67, :cond_24

    .line 943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 944
    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Set OperatorAlphaLong: "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, ", Cause: SPN"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 950
    .end local v39    # "iconIndex":I
    .end local v56    # "showSpn":Z
    :cond_24
    const-string v67, "SPR"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_29

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v16

    .line 952
    .local v16, "displayname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0xe

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v67

    if-nez v67, :cond_26

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v67

    const/16 v68, 0xe

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_6a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v67

    if-eqz v67, :cond_6a

    :cond_26
    const/16 v67, 0x1

    :goto_1a
    invoke-static/range {v67 .. v67}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v44

    .line 954
    .local v44, "isLteRoam":Ljava/lang/Boolean;
    const/16 v61, 0x0

    .line 957
    .local v61, "tempname":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v67

    if-nez v67, :cond_6d

    .line 958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->checkIsSprintSimCard()Z

    move-result v67

    if-eqz v67, :cond_6b

    .line 959
    sget-object v67, Lcom/android/internal/telephony/PhoneBase;->PROPERTY_CDMA_HOME_OPERATOR_ALPHA:Ljava/lang/String;

    const-string v68, ""

    invoke-static/range {v67 .. v68}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 960
    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "sprint sim + home displayname= "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 981
    :cond_27
    :goto_1b
    const/16 v67, 0x7

    invoke-static/range {v67 .. v67}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v67

    if-eqz v67, :cond_28

    const-string v67, "Chameleon"

    move-object/from16 v0, v67

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_28

    .line 982
    const-string v16, "Samsung"

    .line 984
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 989
    .end local v16    # "displayname":Ljava/lang/String;
    .end local v44    # "isLteRoam":Ljava/lang/Boolean;
    .end local v61    # "tempname":Ljava/lang/String;
    :cond_29
    const-string v67, "LRA"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_2a

    const-string v67, "TFN"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_2c

    .line 990
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getState()I

    move-result v67

    if-nez v67, :cond_2c

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v67

    if-eqz v67, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v67

    const/16 v68, 0x2

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_6f

    .line 992
    :cond_2b
    const-string v67, "Device is in roaming"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    const-string v68, "Roaming"

    invoke-virtual/range {v67 .. v68}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1003
    :cond_2c
    :goto_1c
    const-string v67, "TFN"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_2e

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getState()I

    move-result v67

    if-nez v67, :cond_2e

    .line 1005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v67

    const/16 v68, 0x2

    move/from16 v0, v67

    move/from16 v1, v68

    if-eq v0, v1, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v67

    if-nez v67, :cond_70

    .line 1006
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    const-string v68, "Roaming"

    invoke-virtual/range {v67 .. v68}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1013
    :cond_2e
    :goto_1d
    const-string v67, "CCT"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_2f

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getState()I

    move-result v67

    if-nez v67, :cond_2f

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v67

    if-eqz v67, :cond_71

    .line 1016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    const-string v68, "Roaming"

    invoke-virtual/range {v67 .. v68}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 1024
    :cond_2f
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, v64

    move/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    .line 1026
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v67

    move-object/from16 v0, v64

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v52

    .line 1027
    .local v52, "prevOperatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v50

    .line 1029
    .local v50, "operatorNumeric":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v67

    if-eqz v67, :cond_30

    .line 1030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getSystemId()I

    move-result v57

    .line 1031
    .local v57, "sid":I
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v57

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->fixUnknownMcc(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v50

    .line 1033
    .end local v57    # "sid":I
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v67

    move-object/from16 v0, v64

    move/from16 v1, v67

    move-object/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v52

    move-object/from16 v3, v67

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 1037
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isInvalidOperatorNumeric(Ljava/lang/String;)Z

    move-result v67

    if-eqz v67, :cond_72

    .line 1038
    const-string v67, "operatorNumeric is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v67

    const-string v68, ""

    move-object/from16 v0, v64

    move/from16 v1, v67

    move-object/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 1040
    const/16 v67, 0x0

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 1076
    :cond_31
    :goto_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v67

    if-nez v67, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v67

    if-eqz v67, :cond_74

    :cond_32
    const/16 v67, 0x1

    :goto_20
    move-object/from16 v0, v64

    move/from16 v1, v68

    move/from16 v2, v67

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    .line 1079
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v67

    const-string v68, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v67 .. v68}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v67

    if-eqz v67, :cond_33

    .line 1080
    const-string v58, "false"

    .line 1081
    .local v58, "sixmodeslave":Ljava/lang/String;
    const-string v67, "false"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v68, v0

    const-string v69, "gsm.operator.isroaming"

    const-string v70, "false"

    invoke-virtual/range {v68 .. v70}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_33

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v67

    const-string v68, "IS_CTC"

    const/16 v69, 0x0

    invoke-static/range {v67 .. v69}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v45

    .line 1083
    .local v45, "isctc":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v67

    const-string v68, "IS_CTC2"

    const/16 v69, 0x0

    invoke-static/range {v67 .. v69}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v46

    .line 1084
    .local v46, "isctc2":I
    const/16 v67, 0x1

    move/from16 v0, v45

    move/from16 v1, v67

    if-ne v0, v1, :cond_33

    const/16 v67, 0x1

    move/from16 v0, v46

    move/from16 v1, v67

    if-ne v0, v1, :cond_33

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    const-string v68, "persist.radio.multisim.stackid"

    const-string v69, "-1"

    invoke-virtual/range {v67 .. v69}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v67

    const/16 v68, 0x1

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_33

    .line 1086
    const-string v67, "true"

    .line 1094
    .end local v45    # "isctc":I
    .end local v46    # "isctc2":I
    .end local v58    # "sixmodeslave":Ljava/lang/String;
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getState()I

    move-result v55

    .line 1095
    .local v55, "serviceStateForProperty":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    const-string v68, "ril.servicestate"

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v67 .. v69}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->updateSpnDisplay()V

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    .line 1099
    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Broadcasting ServiceState : "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1101
    const-string v67, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_34

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v67

    const-string v68, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v67 .. v68}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v67

    if-eqz v67, :cond_35

    .line 1103
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getState()I

    move-result v68

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->displayTimeDisplayScheme(Ljava/lang/String;I)V

    .line 1108
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v67 .. v68}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getState()I

    move-result v67

    if-nez v67, :cond_37

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v51

    .line 1113
    .local v51, "operatorNumericForTimezone":Ljava/lang/String;
    const/16 v67, 0x8

    invoke-static/range {v67 .. v67}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v67

    if-eqz v67, :cond_36

    .line 1114
    const-string v67, "gsm.operator.numeric.real"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v68

    invoke-static/range {v67 .. v68}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 1116
    :cond_36
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->CalibrationTimezoneUsingMcc(Ljava/lang/String;)V

    .line 1121
    .end local v20    # "hasBrandOverride":Z
    .end local v50    # "operatorNumeric":Ljava/lang/String;
    .end local v51    # "operatorNumericForTimezone":Ljava/lang/String;
    .end local v52    # "prevOperatorNumeric":Ljava/lang/String;
    .end local v55    # "serviceStateForProperty":I
    :cond_37
    const/16 v67, 0x2

    invoke-static/range {v67 .. v67}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v67

    if-eqz v67, :cond_38

    .line 1122
    const-string v67, "ril.cdma.inecmmode"

    const-string v68, "false"

    invoke-static/range {v67 .. v68}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 1123
    .local v40, "inEcm":Ljava/lang/String;
    const-string v67, "true"

    move-object/from16 v0, v67

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_38

    .line 1124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getState()I

    move-result v67

    const/16 v68, 0x1

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_76

    .line 1125
    const/16 v67, 0x68

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hasMessages(I)Z

    move-result v67

    if-nez v67, :cond_75

    .line 1126
    const/16 v67, 0x68

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v67

    const-wide/16 v68, 0x38a4

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1127
    const-string v67, "Start the ExitEmergencyCallbackMode timer"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1139
    .end local v40    # "inEcm":Ljava/lang/String;
    :cond_38
    :goto_21
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v67

    const-string v68, "CscFeature_RIL_SupportVolte"

    invoke-virtual/range {v67 .. v68}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v67

    if-eqz v67, :cond_3a

    const-string v67, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-eqz v67, :cond_3a

    .line 1141
    if-eqz v25, :cond_3a

    .line 1142
    const/16 v67, 0x4

    move/from16 v0, v67

    if-lt v6, v0, :cond_77

    const/16 v67, 0x6

    move/from16 v0, v67

    if-gt v6, v0, :cond_77

    const/16 v41, 0x1

    .line 1144
    .local v41, "is1xVD":Z
    :goto_22
    if-eqz v41, :cond_39

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v59

    .line 1146
    .restart local v59    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    if-eqz v59, :cond_39

    .line 1147
    const-string v67, "CdmaSST"

    const-string v68, "Send DAN - Stop (reboot or airplane mode)"

    invoke-static/range {v67 .. v68}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    const/16 v67, 0x20

    move-object/from16 v0, v59

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SMSDispatcher;->sendDomainChangeSms(B)V

    .line 1151
    .end local v59    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :cond_39
    const-string v67, "persist.radio.sent.dan_sms"

    const-string v68, "0"

    invoke-static/range {v67 .. v68}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1156
    .end local v41    # "is1xVD":Z
    :cond_3a
    if-nez v21, :cond_3b

    if-eqz v19, :cond_3c

    .line 1157
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1160
    :cond_3c
    if-eqz v23, :cond_3d

    .line 1161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1164
    :cond_3d
    if-nez v22, :cond_3e

    if-eqz v26, :cond_3f

    .line 1165
    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 1166
    const/16 v67, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v68

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_78

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    const-string v68, "iwlanAvailable"

    invoke-virtual/range {v67 .. v68}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    .line 1174
    :cond_3f
    :goto_23
    if-eqz v38, :cond_40

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1178
    :cond_40
    if-eqz v37, :cond_41

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1182
    :cond_41
    if-eqz v28, :cond_42

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1186
    :cond_42
    if-eqz v27, :cond_43

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1190
    :cond_43
    if-eqz v30, :cond_44

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyLocationChanged()V

    .line 1195
    :cond_44
    if-eqz v33, :cond_45

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPlmnChangeRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1201
    :cond_45
    if-eqz v34, :cond_46

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSavedTime:J

    move-wide/from16 v68, v0

    const-wide/16 v70, 0x0

    cmp-long v67, v68, v70

    if-nez v67, :cond_46

    .line 1202
    const/16 v67, 0x69

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hasMessages(I)Z

    move-result v67

    if-eqz v67, :cond_79

    .line 1203
    const-string v67, "REFRESH_NITZ_TIME timer is running"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1211
    :cond_46
    :goto_24
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1212
    .local v12, "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v68, v0

    monitor-enter v68

    .line 1213
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    check-cast v15, Landroid/telephony/CellInfoLte;

    .line 1215
    .local v15, "cil":Landroid/telephony/CellInfoLte;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v69, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Landroid/telephony/CellIdentityLte;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_7a

    const/4 v14, 0x1

    .line 1216
    .local v14, "cidChanged":Z
    :goto_25
    if-nez v34, :cond_47

    if-nez v29, :cond_47

    if-eqz v14, :cond_48

    .line 1218
    :cond_47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v70

    const-wide/16 v72, 0x3e8

    mul-long v62, v70, v72

    .line 1219
    .local v62, "timeStamp":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v67

    if-nez v67, :cond_7b

    const/16 v54, 0x1

    .line 1220
    .local v54, "registered":Z
    :goto_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    .line 1222
    move/from16 v0, v54

    invoke-virtual {v15, v0}, Landroid/telephony/CellInfoLte;->setRegistered(Z)V

    .line 1223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mLasteCellIdentityLte:Landroid/telephony/CellIdentityLte;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    invoke-virtual {v15, v0}, Landroid/telephony/CellInfoLte;->setCellIdentity(Landroid/telephony/CellIdentityLte;)V

    .line 1225
    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v69, "pollStateDone: hasRegistered="

    move-object/from16 v0, v67

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v69, " hasDeregistered="

    move-object/from16 v0, v67

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v69, " cidChanged="

    move-object/from16 v0, v67

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v69, " mCellInfo="

    move-object/from16 v0, v67

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v69, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    .end local v54    # "registered":Z
    .end local v62    # "timeStamp":J
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V

    .line 1233
    monitor-exit v68
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1234
    return-void

    .line 588
    .end local v6    # "NVT":I
    .end local v9    # "PVT":I
    .end local v12    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .end local v14    # "cidChanged":Z
    .end local v15    # "cil":Landroid/telephony/CellInfoLte;
    .end local v19    # "has4gHandoff":Z
    .end local v21    # "hasCdmaDataConnectionAttached":Z
    .end local v22    # "hasCdmaDataConnectionChanged":Z
    .end local v23    # "hasCdmaDataConnectionDetached":Z
    .end local v24    # "hasChanged":Z
    .end local v25    # "hasCheckDAN":Z
    .end local v26    # "hasDataRadioTechnologyChanged":Z
    .end local v27    # "hasDataRoamingOff":Z
    .end local v28    # "hasDataRoamingOn":Z
    .end local v29    # "hasDeregistered":Z
    .end local v30    # "hasLocationChanged":Z
    .end local v31    # "hasLostMultiApnSupport":Z
    .end local v32    # "hasMultiApnSupport":Z
    .end local v33    # "hasPlmnChanged":Z
    .end local v34    # "hasRegistered":Z
    .end local v35    # "hasVoiceRadioTechnologyChanged":Z
    .end local v36    # "hasVoiceRegStateChanged":Z
    .end local v37    # "hasVoiceRoamingOff":Z
    .end local v38    # "hasVoiceRoamingOn":Z
    .end local v60    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .end local v64    # "tm":Landroid/telephony/TelephonyManager;
    .end local v65    # "tss":Landroid/telephony/ServiceState;
    :cond_49
    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Update LteImsVoiceAvail: "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getLteImsVoiceAvail()I

    move-result v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, " (DataRegState: "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, ", DataRadioTechnology: "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, ", SnapshotStatus: "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getSnapshotStatus()I

    move-result v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, ")"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 595
    :cond_4a
    const/16 v34, 0x0

    goto/16 :goto_1

    .line 598
    .restart local v34    # "hasRegistered":Z
    :cond_4b
    const/16 v29, 0x0

    goto/16 :goto_2

    .line 601
    .restart local v29    # "hasDeregistered":Z
    :cond_4c
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 605
    .restart local v21    # "hasCdmaDataConnectionAttached":Z
    :cond_4d
    const/16 v23, 0x0

    goto/16 :goto_4

    .line 609
    .restart local v23    # "hasCdmaDataConnectionDetached":Z
    :cond_4e
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 612
    .restart local v22    # "hasCdmaDataConnectionChanged":Z
    :cond_4f
    const/16 v35, 0x0

    goto/16 :goto_6

    .line 615
    .restart local v35    # "hasVoiceRadioTechnologyChanged":Z
    :cond_50
    const/16 v26, 0x0

    goto/16 :goto_7

    .line 618
    .restart local v26    # "hasDataRadioTechnologyChanged":Z
    :cond_51
    const/16 v24, 0x0

    goto/16 :goto_8

    .line 620
    .restart local v24    # "hasChanged":Z
    :cond_52
    const/16 v38, 0x0

    goto/16 :goto_9

    .line 622
    .restart local v38    # "hasVoiceRoamingOn":Z
    :cond_53
    const/16 v37, 0x0

    goto/16 :goto_a

    .line 624
    .restart local v37    # "hasVoiceRoamingOff":Z
    :cond_54
    const/16 v28, 0x0

    goto/16 :goto_b

    .line 626
    .restart local v28    # "hasDataRoamingOn":Z
    :cond_55
    const/16 v27, 0x0

    goto/16 :goto_c

    .line 628
    .restart local v27    # "hasDataRoamingOff":Z
    :cond_56
    const/16 v30, 0x0

    goto/16 :goto_d

    .line 630
    .restart local v30    # "hasLocationChanged":Z
    :cond_57
    const/16 v36, 0x0

    goto/16 :goto_e

    .line 654
    .restart local v6    # "NVT":I
    .restart local v9    # "PVT":I
    .restart local v25    # "hasCheckDAN":Z
    .restart local v33    # "hasPlmnChanged":Z
    .restart local v36    # "hasVoiceRegStateChanged":Z
    :cond_58
    const/16 v19, 0x0

    goto/16 :goto_f

    .line 662
    .restart local v19    # "has4gHandoff":Z
    :cond_59
    const/16 v19, 0x0

    goto/16 :goto_10

    .line 673
    :cond_5a
    const/16 v32, 0x0

    goto/16 :goto_11

    .line 680
    .restart local v32    # "hasMultiApnSupport":Z
    :cond_5b
    const/16 v32, 0x0

    goto/16 :goto_12

    .line 685
    :cond_5c
    const/16 v31, 0x0

    goto/16 :goto_13

    .line 690
    .restart local v31    # "hasLostMultiApnSupport":Z
    :cond_5d
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v67

    const-string v68, "CscFeature_RIL_SupportQualcommIms"

    invoke-virtual/range {v67 .. v68}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v67

    if-nez v67, :cond_e

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v7

    .line 695
    .local v7, "NewRadioTech":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v10

    .line 697
    .local v10, "PreRadioTech":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v8

    .line 698
    .local v8, "NewVoiceTech":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v11

    .line 700
    .local v11, "PreVoiceTech":I
    const/16 v67, 0x4

    move/from16 v0, v67

    if-lt v8, v0, :cond_5e

    const/16 v67, 0x8

    move/from16 v0, v67

    if-gt v8, v0, :cond_5e

    const/16 v42, 0x1

    .line 703
    .local v42, "is1xVoiceDomain":Z
    :goto_27
    if-eqz v42, :cond_e

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v59

    .line 705
    .restart local v59    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    invoke-virtual/range {v59 .. v59}, Lcom/android/internal/telephony/SMSDispatcher;->restartDanTimer()Z

    goto/16 :goto_14

    .line 700
    .end local v42    # "is1xVoiceDomain":Z
    .end local v59    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    :cond_5e
    const/16 v42, 0x0

    goto :goto_27

    .line 787
    .end local v7    # "NewRadioTech":I
    .end local v8    # "NewVoiceTech":I
    .end local v10    # "PreRadioTech":I
    .end local v11    # "PreVoiceTech":I
    .restart local v13    # "canSend":Z
    .restart local v43    # "isHybrid":Z
    .restart local v59    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    .restart local v64    # "tm":Landroid/telephony/TelephonyManager;
    :cond_5f
    const-string v67, "CdmaSST"

    const-string v68, "getLegacyIms is not exist"

    invoke-static/range {v67 .. v68}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 837
    .end local v13    # "canSend":Z
    .end local v43    # "isHybrid":Z
    .end local v59    # "smsDispatcher":Lcom/android/internal/telephony/SMSDispatcher;
    .restart local v60    # "tcl":Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v65    # "tss":Landroid/telephony/ServiceState;
    :cond_60
    const/16 v67, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->onSignalStrengthResult(Z)Z

    goto/16 :goto_16

    .line 847
    :cond_61
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    move-object/from16 v67, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->getPhoneId()I

    move-result v68

    invoke-virtual/range {v67 .. v68}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/uicc/UiccCard;->getOperatorBrandOverride()Ljava/lang/String;

    move-result-object v67

    if-eqz v67, :cond_62

    const/16 v20, 0x1

    goto/16 :goto_17

    :cond_62
    const/16 v20, 0x0

    goto/16 :goto_17

    .line 859
    .restart local v17    # "eriText":Ljava/lang/String;
    .restart local v20    # "hasBrandOverride":Z
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v67

    const/16 v68, 0x3

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_65

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v67, v0

    if-eqz v67, :cond_64

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v17

    .line 861
    :goto_28
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v67

    if-eqz v67, :cond_1c

    .line 864
    const-string v67, "ro.cdma.home.operator.alpha"

    invoke-static/range {v67 .. v67}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_18

    .line 860
    :cond_64
    const/16 v17, 0x0

    goto :goto_28

    .line 866
    :cond_65
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v67

    if-eqz v67, :cond_1c

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v67

    const v68, 0x10400d7

    invoke-virtual/range {v67 .. v68}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v67

    invoke-interface/range {v67 .. v67}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_18

    .line 887
    .restart local v66    # "useERItext":Z
    :cond_66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getState()I

    move-result v67

    if-eqz v67, :cond_21

    .line 894
    const/16 v67, 0xe

    invoke-static/range {v67 .. v67}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v67

    if-eqz v67, :cond_68

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->isImsRegistered()Z

    move-result v67

    if-eqz v67, :cond_68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v67

    if-nez v67, :cond_68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0xe

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_68

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v17

    .line 901
    :goto_29
    const-string v67, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v67

    if-nez v67, :cond_67

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v67

    const-string v68, "CscFeature_RIL_SupportAllRat"

    invoke-virtual/range {v67 .. v68}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v67

    if-nez v67, :cond_67

    .line 903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    move-object/from16 v0, v67

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 905
    :cond_67
    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Set OperatorAlphaLong: "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, ", Cause: ServiceState is "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Landroid/telephony/ServiceState;->getState()I

    move-result v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 899
    :cond_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v67

    const v68, 0x10400d7

    invoke-virtual/range {v67 .. v68}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v67

    invoke-interface/range {v67 .. v67}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_29

    .line 909
    .end local v17    # "eriText":Ljava/lang/String;
    .end local v66    # "useERItext":Z
    :cond_69
    const/16 v67, 0xc

    invoke-static/range {v67 .. v67}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v67

    if-eqz v67, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getState()I

    move-result v67

    if-nez v67, :cond_21

    .line 910
    const-string v67, "No ERI information"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v49

    .line 912
    .local v49, "mccMnc":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    const-string v68, ""

    const-string v69, ""

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    move-object/from16 v2, v69

    move-object/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3}, Landroid/telephony/ServiceState;->setOperatorName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 952
    .end local v49    # "mccMnc":Ljava/lang/String;
    .restart local v16    # "displayname":Ljava/lang/String;
    :cond_6a
    const/16 v67, 0x0

    goto/16 :goto_1a

    .line 961
    .restart local v44    # "isLteRoam":Ljava/lang/Boolean;
    .restart local v61    # "tempname":Ljava/lang/String;
    :cond_6b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->checkIsSprintSimCard()Z

    move-result v67

    if-nez v67, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v67

    const/16 v68, 0xe

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_27

    invoke-virtual/range {v44 .. v44}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v67

    if-nez v67, :cond_27

    .line 962
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->PnnFromUicc()Ljava/lang/String;

    move-result-object v61

    .line 964
    if-eqz v61, :cond_6c

    .line 965
    move-object/from16 v16, v61

    .line 967
    :cond_6c
    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "non sprint sim + LTE home displayname= "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 970
    :cond_6d
    invoke-virtual/range {v44 .. v44}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v67

    if-eqz v67, :cond_27

    .line 971
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->PnnFromUicc()Ljava/lang/String;

    move-result-object v61

    .line 973
    if-nez v61, :cond_6e

    .line 974
    const-string v16, "Roam"

    .line 977
    :goto_2a
    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "LTE roam displayname= "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1b

    .line 976
    :cond_6e
    move-object/from16 v16, v61

    goto :goto_2a

    .line 995
    .end local v16    # "displayname":Ljava/lang/String;
    .end local v44    # "isLteRoam":Ljava/lang/Boolean;
    .end local v61    # "tempname":Ljava/lang/String;
    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v67, v0

    if-eqz v67, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v67

    sget-object v68, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-object/from16 v0, v67

    move-object/from16 v1, v68

    if-ne v0, v1, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v67, v0

    if-eqz v67, :cond_2c

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    .line 997
    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "Set OperatorAlphaLong: "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v68

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    const-string v68, ", Cause: SPN "

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 1007
    :cond_70
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v67

    const/16 v68, 0x1

    move/from16 v0, v67

    move/from16 v1, v68

    if-ne v0, v1, :cond_2e

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    const-string v68, " "

    invoke-virtual/range {v67 .. v68}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    goto/16 :goto_1d

    .line 1018
    :cond_71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v67, v0

    const-string v68, "Skyline Mobile"

    invoke-virtual/range {v67 .. v68}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 1042
    .restart local v50    # "operatorNumeric":Ljava/lang/String;
    .restart local v52    # "prevOperatorNumeric":Ljava/lang/String;
    :cond_72
    const-string v47, ""

    .line 1043
    .local v47, "isoCountryCode":Ljava/lang/String;
    const/16 v67, 0x0

    const/16 v68, 0x3

    move-object/from16 v0, v50

    move/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v48

    .line 1045
    .local v48, "mcc":Ljava/lang/String;
    const/16 v67, 0x0

    const/16 v68, 0x3

    :try_start_1
    move-object/from16 v0, v50

    move/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v67

    invoke-static/range {v67 .. v67}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v47

    .line 1053
    :goto_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    invoke-virtual/range {v67 .. v67}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getPhoneId()I

    move-result v67

    move-object/from16 v0, v64

    move/from16 v1, v67

    move-object/from16 v2, v47

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 1054
    const/16 v67, 0x1

    move/from16 v0, v67

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mGotCountryCode:Z

    .line 1056
    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->setOperatorIdd(Ljava/lang/String;)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mNeedFixZone:Z

    move/from16 v68, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move-object/from16 v2, v50

    move-object/from16 v3, v52

    move/from16 v4, v68

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v67

    if-eqz v67, :cond_31

    .line 1060
    const/16 v67, 0x8

    invoke-static/range {v67 .. v67}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v67

    if-eqz v67, :cond_73

    .line 1061
    const-string v67, "gsm.operator.numeric.real"

    const-string v68, ""

    invoke-static/range {v67 .. v68}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v53

    .line 1062
    .local v53, "realOperatorNumeric":Ljava/lang/String;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->length()I

    move-result v67

    const/16 v68, 0x2

    move/from16 v0, v67

    move/from16 v1, v68

    if-le v0, v1, :cond_73

    .line 1064
    const/16 v67, 0x0

    const/16 v68, 0x3

    :try_start_2
    move-object/from16 v0, v53

    move/from16 v1, v67

    move/from16 v2, v68

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v67

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v67

    invoke-static/range {v67 .. v67}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v47

    .line 1072
    .end local v53    # "realOperatorNumeric":Ljava/lang/String;
    :cond_73
    :goto_2c
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->fixTimeZone(Ljava/lang/String;)V

    goto/16 :goto_1f

    .line 1047
    :catch_0
    move-exception v18

    .line 1048
    .local v18, "ex":Ljava/lang/NumberFormatException;
    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "countryCodeForMcc error"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 1049
    .end local v18    # "ex":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v18

    .line 1050
    .local v18, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "countryCodeForMcc error"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_2b

    .line 1065
    .end local v18    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v53    # "realOperatorNumeric":Ljava/lang/String;
    :catch_2
    move-exception v18

    .line 1066
    .local v18, "ex":Ljava/lang/NumberFormatException;
    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "countryCodeForMcc error"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto :goto_2c

    .line 1067
    .end local v18    # "ex":Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v18

    .line 1068
    .local v18, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v67, Ljava/lang/StringBuilder;

    invoke-direct/range {v67 .. v67}, Ljava/lang/StringBuilder;-><init>()V

    const-string v68, "countryCodeForMcc error"

    invoke-virtual/range {v67 .. v68}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v67

    move-object/from16 v0, v67

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v67

    invoke-virtual/range {v67 .. v67}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v67

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->loge(Ljava/lang/String;)V

    goto/16 :goto_2c

    .line 1076
    .end local v18    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .end local v47    # "isoCountryCode":Ljava/lang/String;
    .end local v48    # "mcc":Ljava/lang/String;
    .end local v53    # "realOperatorNumeric":Ljava/lang/String;
    :cond_74
    const/16 v67, 0x0

    goto/16 :goto_20

    .line 1129
    .end local v20    # "hasBrandOverride":Z
    .end local v50    # "operatorNumeric":Ljava/lang/String;
    .end local v52    # "prevOperatorNumeric":Ljava/lang/String;
    .restart local v40    # "inEcm":Ljava/lang/String;
    :cond_75
    const-string v67, "ExitEmergencyCallbackMode timer is running"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_21

    .line 1132
    :cond_76
    const/16 v67, 0x68

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->removeMessages(I)V

    .line 1133
    const-string v67, "Cancel the ExitEmergencyCallbackMode timer"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_21

    .line 1142
    .end local v40    # "inEcm":Ljava/lang/String;
    :cond_77
    const/16 v41, 0x0

    goto/16 :goto_22

    .line 1170
    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v67, v0

    const/16 v68, 0x0

    invoke-virtual/range {v67 .. v68}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnection(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 1204
    :cond_79
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->isUsaGlobalModel()Z

    move-result v67

    if-eqz v67, :cond_46

    .line 1205
    const/16 v67, 0x69

    move-object/from16 v0, p0

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v67

    const-wide/16 v68, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1206
    const-string v67, "Start REFRESH_NITZ_TIME timer"

    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_24

    .line 1215
    .restart local v12    # "arrayCi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/CellInfo;>;"
    .restart local v15    # "cil":Landroid/telephony/CellInfoLte;
    :cond_7a
    const/4 v14, 0x0

    goto/16 :goto_25

    .line 1219
    .restart local v14    # "cidChanged":Z
    .restart local v62    # "timeStamp":J
    :cond_7b
    const/16 v54, 0x0

    goto/16 :goto_26

    .line 1233
    .end local v14    # "cidChanged":Z
    .end local v15    # "cil":Landroid/telephony/CellInfoLte;
    .end local v62    # "timeStamp":J
    :catchall_0
    move-exception v67

    :try_start_3
    monitor-exit v68
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v67
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 5
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    .line 1361
    monitor-enter p0

    .line 1362
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v2, :cond_2

    .line 1366
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hangupBeforeDeactivePDP()Z

    move-result v2

    if-eqz v2, :cond_0

    monitor-exit p0

    .line 1407
    :goto_0
    return-void

    .line 1369
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 1372
    .local v0, "dds":I
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1377
    :cond_1
    const-string v2, "radioTurnedOff"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1378
    const-string v2, "Data disconnected, turn off radio right away."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1379
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hangupAndPowerOff()V

    .line 1406
    .end local v0    # "dds":I
    :cond_2
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1381
    .restart local v0    # "dds":I
    :cond_3
    :try_start_1
    const-string v2, "radioTurnedOff"

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 1382
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getSubId()I

    move-result v2

    if-eq v0, v2, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ProxyController;->isDataDisconnected(I)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1384
    const-string v2, "Data is active on DDS.  Wait for all data disconnect"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1387
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v2

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-virtual {v2, v0, p0, v3, v4}, Lcom/android/internal/telephony/ProxyController;->registerForAllDataDisconnected(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 1389
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 1391
    :cond_4
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 1392
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x26

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1393
    iget v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 1395
    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1396
    const-string v2, "Wait upto 10s for data to disconnect, then turn off radio."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1398
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    goto :goto_1

    .line 1400
    :cond_5
    const-string v2, "Cannot send delayed Msg, turn off radio right away."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1401
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->hangupAndPowerOff()V

    .line 1402
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected updateCdmaSubscription()V
    .locals 2

    .prologue
    .line 1351
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x22

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cdma/CdmaLteServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    .line 1352
    return-void
.end method
