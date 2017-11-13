.class public Lcom/sec/epdg/EpdgOmadmSettings;
.super Ljava/lang/Object;
.source "EpdgOmadmSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[EpdgOmadmSettings]"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgEfsStorage;->init()V

    invoke-static {}, Lcom/sec/epdg/EpdgOmadmSettings;->readFromEfsFile()V

    goto :goto_0
.end method

.method public static readFromEfsFile()V
    .locals 16

    .prologue
    sget-boolean v13, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-nez v13, :cond_0

    .local v1, "content":Ljava/lang/String;
    .local v9, "mWriter":Lcom/sec/epdg/EpdgSettingsWriter;
    .local v11, "settings":Lcom/sec/epdg/EpdgSettings;
    :goto_0
    return-void

    .end local v1    # "content":Ljava/lang/String;
    .end local v9    # "mWriter":Lcom/sec/epdg/EpdgSettingsWriter;
    .end local v11    # "settings":Lcom/sec/epdg/EpdgSettings;
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v11

    .restart local v11    # "settings":Lcom/sec/epdg/EpdgSettings;
    invoke-static {}, Lcom/sec/epdg/EpdgEfsStorage;->getFileContent()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "content":Ljava/lang/String;
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgServiceContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/epdg/EpdgSettingsWriter;->getInstance(Landroid/content/Context;)Lcom/sec/epdg/EpdgSettingsWriter;

    move-result-object v9

    .restart local v9    # "mWriter":Lcom/sec/epdg/EpdgSettingsWriter;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v13, "[EpdgOmadmSettings]"

    const-string v14, "Empty EFS file"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v13, "\n"

    invoke-virtual {v1, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, "lines":[Ljava/lang/String;
    move-object v0, v8

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_4

    aget-object v7, v0, v4

    .local v7, "line":Ljava/lang/String;
    const-string v13, ":"

    invoke-virtual {v7, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .local v10, "parts":[Ljava/lang/String;
    const-string v13, "[EpdgOmadmSettings]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "line : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "parts:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    array-length v15, v10

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v10, :cond_2

    const/4 v13, 0x2

    array-length v14, v10

    if-ne v13, v14, :cond_2

    const/4 v13, 0x0

    aget-object v3, v10, v13

    .local v3, "field":Ljava/lang/String;
    const/4 v13, 0x1

    aget-object v12, v10, v13

    .local v12, "value":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .local v5, "intVal":I
    const-string v13, "[EpdgOmadmSettings]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Processing -- "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_d

    const-string v13, "smartwifirssiroveinvoice"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v11}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInVoice()I

    move-result v13

    if-eq v5, v13, :cond_2

    const-string v13, "smartwifirssiroveinvoice"

    invoke-virtual {v9, v13, v12}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "field":Ljava/lang/String;
    .end local v5    # "intVal":I
    .end local v12    # "value":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .restart local v3    # "field":Ljava/lang/String;
    .restart local v5    # "intVal":I
    .restart local v12    # "value":Ljava/lang/String;
    :cond_3
    const-string v13, "smartwifirssib"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v11}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v13

    if-eq v5, v13, :cond_2

    const-string v13, "smartwifirssib"

    invoke-virtual {v9, v13, v12}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "field":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "intVal":I
    .end local v6    # "len$":I
    .end local v7    # "line":Ljava/lang/String;
    .end local v8    # "lines":[Ljava/lang/String;
    .end local v10    # "parts":[Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_4
    const-string v13, "[EpdgOmadmSettings]"

    const-string v14, "End restoring EFS file"

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "field":Ljava/lang/String;
    .restart local v4    # "i$":I
    .restart local v5    # "intVal":I
    .restart local v6    # "len$":I
    .restart local v7    # "line":Ljava/lang/String;
    .restart local v8    # "lines":[Ljava/lang/String;
    .restart local v10    # "parts":[Ljava/lang/String;
    .restart local v12    # "value":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string v13, "smartwifirsrp1"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-virtual {v11}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v13

    if-eq v5, v13, :cond_2

    const-string v13, "smartwifirsrp1"

    invoke-virtual {v9, v13, v12}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v13, "smartwifirsrp2"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-virtual {v11}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v13

    if-eq v5, v13, :cond_2

    const-string v13, "smartwifirsrp2"

    invoke-virtual {v9, v13, v12}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v13, "smartwifirsrp3"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-virtual {v11}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v13

    if-eq v5, v13, :cond_2

    const-string v13, "smartwifirsrp3"

    invoke-virtual {v9, v13, v12}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v13, "smartwificdmarssi"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-virtual {v11}, Lcom/sec/epdg/EpdgSettings;->getCdmaRssi()I

    move-result v13

    if-eq v5, v13, :cond_2

    const-string v13, "smartwificdmarssi"

    invoke-virtual {v9, v13, v12}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v13, "tepdgltetimer"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-virtual {v11}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v13

    if-eq v5, v13, :cond_2

    const-string v13, "tepdgltetimer"

    invoke-virtual {v9, v13, v12}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    const-string v13, "tepdg1xtimer"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-virtual {v11}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v13

    if-eq v5, v13, :cond_2

    const-string v13, "tepdg1xtimer"

    invoke-virtual {v9, v13, v12}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const-string v13, "sysseltimer"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-virtual {v11}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v13

    if-eq v5, v13, :cond_2

    const-string v13, "sysseltimer"

    invoke-virtual {v9, v13, v12}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_c
    const-string v13, "[EpdgOmadmSettings]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FIX ME -- Unhandled field : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_d
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_2

    const-string v13, "smartwifirssia"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-virtual {v11}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v13

    if-eq v5, v13, :cond_2

    const-string v13, "smartwifirssia"

    invoke-virtual {v9, v13, v12}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_e
    const-string v13, "smartwifirssib"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-virtual {v11}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v13

    if-eq v5, v13, :cond_2

    const-string v13, "smartwifirssib"

    invoke-virtual {v9, v13, v12}, Lcom/sec/epdg/EpdgSettingsWriter;->writeEpdgSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    const-string v13, "[EpdgOmadmSettings]"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "FIX ME -- Unhandled field : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public static writeToEFSFile()V
    .locals 4

    .prologue
    sget-boolean v2, Lcom/sec/epdg/EpdgOperatorConstants;->SUPPORT_VOWIFI_PROVISIONING:Z

    if-nez v2, :cond_0

    .local v0, "content":Ljava/lang/StringBuilder;
    .local v1, "settings":Lcom/sec/epdg/EpdgSettings;
    :goto_0
    return-void

    .end local v0    # "content":Ljava/lang/StringBuilder;
    .end local v1    # "settings":Lcom/sec/epdg/EpdgSettings;
    :cond_0
    invoke-static {}, Lcom/sec/epdg/EpdgService;->getEpdgSettings()Lcom/sec/epdg/EpdgSettings;

    move-result-object v1

    .restart local v1    # "settings":Lcom/sec/epdg/EpdgSettings;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v0    # "content":Ljava/lang/StringBuilder;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorVerizon()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartwifirssiroveinvoice:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiRoveInVoice()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartwifirssib:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartwifirsrp1:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp1()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartwifirsrp2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp2()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartwifirsrp3:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getLteRsrp3()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartwificdmarssi:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getCdmaRssi()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tepdgltetimer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getTepdgLteTimer()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tepdg1xtimer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getTepdg1xTimer()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sysseltimer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getSysSelTimer()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/sec/epdg/EpdgEfsStorage;->setFileContent(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorSpr()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartwifirssia:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiA()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartwifirssib:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sec/epdg/EpdgSettings;->getWifiRssiB()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
