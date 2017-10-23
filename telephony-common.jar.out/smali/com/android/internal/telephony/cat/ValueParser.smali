.class abstract Lcom/android/internal/telephony/cat/ValueParser;
.super Ljava/lang/Object;
.source "ValueParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/ValueParser$CodingException;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    return-void
.end method

.method static retrieveAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 387
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 388
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 389
    .local v3, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v1

    .line 390
    .local v1, "length":I
    if-eqz v1, :cond_0

    .line 392
    :try_start_0
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->SetupCallbcdToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 398
    :goto_0
    return-object v4

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4

    .line 398
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static retrieveAlphaId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 304
    if-eqz p0, :cond_2

    .line 305
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 306
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 307
    .local v5, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v1

    .line 308
    .local v1, "length":I
    if-eqz v1, :cond_1

    .line 310
    :try_start_0
    invoke-static {v3, v5, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 333
    .end local v1    # "length":I
    .end local v3    # "rawValue":[B
    .end local v5    # "valueIndex":I
    :cond_0
    :goto_0
    return-object v6

    .line 312
    .restart local v1    # "length":I
    .restart local v3    # "rawValue":[B
    .restart local v5    # "valueIndex":I
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .line 316
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Alpha Id length="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    .end local v1    # "length":I
    .end local v3    # "rawValue":[B
    .end local v5    # "valueIndex":I
    :cond_2
    const/4 v2, 0x0

    .line 326
    .local v2, "noAlphaUsrCnf":Z
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    .line 328
    .local v4, "resource":Landroid/content/res/Resources;
    const v7, 0x1120086

    :try_start_1
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getBoolean(I)Z
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 333
    :goto_1
    if-nez v2, :cond_0

    const-string v6, "Default Message"

    goto :goto_0

    .line 330
    :catch_1
    move-exception v0

    .line 331
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static retrieveBearerDescription(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/BearerDescription;
    .locals 9
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1122
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 1123
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 1124
    .local v4, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 1126
    .local v2, "length":I
    new-instance v0, Lcom/android/internal/telephony/cat/BearerDescription;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/BearerDescription;-><init>()V

    .line 1128
    .local v0, "bearerDesc":Lcom/android/internal/telephony/cat/BearerDescription;
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "valueIndex":I
    .local v5, "valueIndex":I
    :try_start_0
    aget-byte v6, v3, v4

    iput-byte v6, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    .line 1129
    iget-byte v6, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    packed-switch v6, :pswitch_data_0

    .line 1168
    :pswitch_0
    const-string v6, "ValueParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "retrieveBearerDescription: Invalid Bearer Type("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-byte v8, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1179
    .end local v0    # "bearerDesc":Lcom/android/internal/telephony/cat/BearerDescription;
    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    :goto_0
    return-object v0

    .line 1131
    .end local v4    # "valueIndex":I
    .restart local v0    # "bearerDesc":Lcom/android/internal/telephony/cat/BearerDescription;
    .restart local v5    # "valueIndex":I
    :pswitch_1
    new-instance v6, Lcom/android/internal/telephony/cat/BearerCSD;

    invoke-direct {v6}, Lcom/android/internal/telephony/cat/BearerCSD;-><init>()V

    iput-object v6, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;

    .line 1132
    iget-object v6, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    :try_start_1
    aget-byte v7, v3, v5

    iput v7, v6, Lcom/android/internal/telephony/cat/BearerCSD;->dataRate:I

    .line 1133
    iget-object v6, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :try_start_2
    aget-byte v7, v3, v4

    iput v7, v6, Lcom/android/internal/telephony/cat/BearerCSD;->bearerService:I

    .line 1134
    iget-object v6, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/cat/BearerCSD;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    :try_start_3
    aget-byte v7, v3, v5

    iput v7, v6, Lcom/android/internal/telephony/cat/BearerCSD;->connectionElement:I

    .line 1135
    const-string v6, "ValueParser"

    const-string v7, "retrieveBearerDescription: Bearer Type = CSD"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1173
    :catch_0
    move-exception v1

    .line 1174
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_1
    const-string v6, "ValueParser"

    const-string v7, "ResultException: retrieveBearerDescription"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .line 1139
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :pswitch_2
    :try_start_4
    new-instance v6, Lcom/android/internal/telephony/cat/BearerGPRS;

    invoke-direct {v6}, Lcom/android/internal/telephony/cat/BearerGPRS;-><init>()V

    iput-object v6, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;

    .line 1140
    iget-object v6, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    :try_start_5
    aget-byte v7, v3, v5

    iput v7, v6, Lcom/android/internal/telephony/cat/BearerGPRS;->precedenceClass:I

    .line 1141
    iget-object v6, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :try_start_6
    aget-byte v7, v3, v4

    iput v7, v6, Lcom/android/internal/telephony/cat/BearerGPRS;->delayClass:I

    .line 1142
    iget-object v6, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    :try_start_7
    aget-byte v7, v3, v5

    iput v7, v6, Lcom/android/internal/telephony/cat/BearerGPRS;->reliabilityClass:I

    .line 1143
    iget-object v6, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :try_start_8
    aget-byte v7, v3, v4

    iput v7, v6, Lcom/android/internal/telephony/cat/BearerGPRS;->peakThroughputClass:I

    .line 1144
    iget-object v6, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    :try_start_9
    aget-byte v7, v3, v5

    iput v7, v6, Lcom/android/internal/telephony/cat/BearerGPRS;->meanThroughputClass:I

    .line 1145
    iget-object v6, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/cat/BearerGPRS;
    :try_end_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :try_start_a
    aget-byte v7, v3, v4

    iput v7, v6, Lcom/android/internal/telephony/cat/BearerGPRS;->packetDataProtocolType:I

    .line 1146
    const-string v6, "ValueParser"

    const-string v7, "retrieveBearerDescription: Bearer Type = GPRS"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1147
    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    goto :goto_0

    .line 1150
    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :pswitch_3
    const/4 v6, 0x3

    iput-byte v6, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    .line 1151
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerDefault:Z

    .line 1152
    const-string v6, "ValueParser"

    const-string v7, "retrieveBearerDescription: Bearer Type = Default"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1153
    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    goto/16 :goto_0

    .line 1156
    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :pswitch_4
    const/16 v6, 0xb

    iput-byte v6, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    .line 1157
    new-instance v6, Lcom/android/internal/telephony/cat/BearerEUTRAN;

    invoke-direct {v6}, Lcom/android/internal/telephony/cat/BearerEUTRAN;-><init>()V

    iput-object v6, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerEUTRAN:Lcom/android/internal/telephony/cat/BearerEUTRAN;

    .line 1158
    iget-object v6, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerEUTRAN:Lcom/android/internal/telephony/cat/BearerEUTRAN;

    invoke-virtual {v6, v3, v2, v5}, Lcom/android/internal/telephony/cat/BearerEUTRAN;->setup([BII)V

    .line 1159
    iget-object v6, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerEUTRAN:Lcom/android/internal/telephony/cat/BearerEUTRAN;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/BearerEUTRAN;->dump()V

    move v4, v5

    .line 1160
    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    goto/16 :goto_0

    .line 1163
    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :pswitch_5
    const/16 v6, 0x8

    iput-byte v6, v0, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    .line 1164
    const-string v6, "ValueParser"

    const-string v7, "retrieveBearerDescription: Bearer Type = BEARER_CDMA"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    move v4, v5

    .line 1165
    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    goto/16 :goto_0

    .line 1176
    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :catch_1
    move-exception v1

    move v4, v5

    .line 1177
    .end local v5    # "valueIndex":I
    .local v1, "e":Ljava/lang/Exception;
    .restart local v4    # "valueIndex":I
    :goto_2
    const-string v6, "ValueParser"

    const-string v7, "Unknown ResultException in retrieveBearerDescription: "

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1176
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    goto :goto_2

    .line 1173
    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :catch_3
    move-exception v1

    move v4, v5

    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    goto/16 :goto_1

    .line 1129
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method static retrieveBufferSize(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1193
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 1194
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 1195
    .local v6, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 1196
    .local v2, "length":I
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveBufferSize: valueIndex , Length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    :try_start_0
    aget-byte v7, v3, v6

    and-int/lit16 v1, v7, 0xff

    .line 1199
    .local v1, "firstByte":I
    add-int/lit8 v7, v6, 0x1

    aget-byte v7, v3, v7

    and-int/lit16 v5, v7, 0xff

    .line 1200
    .local v5, "secondByte":I
    shl-int/lit8 v7, v1, 0x8

    or-int v4, v7, v5

    .line 1201
    .local v4, "resultByte":I
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveBufferSize: buffer size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1210
    .end local v1    # "firstByte":I
    .end local v4    # "resultByte":I
    .end local v5    # "secondByte":I
    :goto_0
    return v4

    .line 1204
    :catch_0
    move-exception v0

    .line 1205
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "ValueParser"

    const-string v8, "ResultException: retrieveBufferSize"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 1207
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 1208
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "ValueParser"

    const-string v8, "Unknown ResultException in retrieveBufferSize: "

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    const/4 v4, -0x1

    goto :goto_0
.end method

.method static retrieveChannelData(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1379
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 1380
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 1381
    .local v5, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 1383
    .local v2, "length":I
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveChannelData : value Index , length "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    :try_start_0
    const-string v7, "ValueParser"

    const-string v8, "retrieveChannelData: beginning Byte array copy"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1386
    new-array v4, v2, [B

    .line 1387
    .local v4, "tempChannelData":[B
    const/4 v1, 0x0

    .local v1, "i":I
    move v6, v5

    .end local v5    # "valueIndex":I
    .local v6, "valueIndex":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 1388
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    aget-byte v7, v3, v6

    aput-byte v7, v4, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1387
    add-int/lit8 v1, v1, 0x1

    move v6, v5

    .end local v5    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    goto :goto_0

    .line 1391
    :cond_0
    :try_start_1
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveChannelData: tempChannelData = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Byte Array Copy Complete"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v5, v6

    .line 1399
    .end local v1    # "i":I
    .end local v4    # "tempChannelData":[B
    .end local v6    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    :goto_1
    return-object v4

    .line 1393
    :catch_0
    move-exception v0

    .line 1394
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    :goto_2
    const-string v7, "ValueParser"

    const-string v8, "ResultException: retrieveChannelData"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 1396
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 1397
    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    const-string v7, "ValueParser"

    const-string v8, "Unknown ResultException in retrieveChannelData: "

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    const/4 v4, 0x0

    goto :goto_1

    .line 1396
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "valueIndex":I
    .restart local v1    # "i":I
    .restart local v4    # "tempChannelData":[B
    .restart local v6    # "valueIndex":I
    :catch_2
    move-exception v0

    move v5, v6

    .end local v6    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    goto :goto_3

    .line 1393
    .end local v5    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    :catch_3
    move-exception v0

    move v5, v6

    .end local v6    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    goto :goto_2
.end method

.method static retrieveChannelDataLength(Lcom/android/internal/telephony/cat/ComprehensionTlv;)B
    .locals 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1354
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 1355
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 1356
    .local v3, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v1

    .line 1357
    .local v1, "length":I
    const-string v4, "ValueParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "retrieveChannelDataLength: valueIndex , Length = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1359
    :try_start_0
    aget-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    .line 1366
    :goto_0
    return v4

    .line 1360
    :catch_0
    move-exception v0

    .line 1361
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v4, "ValueParser"

    const-string v5, " ResultException: retrieveChannelDataLength"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4

    .line 1363
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 1364
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "ValueParser"

    const-string v5, "Unknown ResultException in retrieveChannelDataLength: "

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1366
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static retrieveCommandDetails(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/CommandDetails;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v0, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .line 69
    .local v0, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 70
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 72
    .local v3, "valueIndex":I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->isComprehensionRequired()Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    .line 73
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    .line 74
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    .line 75
    add-int/lit8 v4, v3, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return-object v0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveDTMFstring(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B
    .locals 8
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 459
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 460
    .local v4, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 462
    .local v2, "length":I
    if-eqz v2, :cond_1

    .line 463
    add-int/lit8 v6, v2, 0x1

    new-array v0, v6, [B

    .line 464
    .local v0, "dtmfString":[B
    const/4 v6, 0x0

    int-to-byte v7, v2

    aput-byte v7, v0, v6

    .line 465
    const/4 v1, 0x0

    .local v1, "i":I
    move v5, v4

    .end local v4    # "valueIndex":I
    .local v5, "valueIndex":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 466
    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    aget-byte v7, v3, v5

    aput-byte v7, v0, v6

    .line 465
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4    # "valueIndex":I
    .restart local v5    # "valueIndex":I
    goto :goto_0

    :cond_0
    move v4, v5

    .line 470
    .end local v0    # "dtmfString":[B
    .end local v1    # "i":I
    .end local v5    # "valueIndex":I
    .restart local v4    # "valueIndex":I
    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static retrieveDataDestinationAddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/DataDestinationAddress;
    .locals 13
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 1254
    new-instance v1, Lcom/android/internal/telephony/cat/DataDestinationAddress;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/DataDestinationAddress;-><init>()V

    .line 1255
    .local v1, "dataDestinationAddress":Lcom/android/internal/telephony/cat/DataDestinationAddress;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 1256
    .local v5, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 1257
    .local v7, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v10

    add-int/lit8 v4, v10, -0x1

    .line 1258
    .local v4, "length":I
    const-string v10, "ValueParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "retrieveDataDestinationAddress: valueIndex , Length = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " , "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    if-gtz v4, :cond_0

    .line 1260
    const-string v10, "ValueParser"

    const-string v11, "retrieveDataDestinationAddress: Length is 00. Supply Dynamic IP"

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v9

    .line 1288
    .end local v1    # "dataDestinationAddress":Lcom/android/internal/telephony/cat/DataDestinationAddress;
    :goto_0
    return-object v1

    .line 1264
    .restart local v1    # "dataDestinationAddress":Lcom/android/internal/telephony/cat/DataDestinationAddress;
    :cond_0
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "valueIndex":I
    .local v8, "valueIndex":I
    :try_start_0
    aget-byte v10, v5, v7

    iput-byte v10, v1, Lcom/android/internal/telephony/cat/DataDestinationAddress;->addressType:B

    .line 1265
    const-string v10, "ValueParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "retrieveDataDestinationAddress: Address Type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-byte v12, v1, Lcom/android/internal/telephony/cat/DataDestinationAddress;->addressType:B

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " beginning Byte array copy"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    new-array v6, v4, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1268
    .local v6, "tempDataDestAddress":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 1269
    add-int/lit8 v7, v8, 0x1

    .end local v8    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    :try_start_1
    aget-byte v10, v5, v8

    aput-byte v10, v6, v3

    .line 1270
    const-string v10, "ValueParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-byte v12, v6, v3

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 1268
    add-int/lit8 v3, v3, 0x1

    move v8, v7

    .end local v7    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    goto :goto_1

    .line 1272
    :cond_1
    :try_start_2
    const-string v10, "ValueParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "retrieveDataDestinationAddress: tempDataDestAddress = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " Byte array copy complete"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    invoke-static {v6}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    .line 1275
    .local v0, "add":Ljava/net/InetAddress;
    const-string v10, "ValueParser"

    const-string v11, "retrieveDataDestinationAddress : InetAddress retrieved "

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1276
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v10

    iput-object v10, v1, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v7, v8

    .line 1278
    .end local v8    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    goto/16 :goto_0

    .line 1279
    .end local v0    # "add":Ljava/net/InetAddress;
    .end local v3    # "i":I
    .end local v6    # "tempDataDestAddress":[B
    .end local v7    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    :catch_0
    move-exception v2

    move v7, v8

    .line 1280
    .end local v8    # "valueIndex":I
    .local v2, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v7    # "valueIndex":I
    :goto_2
    const-string v9, "ValueParser"

    const-string v10, " ResultException: retrieveDataDestinationAddress - IndexOutOfBoundsException"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    new-instance v9, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v9

    .line 1282
    .end local v2    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v7    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    :catch_1
    move-exception v2

    move v7, v8

    .line 1283
    .end local v8    # "valueIndex":I
    .local v2, "e":Ljava/net/UnknownHostException;
    .restart local v7    # "valueIndex":I
    :goto_3
    const-string v9, "ValueParser"

    const-string v10, " ResultException: retrieveDataDestinationAddress - UnknownHostException"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    new-instance v9, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v9

    .line 1285
    .end local v2    # "e":Ljava/net/UnknownHostException;
    .end local v7    # "valueIndex":I
    .restart local v8    # "valueIndex":I
    :catch_2
    move-exception v2

    move v7, v8

    .line 1286
    .end local v8    # "valueIndex":I
    .local v2, "e":Ljava/lang/Exception;
    .restart local v7    # "valueIndex":I
    :goto_4
    const-string v10, "ValueParser"

    const-string v11, "Unknown ResultException in retrieveDataDestinationAddress: "

    invoke-static {v10, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v9

    .line 1288
    goto/16 :goto_0

    .line 1285
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "i":I
    .restart local v6    # "tempDataDestAddress":[B
    :catch_3
    move-exception v2

    goto :goto_4

    .line 1282
    :catch_4
    move-exception v2

    goto :goto_3

    .line 1279
    :catch_5
    move-exception v2

    goto :goto_2
.end method

.method static retrieveDeviceIdentities(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/DeviceIdentities;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 93
    new-instance v0, Lcom/android/internal/telephony/cat/DeviceIdentities;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/DeviceIdentities;-><init>()V

    .line 94
    .local v0, "devIds":Lcom/android/internal/telephony/cat/DeviceIdentities;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 95
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 97
    .local v3, "valueIndex":I
    :try_start_0
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/DeviceIdentities;->sourceId:I

    .line 98
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, v0, Lcom/android/internal/telephony/cat/DeviceIdentities;->destinationId:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return-object v0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveDuration(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Duration;
    .locals 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, "timeInterval":I
    sget-object v3, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    .line 117
    .local v3, "timeUnit":Lcom/android/internal/telephony/cat/Duration$TimeUnit;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 118
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 121
    .local v4, "valueIndex":I
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->values()[Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    move-result-object v5

    aget-byte v6, v1, v4

    and-int/lit16 v6, v6, 0xff

    aget-object v3, v5, v6

    .line 122
    add-int/lit8 v5, v4, 0x1

    aget-byte v5, v1, v5
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v2, v5, 0xff

    .line 126
    new-instance v5, Lcom/android/internal/telephony/cat/Duration;

    invoke-direct {v5, v2, v3}, Lcom/android/internal/telephony/cat/Duration;-><init>(ILcom/android/internal/telephony/cat/Duration$TimeUnit;)V

    return-object v5

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5
.end method

.method static retrieveIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/IconId;
    .locals 7
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v1, Lcom/android/internal/telephony/cat/IconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/IconId;-><init>()V

    .line 191
    .local v1, "id":Lcom/android/internal/telephony/cat/IconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 192
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 194
    .local v3, "valueIndex":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "valueIndex":I
    .local v4, "valueIndex":I
    :try_start_0
    aget-byte v5, v2, v3

    and-int/lit16 v5, v5, 0xff

    if-nez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v1, Lcom/android/internal/telephony/cat/IconId;->selfExplanatory:Z

    .line 195
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    iput v5, v1, Lcom/android/internal/telephony/cat/IconId;->recordNumber:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    return-object v1

    .line 194
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    .line 197
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v5
.end method

.method static retrieveItem(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/Item;
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 137
    const/4 v2, 0x0

    .line 139
    .local v2, "item":Lcom/android/internal/telephony/cat/Item;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 140
    .local v4, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 141
    .local v7, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    .line 143
    .local v3, "length":I
    if-eqz v3, :cond_0

    .line 144
    add-int/lit8 v6, v3, -0x1

    .line 147
    .local v6, "textLen":I
    :try_start_0
    aget-byte v8, v4, v7

    and-int/lit16 v1, v8, 0xff

    .line 148
    .local v1, "id":I
    add-int/lit8 v8, v7, 0x1

    invoke-static {v4, v8, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "text":Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/cat/Item;

    .end local v2    # "item":Lcom/android/internal/telephony/cat/Item;
    invoke-direct {v2, v1, v5}, Lcom/android/internal/telephony/cat/Item;-><init>(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v1    # "id":I
    .end local v5    # "text":Ljava/lang/String;
    .end local v6    # "textLen":I
    .restart local v2    # "item":Lcom/android/internal/telephony/cat/Item;
    :cond_0
    return-object v2

    .line 151
    .end local v2    # "item":Lcom/android/internal/telephony/cat/Item;
    .restart local v6    # "textLen":I
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8
.end method

.method static retrieveItemId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)I
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v1, 0x0

    .line 169
    .local v1, "id":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 170
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 173
    .local v3, "valueIndex":I
    :try_start_0
    aget-byte v4, v2, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v1, v4, 0xff

    .line 178
    return v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4
.end method

.method static retrieveItemsIconId(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/ItemsIconId;
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 213
    const-string v8, "ValueParser"

    const-string v9, "retrieveItemsIconId:"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    new-instance v1, Lcom/android/internal/telephony/cat/ItemsIconId;

    invoke-direct {v1}, Lcom/android/internal/telephony/cat/ItemsIconId;-><init>()V

    .line 216
    .local v1, "id":Lcom/android/internal/telephony/cat/ItemsIconId;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 217
    .local v5, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 218
    .local v6, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v8

    add-int/lit8 v4, v8, -0x1

    .line 219
    .local v4, "numOfItems":I
    new-array v8, v4, [I

    iput-object v8, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I

    .line 223
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "valueIndex":I
    .local v7, "valueIndex":I
    :try_start_0
    aget-byte v8, v5, v6

    and-int/lit16 v8, v8, 0xff

    if-nez v8, :cond_0

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->selfExplanatory:Z

    .line 225
    const/4 v2, 0x0

    .local v2, "index":I
    move v3, v2

    .end local v2    # "index":I
    .local v3, "index":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 226
    iget-object v8, v1, Lcom/android/internal/telephony/cat/ItemsIconId;->recordNumbers:[I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    :try_start_1
    aget-byte v9, v5, v7

    aput v9, v8, v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move v3, v2

    .end local v2    # "index":I
    .restart local v3    # "index":I
    move v7, v6

    .end local v6    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    goto :goto_1

    .line 223
    .end local v3    # "index":I
    :cond_0
    const/4 v8, 0x0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    move v6, v7

    .line 229
    .end local v7    # "valueIndex":I
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v6    # "valueIndex":I
    :goto_2
    new-instance v8, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v8

    .line 231
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v6    # "valueIndex":I
    .restart local v3    # "index":I
    .restart local v7    # "valueIndex":I
    :cond_1
    return-object v1

    .line 228
    .end local v3    # "index":I
    .end local v7    # "valueIndex":I
    .restart local v2    # "index":I
    .restart local v6    # "valueIndex":I
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static retrieveLanguage(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 4
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v1

    .line 1103
    .local v1, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v2

    .line 1104
    .local v2, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v0

    .line 1105
    .local v0, "length":I
    if-eqz v0, :cond_0

    .line 1106
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v2, v0}, Ljava/lang/String;-><init>([BII)V

    .line 1108
    :goto_0
    return-object v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static retrieveNetworkAccessName(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 14
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1302
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 1303
    .local v5, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v8

    .line 1304
    .local v8, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v4

    .line 1306
    .local v4, "length":I
    const-string v11, "ValueParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "retrieveNetworkAccessName: valueIndex , Length = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " , "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    :try_start_0
    new-array v7, v4, [B

    .line 1309
    .local v7, "tempNetworkAccessName":[B
    const-string v11, "ValueParser"

    const-string v12, "retrieveNetworkAccessName: beginning Byte array copy"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    const/4 v2, 0x0

    .line 1313
    .local v2, "idx":I
    aget-byte v9, v5, v8

    .line 1314
    .local v9, "wordLen":I
    add-int/lit8 v10, v9, 0x1

    .line 1316
    .local v10, "wordLenIdx":I
    const/4 v1, 0x1

    .local v1, "i":I
    move v3, v2

    .end local v2    # "idx":I
    .local v3, "idx":I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 1317
    if-ne v1, v10, :cond_0

    .line 1318
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    const/16 v11, 0x2e

    aput-byte v11, v7, v3

    .line 1320
    add-int v11, v8, v1

    aget-byte v9, v5, v11

    .line 1321
    add-int/lit8 v11, v9, 0x1

    add-int/2addr v10, v11

    .line 1316
    :goto_1
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "idx":I
    .restart local v3    # "idx":I
    goto :goto_0

    .line 1323
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    add-int v11, v8, v1

    aget-byte v11, v5, v11

    aput-byte v11, v7, v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 1331
    .end local v1    # "i":I
    .end local v2    # "idx":I
    .end local v7    # "tempNetworkAccessName":[B
    .end local v9    # "wordLen":I
    .end local v10    # "wordLenIdx":I
    :catch_0
    move-exception v0

    .line 1332
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v11, "ValueParser"

    const-string v12, " ResultException: retrieveNetworkAccessName - IndexOutOfBoundsException"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    new-instance v11, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v11, v12}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v11

    .line 1326
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v1    # "i":I
    .restart local v3    # "idx":I
    .restart local v7    # "tempNetworkAccessName":[B
    .restart local v9    # "wordLen":I
    .restart local v10    # "wordLenIdx":I
    :cond_1
    :try_start_1
    const-string v11, "ValueParser"

    const-string v12, "retrieveNetworkAccessName: array copy complete"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    new-instance v6, Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "UTF-8"

    invoke-direct {v6, v7, v11, v3, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 1329
    .local v6, "tempName":Ljava/lang/String;
    const-string v11, "ValueParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "retrieveNetworkAccessName: tempName = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1341
    .end local v1    # "i":I
    .end local v3    # "idx":I
    .end local v6    # "tempName":Ljava/lang/String;
    .end local v7    # "tempNetworkAccessName":[B
    .end local v9    # "wordLen":I
    .end local v10    # "wordLenIdx":I
    :goto_2
    return-object v6

    .line 1334
    :catch_1
    move-exception v0

    .line 1335
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v11, "ValueParser"

    const-string v12, " ResultException: retrieveNetworkAccessName - UnsupportedEncodingException"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1336
    new-instance v11, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v11, v12}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v11

    .line 1337
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 1338
    .local v0, "e":Ljava/lang/Exception;
    const-string v11, "ValueParser"

    const-string v12, "Unknown ResultException in retrieveNetworkAccessName: "

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    const/4 v6, 0x0

    goto :goto_2
.end method

.method static retrieveSMSCaddress(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 8
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 474
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 475
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 477
    .local v5, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 479
    .local v2, "length":I
    add-int/lit8 v6, v2, 0x1

    new-array v4, v6, [B

    .line 482
    .local v4, "rawValueSmscaddress":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    add-int/lit8 v6, v2, 0x1

    if-ge v1, v6, :cond_0

    .line 483
    add-int/lit8 v6, v5, -0x1

    add-int/2addr v6, v1

    :try_start_0
    aget-byte v6, v3, v6

    aput-byte v6, v4, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 485
    :catch_0
    move-exception v0

    .line 486
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6

    .line 488
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    if-eqz v2, :cond_1

    .line 489
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 491
    :cond_1
    new-instance v6, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v6
.end method

.method static retrieveSMSTPDU(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;
    .locals 1
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .param p1, "ispacking_req"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 505
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/cat/ValueParser;->retrieveSMSTPDU(Lcom/android/internal/telephony/cat/ComprehensionTlv;ZI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static retrieveSMSTPDU(Lcom/android/internal/telephony/cat/ComprehensionTlv;ZI)Ljava/lang/String;
    .locals 35
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .param p1, "ispacking_req"    # Z
    .param p2, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v27

    .line 510
    .local v27, "rawValue":[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v31

    .line 511
    .local v31, "valueIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v17

    .line 512
    .local v17, "length":I
    const/4 v8, 0x0

    .line 513
    .local v8, "destaddlen":I
    const/16 v26, 0x0

    .line 516
    .local v26, "rawPdu":[B
    add-int/lit8 v32, v31, 0x2

    aget-byte v32, v27, v32

    rem-int/lit8 v32, v32, 0x2

    if-nez v32, :cond_0

    .line 517
    add-int/lit8 v32, v31, 0x2

    aget-byte v32, v27, v32

    div-int/lit8 v8, v32, 0x2

    .line 521
    :goto_0
    add-int/lit8 v32, v8, 0x6

    move/from16 v0, v17

    move/from16 v1, v32

    if-ne v0, v1, :cond_1

    .line 522
    add-int/lit8 v32, v17, 0x1

    move/from16 v0, v32

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .line 528
    :goto_1
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_2

    .line 529
    add-int v32, v31, v13

    :try_start_0
    aget-byte v32, v27, v32

    aput-byte v32, v26, v13
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 519
    .end local v13    # "i":I
    :cond_0
    add-int/lit8 v32, v31, 0x2

    aget-byte v32, v27, v32

    add-int/lit8 v32, v32, 0x1

    div-int/lit8 v8, v32, 0x2

    goto :goto_0

    .line 524
    :cond_1
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v26, v0

    goto :goto_1

    .line 531
    .restart local v13    # "i":I
    :catch_0
    move-exception v10

    .line 532
    .local v10, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32

    .line 536
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    const/16 v24, 0x0

    .line 537
    .local v24, "packingUserDataIndex":I
    const/16 v25, 0x0

    .line 538
    .local v25, "packingUserDatalen":I
    const/4 v4, 0x0

    .line 539
    .local v4, "adjustedUserDatalen":I
    const/16 v18, 0x0

    .line 540
    .local v18, "lengthtoCheck":I
    const/16 v30, 0x0

    .line 541
    .local v30, "tpvpvalue":I
    const/16 v29, 0x0

    .line 542
    .local v29, "tpvplength":I
    const/4 v9, 0x0

    .line 543
    .local v9, "destaddrlen":I
    const/4 v7, 0x0

    .line 545
    .local v7, "dcs":I
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "rawtpvp:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const/16 v34, 0x0

    aget-byte v34, v26, v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const/16 v32, 0x0

    aget-byte v32, v26, v32

    and-int/lit8 v30, v32, 0x18

    .line 549
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "tpvpvalue:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    if-nez v30, :cond_5

    .line 552
    const/16 v29, 0x0

    .line 561
    :cond_3
    :goto_3
    const/16 v32, 0x2

    aget-byte v32, v26, v32

    rem-int/lit8 v32, v32, 0x2

    if-nez v32, :cond_8

    .line 562
    const/16 v32, 0x2

    aget-byte v32, v26, v32

    div-int/lit8 v9, v32, 0x2

    .line 566
    :goto_4
    add-int/lit8 v32, v9, 0x3

    add-int/lit8 v32, v32, 0x1

    add-int/lit8 v32, v32, 0x1

    add-int v32, v32, v29

    add-int/lit8 v24, v32, 0x1

    .line 568
    add-int/lit8 v32, v29, 0x1

    sub-int v32, v24, v32

    :try_start_1
    aget-byte v7, v26, v32
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 572
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "SEND SMS DCS = "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v32, "gsm.sim.operator.numeric"

    const-string v33, "0"

    move-object/from16 v0, v32

    move/from16 v1, p2

    move-object/from16 v2, v33

    invoke-static {v0, v1, v2}, Lcom/samsung/android/telephony/MultiSimManager;->getTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, "MCCMNC":Ljava/lang/String;
    const/16 v32, 0x1

    move/from16 v0, p1

    move/from16 v1, v32

    if-ne v0, v1, :cond_12

    and-int/lit16 v0, v7, 0xf4

    move/from16 v32, v0

    const/16 v33, 0xf0

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_4

    const-string v32, "XXV"

    sget-object v33, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_4

    const-string v32, "GLB"

    sget-object v33, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_4

    const-string v32, "SMA"

    sget-object v33, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_4

    const-string v32, "XTC"

    sget-object v33, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_4

    const-string v32, "XTE"

    sget-object v33, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_4

    const-string v32, "404"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_4

    const-string v32, "510"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_4

    const-string v32, "520"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_4

    const-string v32, "405"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v32

    if-nez v32, :cond_4

    const-string v32, "51503"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_4

    const-string v32, "28602"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_4

    const-string v32, "20620"

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 591
    :cond_4
    :try_start_2
    aget-byte v32, v26, v24
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    .line 596
    add-int/lit8 v32, v24, 0x1

    sub-int v18, v17, v32

    .line 598
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "length to be checked:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    move/from16 v0, v18

    move/from16 v1, v25

    if-lt v0, v1, :cond_d

    .line 602
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "TPUDL_packingUserDatalen:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    const/16 v28, 0x0

    .line 604
    .local v28, "shorten":I
    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 607
    .local v22, "packinUserData":[B
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_5
    move/from16 v0, v25

    if-ge v14, v0, :cond_9

    .line 608
    add-int/lit8 v32, v24, 0x1

    add-int v32, v32, v14

    :try_start_3
    aget-byte v32, v26, v32

    aput-byte v32, v22, v14
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_3

    .line 607
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 553
    .end local v3    # "MCCMNC":Ljava/lang/String;
    .end local v14    # "j":I
    .end local v22    # "packinUserData":[B
    .end local v28    # "shorten":I
    :cond_5
    const/16 v32, 0x10

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_6

    .line 554
    const/16 v29, 0x1

    goto/16 :goto_3

    .line 555
    :cond_6
    const/16 v32, 0x8

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_7

    .line 556
    const/16 v29, 0x7

    goto/16 :goto_3

    .line 557
    :cond_7
    const/16 v32, 0x18

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 558
    const/16 v29, 0x7

    goto/16 :goto_3

    .line 564
    :cond_8
    const/16 v32, 0x2

    aget-byte v32, v26, v32

    add-int/lit8 v32, v32, 0x1

    div-int/lit8 v9, v32, 0x2

    goto/16 :goto_4

    .line 569
    :catch_1
    move-exception v10

    .line 570
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32

    .line 592
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v3    # "MCCMNC":Ljava/lang/String;
    :catch_2
    move-exception v10

    .line 593
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32

    .line 610
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v14    # "j":I
    .restart local v22    # "packinUserData":[B
    .restart local v28    # "shorten":I
    :catch_3
    move-exception v10

    .line 611
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32

    .line 615
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_9
    const/16 v32, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v32

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v23

    .line 618
    .local v23, "packinUserDataString":Ljava/lang/String;
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "TPUDL_packingUserDatastring:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    :try_start_4
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v32

    const/16 v33, 0xa0

    move/from16 v0, v32

    move/from16 v1, v33

    if-le v0, v1, :cond_a

    .line 622
    const/16 v32, 0x0

    const/16 v33, 0x9e

    move-object/from16 v0, v23

    move/from16 v1, v32

    move/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 623
    .local v12, "fullSizePackinUserDataString":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v32

    move/from16 v0, v32

    add-int/lit16 v0, v0, -0x9e

    move/from16 v28, v0

    .line 624
    aget-byte v32, v26, v24

    sub-int v32, v32, v28

    move/from16 v0, v32

    int-to-byte v0, v0

    move/from16 v32, v0

    aput-byte v32, v26, v24

    .line 625
    move-object/from16 v23, v12

    .line 630
    .end local v12    # "fullSizePackinUserDataString":Ljava/lang/String;
    :cond_a
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v19

    .line 632
    .local v19, "packedUserData":[B
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    .line 634
    .local v20, "packedUserDatalen":I
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "TPUDL_Packed user data len:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4 .. :try_end_4} :catch_5

    .line 637
    const/4 v15, 0x1

    .local v15, "k":I
    :goto_6
    move/from16 v0, v20

    if-ge v15, v0, :cond_b

    .line 638
    add-int v32, v24, v15

    :try_start_5
    aget-byte v33, v19, v15

    aput-byte v33, v26, v32

    .line 637
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 641
    :cond_b
    add-int/lit8 v32, v20, -0x1

    sub-int v32, v25, v32

    sub-int v4, v17, v32

    .line 643
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "TPUDL_Adjusted user data len:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 702
    .end local v28    # "shorten":I
    :goto_7
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Data coding scheme:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    add-int/lit8 v34, v29, 0x1

    sub-int v34, v24, v34

    aget-byte v34, v26, v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const/16 v6, 0xf0

    .line 706
    .local v6, "datacodingscheme":I
    const-string v32, "MEO"

    sget-object v33, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 707
    const/16 v6, 0xf3

    .line 709
    :cond_c
    const/4 v5, 0x0

    .line 710
    .local v5, "datacodingfromsim":I
    add-int/lit8 v32, v29, 0x1

    sub-int v32, v24, v32

    aget-byte v5, v26, v32

    .line 711
    and-int/2addr v5, v6

    .line 712
    add-int/lit8 v32, v29, 0x1

    sub-int v32, v24, v32

    int-to-byte v0, v5

    move/from16 v33, v0

    aput-byte v33, v26, v32

    .line 714
    new-array v0, v4, [B

    move-object/from16 v21, v0

    .line 717
    .local v21, "packeddata":[B
    const/16 v16, 0x0

    .local v16, "l":I
    :goto_8
    move/from16 v0, v16

    if-ge v0, v4, :cond_10

    .line 718
    :try_start_6
    aget-byte v32, v26, v16

    aput-byte v32, v21, v16
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_9

    .line 717
    add-int/lit8 v16, v16, 0x1

    goto :goto_8

    .line 645
    .end local v5    # "datacodingfromsim":I
    .end local v6    # "datacodingscheme":I
    .end local v16    # "l":I
    .end local v21    # "packeddata":[B
    .restart local v28    # "shorten":I
    :catch_4
    move-exception v10

    .line 646
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_7
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32
    :try_end_7
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_7 .. :try_end_7} :catch_5

    .line 648
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v15    # "k":I
    .end local v19    # "packedUserData":[B
    .end local v20    # "packedUserDatalen":I
    :catch_5
    move-exception v11

    .line 649
    .local v11, "ex":Lcom/android/internal/telephony/EncodeException;
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32

    .line 655
    .end local v11    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v14    # "j":I
    .end local v22    # "packinUserData":[B
    .end local v23    # "packinUserDataString":Ljava/lang/String;
    .end local v28    # "shorten":I
    :cond_d
    add-int/lit8 v25, v18, 0x1

    .line 657
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "packingUserDatalen:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 662
    .restart local v22    # "packinUserData":[B
    const/4 v14, 0x0

    .restart local v14    # "j":I
    :goto_9
    move/from16 v0, v25

    if-ge v14, v0, :cond_e

    .line 663
    add-int v32, v24, v14

    :try_start_8
    aget-byte v32, v26, v32

    aput-byte v32, v22, v14
    :try_end_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_6

    .line 662
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 665
    :catch_6
    move-exception v10

    .line 666
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32

    .line 671
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_e
    const/16 v32, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v32

    move/from16 v2, v25

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v23

    .line 674
    .restart local v23    # "packinUserDataString":Ljava/lang/String;
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "packingUserDatastring:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :try_start_9
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v19

    .line 679
    .restart local v19    # "packedUserData":[B
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    .line 681
    .restart local v20    # "packedUserDatalen":I
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Packed user data len:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_9 .. :try_end_9} :catch_8

    .line 684
    const/4 v15, 0x0

    .restart local v15    # "k":I
    :goto_a
    add-int/lit8 v32, v20, -0x1

    move/from16 v0, v32

    if-ge v15, v0, :cond_f

    .line 685
    add-int v32, v24, v15

    add-int/lit8 v33, v15, 0x1

    :try_start_a
    aget-byte v33, v19, v33

    aput-byte v33, v26, v32

    .line 684
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 688
    :cond_f
    add-int/lit8 v32, v20, -0x1

    sub-int v32, v25, v32

    sub-int v4, v17, v32

    .line 690
    const-string v32, "ValueParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "Adjusted user data len:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_7
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_a .. :try_end_a} :catch_8

    goto/16 :goto_7

    .line 692
    :catch_7
    move-exception v10

    .line 693
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    :try_start_b
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32
    :try_end_b
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_b .. :try_end_b} :catch_8

    .line 695
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v15    # "k":I
    .end local v19    # "packedUserData":[B
    .end local v20    # "packedUserDatalen":I
    :catch_8
    move-exception v11

    .line 696
    .restart local v11    # "ex":Lcom/android/internal/telephony/EncodeException;
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32

    .line 720
    .end local v11    # "ex":Lcom/android/internal/telephony/EncodeException;
    .restart local v5    # "datacodingfromsim":I
    .restart local v6    # "datacodingscheme":I
    .restart local v15    # "k":I
    .restart local v16    # "l":I
    .restart local v19    # "packedUserData":[B
    .restart local v20    # "packedUserDatalen":I
    .restart local v21    # "packeddata":[B
    :catch_9
    move-exception v10

    .line 721
    .restart local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32

    .line 724
    .end local v10    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_10
    if-eqz v4, :cond_11

    .line 725
    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v32

    .line 734
    .end local v5    # "datacodingfromsim":I
    .end local v6    # "datacodingscheme":I
    .end local v14    # "j":I
    .end local v15    # "k":I
    .end local v16    # "l":I
    .end local v19    # "packedUserData":[B
    .end local v20    # "packedUserDatalen":I
    .end local v21    # "packeddata":[B
    .end local v22    # "packinUserData":[B
    .end local v23    # "packinUserDataString":Ljava/lang/String;
    :goto_b
    return-object v32

    .line 727
    .restart local v5    # "datacodingfromsim":I
    .restart local v6    # "datacodingscheme":I
    .restart local v14    # "j":I
    .restart local v15    # "k":I
    .restart local v16    # "l":I
    .restart local v19    # "packedUserData":[B
    .restart local v20    # "packedUserDatalen":I
    .restart local v21    # "packeddata":[B
    .restart local v22    # "packinUserData":[B
    .restart local v23    # "packinUserDataString":Ljava/lang/String;
    :cond_11
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32

    .line 733
    .end local v5    # "datacodingfromsim":I
    .end local v6    # "datacodingscheme":I
    .end local v14    # "j":I
    .end local v15    # "k":I
    .end local v16    # "l":I
    .end local v19    # "packedUserData":[B
    .end local v20    # "packedUserDatalen":I
    .end local v21    # "packeddata":[B
    .end local v22    # "packinUserData":[B
    .end local v23    # "packinUserDataString":Ljava/lang/String;
    :cond_12
    if-eqz v17, :cond_13

    .line 734
    invoke-static/range {v26 .. v26}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v32

    goto :goto_b

    .line 736
    :cond_13
    new-instance v32, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v33, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v32 .. v33}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v32
.end method

.method static retrieveSMSTPDU_CDMA(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;
    .locals 50
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .param p1, "ispacking_req"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v38

    .line 744
    .local v38, "rawValue":[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v45

    .line 745
    .local v45, "valueIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v26

    .line 746
    .local v26, "length":I
    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v36, v0

    .line 749
    .local v36, "rawPdu":[B
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    .line 750
    add-int v46, v45, v24

    :try_start_0
    aget-byte v46, v38, v46

    aput-byte v46, v36, v24
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 752
    :catch_0
    move-exception v19

    .line 753
    .local v19, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v46, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v47, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v46 .. v47}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v46

    .line 758
    .end local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/16 v41, 0x0

    .line 759
    .local v41, "teleserparaid":I
    const/16 v17, 0x4

    .line 760
    .local v17, "destaddrparaid":I
    const/16 v9, 0x8

    .line 762
    .local v9, "bearerdataparaid":I
    const/16 v43, 0x0

    .line 763
    .local v43, "teleservicelen":I
    const/16 v16, 0x0

    .line 764
    .local v16, "destaddrlen":I
    const/4 v8, 0x0

    .line 767
    .local v8, "bearerdatalen":I
    invoke-static/range {v36 .. v36}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v37

    .line 768
    .local v37, "rawPduStr":Ljava/lang/String;
    const-string v46, "retrieveSMSTPDU"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "rawPdu : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    :try_start_1
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/16 v46, 0x64

    move/from16 v0, v46

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 773
    .local v6, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v18, Ljava/io/DataOutputStream;

    move-object/from16 v0, v18

    invoke-direct {v0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 774
    .local v18, "dos":Ljava/io/DataOutputStream;
    const/16 v46, 0x0

    aget-byte v29, v36, v46

    .line 776
    .local v29, "msgtype":B
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "teleserparaid:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    const/16 v48, 0x1

    aget-byte v48, v36, v48

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    const/16 v46, 0x1

    aget-byte v46, v36, v46

    move/from16 v0, v46

    move/from16 v1, v41

    if-ne v0, v1, :cond_1

    .line 779
    const/16 v46, 0x2

    aget-byte v46, v36, v46

    move/from16 v0, v46

    and-int/lit16 v0, v0, 0xff

    move/from16 v43, v0

    .line 780
    const/16 v46, 0x3

    aget-byte v46, v36, v46

    shl-int/lit8 v46, v46, 0x8

    const/16 v47, 0x4

    aget-byte v47, v36, v47

    or-int v42, v46, v47

    .line 781
    .local v42, "teleserviceid":I
    move-object/from16 v0, v18

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 783
    .end local v42    # "teleserviceid":I
    :cond_1
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 784
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 787
    add-int/lit8 v46, v43, 0x2

    add-int/lit8 v28, v46, 0x1

    .line 788
    .local v28, "lenmsgteleser":I
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "destaddrparaid:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    aget-byte v48, v36, v28

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "lenght to reach destaddrparamid:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    aget-byte v46, v36, v28

    move/from16 v0, v46

    move/from16 v1, v17

    if-ne v0, v1, :cond_d

    .line 792
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13}, Ljava/lang/String;-><init>()V

    .line 793
    .local v13, "destAddrStr":Ljava/lang/String;
    add-int/lit8 v46, v28, 0x1

    aget-byte v46, v36, v46

    move/from16 v0, v46

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    .line 794
    move/from16 v0, v16

    new-array v15, v0, [B

    .line 795
    .local v15, "destaddr":[B
    add-int/lit8 v46, v28, 0x1

    add-int/lit8 v46, v46, 0x1

    const/16 v47, 0x0

    array-length v0, v15

    move/from16 v48, v0

    move-object/from16 v0, v36

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-static {v0, v1, v15, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 796
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 797
    .local v4, "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    array-length v0, v15

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-byte v0, v0

    move/from16 v46, v0

    move/from16 v0, v46

    iput v0, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 798
    iget v0, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v46, v0

    move/from16 v0, v46

    new-array v0, v0, [B

    move-object/from16 v46, v0

    move-object/from16 v0, v46

    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 799
    const/16 v46, 0x0

    iget-object v0, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v47, v0

    const/16 v48, 0x0

    array-length v0, v15

    move/from16 v49, v0

    move/from16 v0, v46

    move-object/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    invoke-static {v15, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 800
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_1 .. :try_end_1} :catch_6

    .line 802
    .local v5, "addr1":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_start_2
    new-instance v25, Lcom/android/internal/util/BitwiseInputStream;

    iget-object v0, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v46, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v46

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lcom/android/internal/telephony/cat/ValueParser$CodingException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_2 .. :try_end_2} :catch_6

    .local v25, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    move-object v14, v13

    .line 803
    .end local v13    # "destAddrStr":Ljava/lang/String;
    .local v14, "destAddrStr":Ljava/lang/String;
    :goto_1
    :try_start_3
    invoke-virtual/range {v25 .. v25}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v46

    if-lez v46, :cond_b

    .line 804
    iget v0, v4, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v32, v0

    .line 805
    .local v32, "paramBytes":I
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SMS PDU parsing :: paramBytes :: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const/16 v46, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v46

    move/from16 v0, v46

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 807
    const/16 v46, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v46

    move/from16 v0, v46

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 808
    const/16 v23, 0x4

    .line 809
    .local v23, "fieldBits":B
    const/4 v10, 0x2

    .line 810
    .local v10, "consumedBits":B
    iget v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v46, v0

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_2

    .line 811
    const/16 v46, 0x3

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v46

    move/from16 v0, v46

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 812
    const/16 v46, 0x4

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v46

    move/from16 v0, v46

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 813
    const/16 v23, 0x8

    .line 814
    const/16 v46, 0x9

    move/from16 v0, v46

    int-to-byte v10, v0

    .line 816
    :cond_2
    const/16 v46, 0x8

    move-object/from16 v0, v25

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v46

    move/from16 v0, v46

    iput v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 817
    add-int/lit8 v46, v10, 0x8

    move/from16 v0, v46

    int-to-byte v10, v0

    .line 818
    mul-int/lit8 v46, v32, 0x8

    sub-int v39, v46, v10

    .line 819
    .local v39, "remainingBits":I
    iget v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v46, v0

    mul-int v11, v46, v23

    .line 820
    .local v11, "dataBits":I
    sub-int v31, v39, v11

    .line 821
    .local v31, "paddingBits":I
    move/from16 v0, v39

    if-ge v0, v11, :cond_3

    .line 822
    new-instance v46, Lcom/android/internal/telephony/cat/ValueParser$CodingException;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "Originating_NUMBER subparam encoding size error (remainingBits "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ", dataBits "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ", paddingBits "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ")"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Lcom/android/internal/telephony/cat/ValueParser$CodingException;-><init>(Ljava/lang/String;)V

    throw v46
    :try_end_3
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/internal/telephony/cat/ValueParser$CodingException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_3 .. :try_end_3} :catch_6

    .line 855
    .end local v10    # "consumedBits":B
    .end local v11    # "dataBits":I
    .end local v23    # "fieldBits":B
    .end local v31    # "paddingBits":I
    .end local v32    # "paramBytes":I
    .end local v39    # "remainingBits":I
    :catch_1
    move-exception v22

    move-object v13, v14

    .line 856
    .end local v14    # "destAddrStr":Ljava/lang/String;
    .end local v25    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v13    # "destAddrStr":Ljava/lang/String;
    .local v22, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :goto_2
    :try_start_4
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "destination address decode failed: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    new-instance v46, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v47, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v46 .. v47}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v46
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_4 .. :try_end_4} :catch_6

    .line 907
    .end local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v5    # "addr1":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "destAddrStr":Ljava/lang/String;
    .end local v15    # "destaddr":[B
    .end local v18    # "dos":Ljava/io/DataOutputStream;
    .end local v22    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    .end local v28    # "lenmsgteleser":I
    .end local v29    # "msgtype":B
    :catch_2
    move-exception v22

    .line 908
    .local v22, "ex":Ljava/io/IOException;
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "creating SubmitPdu failed: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    new-instance v46, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v47, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v46 .. v47}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v46

    .line 826
    .end local v22    # "ex":Ljava/io/IOException;
    .restart local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v5    # "addr1":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "consumedBits":B
    .restart local v11    # "dataBits":I
    .restart local v14    # "destAddrStr":Ljava/lang/String;
    .restart local v15    # "destaddr":[B
    .restart local v18    # "dos":Ljava/io/DataOutputStream;
    .restart local v23    # "fieldBits":B
    .restart local v25    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v28    # "lenmsgteleser":I
    .restart local v29    # "msgtype":B
    .restart local v31    # "paddingBits":I
    .restart local v32    # "paramBytes":I
    .restart local v39    # "remainingBits":I
    :cond_3
    :try_start_5
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v46

    move-object/from16 v0, v46

    iput-object v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 827
    move-object/from16 v0, v25

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 828
    iget-object v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v35, v0

    .line 829
    .local v35, "rawData":[B
    iget v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v30, v0

    .line 830
    .local v30, "numFields":I
    iget v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v46, v0
    :try_end_5
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/android/internal/telephony/cat/ValueParser$CodingException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_5 .. :try_end_5} :catch_6

    const/16 v47, 0x1

    move/from16 v0, v46

    move/from16 v1, v47

    if-ne v0, v1, :cond_4

    .line 834
    :try_start_6
    new-instance v13, Ljava/lang/String;

    iget-object v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v46, v0

    const/16 v47, 0x0

    iget-object v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    array-length v0, v0

    move/from16 v48, v0

    const-string v49, "US-ASCII"

    move-object/from16 v0, v46

    move/from16 v1, v47

    move/from16 v2, v48

    move-object/from16 v3, v49

    invoke-direct {v13, v0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_6
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/android/internal/telephony/cat/ValueParser$CodingException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_6 .. :try_end_6} :catch_6

    .end local v14    # "destAddrStr":Ljava/lang/String;
    .restart local v13    # "destAddrStr":Ljava/lang/String;
    :goto_3
    move-object v14, v13

    .line 853
    .end local v13    # "destAddrStr":Ljava/lang/String;
    .restart local v14    # "destAddrStr":Ljava/lang/String;
    goto/16 :goto_1

    .line 835
    :catch_3
    move-exception v22

    .line 836
    .local v22, "ex":Ljava/io/UnsupportedEncodingException;
    :try_start_7
    new-instance v46, Lcom/android/internal/telephony/cat/ValueParser$CodingException;

    const-string v47, "invalid SMS address ASCII code"

    invoke-direct/range {v46 .. v47}, Lcom/android/internal/telephony/cat/ValueParser$CodingException;-><init>(Ljava/lang/String;)V

    throw v46
    :try_end_7
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/android/internal/telephony/cat/ValueParser$CodingException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_7 .. :try_end_7} :catch_6

    .line 858
    .end local v10    # "consumedBits":B
    .end local v11    # "dataBits":I
    .end local v22    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v23    # "fieldBits":B
    .end local v30    # "numFields":I
    .end local v31    # "paddingBits":I
    .end local v32    # "paramBytes":I
    .end local v35    # "rawData":[B
    .end local v39    # "remainingBits":I
    :catch_4
    move-exception v22

    move-object v13, v14

    .line 859
    .end local v14    # "destAddrStr":Ljava/lang/String;
    .end local v25    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v13    # "destAddrStr":Ljava/lang/String;
    .local v22, "ex":Lcom/android/internal/telephony/cat/ValueParser$CodingException;
    :goto_4
    :try_start_8
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "destination address decode failed: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    new-instance v46, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v47, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v46 .. v47}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v46
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_8 .. :try_end_8} :catch_6

    .line 910
    .end local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v5    # "addr1":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "destAddrStr":Ljava/lang/String;
    .end local v15    # "destaddr":[B
    .end local v18    # "dos":Ljava/io/DataOutputStream;
    .end local v22    # "ex":Lcom/android/internal/telephony/cat/ValueParser$CodingException;
    .end local v28    # "lenmsgteleser":I
    .end local v29    # "msgtype":B
    :catch_5
    move-exception v19

    .line 911
    .restart local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v46, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v47, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v46 .. v47}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v46

    .line 841
    .end local v19    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v5    # "addr1":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "consumedBits":B
    .restart local v11    # "dataBits":I
    .restart local v14    # "destAddrStr":Ljava/lang/String;
    .restart local v15    # "destaddr":[B
    .restart local v18    # "dos":Ljava/io/DataOutputStream;
    .restart local v23    # "fieldBits":B
    .restart local v25    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v28    # "lenmsgteleser":I
    .restart local v29    # "msgtype":B
    .restart local v30    # "numFields":I
    .restart local v31    # "paddingBits":I
    .restart local v32    # "paramBytes":I
    .restart local v35    # "rawData":[B
    .restart local v39    # "remainingBits":I
    :cond_4
    :try_start_9
    new-instance v40, Ljava/lang/StringBuffer;

    move-object/from16 v0, v40

    move/from16 v1, v30

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 842
    .local v40, "strBuf":Ljava/lang/StringBuffer;
    const/16 v24, 0x0

    :goto_5
    move/from16 v0, v24

    move/from16 v1, v30

    if-ge v0, v1, :cond_a

    .line 843
    div-int/lit8 v46, v24, 0x2

    aget-byte v46, v35, v46

    rem-int/lit8 v47, v24, 0x2

    mul-int/lit8 v47, v47, 0x4

    rsub-int/lit8 v47, v47, 0x4

    ushr-int v46, v46, v47

    and-int/lit8 v44, v46, 0xf

    .line 844
    .local v44, "val":I
    const/16 v46, 0x1

    move/from16 v0, v44

    move/from16 v1, v46

    if-lt v0, v1, :cond_5

    const/16 v46, 0x9

    move/from16 v0, v44

    move/from16 v1, v46

    if-gt v0, v1, :cond_5

    const/16 v46, 0xa

    move/from16 v0, v44

    move/from16 v1, v46

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v46

    move-object/from16 v0, v40

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 842
    :goto_6
    add-int/lit8 v24, v24, 0x1

    goto :goto_5

    .line 845
    :cond_5
    const/16 v46, 0xa

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_6

    const/16 v46, 0x30

    move-object/from16 v0, v40

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_9
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/android/internal/telephony/cat/ValueParser$CodingException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_6

    .line 913
    .end local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v5    # "addr1":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v10    # "consumedBits":B
    .end local v11    # "dataBits":I
    .end local v14    # "destAddrStr":Ljava/lang/String;
    .end local v15    # "destaddr":[B
    .end local v18    # "dos":Ljava/io/DataOutputStream;
    .end local v23    # "fieldBits":B
    .end local v25    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v28    # "lenmsgteleser":I
    .end local v29    # "msgtype":B
    .end local v30    # "numFields":I
    .end local v31    # "paddingBits":I
    .end local v32    # "paramBytes":I
    .end local v35    # "rawData":[B
    .end local v39    # "remainingBits":I
    .end local v40    # "strBuf":Ljava/lang/StringBuffer;
    .end local v44    # "val":I
    :catch_6
    move-exception v20

    .line 914
    .local v20, "ee":Ljava/lang/NegativeArraySizeException;
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "creating SubmitPdu failed: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    new-instance v46, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v47, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v46 .. v47}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v46

    .line 846
    .end local v20    # "ee":Ljava/lang/NegativeArraySizeException;
    .restart local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v5    # "addr1":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v6    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "consumedBits":B
    .restart local v11    # "dataBits":I
    .restart local v14    # "destAddrStr":Ljava/lang/String;
    .restart local v15    # "destaddr":[B
    .restart local v18    # "dos":Ljava/io/DataOutputStream;
    .restart local v23    # "fieldBits":B
    .restart local v25    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v28    # "lenmsgteleser":I
    .restart local v29    # "msgtype":B
    .restart local v30    # "numFields":I
    .restart local v31    # "paddingBits":I
    .restart local v32    # "paramBytes":I
    .restart local v35    # "rawData":[B
    .restart local v39    # "remainingBits":I
    .restart local v40    # "strBuf":Ljava/lang/StringBuffer;
    .restart local v44    # "val":I
    :cond_6
    const/16 v46, 0xb

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_7

    const/16 v46, 0x2a

    :try_start_a
    move-object/from16 v0, v40

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 847
    :cond_7
    const/16 v46, 0xc

    move/from16 v0, v44

    move/from16 v1, v46

    if-ne v0, v1, :cond_8

    const/16 v46, 0x23

    move-object/from16 v0, v40

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 848
    :cond_8
    if-nez v44, :cond_9

    const/16 v46, 0x30

    move-object/from16 v0, v40

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 849
    :cond_9
    new-instance v46, Lcom/android/internal/telephony/cat/ValueParser$CodingException;

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "invalid SMS address DTMF code ("

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    const-string v48, ")"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-direct/range {v46 .. v47}, Lcom/android/internal/telephony/cat/ValueParser$CodingException;-><init>(Ljava/lang/String;)V

    throw v46

    .line 851
    .end local v44    # "val":I
    :cond_a
    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v13

    .end local v14    # "destAddrStr":Ljava/lang/String;
    .restart local v13    # "destAddrStr":Ljava/lang/String;
    goto/16 :goto_3

    .line 854
    .end local v10    # "consumedBits":B
    .end local v11    # "dataBits":I
    .end local v13    # "destAddrStr":Ljava/lang/String;
    .end local v23    # "fieldBits":B
    .end local v30    # "numFields":I
    .end local v31    # "paddingBits":I
    .end local v32    # "paramBytes":I
    .end local v35    # "rawData":[B
    .end local v39    # "remainingBits":I
    .end local v40    # "strBuf":Ljava/lang/StringBuffer;
    .restart local v14    # "destAddrStr":Ljava/lang/String;
    :cond_b
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SMS Destination address: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/android/internal/telephony/cat/ValueParser$CodingException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_a .. :try_end_a} :catch_6

    .line 862
    :try_start_b
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SMS Destination address!!!: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    invoke-static {v14}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v12

    .line 864
    .local v12, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v12, :cond_c

    const/16 v34, 0x0

    .line 906
    .end local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v5    # "addr1":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v12    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v14    # "destAddrStr":Ljava/lang/String;
    .end local v15    # "destaddr":[B
    .end local v25    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :goto_7
    return-object v34

    .line 865
    .restart local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v5    # "addr1":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v12    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v14    # "destAddrStr":Ljava/lang/String;
    .restart local v15    # "destaddr":[B
    .restart local v25    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :cond_c
    new-instance v21, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct/range {v21 .. v21}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 866
    .local v21, "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    move-object/from16 v0, v21

    iput-object v12, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 867
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SMS Destination destAddr!!!: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    iget v0, v5, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v46, v0

    move/from16 v0, v46

    iput v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 871
    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v46, v0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 872
    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v46, v0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 873
    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    move/from16 v46, v0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 874
    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    move/from16 v46, v0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 875
    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v46, v0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 876
    iget-object v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v46, v0

    const/16 v47, 0x0

    iget-object v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    array-length v0, v0

    move/from16 v48, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/DataOutputStream;->write([BII)V

    .line 877
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SMS Destination destAddr.digitMode: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SMS Destination destAddr.numberMode: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SMS Destination destAddr.ton: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SMS Destination destAddr.numberPlan: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SMS Destination destAddr.origBytes.length: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget-object v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v48, v0

    move-object/from16 v0, v48

    array-length v0, v0

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "SMS Destination destAddr.origBytes: "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    iget-object v0, v12, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    .end local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v5    # "addr1":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v12    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v14    # "destAddrStr":Ljava/lang/String;
    .end local v15    # "destaddr":[B
    .end local v21    # "envelope":Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v25    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    :cond_d
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 886
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 887
    const/16 v46, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 889
    add-int/lit8 v46, v28, 0x1

    add-int/lit8 v46, v46, 0x1

    add-int v27, v46, v16

    .line 891
    .local v27, "lenmsgteledest":I
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "bearerdataparaid:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    aget-byte v48, v36, v27

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "lenght to reach Bearerdataparaid:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    aget-byte v46, v36, v27

    move/from16 v0, v46

    if-ne v0, v9, :cond_e

    .line 894
    add-int/lit8 v46, v27, 0x1

    aget-byte v46, v36, v46

    move/from16 v0, v46

    and-int/lit16 v8, v0, 0xff

    .line 895
    new-array v7, v8, [B

    .line 896
    .local v7, "bearerdata":[B
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, "bearerdata length:"

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    array-length v0, v7

    move/from16 v48, v0

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    add-int/lit8 v46, v27, 0x1

    add-int/lit8 v46, v46, 0x1

    const/16 v47, 0x0

    array-length v0, v7

    move/from16 v48, v0

    move-object/from16 v0, v36

    move/from16 v1, v46

    move/from16 v2, v47

    move/from16 v3, v48

    invoke-static {v0, v1, v7, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 898
    array-length v0, v7

    move/from16 v46, v0

    move-object/from16 v0, v18

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 899
    const/16 v46, 0x0

    array-length v0, v7

    move/from16 v47, v0

    move-object/from16 v0, v18

    move/from16 v1, v46

    move/from16 v2, v47

    invoke-virtual {v0, v7, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 901
    .end local v7    # "bearerdata":[B
    :cond_e
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataOutputStream;->close()V

    .line 902
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v33

    .line 903
    .local v33, "pdu":[B
    invoke-static/range {v33 .. v33}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v34

    .line 904
    .local v34, "pdustr":Ljava/lang/String;
    const-string v46, "ValueParser"

    new-instance v47, Ljava/lang/StringBuilder;

    invoke-direct/range {v47 .. v47}, Ljava/lang/StringBuilder;-><init>()V

    const-string v48, " Pdu : "

    invoke-virtual/range {v47 .. v48}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    move-object/from16 v0, v47

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v47

    invoke-virtual/range {v47 .. v47}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v47

    invoke-static/range {v46 .. v47}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_7

    .line 858
    .end local v27    # "lenmsgteledest":I
    .end local v33    # "pdu":[B
    .end local v34    # "pdustr":Ljava/lang/String;
    .restart local v4    # "addr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v5    # "addr1":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v13    # "destAddrStr":Ljava/lang/String;
    .restart local v15    # "destaddr":[B
    :catch_7
    move-exception v22

    goto/16 :goto_4

    .line 855
    :catch_8
    move-exception v22

    goto/16 :goto_2
.end method

.method static retrieveSMSTPDU_CDMA_Common(Lcom/android/internal/telephony/cat/ComprehensionTlv;Z)Ljava/lang/String;
    .locals 46
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .param p1, "ispacking_req"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 923
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v34

    .line 924
    .local v34, "rawValue":[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v41

    .line 925
    .local v41, "valueIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v21

    .line 926
    .local v21, "length":I
    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v32, v0

    .line 929
    .local v32, "rawPdu":[B
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 930
    add-int v42, v41, v19

    :try_start_0
    aget-byte v42, v34, v42

    aput-byte v42, v32, v19
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 932
    :catch_0
    move-exception v15

    .line 933
    .local v15, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v42, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v43, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v42 .. v43}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v42

    .line 938
    .end local v15    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/16 v37, 0x0

    .line 939
    .local v37, "teleserparaid":I
    const/4 v13, 0x4

    .line 940
    .local v13, "destaddrparaid":I
    const/16 v8, 0x8

    .line 942
    .local v8, "bearerdataparaid":I
    const/16 v39, 0x0

    .line 943
    .local v39, "teleservicelen":I
    const/16 v31, 0x0

    .line 944
    .local v31, "rawDestAddrLen":I
    const/4 v7, 0x0

    .line 946
    .local v7, "bearerdatalen":I
    invoke-static/range {v32 .. v32}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v33

    .line 947
    .local v33, "rawPduStr":Ljava/lang/String;
    const-string v42, "retrieveSMSTPDU"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "rawPdu : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    :try_start_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    const/16 v42, 0x64

    move/from16 v0, v42

    invoke-direct {v5, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 951
    .local v5, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v14, Ljava/io/DataOutputStream;

    invoke-direct {v14, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 954
    .local v14, "dos":Ljava/io/DataOutputStream;
    const/16 v42, 0x0

    aget-byte v24, v32, v42

    .line 955
    .local v24, "msgtype":B
    const-string v42, "ValueParser"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "teleserparaid:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const/16 v44, 0x1

    aget-byte v44, v32, v44

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    const/16 v42, 0x1

    aget-byte v42, v32, v42

    move/from16 v0, v42

    move/from16 v1, v37

    if-ne v0, v1, :cond_1

    .line 959
    const/16 v42, 0x2

    aget-byte v42, v32, v42

    move/from16 v0, v42

    and-int/lit16 v0, v0, 0xff

    move/from16 v39, v0

    .line 960
    const/16 v42, 0x3

    aget-byte v42, v32, v42

    shl-int/lit8 v42, v42, 0x8

    const/16 v43, 0x4

    aget-byte v43, v32, v43

    or-int v38, v42, v43

    .line 961
    .local v38, "teleserviceid":I
    move/from16 v0, v38

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 965
    .end local v38    # "teleserviceid":I
    :cond_1
    const/16 v42, 0x0

    move/from16 v0, v42

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 966
    const/16 v42, 0x0

    move/from16 v0, v42

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 969
    add-int/lit8 v42, v39, 0x2

    add-int/lit8 v23, v42, 0x1

    .line 970
    .local v23, "lenmsgteleser":I
    const-string v42, "ValueParser"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "destaddrparaid:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    aget-byte v44, v32, v23

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 971
    aget-byte v42, v32, v23

    move/from16 v0, v42

    if-ne v0, v13, :cond_5

    .line 973
    new-instance v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v11}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .line 974
    .local v11, "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v12, Ljava/lang/String;

    invoke-direct {v12}, Ljava/lang/String;-><init>()V

    .line 975
    .local v12, "destAddrStr":Ljava/lang/String;
    add-int/lit8 v42, v23, 0x1

    aget-byte v42, v32, v42

    move/from16 v0, v42

    and-int/lit16 v0, v0, 0xff

    move/from16 v31, v0

    .line 976
    move/from16 v0, v31

    new-array v0, v0, [B

    move-object/from16 v30, v0

    .line 977
    .local v30, "rawDestAddr":[B
    add-int/lit8 v42, v23, 0x1

    add-int/lit8 v42, v42, 0x1

    const/16 v43, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v42

    move-object/from16 v2, v30

    move/from16 v3, v43

    move/from16 v4, v31

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_1 .. :try_end_1} :catch_6

    .line 980
    :try_start_2
    new-instance v20, Lcom/android/internal/util/BitwiseInputStream;

    move-object/from16 v0, v20

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .line 981
    .local v20, "inStream":Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v42

    if-lez v42, :cond_4

    .line 982
    const-string v42, "ValueParser"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "SMS PDU parsing :: rawDestAddrLen :: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    const/16 v42, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .line 984
    const/16 v42, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    .line 985
    const/16 v18, 0x4

    .line 986
    .local v18, "fieldBits":B
    const/4 v9, 0x2

    .line 987
    .local v9, "consumedBits":B
    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v42, v0

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_2

    .line 988
    const/16 v42, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    .line 989
    const/16 v42, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    .line 990
    const/16 v18, 0x8

    .line 991
    const/16 v42, 0x9

    move/from16 v0, v42

    int-to-byte v9, v0

    .line 993
    :cond_2
    const/16 v42, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v42

    move/from16 v0, v42

    iput v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .line 994
    add-int/lit8 v42, v9, 0x8

    move/from16 v0, v42

    int-to-byte v9, v0

    .line 995
    mul-int/lit8 v42, v31, 0x8

    sub-int v35, v42, v9

    .line 996
    .local v35, "remainingBits":I
    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v42, v0

    mul-int v10, v42, v18

    .line 997
    .local v10, "dataBits":I
    sub-int v26, v35, v10

    .line 998
    .local v26, "paddingBits":I
    move/from16 v0, v35

    if-ge v0, v10, :cond_3

    .line 999
    new-instance v42, Lcom/android/internal/telephony/cat/ValueParser$CodingException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "Originating_NUMBER subparam encoding size error (remainingBits "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", dataBits "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ", paddingBits "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ")"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Lcom/android/internal/telephony/cat/ValueParser$CodingException;-><init>(Ljava/lang/String;)V

    throw v42
    :try_end_2
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/internal/telephony/cat/ValueParser$CodingException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_2 .. :try_end_2} :catch_6

    .line 1033
    .end local v9    # "consumedBits":B
    .end local v10    # "dataBits":I
    .end local v12    # "destAddrStr":Ljava/lang/String;
    .end local v18    # "fieldBits":B
    .end local v20    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v26    # "paddingBits":I
    .end local v35    # "remainingBits":I
    :catch_1
    move-exception v17

    .line 1034
    .local v17, "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :try_start_3
    const-string v42, "ValueParser"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "destination address decode failed: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    new-instance v42, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v43, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v42 .. v43}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v42
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_3 .. :try_end_3} :catch_6

    .line 1080
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v14    # "dos":Ljava/io/DataOutputStream;
    .end local v17    # "ex":Lcom/android/internal/util/BitwiseInputStream$AccessException;
    .end local v23    # "lenmsgteleser":I
    .end local v24    # "msgtype":B
    .end local v30    # "rawDestAddr":[B
    :catch_2
    move-exception v17

    .line 1081
    .local v17, "ex":Ljava/io/IOException;
    const-string v42, "ValueParser"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "creating SubmitPdu failed: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    new-instance v42, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v43, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v42 .. v43}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v42

    .line 1004
    .end local v17    # "ex":Ljava/io/IOException;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "consumedBits":B
    .restart local v10    # "dataBits":I
    .restart local v11    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v12    # "destAddrStr":Ljava/lang/String;
    .restart local v14    # "dos":Ljava/io/DataOutputStream;
    .restart local v18    # "fieldBits":B
    .restart local v20    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v23    # "lenmsgteleser":I
    .restart local v24    # "msgtype":B
    .restart local v26    # "paddingBits":I
    .restart local v30    # "rawDestAddr":[B
    .restart local v35    # "remainingBits":I
    :cond_3
    :try_start_4
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v42

    move-object/from16 v0, v42

    iput-object v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    .line 1005
    move-object/from16 v0, v20

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .line 1006
    iget-object v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v29, v0

    .line 1007
    .local v29, "rawData":[B
    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v25, v0

    .line 1009
    .local v25, "numFields":I
    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v42, v0
    :try_end_4
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/internal/telephony/cat/ValueParser$CodingException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_4 .. :try_end_4} :catch_6

    const/16 v43, 0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_7

    .line 1013
    :try_start_5
    new-instance v12, Ljava/lang/String;

    .end local v12    # "destAddrStr":Ljava/lang/String;
    iget-object v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v42, v0

    const/16 v43, 0x0

    iget-object v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v44, v0

    const-string v45, "US-ASCII"

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    move-object/from16 v3, v45

    invoke-direct {v12, v0, v1, v2, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/android/internal/telephony/cat/ValueParser$CodingException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_5 .. :try_end_5} :catch_6

    .line 1040
    .end local v9    # "consumedBits":B
    .end local v10    # "dataBits":I
    .end local v18    # "fieldBits":B
    .end local v25    # "numFields":I
    .end local v26    # "paddingBits":I
    .end local v29    # "rawData":[B
    .end local v35    # "remainingBits":I
    .restart local v12    # "destAddrStr":Ljava/lang/String;
    :cond_4
    :goto_1
    :try_start_6
    const-string v42, "ValueParser"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "SMS Destination address!!!: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v42, v0

    move/from16 v0, v42

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1043
    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v42, v0

    move/from16 v0, v42

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1044
    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    move/from16 v42, v0

    move/from16 v0, v42

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1045
    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    move/from16 v42, v0

    move/from16 v0, v42

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1046
    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    move/from16 v42, v0

    move/from16 v0, v42

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1047
    iget-object v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v42, v0

    const/16 v43, 0x0

    iget-object v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v44, v0

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v44

    invoke-virtual {v14, v0, v1, v2}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1048
    const-string v42, "ValueParser"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "SMS Destination destAddr.digitMode: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1049
    const-string v42, "ValueParser"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "SMS Destination destAddr.numberMode: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    const-string v42, "ValueParser"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "SMS Destination destAddr.ton: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    const-string v42, "ValueParser"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "SMS Destination destAddr.numberPlan: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1052
    const-string v42, "ValueParser"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "SMS Destination destAddr.origBytes.length: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget-object v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    array-length v0, v0

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    const-string v42, "ValueParser"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "SMS Destination destAddr.origBytes: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    iget-object v0, v11, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    move-object/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    .end local v11    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v12    # "destAddrStr":Ljava/lang/String;
    .end local v20    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v30    # "rawDestAddr":[B
    :cond_5
    const/16 v42, 0x0

    move/from16 v0, v42

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1058
    const/16 v42, 0x0

    move/from16 v0, v42

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1059
    const/16 v42, 0x0

    move/from16 v0, v42

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1062
    add-int/lit8 v42, v23, 0x1

    add-int/lit8 v42, v42, 0x1

    add-int v22, v42, v31

    .line 1063
    .local v22, "lenmsgteledest":I
    const-string v42, "ValueParser"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "bearerdataparaid:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    aget-byte v44, v32, v22

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    aget-byte v42, v32, v22

    move/from16 v0, v42

    if-ne v0, v8, :cond_6

    .line 1065
    add-int/lit8 v42, v22, 0x1

    aget-byte v42, v32, v42

    move/from16 v0, v42

    and-int/lit16 v7, v0, 0xff

    .line 1066
    new-array v6, v7, [B

    .line 1067
    .local v6, "bearerdata":[B
    const-string v42, "ValueParser"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "bearerdata length:"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    array-length v0, v6

    move/from16 v44, v0

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1068
    add-int/lit8 v42, v22, 0x1

    add-int/lit8 v42, v42, 0x1

    const/16 v43, 0x0

    array-length v0, v6

    move/from16 v44, v0

    move-object/from16 v0, v32

    move/from16 v1, v42

    move/from16 v2, v43

    move/from16 v3, v44

    invoke-static {v0, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1069
    array-length v0, v6

    move/from16 v42, v0

    move/from16 v0, v42

    invoke-virtual {v14, v0}, Ljava/io/DataOutputStream;->write(I)V

    .line 1070
    const/16 v42, 0x0

    array-length v0, v6

    move/from16 v43, v0

    move/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v14, v6, v0, v1}, Ljava/io/DataOutputStream;->write([BII)V

    .line 1073
    .end local v6    # "bearerdata":[B
    :cond_6
    invoke-virtual {v14}, Ljava/io/DataOutputStream;->close()V

    .line 1074
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v27

    .line 1075
    .local v27, "pdu":[B
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v28

    .line 1076
    .local v28, "pdustr":Ljava/lang/String;
    const-string v42, "ValueParser"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, " Pdu : "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1078
    return-object v28

    .line 1014
    .end local v22    # "lenmsgteledest":I
    .end local v27    # "pdu":[B
    .end local v28    # "pdustr":Ljava/lang/String;
    .restart local v9    # "consumedBits":B
    .restart local v10    # "dataBits":I
    .restart local v11    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v18    # "fieldBits":B
    .restart local v20    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v25    # "numFields":I
    .restart local v26    # "paddingBits":I
    .restart local v29    # "rawData":[B
    .restart local v30    # "rawDestAddr":[B
    .restart local v35    # "remainingBits":I
    :catch_3
    move-exception v17

    .line 1015
    .local v17, "ex":Ljava/io/UnsupportedEncodingException;
    :try_start_7
    new-instance v42, Lcom/android/internal/telephony/cat/ValueParser$CodingException;

    const-string v43, "invalid SMS address ASCII code"

    invoke-direct/range {v42 .. v43}, Lcom/android/internal/telephony/cat/ValueParser$CodingException;-><init>(Ljava/lang/String;)V

    throw v42
    :try_end_7
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lcom/android/internal/telephony/cat/ValueParser$CodingException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1036
    .end local v9    # "consumedBits":B
    .end local v10    # "dataBits":I
    .end local v17    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v18    # "fieldBits":B
    .end local v20    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v25    # "numFields":I
    .end local v26    # "paddingBits":I
    .end local v29    # "rawData":[B
    .end local v35    # "remainingBits":I
    :catch_4
    move-exception v17

    .line 1037
    .local v17, "ex":Lcom/android/internal/telephony/cat/ValueParser$CodingException;
    :try_start_8
    const-string v42, "ValueParser"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "destination address decode failed: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    new-instance v42, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v43, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v42 .. v43}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v42
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1083
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v14    # "dos":Ljava/io/DataOutputStream;
    .end local v17    # "ex":Lcom/android/internal/telephony/cat/ValueParser$CodingException;
    .end local v23    # "lenmsgteleser":I
    .end local v24    # "msgtype":B
    .end local v30    # "rawDestAddr":[B
    :catch_5
    move-exception v15

    .line 1084
    .restart local v15    # "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v42, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v43, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v42 .. v43}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v42

    .line 1020
    .end local v15    # "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "consumedBits":B
    .restart local v10    # "dataBits":I
    .restart local v11    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v12    # "destAddrStr":Ljava/lang/String;
    .restart local v14    # "dos":Ljava/io/DataOutputStream;
    .restart local v18    # "fieldBits":B
    .restart local v20    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v23    # "lenmsgteleser":I
    .restart local v24    # "msgtype":B
    .restart local v25    # "numFields":I
    .restart local v26    # "paddingBits":I
    .restart local v29    # "rawData":[B
    .restart local v30    # "rawDestAddr":[B
    .restart local v35    # "remainingBits":I
    :cond_7
    :try_start_9
    new-instance v36, Ljava/lang/StringBuffer;

    move-object/from16 v0, v36

    move/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 1021
    .local v36, "strBuf":Ljava/lang/StringBuffer;
    const/16 v19, 0x0

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_d

    .line 1022
    div-int/lit8 v42, v19, 0x2

    aget-byte v42, v29, v42

    rem-int/lit8 v43, v19, 0x2

    mul-int/lit8 v43, v43, 0x4

    rsub-int/lit8 v43, v43, 0x4

    ushr-int v42, v42, v43

    and-int/lit8 v40, v42, 0xf

    .line 1023
    .local v40, "val":I
    const/16 v42, 0x1

    move/from16 v0, v40

    move/from16 v1, v42

    if-lt v0, v1, :cond_8

    const/16 v42, 0x9

    move/from16 v0, v40

    move/from16 v1, v42

    if-gt v0, v1, :cond_8

    const/16 v42, 0xa

    move/from16 v0, v40

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v36

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1021
    :goto_3
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 1024
    :cond_8
    const/16 v42, 0xa

    move/from16 v0, v40

    move/from16 v1, v42

    if-ne v0, v1, :cond_9

    const/16 v42, 0x30

    move-object/from16 v0, v36

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_9
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lcom/android/internal/telephony/cat/ValueParser$CodingException; {:try_start_9 .. :try_end_9} :catch_4
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_3

    .line 1085
    .end local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v9    # "consumedBits":B
    .end local v10    # "dataBits":I
    .end local v11    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v12    # "destAddrStr":Ljava/lang/String;
    .end local v14    # "dos":Ljava/io/DataOutputStream;
    .end local v18    # "fieldBits":B
    .end local v20    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .end local v23    # "lenmsgteleser":I
    .end local v24    # "msgtype":B
    .end local v25    # "numFields":I
    .end local v26    # "paddingBits":I
    .end local v29    # "rawData":[B
    .end local v30    # "rawDestAddr":[B
    .end local v35    # "remainingBits":I
    .end local v36    # "strBuf":Ljava/lang/StringBuffer;
    .end local v40    # "val":I
    :catch_6
    move-exception v16

    .line 1086
    .local v16, "ee":Ljava/lang/NegativeArraySizeException;
    const-string v42, "ValueParser"

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "creating SubmitPdu failed: "

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    new-instance v42, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v43, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v42 .. v43}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v42

    .line 1025
    .end local v16    # "ee":Ljava/lang/NegativeArraySizeException;
    .restart local v5    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "consumedBits":B
    .restart local v10    # "dataBits":I
    .restart local v11    # "destAddr":Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v12    # "destAddrStr":Ljava/lang/String;
    .restart local v14    # "dos":Ljava/io/DataOutputStream;
    .restart local v18    # "fieldBits":B
    .restart local v20    # "inStream":Lcom/android/internal/util/BitwiseInputStream;
    .restart local v23    # "lenmsgteleser":I
    .restart local v24    # "msgtype":B
    .restart local v25    # "numFields":I
    .restart local v26    # "paddingBits":I
    .restart local v29    # "rawData":[B
    .restart local v30    # "rawDestAddr":[B
    .restart local v35    # "remainingBits":I
    .restart local v36    # "strBuf":Ljava/lang/StringBuffer;
    .restart local v40    # "val":I
    :cond_9
    const/16 v42, 0xb

    move/from16 v0, v40

    move/from16 v1, v42

    if-ne v0, v1, :cond_a

    const/16 v42, 0x2a

    :try_start_a
    move-object/from16 v0, v36

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1026
    :cond_a
    const/16 v42, 0xc

    move/from16 v0, v40

    move/from16 v1, v42

    if-ne v0, v1, :cond_b

    const/16 v42, 0x23

    move-object/from16 v0, v36

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1027
    :cond_b
    if-nez v40, :cond_c

    const/16 v42, 0x30

    move-object/from16 v0, v36

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 1028
    :cond_c
    new-instance v42, Lcom/android/internal/telephony/cat/ValueParser$CodingException;

    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "invalid SMS address DTMF code ("

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ")"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    invoke-direct/range {v42 .. v43}, Lcom/android/internal/telephony/cat/ValueParser$CodingException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 1030
    .end local v40    # "val":I
    :cond_d
    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_a
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/android/internal/telephony/cat/ValueParser$CodingException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_a .. :try_end_a} :catch_6

    move-result-object v12

    goto/16 :goto_1
.end method

.method static retrieveSSstring(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 6
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 410
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 411
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v3

    .line 412
    .local v3, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v1

    .line 413
    .local v1, "length":I
    if-eqz v1, :cond_0

    .line 415
    :try_start_0
    invoke-static {v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->SSbcdToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 421
    :goto_0
    return-object v4

    .line 417
    :catch_0
    move-exception v0

    .line 418
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v4

    .line 421
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method static retrieveTextAttribute(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/util/List;
    .locals 24
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/cat/ComprehensionTlv;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/cat/TextAttribute;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 244
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v18, "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cat/TextAttribute;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v19

    .line 247
    .local v19, "rawValue":[B
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v21

    .line 248
    .local v21, "valueIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v17

    .line 250
    .local v17, "length":I
    if-eqz v17, :cond_5

    .line 252
    div-int/lit8 v16, v17, 0x4

    .line 255
    .local v16, "itemCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 256
    :try_start_0
    aget-byte v22, v19, v21

    move/from16 v0, v22

    and-int/lit16 v2, v0, 0xff

    .line 257
    .local v2, "start":I
    add-int/lit8 v22, v21, 0x1

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v3, v0, 0xff

    .line 258
    .local v3, "textLength":I
    add-int/lit8 v22, v21, 0x2

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v14, v0, 0xff

    .line 259
    .local v14, "format":I
    add-int/lit8 v22, v21, 0x3

    aget-byte v22, v19, v22

    move/from16 v0, v22

    and-int/lit16 v12, v0, 0xff

    .line 261
    .local v12, "colorValue":I
    and-int/lit8 v11, v14, 0x3

    .line 262
    .local v11, "alignValue":I
    invoke-static {v11}, Lcom/android/internal/telephony/cat/TextAlignment;->fromInt(I)Lcom/android/internal/telephony/cat/TextAlignment;

    move-result-object v4

    .line 264
    .local v4, "align":Lcom/android/internal/telephony/cat/TextAlignment;
    shr-int/lit8 v22, v14, 0x2

    and-int/lit8 v20, v22, 0x3

    .line 265
    .local v20, "sizeValue":I
    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/cat/FontSize;->fromInt(I)Lcom/android/internal/telephony/cat/FontSize;

    move-result-object v5

    .line 266
    .local v5, "size":Lcom/android/internal/telephony/cat/FontSize;
    if-nez v5, :cond_0

    .line 268
    sget-object v5, Lcom/android/internal/telephony/cat/FontSize;->NORMAL:Lcom/android/internal/telephony/cat/FontSize;

    .line 271
    :cond_0
    and-int/lit8 v22, v14, 0x10

    if-eqz v22, :cond_1

    const/4 v6, 0x1

    .line 272
    .local v6, "bold":Z
    :goto_1
    and-int/lit8 v22, v14, 0x20

    if-eqz v22, :cond_2

    const/4 v7, 0x1

    .line 273
    .local v7, "italic":Z
    :goto_2
    and-int/lit8 v22, v14, 0x40

    if-eqz v22, :cond_3

    const/4 v8, 0x1

    .line 274
    .local v8, "underlined":Z
    :goto_3
    and-int/lit16 v0, v14, 0x80

    move/from16 v22, v0

    if-eqz v22, :cond_4

    const/4 v9, 0x1

    .line 276
    .local v9, "strikeThrough":Z
    :goto_4
    invoke-static {v12}, Lcom/android/internal/telephony/cat/TextColor;->fromInt(I)Lcom/android/internal/telephony/cat/TextColor;

    move-result-object v10

    .line 278
    .local v10, "color":Lcom/android/internal/telephony/cat/TextColor;
    new-instance v1, Lcom/android/internal/telephony/cat/TextAttribute;

    invoke-direct/range {v1 .. v10}, Lcom/android/internal/telephony/cat/TextAttribute;-><init>(IILcom/android/internal/telephony/cat/TextAlignment;Lcom/android/internal/telephony/cat/FontSize;ZZZZLcom/android/internal/telephony/cat/TextColor;)V

    .line 281
    .local v1, "attr":Lcom/android/internal/telephony/cat/TextAttribute;
    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v21, v21, 0x4

    goto :goto_0

    .line 271
    .end local v1    # "attr":Lcom/android/internal/telephony/cat/TextAttribute;
    .end local v6    # "bold":Z
    .end local v7    # "italic":Z
    .end local v8    # "underlined":Z
    .end local v9    # "strikeThrough":Z
    .end local v10    # "color":Lcom/android/internal/telephony/cat/TextColor;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 272
    .restart local v6    # "bold":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_2

    .line 273
    .restart local v7    # "italic":Z
    :cond_3
    const/4 v8, 0x0

    goto :goto_3

    .line 274
    .restart local v8    # "underlined":Z
    :cond_4
    const/4 v9, 0x0

    goto :goto_4

    .line 286
    .end local v2    # "start":I
    .end local v3    # "textLength":I
    .end local v4    # "align":Lcom/android/internal/telephony/cat/TextAlignment;
    .end local v5    # "size":Lcom/android/internal/telephony/cat/FontSize;
    .end local v6    # "bold":Z
    .end local v7    # "italic":Z
    .end local v8    # "underlined":Z
    .end local v11    # "alignValue":I
    .end local v12    # "colorValue":I
    .end local v14    # "format":I
    .end local v20    # "sizeValue":I
    :catch_0
    move-exception v13

    .line 287
    .local v13, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v22, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v23, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct/range {v22 .. v23}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v22

    .line 290
    .end local v13    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v15    # "i":I
    .end local v16    # "itemCount":I
    :cond_5
    const/16 v18, 0x0

    .end local v18    # "lst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/telephony/cat/TextAttribute;>;"
    :cond_6
    return-object v18
.end method

.method static retrieveTextString(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Ljava/lang/String;
    .locals 9
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 346
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v2

    .line 347
    .local v2, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 348
    .local v6, "valueIndex":I
    const/4 v0, 0x0

    .line 349
    .local v0, "codingScheme":B
    const/4 v3, 0x0

    .line 350
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v5

    .line 353
    .local v5, "textLen":I
    if-nez v5, :cond_0

    move-object v4, v3

    .line 375
    .end local v3    # "text":Ljava/lang/String;
    .local v4, "text":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 357
    .end local v4    # "text":Ljava/lang/String;
    .restart local v3    # "text":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, -0x1

    .line 361
    :try_start_0
    aget-byte v7, v2, v6

    and-int/lit8 v7, v7, 0xc

    int-to-byte v0, v7

    .line 363
    if-nez v0, :cond_1

    .line 364
    add-int/lit8 v7, v6, 0x1

    mul-int/lit8 v8, v5, 0x8

    div-int/lit8 v8, v8, 0x7

    invoke-static {v2, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v3

    :goto_1
    move-object v4, v3

    .line 375
    .end local v3    # "text":Ljava/lang/String;
    .restart local v4    # "text":Ljava/lang/String;
    goto :goto_0

    .line 366
    .end local v4    # "text":Ljava/lang/String;
    .restart local v3    # "text":Ljava/lang/String;
    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_2

    .line 367
    add-int/lit8 v7, v6, 0x1

    invoke-static {v2, v7, v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 369
    :cond_2
    const/16 v7, 0x8

    if-ne v0, v7, :cond_3

    .line 370
    new-instance v3, Ljava/lang/String;

    .end local v3    # "text":Ljava/lang/String;
    add-int/lit8 v7, v6, 0x1

    const-string v8, "UTF-16"

    invoke-direct {v3, v2, v7, v5, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .restart local v3    # "text":Ljava/lang/String;
    goto :goto_1

    .line 372
    :cond_3
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 376
    .end local v3    # "text":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 377
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 378
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v1

    .line 380
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7
.end method

.method static retrieveTransportLevel(Lcom/android/internal/telephony/cat/ComprehensionTlv;)Lcom/android/internal/telephony/cat/TransportLevel;
    .locals 10
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 1223
    new-instance v5, Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-direct {v5}, Lcom/android/internal/telephony/cat/TransportLevel;-><init>()V

    .line 1224
    .local v5, "transportLevel":Lcom/android/internal/telephony/cat/TransportLevel;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 1225
    .local v3, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 1226
    .local v6, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v2

    .line 1227
    .local v2, "length":I
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveTransportLevel: valueIndex , Length = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    :try_start_0
    aget-byte v7, v3, v6

    iput-byte v7, v5, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    .line 1230
    add-int/lit8 v7, v6, 0x1

    aget-byte v7, v3, v7

    and-int/lit16 v1, v7, 0xff

    .line 1231
    .local v1, "firstByte":I
    add-int/lit8 v7, v6, 0x2

    aget-byte v7, v3, v7

    and-int/lit16 v4, v7, 0xff

    .line 1232
    .local v4, "secondByte":I
    shl-int/lit8 v7, v1, 0x8

    or-int/2addr v7, v4

    iput v7, v5, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    .line 1233
    const-string v7, "ValueParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "retrieveTransportLevel: transportProtocol , portNumber = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-byte v9, v5, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1241
    .end local v1    # "firstByte":I
    .end local v4    # "secondByte":I
    .end local v5    # "transportLevel":Lcom/android/internal/telephony/cat/TransportLevel;
    :goto_0
    return-object v5

    .line 1235
    .restart local v5    # "transportLevel":Lcom/android/internal/telephony/cat/TransportLevel;
    :catch_0
    move-exception v0

    .line 1236
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "ValueParser"

    const-string v8, "ResultException: retrieveTransportLevel"

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1237
    new-instance v7, Lcom/android/internal/telephony/cat/ResultException;

    sget-object v8, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/cat/ResultException;-><init>(Lcom/android/internal/telephony/cat/ResultCode;)V

    throw v7

    .line 1238
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_1
    move-exception v0

    .line 1239
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "ValueParser"

    const-string v8, "Unknown ResultException in retrieveTransportLevel: "

    invoke-static {v7, v8}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    const/4 v5, 0x0

    goto :goto_0
.end method

.method static retrieveUSSDstring(Lcom/android/internal/telephony/cat/ComprehensionTlv;)[B
    .locals 9
    .param p0, "ctlv"    # Lcom/android/internal/telephony/cat/ComprehensionTlv;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cat/ResultException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 435
    .local v4, "rawValue":[B
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getValueIndex()I

    move-result v6

    .line 436
    .local v6, "valueIndex":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/ComprehensionTlv;->getLength()I

    move-result v3

    .line 437
    .local v3, "length":I
    add-int v8, v6, v3

    add-int/lit8 v0, v8, -0x1

    .line 438
    .local v0, "endOfUssdString":I
    if-eqz v3, :cond_1

    .line 439
    new-array v5, v3, [B

    .line 440
    .local v5, "ussdString":[B
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    move v7, v6

    .end local v6    # "valueIndex":I
    .local v7, "valueIndex":I
    :goto_0
    if-gt v7, v0, :cond_0

    .line 441
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    aget-byte v8, v4, v7

    aput-byte v8, v5, v2

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    move v7, v6

    .end local v6    # "valueIndex":I
    .restart local v7    # "valueIndex":I
    goto :goto_0

    :cond_0
    move v6, v7

    .line 445
    .end local v2    # "i":I
    .end local v5    # "ussdString":[B
    .end local v7    # "valueIndex":I
    .restart local v6    # "valueIndex":I
    :goto_1
    return-object v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method
