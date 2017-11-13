.class public final Lcom/android/internal/telephony/uicc/SIMFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SIMFileHandler"


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
    .locals 11
    .param p1, "efid"    # I

    .prologue
    const/16 v10, 0x6f22

    const/16 v9, 0x4f22

    const/16 v8, 0x4f21

    const/16 v7, 0x4f20

    const/4 v6, 0x1

    .line 53
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-le v3, v6, :cond_e

    .line 54
    const-string v3, "CTC"

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getPhoneId()I

    move-result v3

    if-nez v3, :cond_6

    .line 56
    const-string v3, "ril.IsCSIM"

    const/4 v4, 0x0

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 57
    .local v1, "isCsim":I
    const/16 v3, 0x6f3c

    if-ne p1, v3, :cond_2

    .line 58
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 59
    const-string v3, "3F007F10"

    .line 161
    .end local v1    # "isCsim":I
    :goto_0
    return-object v3

    .line 61
    .restart local v1    # "isCsim":I
    :cond_0
    if-ne v1, v6, :cond_1

    .line 62
    const-string v3, "3F007FFF"

    goto :goto_0

    .line 64
    :cond_1
    const-string v3, "3F007F25"

    goto :goto_0

    .line 67
    :cond_2
    if-ne p1, v10, :cond_4

    .line 68
    if-ne v1, v6, :cond_3

    .line 69
    const-string v3, "3F007FFF"

    goto :goto_0

    .line 71
    :cond_3
    const-string v3, "3F007F25"

    goto :goto_0

    .line 73
    :cond_4
    if-eq p1, v7, :cond_5

    if-eq p1, v8, :cond_5

    if-ne p1, v9, :cond_e

    .line 74
    :cond_5
    const-string v3, "3F007F105F3C"

    goto :goto_0

    .line 76
    .end local v1    # "isCsim":I
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 77
    const-string v3, "ril.ICC_TYPE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getPhoneId()I

    move-result v4

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 78
    .local v0, "icctype":I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_7

    const/4 v3, 0x3

    if-ne v0, v3, :cond_e

    .line 79
    :cond_7
    const-string v3, "ril.IsCSIM"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getPhoneId()I

    move-result v4

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 80
    .restart local v1    # "isCsim":I
    const/16 v3, 0x6f3c

    if-ne p1, v3, :cond_a

    .line 81
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 82
    const-string v3, "3F007F10"

    goto :goto_0

    .line 84
    :cond_8
    if-ne v1, v6, :cond_9

    .line 85
    const-string v3, "3F007FFF"

    goto :goto_0

    .line 87
    :cond_9
    const-string v3, "3F007F25"

    goto :goto_0

    .line 90
    :cond_a
    if-ne p1, v10, :cond_c

    .line 91
    if-ne v1, v6, :cond_b

    .line 92
    const-string v3, "3F007FFF"

    goto :goto_0

    .line 94
    :cond_b
    const-string v3, "3F007F25"

    goto :goto_0

    .line 96
    :cond_c
    if-eq p1, v7, :cond_d

    if-eq p1, v8, :cond_d

    if-ne p1, v9, :cond_e

    .line 97
    :cond_d
    const-string v3, "3F007F105F3C"

    goto :goto_0

    .line 102
    .end local v0    # "icctype":I
    .end local v1    # "isCsim":I
    :cond_e
    sparse-switch p1, :sswitch_data_0

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/SIMFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "path":Ljava/lang/String;
    if-nez v2, :cond_f

    .line 159
    const-string v3, "SIMFileHandler"

    const-string v4, "Error: EF Path being returned in null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object v3, v2

    .line 161
    goto/16 :goto_0

    .line 105
    .end local v2    # "path":Ljava/lang/String;
    :sswitch_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "3F007F25"

    goto/16 :goto_0

    :cond_10
    const-string v3, "3F007F10"

    goto/16 :goto_0

    .line 108
    :sswitch_1
    const-string v3, "3F007F10"

    goto/16 :goto_0

    .line 126
    :sswitch_2
    const-string v3, "3F007F20"

    goto/16 :goto_0

    .line 135
    :sswitch_3
    const-string v3, "3F007F20"

    goto/16 :goto_0

    .line 140
    :sswitch_4
    const-string v3, "3F007FFF5F3D"

    goto/16 :goto_0

    .line 146
    :sswitch_5
    const-string v3, "3F007F105F3A"

    goto/16 :goto_0

    .line 151
    :sswitch_6
    const-string v3, "3F007F43"

    goto/16 :goto_0

    .line 102
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f22 -> :sswitch_4
        0x4f30 -> :sswitch_5
        0x4f55 -> :sswitch_4
        0x6f02 -> :sswitch_6
        0x6f11 -> :sswitch_3
        0x6f13 -> :sswitch_3
        0x6f14 -> :sswitch_3
        0x6f15 -> :sswitch_3
        0x6f16 -> :sswitch_3
        0x6f17 -> :sswitch_3
        0x6f18 -> :sswitch_3
        0x6f38 -> :sswitch_2
        0x6f3c -> :sswitch_0
        0x6f3e -> :sswitch_2
        0x6f3f -> :sswitch_2
        0x6f42 -> :sswitch_1
        0x6f46 -> :sswitch_2
        0x6fad -> :sswitch_2
        0x6fc5 -> :sswitch_2
        0x6fc6 -> :sswitch_2
        0x6fc7 -> :sswitch_2
        0x6fc8 -> :sswitch_2
        0x6fc9 -> :sswitch_2
        0x6fca -> :sswitch_2
        0x6fcb -> :sswitch_2
        0x6fcd -> :sswitch_2
        0x6fe5 -> :sswitch_1
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 166
    const-string v0, "SIMFileHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 171
    const-string v0, "SIMFileHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method
