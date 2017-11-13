.class public final Lcom/android/internal/telephony/uicc/IsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "IsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IsimFH"


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

    if-le v3, v6, :cond_d

    .line 47
    const-string v3, "CTC"

    sget-object v4, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimFileHandler;->getPhoneId()I

    move-result v3

    if-nez v3, :cond_5

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

    if-ne p1, v3, :cond_2

    .line 51
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 52
    const-string v2, "3F007F10"

    .line 101
    .end local v1    # "isCsim":I
    :goto_0
    return-object v2

    .line 54
    .restart local v1    # "isCsim":I
    :cond_0
    if-ne v1, v6, :cond_1

    .line 55
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 57
    :cond_1
    const-string v2, "3F007F25"

    goto :goto_0

    .line 60
    :cond_2
    if-ne p1, v10, :cond_3

    .line 61
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 62
    :cond_3
    if-eq p1, v7, :cond_4

    if-eq p1, v8, :cond_4

    if-ne p1, v9, :cond_d

    .line 63
    :cond_4
    const-string v2, "3F007F105F3C"

    goto :goto_0

    .line 65
    .end local v1    # "isCsim":I
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 66
    const-string v3, "ril.ICC_TYPE"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimFileHandler;->getPhoneId()I

    move-result v4

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 67
    .local v0, "icctype":I
    const/4 v3, 0x4

    if-eq v0, v3, :cond_6

    const/4 v3, 0x3

    if-ne v0, v3, :cond_d

    .line 68
    :cond_6
    const-string v3, "ril.IsCSIM"

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IsimFileHandler;->getPhoneId()I

    move-result v4

    const-string v5, "0"

    invoke-static {v3, v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 69
    .restart local v1    # "isCsim":I
    const/16 v3, 0x6f3c

    if-ne p1, v3, :cond_9

    .line 70
    invoke-static {}, Landroid/telephony/TelephonyManager;->isSelectTelecomDF()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 71
    const-string v2, "3F007F10"

    goto :goto_0

    .line 73
    :cond_7
    if-ne v1, v6, :cond_8

    .line 74
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 76
    :cond_8
    const-string v2, "3F007F25"

    goto :goto_0

    .line 79
    :cond_9
    if-ne p1, v10, :cond_b

    .line 80
    if-ne v1, v6, :cond_a

    .line 81
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 83
    :cond_a
    const-string v2, "3F007F25"

    goto :goto_0

    .line 85
    :cond_b
    if-eq p1, v7, :cond_c

    if-eq p1, v8, :cond_c

    if-ne p1, v9, :cond_d

    .line 86
    :cond_c
    const-string v2, "3F007F105F3C"

    goto :goto_0

    .line 91
    .end local v0    # "icctype":I
    .end local v1    # "isCsim":I
    :cond_d
    sparse-switch p1, :sswitch_data_0

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IsimFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "path":Ljava/lang/String;
    goto :goto_0

    .line 98
    .end local v2    # "path":Ljava/lang/String;
    :sswitch_0
    const-string v2, "3F007FFF"

    goto :goto_0

    .line 91
    :sswitch_data_0
    .sparse-switch
        0x6f02 -> :sswitch_0
        0x6f03 -> :sswitch_0
        0x6f04 -> :sswitch_0
        0x6f07 -> :sswitch_0
        0x6f09 -> :sswitch_0
        0x6fd5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 106
    const-string v0, "IsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string v0, "IsimFH"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void
.end method
