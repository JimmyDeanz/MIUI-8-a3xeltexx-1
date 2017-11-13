.class Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
.super Ljava/lang/Object;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/SmsMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PduParser"
.end annotation


# instance fields
.field mCur:I

.field mPdu:[B

.field mUserData:[B

.field mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

.field mUserDataSeptetPadding:I

.field validityPeriodFormat:I


# direct methods
.method constructor <init>([B)V
    .locals 1
    .param p1, "pdu"    # [B

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->validityPeriodFormat:I

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    return-void
.end method


# virtual methods
.method constructUserData(ZZ)I
    .locals 13
    .param p1, "hasUserDataHeader"    # Z
    .param p2, "dataInSeptets"    # Z

    .prologue
    const/4 v10, 0x0

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    .local v4, "offset":I
    iget v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->validityPeriodFormat:I

    packed-switch v9, :pswitch_data_0

    :goto_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "offset":I
    .local v5, "offset":I
    aget-byte v9, v9, v4

    and-int/lit16 v8, v9, 0xff

    .local v8, "userDataLength":I
    const/4 v3, 0x0

    .local v3, "headerSeptets":I
    const/4 v7, 0x0

    .local v7, "userDataHeaderLength":I
    if-eqz p1, :cond_8

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    add-int/lit8 v4, v5, 0x1

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    aget-byte v9, v9, v5

    and-int/lit16 v7, v9, 0xff

    new-array v6, v7, [B

    .local v6, "udh":[B
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    invoke-static {v9, v4, v6, v10, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v6}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    add-int/2addr v4, v7

    add-int/lit8 v9, v7, 0x1

    mul-int/lit8 v2, v9, 0x8

    .local v2, "headerBits":I
    div-int/lit8 v3, v2, 0x7

    rem-int/lit8 v9, v2, 0x7

    if-lez v9, :cond_1

    const/4 v9, 0x1

    :goto_1
    add-int/2addr v3, v9

    mul-int/lit8 v9, v3, 0x7

    sub-int/2addr v9, v2

    iput v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    .end local v2    # "headerBits":I
    .end local v6    # "udh":[B
    :goto_2
    if-eqz p2, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    array-length v9, v9

    sub-int v0, v9, v4

    .local v0, "bufferLen":I
    :cond_0
    :goto_3
    new-array v9, v0, [B

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    # getter for: Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->access$000()Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    array-length v12, v12

    invoke-static {v9, v4, v11, v10, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    :goto_4
    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    if-eqz p2, :cond_7

    sub-int v1, v8, v3

    .local v1, "count":I
    if-gez v1, :cond_6

    .end local v1    # "count":I
    :goto_5
    return v10

    .end local v0    # "bufferLen":I
    .end local v3    # "headerSeptets":I
    .end local v7    # "userDataHeaderLength":I
    .end local v8    # "userDataLength":I
    :pswitch_0
    const/4 v4, 0x7

    goto :goto_0

    :pswitch_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .restart local v2    # "headerBits":I
    .restart local v3    # "headerSeptets":I
    .restart local v6    # "udh":[B
    .restart local v7    # "userDataHeaderLength":I
    .restart local v8    # "userDataLength":I
    :cond_1
    move v9, v10

    goto :goto_1

    .end local v2    # "headerBits":I
    .end local v6    # "udh":[B
    :cond_2
    if-eqz p1, :cond_3

    add-int/lit8 v9, v7, 0x1

    :goto_6
    sub-int v0, v8, v9

    .restart local v0    # "bufferLen":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_3

    .end local v0    # "bufferLen":I
    :cond_3
    move v9, v10

    goto :goto_6

    .restart local v0    # "bufferLen":I
    :cond_4
    if-eqz p1, :cond_5

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget-object v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    array-length v12, v12

    invoke-static {v9, v4, v11, v10, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_4

    :cond_5
    const-string v9, "SmsMessage"

    const-string v11, "array copy skip! if dataCodingScheme is unsupporting,\n encodingType is Unknown and messageBody is null"

    invoke-static {v9, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .restart local v1    # "count":I
    :cond_6
    move v10, v1

    goto :goto_5

    .end local v1    # "count":I
    :cond_7
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    array-length v10, v9

    goto :goto_5

    .end local v0    # "bufferLen":I
    .end local v4    # "offset":I
    .restart local v5    # "offset":I
    :cond_8
    move v4, v5

    .end local v5    # "offset":I
    .restart local v4    # "offset":I
    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .local v0, "addressLength":I
    add-int/lit8 v4, v0, 0x1

    div-int/lit8 v4, v4, 0x2

    add-int/lit8 v2, v4, 0x2

    .local v2, "lengthBytes":I
    :try_start_0
    new-instance v3, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    invoke-direct {v3, v4, v5, v2}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .local v3, "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v4, v2

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    return-object v3

    .end local v3    # "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/text/ParseException;
    const/4 v3, 0x0

    .restart local v3    # "ret":Lcom/android/internal/telephony/gsm/GsmSmsAddress;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method getByte()I
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method getSCAddress()Ljava/lang/String;
    .locals 5

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .local v0, "len":I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .local v1, "ret":Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    return-object v1

    .end local v1    # "ret":Ljava/lang/String;
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    invoke-static {v3, v4, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0

    .end local v1    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "tr":Ljava/lang/RuntimeException;
    const-string v3, "SmsMessage"

    const-string v4, "invalid SC address: "

    invoke-static {v3, v4, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_0
.end method

.method getSCTimestampMillis()J
    .locals 14

    .prologue
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v8

    .local v8, "year":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v3

    .local v3, "month":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v0

    .local v0, "day":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v1

    .local v1, "hour":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v2

    .local v2, "minute":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v9, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v4

    .local v4, "second":I
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    aget-byte v7, v9, v10

    .local v7, "tzByte":B
    and-int/lit8 v9, v7, -0x9

    int-to-byte v9, v9

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->gsmBcdByteToInt(B)I

    move-result v6

    .local v6, "timezoneOffset":I
    and-int/lit8 v9, v7, 0x8

    if-nez v9, :cond_0

    :goto_0
    new-instance v5, Landroid/text/format/Time;

    const-string v9, "UTC"

    invoke-direct {v5, v9}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .local v5, "time":Landroid/text/format/Time;
    const/16 v9, 0x5a

    if-lt v8, v9, :cond_1

    add-int/lit16 v9, v8, 0x76c

    :goto_1
    iput v9, v5, Landroid/text/format/Time;->year:I

    add-int/lit8 v9, v3, -0x1

    iput v9, v5, Landroid/text/format/Time;->month:I

    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    iput v1, v5, Landroid/text/format/Time;->hour:I

    iput v2, v5, Landroid/text/format/Time;->minute:I

    iput v4, v5, Landroid/text/format/Time;->second:I

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    mul-int/lit8 v9, v6, 0xf

    mul-int/lit8 v9, v9, 0x3c

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v12, v9

    sub-long/2addr v10, v12

    return-wide v10

    .end local v5    # "time":Landroid/text/format/Time;
    :cond_0
    neg-int v6, v6

    goto :goto_0

    .restart local v5    # "time":Landroid/text/format/Time;
    :cond_1
    add-int/lit16 v9, v8, 0x7d0

    goto :goto_1
.end method

.method getUseDataNSRISms(I)Ljava/lang/String;
    .locals 8
    .param p1, "byteCount"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v2

    .local v2, "nsriUserdata":[B
    const/4 v3, 0x0

    .local v3, "ret":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "cnt":I
    const-string v5, "SmsMessage"

    const-string v6, "[NSRI_SMS] getUseDataNSRISms"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :try_start_0
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "f1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "a0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const-string v7, "ISO8859_1"

    invoke-direct {v4, v5, v6, p1, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3    # "ret":Ljava/lang/String;
    .local v4, "ret":Ljava/lang/String;
    :try_start_1
    const-string v5, "SmsMessage"

    const-string v6, "[NSRI_SMS] : getUserDataUCS2    ISO8859_1"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .end local v4    # "ret":Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/String;
    :goto_0
    return-object v3

    :cond_0
    :try_start_2
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const-string v7, "utf-16"

    invoke-direct {v4, v5, v6, p1, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v3    # "ret":Ljava/lang/String;
    .restart local v4    # "ret":Ljava/lang/String;
    move-object v3, v4

    .end local v4    # "ret":Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    :goto_1
    const-string v3, ""

    const-string v5, "SmsMessage"

    const-string v6, "implausible UnsupportedEncodingException"

    invoke-static {v5, v6, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1    # "ex":Ljava/io/UnsupportedEncodingException;
    .end local v3    # "ret":Ljava/lang/String;
    .restart local v4    # "ret":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "ret":Ljava/lang/String;
    .restart local v3    # "ret":Ljava/lang/String;
    goto :goto_1
.end method

.method getUserData()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserData:[B

    return-object v0
.end method

.method getUserDataGSM7Bit(III)Ljava/lang/String;
    .locals 7
    .param p1, "septetCount"    # I
    .param p2, "languageTable"    # I
    .param p3, "languageShiftTable"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataSeptetPadding:I

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIIIII)Ljava/lang/String;

    move-result-object v6

    .local v6, "ret":Ljava/lang/String;
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    mul-int/lit8 v1, p1, 0x7

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    return-object v6
.end method

.method getUserDataGSM8bit(I)Ljava/lang/String;
    .locals 3
    .param p1, "byteCount"    # I

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v0

    .local v0, "ret":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    return-object v0
.end method

.method getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    return-object v0
.end method

.method getUserDataKSC5601(I)Ljava/lang/String;
    .locals 6
    .param p1, "byteCount"    # I

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v1

    .local v1, "nsriUserdata":[B
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const-string v5, "KSC5601"

    invoke-direct {v2, v3, v4, p1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "nsriUserdata":[B
    .local v2, "ret":Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    return-object v2

    .end local v2    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .restart local v2    # "ret":Ljava/lang/String;
    const-string v3, "SmsMessage"

    const-string v4, "implausible UnsupportedEncodingException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getUserDataUCS2(I)Ljava/lang/String;
    .locals 6
    .param p1, "byteCount"    # I

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v1

    .local v1, "nsriUserdata":[B
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    iget v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    const-string v5, "utf-16"

    invoke-direct {v2, v3, v4, p1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "nsriUserdata":[B
    .local v2, "ret":Ljava/lang/String;
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    return-object v2

    .end local v2    # "ret":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .restart local v2    # "ret":Ljava/lang/String;
    const-string v3, "SmsMessage"

    const-string v4, "implausible UnsupportedEncodingException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method moreDataPresent()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mPdu:[B

    array-length v0, v0

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->mCur:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
