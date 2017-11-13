.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimSpnLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/RuimRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/RuimRecords$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "EF_CSIM_SPN"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 14
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v10, 0x1

    const/16 v5, 0x20

    const/4 v11, 0x0

    iget-object v9, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [B

    move-object v1, v9

    check-cast v1, [B

    .local v1, "data":[B
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CSIM_SPN="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    aget-byte v9, v1, v11

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_3

    move v9, v10

    :goto_0
    iput-boolean v9, v12, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    aget-byte v3, v1, v10

    .local v3, "encoding":I
    const/4 v9, 0x2

    aget-byte v4, v1, v9

    .local v4, "language":I
    new-array v8, v5, [B

    .local v8, "spnData":[B
    array-length v9, v1

    add-int/lit8 v9, v9, -0x3

    if-ge v9, v5, :cond_0

    array-length v9, v1

    add-int/lit8 v5, v9, -0x3

    .local v5, "len":I
    :cond_0
    const/4 v9, 0x3

    invoke-static {v1, v9, v8, v11, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v6, 0x0

    .local v6, "numBytes":I
    :goto_1
    array-length v9, v8

    if-ge v6, v9, :cond_1

    aget-byte v9, v8, v6

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0xff

    if-ne v9, v10, :cond_4

    :cond_1
    if-nez v6, :cond_5

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v10, ""

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    .end local v3    # "encoding":I
    .end local v4    # "language":I
    .end local v5    # "len":I
    .end local v6    # "numBytes":I
    .end local v8    # "spnData":[B
    :cond_3
    move v9, v11

    goto :goto_0

    .restart local v3    # "encoding":I
    .restart local v4    # "language":I
    .restart local v5    # "len":I
    .restart local v6    # "numBytes":I
    .restart local v8    # "spnData":[B
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    packed-switch v3, :pswitch_data_0

    :pswitch_0
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v10, "SPN encoding not supported"

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "spn="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/RuimRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "spnCondition="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-boolean v11, v11, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    const-string v9, "LRA"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const/4 v9, 0x7

    invoke-static {v9}, Lcom/android/internal/telephony/TelephonyFeatures;->getNtcFeature(I)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v10, "gsm.sim.operator.alpha"

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/RuimRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "ISO-8859-1"

    invoke-direct {v10, v8, v11, v6, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "spn decode error: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_2
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/4 v10, 0x0

    mul-int/lit8 v11, v6, 0x8

    div-int/lit8 v11, v11, 0x7

    invoke-static {v8, v10, v11}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_3
    new-instance v7, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "US-ASCII"

    invoke-direct {v7, v8, v9, v6, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .local v7, "spn":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_KddiSIMOta"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "1"

    const-string v10, "ril.simopkdi"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_6
    invoke-static {v7}, Landroid/text/TextUtils;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v9, v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_7
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Some corruption in SPN decoding = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v10, "Using ENCODING_GSM_7BIT_ALPHABET scheme..."

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/4 v10, 0x0

    mul-int/lit8 v11, v6, 0x8

    div-int/lit8 v11, v11, 0x7

    invoke-static {v8, v10, v11}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v9, v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v7    # "spn":Ljava/lang/String;
    :pswitch_4
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v10, Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "utf-16"

    invoke-direct {v10, v8, v11, v6, v12}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->setServiceProviderName(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :cond_9
    # getter for: Lcom/android/internal/telephony/uicc/RuimRecords;->PROPERTY_CDMA_HOME_OPERATOR_NUMERIC:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$300()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "cdmaOperatorNumeric":Ljava/lang/String;
    const-string v9, "000000"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    const-string v9, "310120"

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, "316010"

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    :cond_a
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "operatorNumeric : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v10, "gsm.sim.operator.alpha"

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/RuimRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/uicc/RuimRecords;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v10, "Do not update PROPERTY_ICC_OPERATOR_ALPHA for CHAMELEON "

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
