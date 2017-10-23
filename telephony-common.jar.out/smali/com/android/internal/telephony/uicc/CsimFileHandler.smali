.class public final Lcom/android/internal/telephony/uicc/CsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "CsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "CsimFH"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 0
    .param p1, "app"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p2, "aid"    # Ljava/lang/String;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected getEFPath(I)Ljava/lang/String;
    .locals 11
    .param p1, "efid"    # I

    .prologue
    const/16 v10, 0x6f22

    const/16 v9, 0x4f22

    const/16 v8, 0x4f21

    const/16 v7, 0x4f20

    const/4 v6, 0x1

    .line 46
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-le v3, v6, :cond_f

    .line 47
    const-string v3, "CTC"

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getPhoneId()I

    move-result v3

    if-nez v3, :cond_7

    .line 49
    const-string v3, "ril.IsCSIM"

    const/4 v4, 0x0

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 50
    .local v1, "isCsim":I
    const/16 v3, 0x6f3c

    if-ne p1, v3, :cond_3

    .line 51
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    const-string v2, "3F007F10"

    .line 146
    .end local v1    # "isCsim":I
    :cond_0
    :goto_0
    return-object v2

    .line 54
    .restart local v1    # "isCsim":I
    :cond_1
    if-ne v1, v6, :cond_2

    .line 55
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 57
    :cond_2
    const-string v2, "3F007F25"

    goto :goto_0

    .line 60
    :cond_3
    if-ne p1, v10, :cond_5

    .line 61
    if-ne v1, v6, :cond_4

    .line 62
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 64
    :cond_4
    const-string v2, "3F007F25"

    goto :goto_0

    .line 66
    :cond_5
    if-eq p1, v7, :cond_6

    if-eq p1, v8, :cond_6

    if-ne p1, v9, :cond_17

    .line 67
    :cond_6
    const-string v2, "3F007F105F3C"

    goto :goto_0

    .line 69
    .end local v1    # "isCsim":I
    :cond_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 70
    const-string v3, "ril.ICC_TYPE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getPhoneId()I

    move-result v4

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 71
    .local v0, "icctype":I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_8

    const/4 v3, 0x3

    if-ne v0, v3, :cond_17

    .line 72
    :cond_8
    const-string v3, "ril.IsCSIM"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getPhoneId()I

    move-result v4

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 73
    .restart local v1    # "isCsim":I
    const/16 v3, 0x6f3c

    if-ne p1, v3, :cond_b

    .line 74
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 75
    const-string v2, "3F007F10"

    goto :goto_0

    .line 77
    :cond_9
    if-ne v1, v6, :cond_a

    .line 78
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 80
    :cond_a
    const-string v2, "3F007F25"

    goto :goto_0

    .line 83
    :cond_b
    if-ne p1, v10, :cond_d

    .line 84
    if-ne v1, v6, :cond_c

    .line 85
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 87
    :cond_c
    const-string v2, "3F007F25"

    goto :goto_0

    .line 89
    :cond_d
    if-eq p1, v7, :cond_e

    if-eq p1, v8, :cond_e

    if-ne p1, v9, :cond_17

    .line 90
    :cond_e
    const-string v2, "3F007F105F3C"

    goto :goto_0

    .line 95
    .end local v0    # "icctype":I
    .end local v1    # "isCsim":I
    :cond_f
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 96
    const-string v3, "ril.ICC_TYPE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getPhoneId()I

    move-result v4

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 97
    .restart local v0    # "icctype":I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_10

    const/4 v3, 0x3

    if-ne v0, v3, :cond_17

    .line 98
    :cond_10
    const-string v3, "ril.IsCSIM"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getPhoneId()I

    move-result v4

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 99
    .restart local v1    # "isCsim":I
    const/16 v3, 0x6f3c

    if-ne p1, v3, :cond_13

    .line 100
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 101
    const-string v2, "3F007F10"

    goto/16 :goto_0

    .line 103
    :cond_11
    if-ne v1, v6, :cond_12

    .line 104
    const-string v2, "3F007FFF"

    goto/16 :goto_0

    .line 106
    :cond_12
    const-string v2, "3F007F25"

    goto/16 :goto_0

    .line 109
    :cond_13
    if-ne p1, v10, :cond_15

    .line 110
    if-ne v1, v6, :cond_14

    .line 111
    const-string v2, "3F007FFF"

    goto/16 :goto_0

    .line 113
    :cond_14
    const-string v2, "3F007F25"

    goto/16 :goto_0

    .line 115
    :cond_15
    if-eq p1, v7, :cond_16

    if-eq p1, v8, :cond_16

    if-ne p1, v9, :cond_17

    .line 116
    :cond_16
    const-string v2, "3F007F105F3C"

    goto/16 :goto_0

    .line 121
    .end local v0    # "icctype":I
    .end local v1    # "isCsim":I
    :cond_17
    sparse-switch p1, :sswitch_data_0

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/CsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "path":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 144
    const-string v2, "3F007F105F3A"

    goto/16 :goto_0

    .line 137
    .end local v2    # "path":Ljava/lang/String;
    :sswitch_0
    const-string v2, "3F007FFF"

    goto/16 :goto_0

    .line 121
    nop

    :sswitch_data_0
    .sparse-switch
        0x6f22 -> :sswitch_0
        0x6f28 -> :sswitch_0
        0x6f31 -> :sswitch_0
        0x6f32 -> :sswitch_0
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_0
        0x6f3c -> :sswitch_0
        0x6f40 -> :sswitch_0
        0x6f41 -> :sswitch_0
        0x6f44 -> :sswitch_0
        0x6f4d -> :sswitch_0
        0x6f5a -> :sswitch_0
        0x6f74 -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 151
    const-string v0, "CsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string v0, "CsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    return-void
.end method
