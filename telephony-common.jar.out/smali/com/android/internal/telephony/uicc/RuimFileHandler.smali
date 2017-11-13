.class public final Lcom/android/internal/telephony/uicc/RuimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "RuimFileHandler.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RuimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 10
    .param p1, "efid"    # I

    .prologue
    const/16 v9, 0x6f22

    const/16 v8, 0x4f22

    const/16 v7, 0x4f21

    const/16 v6, 0x4f20

    const/4 v5, 0x1

    .line 68
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v5, :cond_e

    .line 69
    const-string v2, "CTC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimFileHandler;->getPhoneId()I

    move-result v2

    if-nez v2, :cond_6

    .line 71
    const-string v2, "ril.IsCSIM"

    const/4 v3, 0x0

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 72
    .local v1, "isCsim":I
    const/16 v2, 0x6f3c

    if-ne p1, v2, :cond_2

    .line 73
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const-string v2, "3F007F10"

    .line 135
    .end local v1    # "isCsim":I
    :goto_0
    return-object v2

    .line 76
    .restart local v1    # "isCsim":I
    :cond_0
    if-ne v1, v5, :cond_1

    .line 77
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 79
    :cond_1
    const-string v2, "3F007F25"

    goto :goto_0

    .line 82
    :cond_2
    if-ne p1, v9, :cond_4

    .line 83
    if-ne v1, v5, :cond_3

    .line 84
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 86
    :cond_3
    const-string v2, "3F007F25"

    goto :goto_0

    .line 88
    :cond_4
    if-eq p1, v6, :cond_5

    if-eq p1, v7, :cond_5

    if-ne p1, v8, :cond_e

    .line 89
    :cond_5
    const-string v2, "3F007F105F3C"

    goto :goto_0

    .line 91
    .end local v1    # "isCsim":I
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 92
    const-string v2, "ril.ICC_TYPE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimFileHandler;->getPhoneId()I

    move-result v3

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 93
    .local v0, "icctype":I
    const/4 v2, 0x4

    if-eq v0, v2, :cond_7

    const/4 v2, 0x3

    if-ne v0, v2, :cond_e

    .line 94
    :cond_7
    const-string v2, "ril.IsCSIM"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/RuimFileHandler;->getPhoneId()I

    move-result v3

    const-string v4, "0"

    invoke-static {v2, v3, v4}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 95
    .restart local v1    # "isCsim":I
    const/16 v2, 0x6f3c

    if-ne p1, v2, :cond_a

    .line 96
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 97
    const-string v2, "3F007F10"

    goto :goto_0

    .line 99
    :cond_8
    if-ne v1, v5, :cond_9

    .line 100
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 102
    :cond_9
    const-string v2, "3F007F25"

    goto :goto_0

    .line 105
    :cond_a
    if-ne p1, v9, :cond_c

    .line 106
    if-ne v1, v5, :cond_b

    .line 107
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 109
    :cond_b
    const-string v2, "3F007F25"

    goto :goto_0

    .line 111
    :cond_c
    if-eq p1, v6, :cond_d

    if-eq p1, v7, :cond_d

    if-ne p1, v8, :cond_e

    .line 112
    :cond_d
    const-string v2, "3F007F105F3C"

    goto :goto_0

    .line 117
    .end local v0    # "icctype":I
    .end local v1    # "isCsim":I
    :cond_e
    sparse-switch p1, :sswitch_data_0

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 121
    :sswitch_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "3F007F10"

    goto/16 :goto_0

    :cond_f
    const-string v2, "3F007F25"

    goto/16 :goto_0

    .line 133
    :sswitch_1
    const-string v2, "3F007F25"

    goto/16 :goto_0

    .line 117
    :sswitch_data_0
    .sparse-switch
        0x6f22 -> :sswitch_1
        0x6f28 -> :sswitch_1
        0x6f32 -> :sswitch_1
        0x6f3a -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f41 -> :sswitch_1
        0x6f44 -> :sswitch_1
        0x6f5a -> :sswitch_1
    .end sparse-switch
.end method

.method public loadEFImgTransparent(IIIILandroid/os/Message;)V
    .locals 12
    .param p1, "fileid"    # I
    .param p2, "highOffset"    # I
    .param p3, "lowOffset"    # I
    .param p4, "length"    # I
    .param p5, "onLoaded"    # Landroid/os/Message;

    .prologue
    .line 52
    const/16 v1, 0xa

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/internal/telephony/uicc/RuimFileHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 61
    .local v11, "response":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xc0

    const/16 v3, 0x4f20

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/RuimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimFileHandler;->mAid:Ljava/lang/String;

    move v3, p1

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 64
    return-void
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 140
    const-string v0, "RuimFH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 145
    const-string v0, "RuimFH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[RuimFileHandler] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method
