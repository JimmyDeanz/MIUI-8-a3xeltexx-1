.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    }
.end annotation


# static fields
.field private static final CSCFEATURE_RIL_SPECIAL_ADDRESS_HANDLINGFOR:Z

.field static final LOG_TAG:Ljava/lang/String; = "SmsMessage"

.field private static final VDBG:Z

.field public static mDay:I

.field public static mHour:I

.field private static mIgnoreSpecialChar:Z

.field public static mMin:I

.field public static mMonth:I

.field public static mSec:I

.field public static mTimezone:I

.field public static mYear:I

.field private static unsupportedDatacodingScheme:Z


# instance fields
.field private mDataCodingScheme:I

.field private mIsStatusReportMessage:Z

.field private mProtocolIdentifier:I

.field private mRecipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

.field private mReplyPathPresent:Z

.field private mStatus:I

.field private mVoiceMailCount:I

.field private messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 115
    sput-boolean v3, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 152
    const-string v0, "CTC"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_SpecialAddressHandlingFor"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->CSCFEATURE_RIL_SPECIAL_ADDRESS_HANDLINGFOR:Z

    .line 157
    sput-boolean v3, Lcom/android/internal/telephony/gsm/SmsMessage;->mIgnoreSpecialChar:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    .line 97
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    .line 149
    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 966
    return-void
.end method

.method public static ConvertDateStringToBCD(Ljava/lang/String;)[B
    .locals 20
    .param p0, "mDate"    # Ljava/lang/String;

    .prologue
    .line 2421
    const-string v15, "SmsMessage"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "date : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    const/4 v15, 0x0

    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 2424
    .local v11, "year":Ljava/lang/String;
    const/4 v15, 0x2

    const/16 v16, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 2425
    .local v5, "month":Ljava/lang/String;
    const/4 v15, 0x4

    const/16 v16, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 2426
    .local v2, "day":Ljava/lang/String;
    const/4 v15, 0x6

    const/16 v16, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2427
    .local v3, "hour":Ljava/lang/String;
    const/16 v15, 0x8

    const/16 v16, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 2428
    .local v4, "min":Ljava/lang/String;
    const/16 v15, 0xa

    const/16 v16, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2430
    .local v6, "sec":Ljava/lang/String;
    const-string v15, "SmsMessage"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "1. year:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " month:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " day:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " hour:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " min:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " sec:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v15

    sput v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    .line 2434
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v15

    sput v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    .line 2435
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v15

    sput v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    .line 2436
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v15

    sput v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    .line 2437
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v15

    sput v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    .line 2438
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v15

    sput v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    .line 2439
    const/4 v15, 0x0

    sput v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    .line 2441
    const/4 v14, 0x0

    .line 2442
    .local v14, "zone":Ljava/util/TimeZone;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v14

    .line 2445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v15

    int-to-long v12, v15

    .line 2446
    .local v12, "tzOffset":J
    const-string v15, "SmsMessage"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "timezeone"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    const-wide/16 v16, 0x0

    cmp-long v15, v12, v16

    if-gez v15, :cond_2

    .line 2448
    neg-long v12, v12

    .line 2449
    const-wide/32 v16, 0xdbba0

    div-long v8, v12, v16

    .line 2450
    .local v8, "temp":J
    const-string v15, "SmsMessage"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "timezeone->temp"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    long-to-int v15, v8

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v7

    .line 2452
    .local v7, "temp2":I
    div-int/lit8 v15, v7, 0xa

    shl-int/lit8 v15, v15, 0x4

    rem-int/lit8 v16, v7, 0xa

    add-int/lit8 v16, v16, 0x8

    add-int v15, v15, v16

    sput v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    .line 2453
    const-string v15, "SmsMessage"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mTimezone"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2454
    const-string v15, "SmsMessage"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "2. year:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " month:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " day:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " hour:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " min:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " sec:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2457
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    const-string v16, "ar"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 2458
    const-string v15, "SmsMessage"

    const-string v16, "This is timestamp in Arabic."

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v16, "%02d%02d%02d%02d%02d%02d%02x"

    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x5

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x6

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 2485
    .end local v7    # "temp2":I
    .local v10, "timestamp":Ljava/lang/String;
    :goto_0
    const-string v15, "SmsMessage"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "timestamp string: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v15

    return-object v15

    .line 2460
    .end local v10    # "timestamp":Ljava/lang/String;
    .restart local v7    # "temp2":I
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    const-string v16, "fa"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 2461
    const-string v15, "SmsMessage"

    const-string v16, "This is timestamp in Farsi."

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v16, "%02d%02d%02d%02d%02d%02d%02x"

    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x5

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x6

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "timestamp":Ljava/lang/String;
    goto/16 :goto_0

    .line 2464
    .end local v10    # "timestamp":Ljava/lang/String;
    :cond_1
    const-string v15, "%02d%02d%02d%02d%02d%02d%02x"

    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x5

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x6

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "timestamp":Ljava/lang/String;
    goto/16 :goto_0

    .line 2467
    .end local v7    # "temp2":I
    .end local v8    # "temp":J
    .end local v10    # "timestamp":Ljava/lang/String;
    :cond_2
    const-wide/32 v16, 0xdbba0

    div-long v8, v12, v16

    .line 2468
    .restart local v8    # "temp":J
    const-string v15, "SmsMessage"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "timezeone->temp"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2469
    long-to-int v15, v8

    invoke-static {v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->decToBcd(I)I

    move-result v15

    sput v15, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    .line 2470
    const-string v15, "SmsMessage"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mTimezone"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2471
    const-string v15, "SmsMessage"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "2. year:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " month:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " day:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " hour:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " min:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " sec:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    sget v17, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2474
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    const-string v16, "ar"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 2475
    const-string v15, "SmsMessage"

    const-string v16, "This is timestamp in Arabic."

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2476
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v16, "%02d%02d%02d%02d%02d%02d%02d"

    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x5

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x6

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "timestamp":Ljava/lang/String;
    goto/16 :goto_0

    .line 2477
    .end local v10    # "timestamp":Ljava/lang/String;
    :cond_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    const-string v16, "fa"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 2478
    const-string v15, "SmsMessage"

    const-string v16, "This is timestamp in Farsi."

    invoke-static/range {v15 .. v16}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2479
    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v16, "%02d%02d%02d%02d%02d%02d%02d"

    const/16 v17, 0x7

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x4

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x5

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x6

    sget v19, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v15 .. v17}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "timestamp":Ljava/lang/String;
    goto/16 :goto_0

    .line 2481
    .end local v10    # "timestamp":Ljava/lang/String;
    :cond_4
    const-string v15, "%02d%02d%02d%02d%02d%02d%02d"

    const/16 v16, 0x7

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mYear:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mMonth:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mDay:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mHour:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mMin:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x5

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mSec:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x6

    sget v18, Lcom/android/internal/telephony/gsm/SmsMessage;->mTimezone:I

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .restart local v10    # "timestamp":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 74
    sget-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    return v0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 4
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 1327
    const/4 v0, 0x0

    .line 1328
    .local v0, "newMsgBody":Ljava/lang/CharSequence;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 1329
    .local v1, "r":Landroid/content/res/Resources;
    const v3, 0x112009d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1330
    invoke-static {p0}, Lcom/android/internal/telephony/Sms7BitEncodingTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1332
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1333
    move-object v0, p0

    .line 1336
    :cond_1
    sget-boolean v3, Lcom/android/internal/telephony/gsm/SmsMessage;->mIgnoreSpecialChar:Z

    invoke-static {v0, p1, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;ZZ)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    .line 1337
    .local v2, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/internal/telephony/gsm/SmsMessage;->mIgnoreSpecialChar:Z

    .line 1339
    if-nez v2, :cond_2

    .line 1340
    invoke-static {v0}, Lcom/android/internal/telephony/SmsMessageBase;->calcUnicodeEncodingDetails(Ljava/lang/CharSequence;)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v2

    .line 1342
    .end local v2    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_2
    return-object v2
.end method

.method public static calculateLength(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 4
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "encodingType"    # I

    .prologue
    const/4 v3, 0x1

    .line 2072
    new-instance v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v1}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 2074
    .local v1, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-ne p2, v3, :cond_1

    .line 2075
    const/4 v1, 0x0

    .line 2083
    :goto_0
    if-nez v1, :cond_0

    .line 2084
    new-instance v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .end local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-direct {v1}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 2085
    .restart local v1    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    mul-int/lit8 v0, v2, 0x2

    .line 2086
    .local v0, "octets":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 2087
    const/16 v2, 0x8c

    if-le v0, v2, :cond_3

    .line 2088
    add-int/lit16 v2, v0, 0x85

    div-int/lit16 v2, v2, 0x86

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2090
    iget v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    mul-int/lit16 v2, v2, 0x86

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2096
    :goto_1
    const/4 v2, 0x3

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 2098
    .end local v0    # "octets":I
    :cond_0
    return-object v1

    .line 2077
    :cond_1
    if-nez p2, :cond_2

    .line 2078
    invoke-static {p0, v3}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    goto :goto_0

    .line 2081
    :cond_2
    invoke-static {p0, p1}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v1

    goto :goto_0

    .line 2093
    .restart local v0    # "octets":I
    :cond_3
    iput v3, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2094
    rsub-int v2, v0, 0x8c

    div-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_1
.end method

.method public static calculateLengthForCdma(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 1
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z

    .prologue
    .line 1351
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIgnoreSpecialChar:Z

    .line 1352
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method public static calculateLengthWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 7
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "maxEmailLen"    # I

    .prologue
    const/16 v6, 0x3e8

    const/4 v5, -0x1

    .line 2113
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    .line 2114
    .local v3, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-nez v3, :cond_0

    .line 2115
    new-instance v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .end local v3    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-direct {v3}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 2116
    .restart local v3    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    mul-int/lit8 p2, p2, 0x2

    .line 2118
    if-lez p2, :cond_1

    rsub-int v4, p2, 0x8c

    add-int/lit8 v0, v4, -0x1

    .line 2120
    .local v0, "maxLenPerSMS":I
    :goto_0
    if-lez p2, :cond_2

    rsub-int v4, p2, 0x86

    add-int/lit8 v1, v4, -0x1

    .line 2123
    .local v1, "maxLenPerSMSWithHeader":I
    :goto_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    mul-int/lit8 v2, v4, 0x2

    .line 2124
    .local v2, "octets":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 2125
    if-le v2, v0, :cond_5

    .line 2126
    add-int/lit8 v4, v0, -0x2

    if-le p2, v4, :cond_3

    .line 2127
    iput v6, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2128
    iput v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2148
    :goto_2
    const/4 v4, 0x3

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 2150
    .end local v0    # "maxLenPerSMS":I
    .end local v1    # "maxLenPerSMSWithHeader":I
    .end local v2    # "octets":I
    :cond_0
    return-object v3

    .line 2118
    :cond_1
    const/16 v0, 0x8c

    goto :goto_0

    .line 2120
    .restart local v0    # "maxLenPerSMS":I
    :cond_2
    const/16 v1, 0x86

    goto :goto_1

    .line 2130
    .restart local v1    # "maxLenPerSMSWithHeader":I
    .restart local v2    # "octets":I
    :cond_3
    rem-int v4, v2, v1

    if-eqz v4, :cond_4

    .line 2131
    div-int v4, v2, v1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2132
    rem-int v4, v2, v1

    sub-int v4, v1, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    .line 2135
    :cond_4
    div-int v4, v2, v1

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2136
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    .line 2140
    :cond_5
    add-int/lit8 v4, v1, -0x2

    if-lt p2, v4, :cond_6

    .line 2141
    iput v6, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2142
    iput v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2

    .line 2144
    :cond_6
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2145
    sub-int v4, v0, v2

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_2
.end method

.method public static calculateLengthWithEmail(Ljava/lang/CharSequence;ZII)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .locals 8
    .param p0, "msgBody"    # Ljava/lang/CharSequence;
    .param p1, "use7bitOnly"    # Z
    .param p2, "encodingType"    # I
    .param p3, "maxEmailLen"    # I

    .prologue
    const/16 v7, 0x3e8

    const/4 v6, -0x1

    const/4 v5, 0x1

    .line 2166
    new-instance v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    invoke-direct {v3}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 2168
    .local v3, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-ne p2, v5, :cond_1

    .line 2169
    const/4 v3, 0x0

    .line 2176
    :goto_0
    if-nez v3, :cond_0

    .line 2177
    new-instance v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .end local v3    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    invoke-direct {v3}, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;-><init>()V

    .line 2178
    .restart local v3    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    mul-int/lit8 p3, p3, 0x2

    .line 2180
    if-lez p3, :cond_3

    rsub-int v4, p3, 0x8c

    add-int/lit8 v0, v4, -0x1

    .line 2182
    .local v0, "maxLenPerSMS":I
    :goto_1
    if-lez p3, :cond_4

    rsub-int v4, p3, 0x86

    add-int/lit8 v1, v4, -0x1

    .line 2185
    .local v1, "maxLenPerSMSWithHeader":I
    :goto_2
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    mul-int/lit8 v2, v4, 0x2

    .line 2186
    .local v2, "octets":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitCount:I

    .line 2187
    if-le v2, v0, :cond_7

    .line 2188
    add-int/lit8 v4, v0, -0x2

    if-le p3, v4, :cond_5

    .line 2189
    iput v7, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2190
    iput v6, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    .line 2210
    :goto_3
    const/4 v4, 0x3

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 2212
    .end local v0    # "maxLenPerSMS":I
    .end local v1    # "maxLenPerSMSWithHeader":I
    .end local v2    # "octets":I
    :cond_0
    return-object v3

    .line 2170
    :cond_1
    if-nez p2, :cond_2

    .line 2171
    invoke-static {p0, v5, p3}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    goto :goto_0

    .line 2173
    :cond_2
    invoke-static {p0, p1, p3}, Lcom/android/internal/telephony/GsmAlphabet;->CountGsmSeptetsWithEmail(Ljava/lang/CharSequence;ZI)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v3

    goto :goto_0

    .line 2180
    :cond_3
    const/16 v0, 0x8c

    goto :goto_1

    .line 2182
    .restart local v0    # "maxLenPerSMS":I
    :cond_4
    const/16 v1, 0x86

    goto :goto_2

    .line 2192
    .restart local v1    # "maxLenPerSMSWithHeader":I
    .restart local v2    # "octets":I
    :cond_5
    rem-int v4, v2, v1

    if-eqz v4, :cond_6

    .line 2193
    div-int v4, v2, v1

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2194
    rem-int v4, v2, v1

    sub-int v4, v1, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 2197
    :cond_6
    div-int v4, v2, v1

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2198
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 2202
    :cond_7
    add-int/lit8 v4, v1, -0x2

    if-lt p3, v4, :cond_8

    .line 2203
    iput v7, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2204
    iput v6, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3

    .line 2206
    :cond_8
    iput v5, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->msgCount:I

    .line 2207
    sub-int v4, v0, v2

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_3
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 7
    .param p0, "index"    # I
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x0

    .line 241
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 243
    .local v1, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIndexOnIcc:I

    .line 248
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_0

    .line 249
    const-string v5, "SmsMessage"

    const-string v6, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v4

    .line 266
    .end local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 253
    .restart local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_0
    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x7

    iput v5, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatusOnIcc:I

    .line 256
    array-length v5, p1

    add-int/lit8 v3, v5, -0x1

    .line 260
    .local v3, "size":I
    new-array v2, v3, [B

    .line 261
    .local v2, "pdu":[B
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 262
    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 264
    .end local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2    # "pdu":[B
    .end local v3    # "size":I
    :catch_0
    move-exception v0

    .line 265
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v5, "SmsMessage"

    const-string v6, "SMS PDU parsing failed: "

    invoke-static {v5, v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v4

    .line 266
    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 6
    .param p0, "pdu"    # [B

    .prologue
    const/4 v3, 0x0

    .line 172
    :try_start_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 173
    .local v2, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 180
    .end local v2    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v2

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v4, "SmsMessage"

    const-string v5, "SMS PDU parsing failed: "

    invoke-static {v4, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 177
    goto :goto_0

    .line 178
    .end local v1    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string v4, "SmsMessage"

    const-string v5, "SMS PDU parsing failed with out of memory: "

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v3

    .line 180
    goto :goto_0
.end method

.method private static decToBcd(I)I
    .locals 4
    .param p0, "digit"    # I

    .prologue
    .line 2404
    const/4 v1, 0x0

    .line 2405
    .local v1, "left":I
    const/4 v2, 0x0

    .line 2406
    .local v2, "right":I
    const/4 v0, 0x0

    .line 2408
    .local v0, "bcd_value":I
    div-int/lit8 v1, p0, 0xa

    .line 2409
    rem-int/lit8 v2, p0, 0xa

    .line 2411
    mul-int/lit8 v3, v2, 0xa

    add-int v0, v3, v1

    .line 2413
    return v0
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "header"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 441
    const-string v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 443
    .local v1, "textPart":[B
    if-eqz p1, :cond_0

    .line 445
    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .line 447
    .local v2, "userData":[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    .line 448
    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 449
    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 454
    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .line 455
    .local v0, "ret":[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    .line 456
    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 457
    return-object v0

    .line 452
    .end local v0    # "ret":[B
    .end local v2    # "userData":[B
    :cond_0
    move-object v2, v1

    .restart local v2    # "userData":[B
    goto :goto_0
.end method

.method public static getSimDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .locals 15
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "Address"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "date"    # Ljava/lang/String;
    .param p4, "header"    # [B

    .prologue
    .line 2575
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 2576
    :cond_0
    const/4 v5, 0x0

    .line 2684
    :goto_0
    return-object v5

    .line 2579
    :cond_1
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v7

    .line 2581
    .local v7, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-eqz v7, :cond_3

    .line 2582
    iget v12, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-gtz v12, :cond_2

    iget v12, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-lez v12, :cond_3

    .line 2583
    :cond_2
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getSimDeliverPdu: ted.languageTable = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getSimDeliverPdu: ted.languageShiftTable = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2585
    new-instance v6, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 2586
    .local v6, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iget v12, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v12, v6, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 2587
    iget v12, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v12, v6, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 2588
    invoke-static {v6}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    .line 2592
    .end local v6    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_3
    new-instance v5, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;-><init>()V

    .line 2594
    .local v5, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    if-eqz p4, :cond_4

    const/16 v12, 0x40

    :goto_1
    or-int/lit8 v12, v12, 0x0

    int-to-byte v4, v12

    .line 2596
    .local v4, "mtiByte":B
    const/4 v2, 0x0

    .line 2600
    .local v2, "bo":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    move-object/from16 v0, p1

    invoke-static {p0, v0, v4, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSimDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v2

    .line 2605
    if-eqz v7, :cond_5

    .line 2606
    iget v12, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v13, v7, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1, v12, v13}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v11

    .line 2613
    .local v11, "userData":[B
    :goto_2
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xa0

    if-le v12, v13, :cond_6

    .line 2615
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2594
    .end local v2    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "mtiByte":B
    .end local v11    # "userData":[B
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 2609
    .restart local v2    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v4    # "mtiByte":B
    :cond_5
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1, v12, v13}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v11

    .restart local v11    # "userData":[B
    goto :goto_2

    .line 2625
    :cond_6
    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2629
    const/4 v12, 0x7

    new-array v9, v12, [B

    .line 2631
    .local v9, "timestamp":[B
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->ConvertDateStringToBCD(Ljava/lang/String;)[B

    move-result-object v9

    .line 2633
    const/4 v12, 0x0

    array-length v13, v9

    invoke-virtual {v2, v9, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2635
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v2, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2683
    :goto_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v5, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedMessage:[B

    goto/16 :goto_0

    .line 2637
    .end local v9    # "timestamp":[B
    .end local v11    # "userData":[B
    :catch_0
    move-exception v3

    .line 2643
    .local v3, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string v12, "utf-16be"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 2651
    .local v8, "textPart":[B
    if-eqz p4, :cond_7

    .line 2652
    move-object/from16 v0, p4

    array-length v12, v0

    array-length v13, v8

    add-int/2addr v12, v13

    new-array v11, v12, [B

    .line 2654
    .restart local v11    # "userData":[B
    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p4

    array-length v14, v0

    move-object/from16 v0, p4

    invoke-static {v0, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2655
    const/4 v12, 0x0

    move-object/from16 v0, p4

    array-length v13, v0

    array-length v14, v8

    invoke-static {v8, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2660
    :goto_4
    array-length v12, v11

    const/16 v13, 0x8c

    if-le v12, v13, :cond_8

    .line 2662
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2644
    .end local v8    # "textPart":[B
    .end local v11    # "userData":[B
    :catch_1
    move-exception v10

    .line 2645
    .local v10, "uex":Ljava/io/UnsupportedEncodingException;
    const-string v12, "SmsMessage"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2648
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2657
    .end local v10    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v8    # "textPart":[B
    :cond_7
    move-object v11, v8

    .restart local v11    # "userData":[B
    goto :goto_4

    .line 2667
    :cond_8
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2671
    const/4 v12, 0x7

    new-array v9, v12, [B

    .line 2673
    .restart local v9    # "timestamp":[B
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->ConvertDateStringToBCD(Ljava/lang/String;)[B

    move-result-object v9

    .line 2675
    const/4 v12, 0x0

    array-length v13, v9

    invoke-virtual {v2, v9, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2678
    array-length v12, v11

    invoke-virtual {v2, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2680
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v2, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3
.end method

.method private static getSimDeliverPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 12
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "Address"    # Ljava/lang/String;
    .param p2, "mtiByte"    # B
    .param p3, "ret"    # Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 2497
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0xb4

    invoke-direct {v0, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2501
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_1

    .line 2502
    iput-object v8, p3, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedScAddress:[B

    .line 2508
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2511
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 2512
    .local v1, "c":C
    const/4 v5, 0x1

    .line 2514
    .local v5, "isNumeric":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_SmsNttRequirement"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 2525
    :cond_0
    :goto_1
    if-eqz v5, :cond_6

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2526
    const-string v8, "SmsMessage"

    const-string v9, "Address is Numeric."

    invoke-static {v8, v9}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v2

    .line 2531
    .local v2, "daBytes":[B
    if-nez v2, :cond_4

    .line 2532
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2561
    :goto_2
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2563
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "daBytes":[B
    :goto_3
    return-object v0

    .line 2504
    .end local v1    # "c":C
    .end local v5    # "isNumeric":Z
    .restart local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v9

    iput-object v9, p3, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedScAddress:[B

    goto :goto_0

    .line 2516
    .restart local v1    # "c":C
    .restart local v5    # "isNumeric":Z
    :cond_2
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 2517
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Address is ."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v9}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2519
    const/4 v5, 0x0

    .line 2520
    goto :goto_1

    .line 2516
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2534
    .end local v4    # "i":I
    .restart local v2    # "daBytes":[B
    :cond_4
    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v8, v8, 0x2

    array-length v9, v2

    add-int/lit8 v9, v9, -0x1

    aget-byte v9, v2, v9

    and-int/lit16 v9, v9, 0xf0

    const/16 v10, 0xf0

    if-ne v9, v10, :cond_5

    :goto_5
    sub-int v6, v8, v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2537
    array-length v6, v2

    invoke-virtual {v0, v2, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    :cond_5
    move v6, v7

    .line 2534
    goto :goto_5

    .line 2540
    .end local v2    # "daBytes":[B
    :cond_6
    const-string v9, "SmsMessage"

    const-string v10, "Address is Alphabetic."

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2551
    .restart local v2    # "daBytes":[B
    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    mul-int/lit8 v8, v8, 0x2

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2554
    const/16 v8, 0xd0

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2557
    array-length v8, v2

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v0, v2, v6, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2

    .line 2545
    .end local v2    # "daBytes":[B
    :catch_0
    move-exception v3

    .line 2546
    .local v3, "ex":Lcom/android/internal/telephony/EncodeException;
    const-string v6, "SmsMessage"

    const-string v7, "Implausible UnsupportedEncodingException "

    invoke-static {v6, v7, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v8

    .line 2548
    goto :goto_3
.end method

.method public static getSimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 12
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "Address"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "header"    # [B

    .prologue
    .line 2303
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 2304
    :cond_0
    const/4 v3, 0x0

    .line 2398
    :goto_0
    return-object v3

    .line 2307
    :cond_1
    const/4 v9, 0x0

    invoke-static {p2, v9}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v5

    .line 2309
    .local v5, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    if-eqz v5, :cond_3

    .line 2310
    iget v9, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    if-gtz v9, :cond_2

    iget v9, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    if-lez v9, :cond_3

    .line 2311
    :cond_2
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSimSubmitPdu: ted.languageTable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getSimSubmitPdu: ted.languageShiftTable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2313
    new-instance v4, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 2314
    .local v4, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iget v9, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v9, v4, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 2315
    iget v9, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v9, v4, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 2316
    invoke-static {v4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p3

    .line 2320
    .end local v4    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_3
    new-instance v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 2322
    .local v3, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p3, :cond_4

    const/16 v9, 0x40

    :goto_1
    or-int/lit8 v9, v9, 0x1

    int-to-byte v2, v9

    .line 2324
    .local v2, "mtiByte":B
    invoke-static {p0, p1, v2, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSimSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 2332
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    if-eqz v5, :cond_5

    .line 2333
    :try_start_0
    iget v9, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iget v10, v5, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    invoke-static {p2, p3, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v8

    .line 2340
    .local v8, "userData":[B
    :goto_2
    const/4 v9, 0x0

    aget-byte v9, v8, v9

    and-int/lit16 v9, v9, 0xff

    const/16 v10, 0xa0

    if-le v9, v10, :cond_6

    .line 2342
    const/4 v3, 0x0

    goto :goto_0

    .line 2322
    .end local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "mtiByte":B
    .end local v8    # "userData":[B
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 2336
    .restart local v0    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "mtiByte":B
    :cond_5
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p2, p3, v9, v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v8

    .restart local v8    # "userData":[B
    goto :goto_2

    .line 2352
    :cond_6
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2357
    const/4 v9, 0x0

    array-length v10, v8

    invoke-virtual {v0, v8, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2397
    :goto_3
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto/16 :goto_0

    .line 2359
    .end local v8    # "userData":[B
    :catch_0
    move-exception v1

    .line 2365
    .local v1, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    const-string v9, "utf-16be"

    invoke-virtual {p2, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 2373
    .local v6, "textPart":[B
    if-eqz p3, :cond_7

    .line 2374
    array-length v9, p3

    array-length v10, v6

    add-int/2addr v9, v10

    new-array v8, v9, [B

    .line 2376
    .restart local v8    # "userData":[B
    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, p3

    invoke-static {p3, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2377
    const/4 v9, 0x0

    array-length v10, p3

    array-length v11, v6

    invoke-static {v6, v9, v8, v10, v11}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2382
    :goto_4
    array-length v9, v8

    const/16 v10, 0x8c

    if-le v9, v10, :cond_8

    .line 2384
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2366
    .end local v6    # "textPart":[B
    .end local v8    # "userData":[B
    :catch_1
    move-exception v7

    .line 2367
    .local v7, "uex":Ljava/io/UnsupportedEncodingException;
    const-string v9, "SmsMessage"

    const-string v10, "Implausible UnsupportedEncodingException "

    invoke-static {v9, v10, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2370
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 2379
    .end local v7    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v6    # "textPart":[B
    :cond_7
    move-object v8, v6

    .restart local v8    # "userData":[B
    goto :goto_4

    .line 2389
    :cond_8
    const/16 v9, 0x8

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2392
    array-length v9, v8

    invoke-virtual {v0, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2394
    const/4 v9, 0x0

    array-length v10, v8

    invoke-virtual {v0, v8, v9, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3
.end method

.method private static getSimSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "Address"    # Ljava/lang/String;
    .param p2, "mtiByte"    # B
    .param p3, "ret"    # Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    .prologue
    const/4 v3, 0x0

    .line 2259
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 2263
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_0

    .line 2264
    const/4 v2, 0x0

    iput-object v2, p3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 2270
    :goto_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2273
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2277
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 2279
    .local v1, "daBytes":[B
    if-nez v1, :cond_1

    .line 2280
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2294
    :goto_1
    return-object v0

    .line 2266
    .end local v1    # "daBytes":[B
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    .line 2284
    .restart local v1    # "daBytes":[B
    :cond_1
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    :goto_2
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2289
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2292
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2284
    goto :goto_2
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # I
    .param p3, "originationPort"    # I
    .param p4, "data"    # [B
    .param p5, "statusReportRequested"    # Z

    .prologue
    const/4 v7, 0x0

    .line 856
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 857
    .local v1, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 858
    iput p3, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 859
    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 861
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 862
    .local v3, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 864
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 866
    .local v4, "smsHeaderData":[B
    array-length v5, p4

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8c

    if-le v5, v6, :cond_0

    .line 867
    const-string v5, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS data message may only contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    rsub-int v7, v7, 0x8c

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    const/4 v2, 0x0

    .line 895
    :goto_0
    return-object v2

    .line 872
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 873
    .local v2, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p5, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 880
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 885
    array-length v5, p4

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 888
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 889
    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 892
    array-length v5, p4

    invoke-virtual {v0, p4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 894
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "destinationPort"    # I
    .param p3, "data"    # [B
    .param p4, "statusReportRequested"    # Z

    .prologue
    const/4 v7, 0x0

    .line 723
    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .line 724
    .local v1, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 725
    iput v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    .line 726
    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    .line 728
    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 729
    .local v3, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    .line 731
    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .line 733
    .local v4, "smsHeaderData":[B
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8c

    if-le v5, v6, :cond_0

    .line 734
    const-string v5, "SmsMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS data message may only contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    rsub-int v7, v7, 0x8c

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    const/4 v2, 0x0

    .line 762
    :goto_0
    return-object v2

    .line 739
    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 740
    .local v2, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p4, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 747
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 752
    array-length v5, p3

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 755
    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 756
    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 759
    array-length v5, p3

    invoke-virtual {v0, p3, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 761
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z

    .prologue
    .line 472
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 13
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "replyPath"    # Z
    .param p5, "expiry"    # I
    .param p6, "serviceType"    # I
    .param p7, "encodingType"    # I
    .param p8, "a"    # I
    .param p9, "b"    # I

    .prologue
    .line 505
    if-gtz p8, :cond_0

    if-lez p9, :cond_1

    .line 506
    :cond_0
    new-instance v12, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v12}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 507
    .local v12, "Header":Lcom/android/internal/telephony/SmsHeader;
    move/from16 v0, p8

    iput v0, v12, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 508
    move/from16 v0, p9

    iput v0, v12, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 509
    invoke-static {v12}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v1 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 512
    .end local v12    # "Header":Lcom/android/internal/telephony/SmsHeader;
    :goto_0
    return-object v1

    :cond_1
    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v1 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 11
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B

    .prologue
    const/4 v5, 0x0

    .line 294
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_SmsKsc5601Send"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    move v7, v5

    .line 300
    invoke-static/range {v0 .. v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    :goto_0
    return-object v0

    .line 297
    :cond_0
    const/4 v8, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, v5

    move v7, v5

    move v9, v5

    move v10, v5

    invoke-static/range {v0 .. v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 15
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "encoding"    # I
    .param p6, "languageTable"    # I
    .param p7, "languageShiftTable"    # I

    .prologue
    .line 327
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 328
    :cond_0
    const/4 v7, 0x0

    .line 429
    :goto_0
    return-object v7

    .line 331
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v12

    const-string v13, "CscFeature_RIL_SegmentedSms"

    invoke-virtual {v12, v13}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 332
    const/16 p4, 0x0

    .line 334
    :cond_2
    if-nez p5, :cond_5

    .line 336
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v9

    .line 337
    .local v9, "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    move/from16 p5, v0

    .line 338
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    move/from16 p6, v0

    .line 339
    iget v0, v9, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    move/from16 p7, v0

    .line 341
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_5

    if-nez p6, :cond_3

    if-eqz p7, :cond_5

    .line 343
    :cond_3
    if-eqz p4, :cond_6

    .line 344
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->fromByteArray([B)Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    .line 345
    .local v8, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move/from16 v0, p6

    if-ne v12, v0, :cond_4

    iget v12, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move/from16 v0, p7

    if-eq v12, v0, :cond_5

    .line 347
    :cond_4
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Updating language table in SMS header: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " -> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p7

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 351
    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 352
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    .line 363
    .end local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v9    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_5
    :goto_1
    new-instance v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 365
    .local v7, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_7

    const/16 v12, 0x40

    :goto_2
    or-int/lit8 v12, v12, 0x1

    int-to-byte v6, v12

    .line 366
    .local v6, "mtiByte":B
    move-object/from16 v0, p1

    move/from16 v1, p3

    invoke-static {p0, v0, v6, v1, v7}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 373
    .local v4, "bo":Ljava/io/ByteArrayOutputStream;
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_8

    .line 374
    :try_start_0
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p6

    move/from16 v3, p7

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v11

    .line 400
    .local v11, "userData":[B
    :goto_3
    const/4 v12, 0x1

    move/from16 v0, p5

    if-ne v0, v12, :cond_a

    .line 401
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0xa0

    if-le v12, v13, :cond_9

    .line 403
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " septets)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 355
    .end local v4    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v6    # "mtiByte":B
    .end local v7    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v11    # "userData":[B
    .restart local v9    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_6
    new-instance v8, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v8}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 356
    .restart local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    move/from16 v0, p6

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 357
    move/from16 v0, p7

    iput v0, v8, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 358
    invoke-static {v8}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object p4

    goto :goto_1

    .line 365
    .end local v8    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    .end local v9    # "ted":Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    .restart local v7    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_7
    const/4 v12, 0x0

    goto :goto_2

    .line 378
    .restart local v4    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "mtiByte":B
    :cond_8
    :try_start_1
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .restart local v11    # "userData":[B
    goto :goto_3

    .line 379
    .end local v11    # "userData":[B
    :catch_0
    move-exception v10

    .line 380
    .local v10, "uex":Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v12, "SmsMessage"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 383
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 386
    .end local v10    # "uex":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v5

    .line 390
    .local v5, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_3
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v11

    .line 391
    .restart local v11    # "userData":[B
    const/16 p5, 0x3

    goto :goto_3

    .line 392
    .end local v11    # "userData":[B
    :catch_2
    move-exception v10

    .line 393
    .restart local v10    # "uex":Ljava/io/UnsupportedEncodingException;
    const-string v12, "SmsMessage"

    const-string v13, "Implausible UnsupportedEncodingException "

    invoke-static {v12, v13, v10}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 414
    .end local v5    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v10    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v11    # "userData":[B
    :cond_9
    const/4 v12, 0x0

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 427
    :goto_4
    const/4 v12, 0x0

    array-length v13, v11

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 428
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    iput-object v12, v7, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto/16 :goto_0

    .line 416
    :cond_a
    const/4 v12, 0x0

    aget-byte v12, v11, v12

    and-int/lit16 v12, v12, 0xff

    const/16 v13, 0x8c

    if-le v12, v13, :cond_b

    .line 418
    const-string v12, "SmsMessage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Message too long ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-byte v14, v11, v14

    and-int/lit16 v14, v14, 0xff

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " bytes)"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 423
    :cond_b
    const/16 v12, 0x8

    invoke-virtual {v4, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_4
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 11
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "replyPath"    # Z
    .param p6, "expiry"    # I
    .param p7, "serviceType"    # I
    .param p8, "encodingType"    # I

    .prologue
    .line 493
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v10}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 16
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "statusReportRequested"    # Z
    .param p4, "header"    # [B
    .param p5, "replyPath"    # Z
    .param p6, "expiry"    # I
    .param p7, "serviceType"    # I
    .param p8, "encodingType"    # I
    .param p9, "languageTable"    # I
    .param p10, "languageShiftTable"    # I

    .prologue
    .line 534
    const-string v13, "SmsMessage"

    const-string v14, "getSubmitPdu with Options"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 537
    :cond_0
    const/4 v8, 0x0

    .line 702
    :goto_0
    return-object v8

    .line 539
    :cond_1
    const-string v13, "SmsMessage"

    const-string v14, "**getSubmitPdu_Options**"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const-string v13, "SmsMessage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "replyPath = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p5

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const-string v13, "SmsMessage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "encodingType = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p8

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const-string v13, "SmsMessage"

    const-string v14, "**********************"

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v8}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 546
    .local v8, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_4

    const/16 v13, 0x40

    :goto_1
    or-int/lit8 v13, v13, 0x1

    int-to-byte v7, v13

    .line 547
    .local v7, "mtiByte":B
    if-eqz p5, :cond_2

    .line 548
    or-int/lit16 v13, v7, 0x80

    int-to-byte v7, v13

    .line 549
    const-string v13, "SmsMessage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mtiByte = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_RIL_SmsNotUsedValidityPeriodFormat"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 558
    or-int/lit8 v13, v7, 0x10

    int-to-byte v7, v13

    .line 559
    const-string v13, "SmsMessage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mtiByte = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    :goto_2
    const/4 v5, 0x0

    .line 566
    .local v5, "encodingUcs2":Z
    const/4 v4, 0x0

    .line 567
    .local v4, "bo":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-static {v0, v1, v7, v2, v8}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v4

    .line 573
    const/4 v13, 0x1

    move/from16 v0, p8

    if-ne v0, v13, :cond_6

    .line 574
    :try_start_0
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string v14, "Input Method is Unicode"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :catch_0
    move-exception v6

    .line 628
    .local v6, "ex":Lcom/android/internal/telephony/EncodeException;
    :try_start_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_RIL_SmsSupportKsc5601"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_d

    .line 644
    :cond_3
    const-string v13, "utf-16be"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v10

    .line 653
    .local v10, "textPart":[B
    :goto_3
    if-eqz p4, :cond_10

    .line 655
    move-object/from16 v0, p4

    array-length v13, v0

    array-length v14, v10

    add-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x1

    new-array v12, v13, [B

    .line 657
    .local v12, "userData":[B
    const/4 v13, 0x0

    move-object/from16 v0, p4

    array-length v14, v0

    int-to-byte v14, v14

    aput-byte v14, v12, v13

    .line 658
    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p4

    array-length v15, v0

    move-object/from16 v0, p4

    invoke-static {v0, v13, v12, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 659
    const/4 v13, 0x0

    move-object/from16 v0, p4

    array-length v14, v0

    add-int/lit8 v14, v14, 0x1

    array-length v15, v10

    invoke-static {v10, v13, v12, v14, v15}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 664
    :goto_4
    array-length v13, v12

    const/16 v14, 0x8c

    if-le v13, v14, :cond_11

    .line 666
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 546
    .end local v4    # "bo":Ljava/io/ByteArrayOutputStream;
    .end local v5    # "encodingUcs2":Z
    .end local v6    # "ex":Lcom/android/internal/telephony/EncodeException;
    .end local v7    # "mtiByte":B
    .end local v10    # "textPart":[B
    .end local v12    # "userData":[B
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 555
    .restart local v7    # "mtiByte":B
    :cond_5
    const-string v13, "SmsMessage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SMS not used TP-VPF  mtiByte = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 577
    .restart local v4    # "bo":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "encodingUcs2":Z
    :cond_6
    :try_start_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_RIL_SmsSupportKsc5601"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_8

    .line 594
    :cond_7
    :goto_5
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move/from16 v2, p9

    move/from16 v3, p10

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[BII)[B

    move-result-object v12

    .line 597
    .restart local v12    # "userData":[B
    const/4 v13, 0x0

    aget-byte v13, v12, v13

    and-int/lit16 v13, v13, 0xff

    const/16 v14, 0xa0

    if-le v13, v14, :cond_b

    .line 599
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 577
    .end local v12    # "userData":[B
    :cond_8
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_RIL_SmsKsc5601Send"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 583
    const-string v13, "ril.simtype"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 585
    .local v9, "simType":Ljava/lang/String;
    const-string v13, "2"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const-string v13, "3"

    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 586
    :cond_9
    new-instance v13, Lcom/android/internal/telephony/EncodeException;

    const-string v14, "Input Method is Unicode"

    invoke-direct {v13, v14}, Lcom/android/internal/telephony/EncodeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 588
    :cond_a
    const/4 v5, 0x1

    goto :goto_5

    .line 610
    .end local v9    # "simType":Ljava/lang/String;
    .restart local v12    # "userData":[B
    :cond_b
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 612
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_RIL_SmsNotUsedValidityPeriodFormat"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_c

    .line 617
    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 618
    const-string v13, "SmsMessage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "expirty = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p6

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_c
    const/4 v13, 0x0

    array-length v14, v12

    invoke-virtual {v4, v12, v13, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 701
    :goto_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    iput-object v13, v8, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto/16 :goto_0

    .line 628
    .end local v12    # "userData":[B
    .restart local v6    # "ex":Lcom/android/internal/telephony/EncodeException;
    :cond_d
    :try_start_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_RIL_SmsKsc5601Send"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 633
    const/4 v13, 0x1

    move/from16 v0, p8

    if-eq v0, v13, :cond_e

    if-eqz v5, :cond_f

    .line 634
    :cond_e
    const-string v13, "utf-16be"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    .restart local v10    # "textPart":[B
    goto/16 :goto_3

    .line 636
    .end local v10    # "textPart":[B
    :cond_f
    const-string v13, "EUC_KR"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v10

    .restart local v10    # "textPart":[B
    goto/16 :goto_3

    .line 646
    .end local v10    # "textPart":[B
    :catch_1
    move-exception v11

    .line 647
    .local v11, "uex":Ljava/io/UnsupportedEncodingException;
    const-string v13, "SmsMessage"

    const-string v14, "Implausible UnsupportedEncodingException "

    invoke-static {v13, v14, v11}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 650
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 661
    .end local v11    # "uex":Ljava/io/UnsupportedEncodingException;
    .restart local v10    # "textPart":[B
    :cond_10
    move-object v12, v10

    .restart local v12    # "userData":[B
    goto/16 :goto_4

    .line 670
    :cond_11
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_RIL_SmsSupportKsc5601"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_14

    .line 683
    :cond_12
    const/16 v13, 0x8

    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 686
    :goto_7
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_RIL_SmsNotUsedValidityPeriodFormat"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_13

    .line 691
    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 692
    const-string v13, "SmsMessage"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "expirty = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p6

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_13
    array-length v13, v12

    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 698
    const/4 v13, 0x0

    array-length v14, v12

    invoke-virtual {v4, v12, v13, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_6

    .line 670
    :cond_14
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_RIL_SmsKsc5601Send"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 676
    const/4 v13, 0x1

    move/from16 v0, p8

    if-eq v0, v13, :cond_15

    if-eqz v5, :cond_16

    .line 677
    :cond_15
    const/16 v13, 0x8

    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_7

    .line 679
    :cond_16
    const/16 v13, 0x84

    invoke-virtual {v4, v13}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_7
.end method

.method public static getSubmitPduForKTOTA(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 11
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 769
    new-instance v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .line 772
    .local v4, "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/4 v3, 0x1

    .line 774
    .local v3, "mtiByte":B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v6, 0xb4

    invoke-direct {v0, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 778
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_0

    .line 779
    iput-object v8, v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 786
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 789
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 794
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 796
    .local v1, "daBytes":[B
    if-nez v1, :cond_1

    .line 797
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 816
    :goto_1
    :try_start_0
    invoke-static {p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 823
    .local v5, "userData":[B
    aget-byte v6, v5, v7

    and-int/lit16 v6, v6, 0xff

    const/16 v9, 0xa0

    if-le v6, v9, :cond_3

    move-object v4, v8

    .line 835
    .end local v4    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v5    # "userData":[B
    :goto_2
    return-object v4

    .line 782
    .end local v1    # "daBytes":[B
    .restart local v4    # "ret":Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    .line 801
    .restart local v1    # "daBytes":[B
    :cond_1
    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    mul-int/lit8 v9, v6, 0x2

    array-length v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xf0

    const/16 v10, 0xf0

    if-ne v6, v10, :cond_2

    const/4 v6, 0x1

    :goto_3
    sub-int v6, v9, v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 805
    array-length v6, v1

    invoke-virtual {v0, v1, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 808
    const/16 v6, 0x7f

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_2
    move v6, v7

    .line 801
    goto :goto_3

    .line 817
    :catch_0
    move-exception v2

    .line 818
    .local v2, "ex":Lcom/android/internal/telephony/EncodeException;
    const-string v6, "SmsMessage"

    const-string v7, "Implausible UnsupportedEncodingException "

    invoke-static {v6, v7, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v8

    .line 820
    goto :goto_2

    .line 829
    .end local v2    # "ex":Lcom/android/internal/telephony/EncodeException;
    .restart local v5    # "userData":[B
    :cond_3
    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 833
    array-length v6, v5

    invoke-virtual {v0, v5, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 834
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedMessage:[B

    goto :goto_2
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 6
    .param p0, "scAddress"    # Ljava/lang/String;
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "mtiByte"    # B
    .param p3, "statusReportRequested"    # Z
    .param p4, "ret"    # Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    .prologue
    const/4 v3, 0x0

    .line 912
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xb4

    invoke-direct {v0, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 916
    .local v0, "bo":Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_1

    .line 917
    const/4 v2, 0x0

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    .line 925
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_SmsNotUsedStatusReportRequest"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 927
    if-eqz p3, :cond_0

    .line 929
    or-int/lit8 v2, p2, 0x20

    int-to-byte p2, v2

    .line 934
    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 937
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 941
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v4, "CscFeature_RIL_SmsNttRequirement"

    invoke-virtual {v2, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 946
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 951
    .local v1, "daBytes":[B
    :goto_1
    if-eqz v1, :cond_4

    .line 952
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v4, v2, 0x2

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xf0

    const/16 v5, 0xf0

    if-ne v2, v5, :cond_3

    const/4 v2, 0x1

    :goto_2
    sub-int v2, v4, v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 956
    array-length v2, v1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 959
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 963
    :goto_3
    return-object v0

    .line 919
    .end local v1    # "daBytes":[B
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p4, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->encodedScAddress:[B

    goto :goto_0

    .line 944
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->DocomoNetworkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .restart local v1    # "daBytes":[B
    goto :goto_1

    :cond_3
    move v2, v3

    .line 952
    goto :goto_2

    .line 961
    :cond_4
    const-string v2, "SmsMessage"

    const-string v3, "daBytes is null"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 4
    .param p0, "pdu"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 276
    .local v0, "len":I
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 278
    .local v1, "smscLen":I
    sub-int v2, v0, v1

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .param p0, "line"    # Ljava/lang/String;

    .prologue
    .line 215
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 216
    .local v1, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V

    .line 218
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SmsCml"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    .end local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 220
    .restart local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_0
    const-string v2, "3gpp"

    invoke-static {v2}, Landroid/telephony/SmsMessage;->writePduFormat(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    .end local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "SmsMessage"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .param p0, "lines"    # [Ljava/lang/String;

    .prologue
    .line 203
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .line 204
    .local v1, "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v1    # "msg":Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v1

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v2, "SmsMessage"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parsePdu([B)V
    .locals 4
    .param p1, "pdu"    # [B

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mPdu:[B

    .line 1476
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .line 1478
    .local v1, "p":Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    .line 1480
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1488
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1490
    .local v0, "firstByte":I
    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    .line 1491
    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    packed-switch v2, :pswitch_data_0

    .line 1507
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1497
    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    .line 1509
    :goto_0
    return-void

    .line 1500
    :pswitch_1
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1503
    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    .line 1491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 8
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1562
    and-int/lit16 v2, p2, 0x80

    const/16 v5, 0x80

    if-ne v2, v5, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 1564
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1568
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v2, :cond_0

    .line 1569
    sget-boolean v2, Lcom/android/internal/telephony/gsm/SmsMessage;->CSCFEATURE_RIL_SPECIAL_ADDRESS_HANDLINGFOR:Z

    if-eqz v2, :cond_0

    .line 1570
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const-string v5, "+00852"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1573
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1574
    .local v1, "origAddress":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 1575
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    const-string v5, "+"

    iput-object v5, v2, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 1576
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v6, v5, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 1583
    .end local v1    # "origAddress":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v2, :cond_1

    .line 1590
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1594
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1601
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    .line 1605
    and-int/lit8 v2, p2, 0x40

    const/16 v5, 0x40

    if-ne v2, v5, :cond_3

    move v0, v3

    .line 1607
    .local v0, "hasUserDataHeader":Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1608
    return-void

    .end local v0    # "hasUserDataHeader":Z
    :cond_2
    move v2, v4

    .line 1562
    goto :goto_0

    :cond_3
    move v0, v4

    .line 1605
    goto :goto_1
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 6
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .prologue
    const/4 v1, 0x1

    .line 1518
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    .line 1521
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 1523
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mRecipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    .line 1525
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mScTimeMillis:J

    .line 1526
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    .line 1528
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    .line 1531
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1533
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .line 1534
    .local v0, "extraParams":I
    move v2, v0

    .line 1535
    .local v2, "moreExtraParams":I
    :goto_0
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    .line 1539
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_0

    .line 1543
    :cond_0
    and-int/lit8 v3, v0, 0x78

    if-nez v3, :cond_3

    .line 1545
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1

    .line 1546
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1549
    :cond_1
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_2

    .line 1550
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1553
    :cond_2
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_3

    .line 1554
    and-int/lit8 v3, p2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_4

    .line 1555
    .local v1, "hasUserDataHeader":Z
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1559
    .end local v0    # "extraParams":I
    .end local v1    # "hasUserDataHeader":Z
    .end local v2    # "moreExtraParams":I
    :cond_3
    return-void

    .line 1554
    .restart local v0    # "extraParams":I
    .restart local v2    # "moreExtraParams":I
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 8
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "firstByte"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1617
    and-int/lit16 v4, p2, 0x80

    const/16 v7, 0x80

    if-ne v4, v7, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    .line 1620
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageRef:I

    .line 1624
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1629
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v4, :cond_0

    .line 1636
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    .line 1640
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v4

    iput v4, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    .line 1648
    const/4 v2, 0x0

    .line 1649
    .local v2, "validityPeriodLength":I
    shr-int/lit8 v4, p2, 0x3

    and-int/lit8 v1, v4, 0x3

    .line 1650
    .local v1, "validityPeriodFormat":I
    if-nez v1, :cond_2

    .line 1652
    const/4 v2, 0x0

    move v3, v2

    .line 1664
    .end local v2    # "validityPeriodLength":I
    .local v3, "validityPeriodLength":I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "validityPeriodLength":I
    .restart local v2    # "validityPeriodLength":I
    if-lez v3, :cond_4

    .line 1666
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move v3, v2

    .end local v2    # "validityPeriodLength":I
    .restart local v3    # "validityPeriodLength":I
    goto :goto_1

    .end local v1    # "validityPeriodFormat":I
    .end local v3    # "validityPeriodLength":I
    :cond_1
    move v4, v6

    .line 1617
    goto :goto_0

    .line 1654
    .restart local v1    # "validityPeriodFormat":I
    .restart local v2    # "validityPeriodLength":I
    :cond_2
    const/4 v4, 0x2

    if-ne v4, v1, :cond_3

    .line 1656
    const/4 v2, 0x1

    move v3, v2

    .end local v2    # "validityPeriodLength":I
    .restart local v3    # "validityPeriodLength":I
    goto :goto_1

    .line 1660
    .end local v3    # "validityPeriodLength":I
    .restart local v2    # "validityPeriodLength":I
    :cond_3
    const/4 v2, 0x7

    move v3, v2

    .end local v2    # "validityPeriodLength":I
    .restart local v3    # "validityPeriodLength":I
    goto :goto_1

    .line 1669
    .end local v3    # "validityPeriodLength":I
    .restart local v2    # "validityPeriodLength":I
    :cond_4
    and-int/lit8 v4, p2, 0x40

    const/16 v7, 0x40

    if-ne v4, v7, :cond_5

    move v0, v5

    .line 1671
    .local v0, "hasUserDataHeader":Z
    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .line 1672
    return-void

    .end local v0    # "hasUserDataHeader":Z
    :cond_5
    move v0, v6

    .line 1669
    goto :goto_2
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 22
    .param p1, "p"    # Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    .param p2, "hasUserDataHeader"    # Z

    .prologue
    .line 1682
    const/4 v8, 0x0

    .line 1683
    .local v8, "hasMessageClass":Z
    const/4 v15, 0x0

    .line 1685
    .local v15, "userDataCompressed":Z
    const/4 v6, 0x0

    .line 1694
    .local v6, "encodingType":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    const/16 v19, 0x84

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 1695
    const/4 v6, 0x4

    .line 1826
    :goto_0
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_14

    const/16 v18, 0x1

    :goto_1
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v5

    .line 1828
    .local v5, "count":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserData:[B

    .line 1829
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 1839
    if-eqz p2, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-eqz v18, :cond_1a

    .line 1840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->specialSmsMsgList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_1a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;

    .line 1841
    .local v12, "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    iget v0, v12, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgIndType:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v13, v0, 0xff

    .line 1848
    .local v13, "msgInd":I
    if-eqz v13, :cond_0

    const/16 v18, 0x80

    move/from16 v0, v18

    if-ne v13, v0, :cond_19

    .line 1849
    :cond_0
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1850
    const/16 v18, 0x80

    move/from16 v0, v18

    if-ne v13, v0, :cond_15

    .line 1852
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    .line 1871
    :cond_1
    :goto_3
    iget v0, v12, Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;->msgCount:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1879
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    move/from16 v18, v0

    if-lez v18, :cond_18

    .line 1880
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    .line 1884
    :goto_4
    const-string v18, "SmsMessage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MWI in TP-UDH for Vmail. Msg Ind = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Dont store = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Vmail count = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1696
    .end local v5    # "count":I
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .end local v13    # "msgInd":I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x80

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 1697
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x20

    if-eqz v18, :cond_3

    const/4 v15, 0x1

    .line 1698
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x10

    if-eqz v18, :cond_4

    const/4 v8, 0x1

    .line 1700
    :goto_6
    if-eqz v15, :cond_5

    .line 1701
    const-string v18, "SmsMessage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    .line 1697
    :cond_3
    const/4 v15, 0x0

    goto :goto_5

    .line 1698
    :cond_4
    const/4 v8, 0x0

    goto :goto_6

    .line 1705
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v18, v0

    shr-int/lit8 v18, v18, 0x2

    and-int/lit8 v18, v18, 0x3

    packed-switch v18, :pswitch_data_0

    goto/16 :goto_0

    .line 1707
    :pswitch_0
    const/4 v6, 0x1

    .line 1708
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    .line 1712
    :pswitch_1
    const/4 v6, 0x3

    .line 1713
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    .line 1719
    :pswitch_2
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    .line 1720
    .local v14, "r":Landroid/content/res/Resources;
    const v18, 0x1120098

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1722
    const/4 v6, 0x2

    .line 1723
    goto/16 :goto_0

    .line 1727
    .end local v14    # "r":Landroid/content/res/Resources;
    :cond_6
    :pswitch_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_RIL_SmsSupportKsc5601"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 1732
    const-string v18, "SmsMessage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "1 - Unsupported SMS data coding scheme "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    const/4 v6, 0x2

    .line 1735
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    .line 1729
    :cond_7
    const/4 v6, 0x4

    .line 1730
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    .line 1740
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    const/16 v19, 0xf0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 1741
    const/4 v8, 0x1

    .line 1742
    const/4 v15, 0x0

    .line 1743
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 1745
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x4

    if-nez v18, :cond_9

    .line 1747
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1750
    :cond_9
    const/4 v6, 0x2

    goto/16 :goto_0

    .line 1752
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    const/16 v19, 0xc0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    const/16 v19, 0xd0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    const/16 v19, 0xe0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_11

    .line 1761
    :cond_b
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 1763
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    const/16 v19, 0xe0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 1764
    const/4 v6, 0x3

    .line 1769
    :goto_7
    const/4 v15, 0x0

    .line 1770
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x8

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    const/4 v3, 0x1

    .line 1774
    .local v3, "active":Z
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x3

    if-nez v18, :cond_10

    .line 1775
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1776
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    .line 1777
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    const/16 v19, 0xc0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    const/16 v18, 0x1

    :goto_9
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    .line 1780
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_f

    .line 1781
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 1786
    :goto_a
    const-string v18, "SmsMessage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MWI in DCS for Vmail. DCS = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Dont store = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " vmail count = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1766
    .end local v3    # "active":Z
    :cond_c
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 1770
    :cond_d
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 1777
    .restart local v3    # "active":Z
    :cond_e
    const/16 v18, 0x0

    goto :goto_9

    .line 1783
    :cond_f
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_a

    .line 1791
    :cond_10
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    .line 1792
    const-string v18, "SmsMessage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "MWI in DCS for fax/email/other: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1795
    .end local v3    # "active":Z
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xc0

    move/from16 v18, v0

    const/16 v19, 0x80

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 1798
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_RIL_SmsSupportKsc5601"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_12

    .line 1813
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 1814
    const-string v18, "SmsMessage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "5 - Unsupported SMS data coding scheme "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1800
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v18, v0

    shr-int/lit8 v18, v18, 0x2

    and-int/lit8 v18, v18, 0x3

    packed-switch v18, :pswitch_data_1

    .line 1808
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    .line 1809
    const-string v18, "SmsMessage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "5 - 1 Unsupported SMS data coding scheme "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1804
    :pswitch_4
    const/4 v6, 0x4

    .line 1805
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    .line 1818
    :cond_13
    const-string v18, "SmsMessage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "3 - Unsupported SMS data coding scheme "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v20, v0

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1822
    const/16 v18, 0x1

    sput-boolean v18, Lcom/android/internal/telephony/gsm/SmsMessage;->unsupportedDatacodingScheme:Z

    goto/16 :goto_0

    .line 1826
    :cond_14
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 1853
    .restart local v5    # "count":I
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .restart local v13    # "msgInd":I
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 1861
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    const/16 v19, 0xd0

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xf0

    move/from16 v18, v0

    const/16 v19, 0xe0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_17

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x3

    if-eqz v18, :cond_1

    .line 1867
    :cond_17
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    goto/16 :goto_3

    .line 1882
    :cond_18
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    goto/16 :goto_4

    .line 1894
    :cond_19
    const-string v18, "SmsMessage"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "TP_UDH fax/email/extended msg/multisubscriber profile. Msg Ind = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1900
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "msg":Lcom/android/internal/telephony/SmsHeader$SpecialSmsMsg;
    .end local v13    # "msgInd":I
    :cond_1a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_RIL_SmsSupportReplyAddress"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1f

    .line 1959
    :cond_1b
    :goto_b
    packed-switch v6, :pswitch_data_2

    .line 2013
    :goto_c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_RIL_SmsTidMessage"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_2b

    .line 2020
    :cond_1c
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1e

    .line 2021
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_RIL_SmsNttRequirement"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_1d

    .line 2023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "\r\n"

    const-string v20, "\n"

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0xd

    const/16 v20, 0xa

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    .line 2025
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    .line 2028
    :cond_1e
    if-nez v8, :cond_2c

    .line 2029
    sget-object v18, Lcom/android/internal/telephony/SmsConstants$MessageClass;->UNKNOWN:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    .line 2046
    :goto_e
    return-void

    .line 1904
    :cond_1f
    const/4 v9, 0x0

    .line 1905
    .local v9, "hasReplyAddress":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move-object/from16 v18, v0

    if-eqz v18, :cond_22

    .line 1906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_20
    :goto_f
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_22

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .line 1907
    .local v11, "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iget v0, v11, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    move/from16 v18, v0

    const/16 v19, 0x22

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMti:I

    move/from16 v18, v0

    if-nez v18, :cond_20

    .line 1908
    const/4 v9, 0x1

    .line 1909
    iget-object v0, v11, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_21

    .line 1916
    :try_start_0
    new-instance v18, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v0, v11, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    move-object/from16 v19, v0

    const/16 v20, 0x0

    iget-object v0, v11, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    invoke-direct/range {v18 .. v21}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;-><init>([BII)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_f

    .line 1917
    :catch_0
    move-exception v7

    .line 1918
    .local v7, "ex":Ljava/lang/Exception;
    const-string v18, "SmsMessage"

    const-string v19, "GsmSmsAddress FAIL!"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1930
    .end local v7    # "ex":Ljava/lang/Exception;
    :cond_21
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1931
    const-string v18, "SmsMessage"

    const-string v19, "SMS replyAddress: null"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 1940
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "miscElt":Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_22
    if-nez v9, :cond_23

    .line 1941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    .line 1942
    const-string v18, "SmsMessage"

    const-string v19, "hasReplayAddress = false, SMS replayAddress = mOriginatingAddress"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1945
    :cond_23
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_RIL_SmsPortAddressedMessage"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_24

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_RIL_SmsTidMessage"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 1949
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1b

    .line 1950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_25

    const-string v18, "+82"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x3

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_25

    .line 1951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "\\+82"

    const-string v21, "0"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 1953
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1b

    const-string v18, "82"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x2

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 1954
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyAddress:Lcom/android/internal/telephony/SmsAddress;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "82"

    const-string v21, "0"

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    goto/16 :goto_b

    .line 1961
    .end local v9    # "hasReplyAddress":Z
    :pswitch_5
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_c

    .line 1967
    :pswitch_6
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v14

    .line 1968
    .restart local v14    # "r":Landroid/content/res/Resources;
    const v18, 0x1120098

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    if-eqz v18, :cond_26

    .line 1970
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM8bit(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_c

    .line 1972
    :cond_26
    const/16 v18, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_c

    .line 1977
    .end local v14    # "r":Landroid/content/res/Resources;
    :pswitch_7
    if-eqz p2, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move/from16 v18, v0

    move/from16 v19, v18

    :goto_10
    if-eqz p2, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move/from16 v18, v0

    :goto_11
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(III)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_c

    :cond_27
    const/16 v18, 0x0

    move/from16 v19, v18

    goto :goto_10

    :cond_28
    const/16 v18, 0x0

    goto :goto_11

    .line 1988
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v17

    .line 1989
    .local v17, "userdata":[B
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v16, v0

    .line 1990
    .local v16, "userLength":I
    if-lez v16, :cond_2a

    .line 1991
    add-int/lit8 v18, v16, -0x2

    aget-byte v18, v17, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    int-to-char v4, v0

    .line 1992
    .local v4, "compChar":C
    add-int/lit8 v18, v16, -0x1

    aget-byte v18, v17, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    or-int v18, v18, v4

    move/from16 v0, v18

    int-to-char v4, v0

    .line 1994
    const v18, 0xd83d

    move/from16 v0, v18

    if-eq v4, v0, :cond_29

    const v18, 0xd83c

    move/from16 v0, v18

    if-ne v4, v0, :cond_2a

    .line 1995
    :cond_29
    const-string v18, "SmsMessage"

    const-string v19, "found emoji"

    invoke-static/range {v18 .. v19}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mlastByte:[B

    .line 1997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mlastByte:[B

    move-object/from16 v18, v0

    const/16 v19, 0x0

    add-int/lit8 v20, v16, -0x2

    aget-byte v20, v17, v20

    aput-byte v20, v18, v19

    .line 1998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mlastByte:[B

    move-object/from16 v18, v0

    const/16 v19, 0x1

    add-int/lit8 v20, v16, -0x1

    aget-byte v20, v17, v20

    aput-byte v20, v18, v19

    .line 1999
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsfourBytesUnicode:Z

    .line 2003
    .end local v4    # "compChar":C
    :cond_2a
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_c

    .line 2007
    .end local v16    # "userLength":I
    .end local v17    # "userdata":[B
    :pswitch_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataKSC5601(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->mMessageBody:Ljava/lang/String;

    goto/16 :goto_c

    .line 2013
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1c

    .line 2016
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move/from16 v18, v0

    const v19, 0xc00a

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1c

    .line 2017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mUserDataHeader:Lcom/android/internal/telephony/SmsHeader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSpecificTid(I)V

    goto/16 :goto_d

    .line 2031
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    move/from16 v18, v0

    and-int/lit8 v18, v18, 0x3

    packed-switch v18, :pswitch_data_3

    goto/16 :goto_e

    .line 2033
    :pswitch_a
    sget-object v18, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_e

    .line 2036
    :pswitch_b
    sget-object v18, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_1:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_e

    .line 2039
    :pswitch_c
    sget-object v18, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_e

    .line 2042
    :pswitch_d
    sget-object v18, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_3:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    goto/16 :goto_e

    .line 1705
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 1800
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    .line 1959
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 2031
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method getDataCodingScheme()I
    .locals 1

    .prologue
    .line 1367
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mDataCodingScheme:I

    return v0
.end method

.method public getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;
    .locals 1

    .prologue
    .line 2053
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    return-object v0
.end method

.method public getMessageIdentifier()I
    .locals 1

    .prologue
    .line 2057
    const/4 v0, 0x0

    return v0
.end method

.method public getMessagePriority()I
    .locals 1

    .prologue
    .line 2249
    const/4 v0, 0x0

    return v0
.end method

.method public getNumOfVoicemails()I
    .locals 2

    .prologue
    .line 2236
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2237
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2239
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    .line 2243
    :goto_0
    const-string v0, "SmsMessage"

    const-string v1, "CPHS voice mail message"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2245
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    return v0

    .line 2241
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mVoiceMailCount:I

    goto :goto_0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    .line 1359
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 1448
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mStatus:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWIClearMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1388
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-nez v0, :cond_0

    .line 1392
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMWISetMessage()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1399
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiSense:Z

    if-eqz v0, :cond_0

    .line 1403
    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mOriginatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isMwiDontStore()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1410
    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsMwi:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mMwiDontStore:Z

    if-eqz v2, :cond_1

    .line 1442
    :cond_0
    :goto_0
    return v0

    .line 1414
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1419
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_NotCountVoicemail"

    invoke-virtual {v2, v3, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1421
    const-string v2, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1424
    const-string v2, "RWC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TLS"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "MTA"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1425
    :cond_2
    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CPHS MWI messages in Canada "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " don\'t store"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1429
    :cond_3
    const-string v1, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1438
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_5
    move v0, v1

    .line 1442
    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    .line 1373
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    .line 1460
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mReplyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    .line 1454
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mIsStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    .prologue
    .line 189
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUsimDataDownload()Z
    .locals 2

    .prologue
    .line 2221
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    sget-object v1, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_2:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mProtocolIdentifier:I

    const/16 v1, 0x7c

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
