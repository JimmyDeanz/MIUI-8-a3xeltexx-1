.class public Landroid/telephony/SignalStrength;
.super Ljava/lang/Object;
.source "SignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field private static final DBG:Z = false

.field public static final INVALID:I = 0x7fffffff

.field private static final LOG_TAG:Ljava/lang/String; = "SignalStrength"

.field public static NUM_SIGNAL_STRENGTH_BINS:I = 0x0

.field private static final RSRP_THRESH_CHINA:[I

.field private static final RSRP_THRESH_LENIENT:[I

.field private static final RSRP_THRESH_STRICT:[I

.field private static final RSRP_THRESH_TYPE_STRICT:I = 0x0

.field public static final SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

.field public static final SIGNAL_STRENGTH_NONE_OR_UNKNOWN:I = 0x0

.field public static final SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field private isGsm:Z

.field private mCdmaDbm:I

.field private mCdmaEcio:I

.field private mEvdoDbm:I

.field private mEvdoEcio:I

.field private mEvdoSnr:I

.field private mGsmBitErrorRate:I

.field private mGsmSignalStrength:I

.field private mLteCqi:I

.field private mLteRsrp:I

.field private mLteRsrq:I

.field private mLteRssnr:I

.field private mLteSignalStrength:I

.field private mSignalBar:I

.field private mTdScdmaRscp:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 59
    invoke-static {}, Landroid/telephony/SignalStrength;->InitializeSignalBins()I

    move-result v0

    sput v0, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    .line 61
    invoke-static {}, Landroid/telephony/SignalStrength;->InitializeSignalNames()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 69
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/telephony/SignalStrength;->RSRP_THRESH_CHINA:[I

    .line 476
    new-instance v0, Landroid/telephony/SignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/SignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    .line 69
    :array_0
    .array-data 4
        -0x8c
        -0x73
        -0x69
        -0x5f
        -0x55
        -0x2c
    .end array-data

    .line 70
    :array_1
    .array-data 4
        -0x8c
        -0x80
        -0x76
        -0x6c
        -0x62
        -0x2c
    .end array-data

    .line 72
    :array_2
    .array-data 4
        -0x8c
        -0x7b
        -0x76
        -0x72
        -0x69
        -0x2c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 160
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 161
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 162
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 163
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 164
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 165
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 166
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 167
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 168
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 169
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 170
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 171
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 174
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 176
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZ)V
    .locals 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsmFlag"    # Z

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    .line 216
    invoke-virtual/range {v1 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 219
    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 220
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIIZI)V
    .locals 15
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "tdScdmaRscp"    # I
    .param p14, "gsmFlag"    # Z
    .param p15, "signalBar"    # I

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p14

    .line 264
    invoke-virtual/range {v1 .. v14}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 267
    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 268
    move/from16 v0, p15

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 269
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZ)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z

    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 235
    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIIZI)V
    .locals 0
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsmFlag"    # Z
    .param p14, "signalBar"    # I

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    invoke-virtual/range {p0 .. p13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 251
    iput p14, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 252
    return-void
.end method

.method public constructor <init>(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsmFlag"    # Z

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 284
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 406
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 407
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 408
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 410
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 412
    return-void

    .line 408
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    invoke-virtual {p0, p1}, Landroid/telephony/SignalStrength;->copyFrom(Landroid/telephony/SignalStrength;)V

    .line 295
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "gsmFlag"    # Z

    .prologue
    const/16 v2, 0x63

    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput v2, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 188
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 189
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 190
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 191
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 192
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 193
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 194
    iput v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 195
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 196
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 197
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 198
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 199
    iput v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 200
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 204
    return-void
.end method

.method private static InitializeSignalBins()I
    .locals 4

    .prologue
    .line 116
    const/4 v0, 0x5

    .line 117
    .local v0, "maxRSSI":I
    const-string v1, "1"

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SignalstrengthPolicy"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    :cond_0
    const/4 v0, 0x6

    .line 121
    :cond_1
    return v0
.end method

.method private static InitializeSignalNames()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 125
    const-string v2, "1"

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SignalstrengthPolicy"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    :cond_0
    const/4 v2, 0x6

    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "none"

    aput-object v2, v1, v5

    const-string/jumbo v2, "poor"

    aput-object v2, v1, v6

    const-string/jumbo v2, "moderate"

    aput-object v2, v1, v7

    const-string v2, "good"

    aput-object v2, v1, v8

    const-string v2, "great"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "excellent"

    aput-object v3, v1, v2

    .local v1, "vzwName":[Ljava/lang/String;
    move-object v0, v1

    .line 131
    .end local v1    # "vzwName":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 130
    :cond_1
    const/4 v2, 0x5

    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v2, "none"

    aput-object v2, v0, v5

    const-string/jumbo v2, "poor"

    aput-object v2, v0, v6

    const-string/jumbo v2, "moderate"

    aput-object v2, v0, v7

    const-string v2, "good"

    aput-object v2, v0, v8

    const-string v2, "great"

    aput-object v2, v0, v9

    .line 131
    .local v0, "defaultName":[Ljava/lang/String;
    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 1438
    const-string v0, "SignalStrength"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    return-void
.end method

.method public static makeSignalStrengthFromRilParcel(Landroid/os/Parcel;)Landroid/telephony/SignalStrength;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    .prologue
    .line 424
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 425
    .local v0, "ss":Landroid/telephony/SignalStrength;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 426
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 427
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 428
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 429
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 430
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 431
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 432
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 433
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 434
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 435
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 436
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 437
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 438
    return-object v0
.end method

.method public static newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    .locals 1
    .param p0, "m"    # Landroid/os/Bundle;

    .prologue
    .line 109
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    .line 110
    .local v0, "ret":Landroid/telephony/SignalStrength;
    invoke-direct {v0, p0}, Landroid/telephony/SignalStrength;->setFromNotifierBundle(Landroid/os/Bundle;)V

    .line 111
    return-object v0
.end method

.method private setFromNotifierBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1389
    const-string v0, "GsmSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 1390
    const-string v0, "GsmBitErrorRate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 1391
    const-string v0, "CdmaDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 1392
    const-string v0, "CdmaEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 1393
    const-string v0, "EvdoDbm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 1394
    const-string v0, "EvdoEcio"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 1395
    const-string v0, "EvdoSnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 1396
    const-string v0, "LteSignalStrength"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 1397
    const-string v0, "LteRsrp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 1398
    const-string v0, "LteRsrq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 1399
    const-string v0, "LteRssnr"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 1400
    const-string v0, "LteCqi"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 1401
    const-string v0, "TdScdma"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 1402
    const-string v0, "isGsm"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 1404
    const-string v0, "SignalBar"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 1406
    return-void
.end method


# virtual methods
.method protected copyFrom(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "s"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 368
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 369
    iget v0, p1, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 370
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 371
    iget v0, p1, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 372
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 373
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 374
    iget v0, p1, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 375
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 376
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 377
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 378
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 379
    iget v0, p1, Landroid/telephony/SignalStrength;->mLteCqi:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 380
    iget v0, p1, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 381
    iget-boolean v0, p1, Landroid/telephony/SignalStrength;->isGsm:Z

    iput-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 383
    iget v0, p1, Landroid/telephony/SignalStrength;->mSignalBar:I

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 385
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 468
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1329
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/SignalStrength;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1334
    .local v2, "s":Landroid/telephony/SignalStrength;
    if-nez p1, :cond_1

    .line 1338
    .end local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_0
    :goto_0
    return v3

    .line 1330
    :catch_0
    move-exception v1

    .line 1331
    .local v1, "ex":Ljava/lang/ClassCastException;
    goto :goto_0

    .line 1338
    .end local v1    # "ex":Ljava/lang/ClassCastException;
    .restart local v2    # "s":Landroid/telephony/SignalStrength;
    :cond_1
    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRsrq:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mLteCqi:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    if-ne v4, v5, :cond_0

    iget v4, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    iget v5, v2, Landroid/telephony/SignalStrength;->mSignalBar:I

    if-ne v4, v5, :cond_0

    iget-boolean v4, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    iget-boolean v5, v2, Landroid/telephony/SignalStrength;->isGsm:Z

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "m"    # Landroid/os/Bundle;

    .prologue
    .line 1415
    const-string v0, "GsmSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1416
    const-string v0, "GsmBitErrorRate"

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1417
    const-string v0, "CdmaDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1418
    const-string v0, "CdmaEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1419
    const-string v0, "EvdoDbm"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1420
    const-string v0, "EvdoEcio"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1421
    const-string v0, "EvdoSnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1422
    const-string v0, "LteSignalStrength"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1423
    const-string v0, "LteRsrp"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1424
    const-string v0, "LteRsrq"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1425
    const-string v0, "LteRssnr"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1426
    const-string v0, "LteCqi"

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1427
    const-string v0, "TdScdma"

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1428
    const-string v0, "isGsm"

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1430
    const-string v0, "SignalBar"

    iget v1, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1432
    return-void
.end method

.method public getAlternateLteLevel()I
    .locals 3

    .prologue
    .line 672
    const/4 v0, 0x0

    .line 674
    .local v0, "rsrpIconLevel":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x2c

    if-le v1, v2, :cond_1

    const/4 v0, -0x1

    .line 681
    :cond_0
    :goto_0
    return v0

    .line 675
    :cond_1
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x61

    if-lt v1, v2, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    .line 676
    :cond_2
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x69

    if-lt v1, v2, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    .line 677
    :cond_3
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x71

    if-lt v1, v2, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    .line 678
    :cond_4
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x78

    if-lt v1, v2, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    .line 679
    :cond_5
    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v2, -0x8c

    if-lt v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAsuLevel()I
    .locals 5

    .prologue
    .line 790
    const/4 v0, 0x0

    .line 791
    .local v0, "asuLevel":I
    iget-boolean v3, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v3, :cond_3

    .line 792
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v3

    const v4, 0x7fffffff

    if-ne v3, v4, :cond_2

    .line 794
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_1

    .line 795
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmAsuLevel()I

    move-result v0

    .line 828
    :cond_0
    :goto_0
    return v0

    .line 797
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaAsuLevel()I

    move-result v0

    goto :goto_0

    .line 800
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result v0

    goto :goto_0

    .line 803
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result v1

    .line 804
    .local v1, "cdmaAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoAsuLevel()I

    move-result v2

    .line 805
    .local v2, "evdoAsuLevel":I
    if-nez v2, :cond_4

    .line 807
    move v0, v1

    goto :goto_0

    .line 808
    :cond_4
    if-nez v1, :cond_5

    .line 810
    move v0, v2

    goto :goto_0

    .line 813
    :cond_5
    if-ge v1, v2, :cond_7

    move v0, v1

    .line 815
    :goto_1
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 816
    move v0, v2

    .line 818
    :cond_6
    const-string v3, "USC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 819
    invoke-static {}, Landroid/util/GeneralUtil;->isPhone()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 820
    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v2

    .line 813
    goto :goto_1

    .line 822
    :cond_8
    move v0, v2

    goto :goto_0
.end method

.method public getCdmaAsuLevel()I
    .locals 8

    .prologue
    const/16 v7, -0x5a

    const/16 v6, -0x64

    .line 999
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v1

    .line 1000
    .local v1, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v2

    .line 1004
    .local v2, "cdmaEcio":I
    const/16 v5, -0x4b

    if-lt v1, v5, :cond_0

    const/16 v0, 0x10

    .line 1012
    .local v0, "cdmaAsuLevel":I
    :goto_0
    if-lt v2, v7, :cond_5

    const/16 v3, 0x10

    .line 1019
    .local v3, "ecioAsuLevel":I
    :goto_1
    if-ge v0, v3, :cond_a

    move v4, v0

    .line 1021
    .local v4, "level":I
    :goto_2
    return v4

    .line 1005
    .end local v0    # "cdmaAsuLevel":I
    .end local v3    # "ecioAsuLevel":I
    .end local v4    # "level":I
    :cond_0
    const/16 v5, -0x52

    if-lt v1, v5, :cond_1

    const/16 v0, 0x8

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1006
    .end local v0    # "cdmaAsuLevel":I
    :cond_1
    if-lt v1, v7, :cond_2

    const/4 v0, 0x4

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1007
    .end local v0    # "cdmaAsuLevel":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v1, v5, :cond_3

    const/4 v0, 0x2

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1008
    .end local v0    # "cdmaAsuLevel":I
    :cond_3
    if-lt v1, v6, :cond_4

    const/4 v0, 0x1

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1009
    .end local v0    # "cdmaAsuLevel":I
    :cond_4
    const/16 v0, 0x63

    .restart local v0    # "cdmaAsuLevel":I
    goto :goto_0

    .line 1013
    :cond_5
    if-lt v2, v6, :cond_6

    const/16 v3, 0x8

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 1014
    .end local v3    # "ecioAsuLevel":I
    :cond_6
    const/16 v5, -0x73

    if-lt v2, v5, :cond_7

    const/4 v3, 0x4

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 1015
    .end local v3    # "ecioAsuLevel":I
    :cond_7
    const/16 v5, -0x82

    if-lt v2, v5, :cond_8

    const/4 v3, 0x2

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 1016
    .end local v3    # "ecioAsuLevel":I
    :cond_8
    const/16 v5, -0x96

    if-lt v2, v5, :cond_9

    const/4 v3, 0x1

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    .line 1017
    .end local v3    # "ecioAsuLevel":I
    :cond_9
    const/16 v3, 0x63

    .restart local v3    # "ecioAsuLevel":I
    goto :goto_1

    :cond_a
    move v4, v3

    .line 1019
    goto :goto_2
.end method

.method public getCdmaDbm()I
    .locals 1

    .prologue
    .line 580
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    return v0
.end method

.method public getCdmaEcio()I
    .locals 1

    .prologue
    .line 587
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    return v0
.end method

.method public getCdmaLevel()I
    .locals 9

    .prologue
    const/16 v8, -0x55

    const/16 v7, -0x5f

    .line 948
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 949
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaEcio()I

    move-result v1

    .line 953
    .local v1, "cdmaEcio":I
    const-string v5, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 955
    :cond_0
    if-lt v0, v8, :cond_5

    const/4 v3, 0x4

    .line 970
    .local v3, "levelDbm":I
    :goto_0
    const/16 v5, -0x5a

    if-lt v1, v5, :cond_e

    const/4 v4, 0x4

    .line 976
    .local v4, "levelEcio":I
    :goto_1
    if-ge v3, v4, :cond_12

    move v2, v3

    .line 977
    .local v2, "level":I
    :goto_2
    const-string v5, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 979
    :cond_1
    if-le v3, v4, :cond_13

    move v2, v3

    .line 983
    :cond_2
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "5"

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "5"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_SignalstrengthPolicy"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 986
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v5

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v2, v5, 0x4

    .line 990
    :cond_4
    return v2

    .line 956
    .end local v2    # "level":I
    .end local v3    # "levelDbm":I
    .end local v4    # "levelEcio":I
    :cond_5
    if-lt v0, v7, :cond_6

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 957
    .end local v3    # "levelDbm":I
    :cond_6
    const/16 v5, -0x66

    if-lt v0, v5, :cond_7

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 958
    .end local v3    # "levelDbm":I
    :cond_7
    const/16 v5, -0x6c

    if-lt v0, v5, :cond_8

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 959
    .end local v3    # "levelDbm":I
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 962
    .end local v3    # "levelDbm":I
    :cond_9
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_a

    const/4 v3, 0x4

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 963
    .end local v3    # "levelDbm":I
    :cond_a
    if-lt v0, v8, :cond_b

    const/4 v3, 0x3

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 964
    .end local v3    # "levelDbm":I
    :cond_b
    if-lt v0, v7, :cond_c

    const/4 v3, 0x2

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 965
    .end local v3    # "levelDbm":I
    :cond_c
    const/16 v5, -0x64

    if-lt v0, v5, :cond_d

    const/4 v3, 0x1

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 966
    .end local v3    # "levelDbm":I
    :cond_d
    const/4 v3, 0x0

    .restart local v3    # "levelDbm":I
    goto :goto_0

    .line 971
    :cond_e
    const/16 v5, -0x6e

    if-lt v1, v5, :cond_f

    const/4 v4, 0x3

    .restart local v4    # "levelEcio":I
    goto :goto_1

    .line 972
    .end local v4    # "levelEcio":I
    :cond_f
    const/16 v5, -0x82

    if-lt v1, v5, :cond_10

    const/4 v4, 0x2

    .restart local v4    # "levelEcio":I
    goto/16 :goto_1

    .line 973
    .end local v4    # "levelEcio":I
    :cond_10
    const/16 v5, -0x96

    if-lt v1, v5, :cond_11

    const/4 v4, 0x1

    .restart local v4    # "levelEcio":I
    goto/16 :goto_1

    .line 974
    .end local v4    # "levelEcio":I
    :cond_11
    const/4 v4, 0x0

    .restart local v4    # "levelEcio":I
    goto/16 :goto_1

    :cond_12
    move v2, v4

    .line 976
    goto/16 :goto_2

    .restart local v2    # "level":I
    :cond_13
    move v2, v4

    .line 979
    goto :goto_3
.end method

.method public getDbm()I
    .locals 6

    .prologue
    const/16 v5, -0x78

    .line 837
    const v1, 0x7fffffff

    .line 839
    .local v1, "dBm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 840
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 841
    const v3, 0x7fffffff

    if-ne v1, v3, :cond_0

    .line 842
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v3

    if-nez v3, :cond_2

    .line 843
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmDbm()I

    move-result v1

    :cond_0
    :goto_0
    move v0, v1

    .line 867
    :cond_1
    :goto_1
    return v0

    .line 845
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    goto :goto_0

    .line 849
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result v0

    .line 850
    .local v0, "cdmaDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v2

    .line 852
    .local v2, "evdoDbm":I
    const-string v3, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 853
    if-eq v2, v5, :cond_1

    move v0, v2

    goto :goto_1

    .line 855
    :cond_4
    const-string v3, "USC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 856
    invoke-static {}, Landroid/util/GeneralUtil;->isPhone()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 857
    if-ne v0, v5, :cond_5

    .end local v2    # "evdoDbm":I
    :goto_2
    move v0, v2

    goto :goto_1

    .restart local v2    # "evdoDbm":I
    :cond_5
    move v2, v0

    goto :goto_2

    .line 859
    :cond_6
    if-eq v2, v5, :cond_1

    move v0, v2

    goto :goto_1

    .line 863
    :cond_7
    if-eq v2, v5, :cond_1

    if-ne v0, v5, :cond_8

    move v0, v2

    goto :goto_1

    :cond_8
    if-lt v0, v2, :cond_1

    move v0, v2

    goto :goto_1
.end method

.method public getEvdoAsuLevel()I
    .locals 6

    .prologue
    .line 1080
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1081
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1085
    .local v1, "evdoSnr":I
    const/16 v5, -0x41

    if-lt v0, v5, :cond_0

    const/16 v3, 0x10

    .line 1092
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_5

    const/16 v4, 0x10

    .line 1099
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_a

    move v2, v3

    .line 1101
    .local v2, "level":I
    :goto_2
    return v2

    .line 1086
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_0
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_1

    const/16 v3, 0x8

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1087
    .end local v3    # "levelEvdoDbm":I
    :cond_1
    const/16 v5, -0x55

    if-lt v0, v5, :cond_2

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1088
    .end local v3    # "levelEvdoDbm":I
    :cond_2
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_3

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1089
    .end local v3    # "levelEvdoDbm":I
    :cond_3
    const/16 v5, -0x69

    if-lt v0, v5, :cond_4

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1090
    .end local v3    # "levelEvdoDbm":I
    :cond_4
    const/16 v3, 0x63

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1093
    :cond_5
    const/4 v5, 0x6

    if-lt v1, v5, :cond_6

    const/16 v4, 0x8

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1094
    .end local v4    # "levelEvdoSnr":I
    :cond_6
    const/4 v5, 0x5

    if-lt v1, v5, :cond_7

    const/4 v4, 0x4

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1095
    .end local v4    # "levelEvdoSnr":I
    :cond_7
    const/4 v5, 0x3

    if-lt v1, v5, :cond_8

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1096
    .end local v4    # "levelEvdoSnr":I
    :cond_8
    const/4 v5, 0x1

    if-lt v1, v5, :cond_9

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    .line 1097
    .end local v4    # "levelEvdoSnr":I
    :cond_9
    const/16 v4, 0x63

    .restart local v4    # "levelEvdoSnr":I
    goto :goto_1

    :cond_a
    move v2, v4

    .line 1099
    goto :goto_2
.end method

.method public getEvdoDbm()I
    .locals 1

    .prologue
    .line 594
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    return v0
.end method

.method public getEvdoEcio()I
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    return v0
.end method

.method public getEvdoLevel()I
    .locals 8

    .prologue
    .line 1030
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoDbm()I

    move-result v0

    .line 1031
    .local v0, "evdoDbm":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoSnr()I

    move-result v1

    .line 1035
    .local v1, "evdoSnr":I
    const-string v5, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1037
    :cond_0
    const/16 v5, -0x55

    if-lt v0, v5, :cond_5

    const/4 v3, 0x4

    .line 1051
    .local v3, "levelEvdoDbm":I
    :goto_0
    const/4 v5, 0x7

    if-lt v1, v5, :cond_e

    const/4 v4, 0x4

    .line 1057
    .local v4, "levelEvdoSnr":I
    :goto_1
    if-ge v3, v4, :cond_12

    move v2, v3

    .line 1058
    .local v2, "level":I
    :goto_2
    const-string v5, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1060
    :cond_1
    if-le v3, v4, :cond_13

    move v2, v3

    .line 1064
    :cond_2
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "5"

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "5"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_RIL_SignalstrengthPolicy"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1067
    :cond_3
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v5

    and-int/lit16 v5, v5, 0xf00

    shr-int/lit8 v2, v5, 0x8

    .line 1071
    :cond_4
    return v2

    .line 1038
    .end local v2    # "level":I
    .end local v3    # "levelEvdoDbm":I
    .end local v4    # "levelEvdoSnr":I
    :cond_5
    const/16 v5, -0x5f

    if-lt v0, v5, :cond_6

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1039
    .end local v3    # "levelEvdoDbm":I
    :cond_6
    const/16 v5, -0x66

    if-lt v0, v5, :cond_7

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1040
    .end local v3    # "levelEvdoDbm":I
    :cond_7
    const/16 v5, -0x6c

    if-lt v0, v5, :cond_8

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1041
    .end local v3    # "levelEvdoDbm":I
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1044
    .end local v3    # "levelEvdoDbm":I
    :cond_9
    const/16 v5, -0x41

    if-lt v0, v5, :cond_a

    const/4 v3, 0x4

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1045
    .end local v3    # "levelEvdoDbm":I
    :cond_a
    const/16 v5, -0x4b

    if-lt v0, v5, :cond_b

    const/4 v3, 0x3

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1046
    .end local v3    # "levelEvdoDbm":I
    :cond_b
    const/16 v5, -0x5a

    if-lt v0, v5, :cond_c

    const/4 v3, 0x2

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1047
    .end local v3    # "levelEvdoDbm":I
    :cond_c
    const/16 v5, -0x69

    if-lt v0, v5, :cond_d

    const/4 v3, 0x1

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1048
    .end local v3    # "levelEvdoDbm":I
    :cond_d
    const/4 v3, 0x0

    .restart local v3    # "levelEvdoDbm":I
    goto :goto_0

    .line 1052
    :cond_e
    const/4 v5, 0x5

    if-lt v1, v5, :cond_f

    const/4 v4, 0x3

    .restart local v4    # "levelEvdoSnr":I
    goto/16 :goto_1

    .line 1053
    .end local v4    # "levelEvdoSnr":I
    :cond_f
    const/4 v5, 0x3

    if-lt v1, v5, :cond_10

    const/4 v4, 0x2

    .restart local v4    # "levelEvdoSnr":I
    goto/16 :goto_1

    .line 1054
    .end local v4    # "levelEvdoSnr":I
    :cond_10
    const/4 v5, 0x1

    if-lt v1, v5, :cond_11

    const/4 v4, 0x1

    .restart local v4    # "levelEvdoSnr":I
    goto/16 :goto_1

    .line 1055
    .end local v4    # "levelEvdoSnr":I
    :cond_11
    const/4 v4, 0x0

    .restart local v4    # "levelEvdoSnr":I
    goto/16 :goto_1

    :cond_12
    move v2, v4

    .line 1057
    goto/16 :goto_2

    .restart local v2    # "level":I
    :cond_13
    move v2, v4

    .line 1060
    goto :goto_3
.end method

.method public getEvdoSnr()I
    .locals 1

    .prologue
    .line 608
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    return v0
.end method

.method public getGsmAsuLevel()I
    .locals 1

    .prologue
    .line 937
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 939
    .local v0, "level":I
    return v0
.end method

.method public getGsmBitErrorRate()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    return v0
.end method

.method public getGsmDbm()I
    .locals 5

    .prologue
    const/4 v3, -0x1

    .line 878
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v2

    .line 879
    .local v2, "gsmSignalStrength":I
    const/16 v4, 0x63

    if-ne v2, v4, :cond_0

    move v0, v3

    .line 880
    .local v0, "asu":I
    :goto_0
    if-eq v0, v3, :cond_1

    .line 881
    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v1, v3, -0x71

    .line 886
    .local v1, "dBm":I
    :goto_1
    return v1

    .end local v0    # "asu":I
    .end local v1    # "dBm":I
    :cond_0
    move v0, v2

    .line 879
    goto :goto_0

    .line 883
    .restart local v0    # "asu":I
    :cond_1
    const/4 v1, -0x1

    .restart local v1    # "dBm":I
    goto :goto_1
.end method

.method public getGsmLevel()I
    .locals 3

    .prologue
    .line 901
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v0

    .line 902
    .local v0, "asu":I
    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    const/16 v2, 0x63

    if-ne v0, v2, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 908
    .local v1, "level":I
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isCdmaRatOnAllRatSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 909
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v2

    and-int/lit8 v1, v2, 0xf

    .line 914
    :cond_1
    return v1

    .line 903
    .end local v1    # "level":I
    :cond_2
    const/16 v2, 0xc

    if-lt v0, v2, :cond_3

    const/4 v1, 0x4

    .restart local v1    # "level":I
    goto :goto_0

    .line 904
    .end local v1    # "level":I
    :cond_3
    const/16 v2, 0x8

    if-lt v0, v2, :cond_4

    const/4 v1, 0x3

    .restart local v1    # "level":I
    goto :goto_0

    .line 905
    .end local v1    # "level":I
    :cond_4
    const/4 v2, 0x5

    if-lt v0, v2, :cond_5

    const/4 v1, 0x2

    .restart local v1    # "level":I
    goto :goto_0

    .line 906
    .end local v1    # "level":I
    :cond_5
    const/4 v1, 0x1

    .restart local v1    # "level":I
    goto :goto_0
.end method

.method public getGsmSignalBar()I
    .locals 1

    .prologue
    .line 780
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v0

    return v0
.end method

.method public getGsmSignalStrength()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    return v0
.end method

.method public getLevel()I
    .locals 8

    .prologue
    const/4 v7, 0x2

    .line 693
    const/4 v4, 0x0

    .line 695
    .local v4, "level":I
    iget-boolean v5, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v5, :cond_5

    .line 696
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v4

    .line 697
    if-nez v4, :cond_0

    .line 698
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaLevel()I

    move-result v4

    .line 699
    if-nez v4, :cond_0

    .line 700
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getGsmLevel()I

    move-result v4

    .line 703
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_CdmalteTelephonyCommon"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 705
    const/4 v2, 0x0

    .line 706
    .local v2, "displayCdmaLevel":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_NwCdmaCsfb"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v4, :cond_1

    .line 708
    const/4 v2, 0x1

    .line 710
    :cond_1
    const-string v5, "gsm.current.phone-type"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 711
    .local v1, "currentPhone":I
    if-ne v1, v7, :cond_2

    if-nez v4, :cond_2

    .line 712
    const/4 v2, 0x1

    .line 715
    :cond_2
    if-eqz v2, :cond_3

    .line 716
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v4

    .line 754
    .end local v1    # "currentPhone":I
    .end local v2    # "displayCdmaLevel":Z
    :cond_3
    :goto_0
    sget v5, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    if-lt v4, v5, :cond_4

    .line 755
    sget v5, Landroid/telephony/SignalStrength;->NUM_SIGNAL_STRENGTH_BINS:I

    add-int/lit8 v4, v5, -0x1

    .line 759
    :cond_4
    return v4

    .line 720
    :cond_5
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getCdmaLevel()I

    move-result v0

    .line 721
    .local v0, "cdmaLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getEvdoLevel()I

    move-result v3

    .line 722
    .local v3, "evdoLevel":I
    if-nez v3, :cond_7

    .line 724
    move v4, v0

    .line 747
    :cond_6
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_NwCdmaCsfb"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v4, :cond_3

    .line 749
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteLevel()I

    move-result v4

    goto :goto_0

    .line 725
    :cond_7
    if-nez v0, :cond_8

    .line 727
    move v4, v3

    goto :goto_1

    .line 729
    :cond_8
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isCdmaRatOnAllRatSupport()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 730
    move v4, v0

    .line 736
    :goto_2
    const-string v5, "VZW"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 737
    move v4, v3

    .line 739
    :cond_9
    const-string v5, "USC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 740
    invoke-static {}, Landroid/util/GeneralUtil;->isPhone()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 741
    move v4, v0

    goto :goto_1

    .line 733
    :cond_a
    if-ge v0, v3, :cond_b

    move v4, v0

    :goto_3
    goto :goto_2

    :cond_b
    move v4, v3

    goto :goto_3

    .line 743
    :cond_c
    move v4, v3

    goto :goto_1
.end method

.method public getLteAsuLevel()I
    .locals 3

    .prologue
    .line 1221
    const/16 v0, 0x63

    .line 1222
    .local v0, "lteAsuLevel":I
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v1

    .line 1236
    .local v1, "lteDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/16 v0, 0xff

    .line 1239
    :goto_0
    return v0

    .line 1237
    :cond_0
    add-int/lit16 v0, v1, 0x8c

    goto :goto_0
.end method

.method public getLteCqi()I
    .locals 1

    .prologue
    .line 633
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    return v0
.end method

.method public getLteDbm()I
    .locals 1

    .prologue
    .line 1110
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteLevel()I
    .locals 11

    .prologue
    const/16 v10, 0x12c

    const/16 v9, 0xa

    const/16 v8, -0x1e

    const/16 v7, -0xc8

    .line 1125
    const/4 v2, 0x0

    .local v2, "rssiIconLevel":I
    const/4 v0, -0x1

    .local v0, "rsrpIconLevel":I
    const/4 v3, -0x1

    .line 1127
    .local v3, "snrIconLevel":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e0091

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 1130
    .local v1, "rsrpThreshType":I
    if-nez v1, :cond_6

    .line 1131
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_STRICT:[I

    .line 1136
    .local v4, "threshRsrp":[I
    :goto_0
    const-string v5, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isCdmaRatOnAllRatSupport()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1137
    :cond_0
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_CHINA:[I

    .line 1140
    :cond_1
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x5

    aget v6, v4, v6

    if-le v5, v6, :cond_7

    const/4 v0, -0x1

    .line 1153
    :cond_2
    :goto_1
    const-string v5, "CTC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isCdmaRatOnAllRatSupport()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1154
    :cond_3
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-le v5, v10, :cond_c

    const/4 v3, -0x1

    .line 1175
    :cond_4
    :goto_2
    const-string v5, "USC"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {}, Landroid/util/GeneralUtil;->isPhone()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1176
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v5

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v0, v5, 0x4

    .line 1182
    :cond_5
    :goto_3
    return v0

    .line 1133
    .end local v4    # "threshRsrp":[I
    :cond_6
    sget-object v4, Landroid/telephony/SignalStrength;->RSRP_THRESH_LENIENT:[I

    .restart local v4    # "threshRsrp":[I
    goto :goto_0

    .line 1141
    :cond_7
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x4

    aget v6, v4, v6

    if-lt v5, v6, :cond_8

    const/4 v0, 0x4

    goto :goto_1

    .line 1142
    :cond_8
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x3

    aget v6, v4, v6

    if-lt v5, v6, :cond_9

    const/4 v0, 0x3

    goto :goto_1

    .line 1143
    :cond_9
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x2

    aget v6, v4, v6

    if-lt v5, v6, :cond_a

    const/4 v0, 0x2

    goto :goto_1

    .line 1144
    :cond_a
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x1

    aget v6, v4, v6

    if-lt v5, v6, :cond_b

    const/4 v0, 0x1

    goto :goto_1

    .line 1145
    :cond_b
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/4 v6, 0x0

    aget v6, v4, v6

    if-lt v5, v6, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 1155
    :cond_c
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x5a

    if-lt v5, v6, :cond_d

    const/4 v3, 0x4

    goto :goto_2

    .line 1156
    :cond_d
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-lt v5, v9, :cond_e

    const/4 v3, 0x3

    goto :goto_2

    .line 1157
    :cond_e
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-lt v5, v8, :cond_f

    const/4 v3, 0x2

    goto :goto_2

    .line 1158
    :cond_f
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, -0x32

    if-lt v5, v6, :cond_10

    const/4 v3, 0x1

    goto :goto_2

    .line 1159
    :cond_10
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-lt v5, v7, :cond_4

    .line 1160
    const/4 v3, 0x0

    goto :goto_2

    .line 1162
    :cond_11
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-le v5, v10, :cond_12

    const/4 v3, -0x1

    goto :goto_2

    .line 1163
    :cond_12
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x82

    if-lt v5, v6, :cond_13

    const/4 v3, 0x4

    goto :goto_2

    .line 1164
    :cond_13
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v6, 0x2d

    if-lt v5, v6, :cond_14

    const/4 v3, 0x3

    goto/16 :goto_2

    .line 1165
    :cond_14
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-lt v5, v9, :cond_15

    const/4 v3, 0x2

    goto/16 :goto_2

    .line 1166
    :cond_15
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-lt v5, v8, :cond_16

    const/4 v3, 0x1

    goto/16 :goto_2

    .line 1167
    :cond_16
    iget v5, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    if-lt v5, v7, :cond_4

    .line 1168
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1179
    :cond_17
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isCdmaRatOnAllRatSupport()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1180
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v5

    const v6, 0xf000

    and-int/2addr v5, v6

    shr-int/lit8 v0, v5, 0xc

    goto/16 :goto_3
.end method

.method public getLteRsrp()I
    .locals 1

    .prologue
    .line 618
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    return v0
.end method

.method public getLteRsrq()I
    .locals 1

    .prologue
    .line 623
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    return v0
.end method

.method public getLteRssnr()I
    .locals 1

    .prologue
    .line 628
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    return v0
.end method

.method public getLteSignalStrength()I
    .locals 1

    .prologue
    .line 613
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    return v0
.end method

.method public getSglteGsmLevel()I
    .locals 1

    .prologue
    .line 919
    const/4 v0, 0x0

    return v0
.end method

.method public getSglteRssiDisplayNum()I
    .locals 1

    .prologue
    .line 924
    const/4 v0, 0x0

    return v0
.end method

.method public getSignalBar()I
    .locals 3

    .prologue
    .line 769
    const-string/jumbo v1, "ril.dbg.SignalBar"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 770
    .local v0, "dbgBar":I
    if-lez v0, :cond_0

    .line 771
    .end local v0    # "dbgBar":I
    :goto_0
    return v0

    .restart local v0    # "dbgBar":I
    :cond_0
    iget v1, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    if-ltz v1, :cond_1

    iget v1, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getTdScdmaAsuLevel()I
    .locals 3

    .prologue
    .line 1294
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1297
    .local v1, "tdScdmaDbm":I
    const v2, 0x7fffffff

    if-ne v1, v2, :cond_0

    const/4 v0, 0x0

    .line 1300
    .local v0, "tdScdmaAsuLevel":I
    :goto_0
    return v0

    .line 1298
    .end local v0    # "tdScdmaAsuLevel":I
    :cond_0
    add-int/lit8 v0, v1, 0x78

    .restart local v0    # "tdScdmaAsuLevel":I
    goto :goto_0
.end method

.method public getTdScdmaDbm()I
    .locals 1

    .prologue
    .line 1255
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    return v0
.end method

.method public getTdScdmaLevel()I
    .locals 3

    .prologue
    .line 1267
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getTdScdmaDbm()I

    move-result v1

    .line 1270
    .local v1, "tdScdmaDbm":I
    const/16 v2, -0x19

    if-gt v1, v2, :cond_0

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    .line 1271
    :cond_0
    const/4 v0, 0x0

    .line 1278
    .local v0, "level":I
    :goto_0
    if-eqz v0, :cond_1

    .line 1280
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isCdmaRatOnAllRatSupport()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1281
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->getSignalBar()I

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 1285
    :cond_1
    return v0

    .line 1272
    .end local v0    # "level":I
    :cond_2
    const/16 v2, -0x58

    if-lt v1, v2, :cond_3

    const/4 v0, 0x4

    .restart local v0    # "level":I
    goto :goto_0

    .line 1273
    .end local v0    # "level":I
    :cond_3
    const/16 v2, -0x5c

    if-lt v1, v2, :cond_4

    const/4 v0, 0x3

    .restart local v0    # "level":I
    goto :goto_0

    .line 1274
    .end local v0    # "level":I
    :cond_4
    const/16 v2, -0x61

    if-lt v1, v2, :cond_5

    const/4 v0, 0x2

    .restart local v0    # "level":I
    goto :goto_0

    .line 1275
    .end local v0    # "level":I
    :cond_5
    const/16 v2, -0x66

    if-lt v1, v2, :cond_6

    const/4 v0, 0x1

    .restart local v0    # "level":I
    goto :goto_0

    .line 1276
    .end local v0    # "level":I
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "level":I
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1308
    const/16 v0, 0x1f

    .line 1309
    .local v0, "primeNum":I
    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    mul-int/2addr v1, v0

    iget v2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    iget v2, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-boolean v1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int/2addr v1, v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(IIIIIIIIIIIIZ)V
    .locals 1
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "lteSignalStrength"    # I
    .param p9, "lteRsrp"    # I
    .param p10, "lteRsrq"    # I
    .param p11, "lteRssnr"    # I
    .param p12, "lteCqi"    # I
    .param p13, "gsm"    # Z

    .prologue
    .line 344
    iput p1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 345
    iput p2, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 346
    iput p3, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 347
    iput p4, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 348
    iput p5, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 349
    iput p6, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 350
    iput p7, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 351
    iput p8, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 352
    iput p9, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 353
    iput p10, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 354
    iput p11, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 355
    iput p12, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    .line 356
    const v0, 0x7fffffff

    iput v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 357
    iput-boolean p13, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 362
    return-void
.end method

.method public initialize(IIIIIIIZ)V
    .locals 14
    .param p1, "gsmSignalStrength"    # I
    .param p2, "gsmBitErrorRate"    # I
    .param p3, "cdmaDbm"    # I
    .param p4, "cdmaEcio"    # I
    .param p5, "evdoDbm"    # I
    .param p6, "evdoEcio"    # I
    .param p7, "evdoSnr"    # I
    .param p8, "gsm"    # Z

    .prologue
    .line 315
    const/16 v8, 0x63

    const v9, 0x7fffffff

    const v10, 0x7fffffff

    const v11, 0x7fffffff

    const v12, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v13, p8

    invoke-virtual/range {v0 .. v13}, Landroid/telephony/SignalStrength;->initialize(IIIIIIIIIIIIZ)V

    .line 318
    return-void
.end method

.method public isCdmaRatOnAllRatSupport()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "ret":Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v1

    .line 142
    :cond_1
    const-string v2, "5"

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "5"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_RIL_SignalstrengthPolicy"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v1

    if-nez v1, :cond_3

    .line 147
    const/4 v0, 0x1

    :cond_3
    move v1, v0

    .line 149
    goto :goto_0
.end method

.method public isGsm()Z
    .locals 1

    .prologue
    .line 1246
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    return v0
.end method

.method public setGsm(Z)V
    .locals 0
    .param p1, "gsmFlag"    # Z

    .prologue
    .line 558
    iput-boolean p1, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    .line 559
    return-void
.end method

.method public setSignalBars()V
    .locals 0

    .prologue
    .line 641
    return-void
.end method

.method public setSignalBarsLTE()V
    .locals 0

    .prologue
    .line 648
    return-void
.end method

.method public setSignalBarsLTE(IIZ)V
    .locals 0
    .param p1, "rilRadioTechnology"    # I
    .param p2, "ssRilRadioTechnology"    # I
    .param p3, "isVolteSupported"    # Z

    .prologue
    .line 662
    return-void
.end method

.method public setSignalBarsVolte(Z)V
    .locals 0
    .param p1, "isVolteSupported"    # Z

    .prologue
    .line 655
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignalStrength: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const-string v0, "gsm|lte"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "cdma"

    goto :goto_0
.end method

.method public validateInput()V
    .locals 7

    .prologue
    const/16 v3, -0xa0

    const/16 v1, 0x63

    const/4 v4, -0x1

    const/16 v2, -0x78

    const v5, 0x7fffffff

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Signal before validate="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Landroid/telephony/SignalStrength;->isCdmaRatOnAllRatSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    if-ne v0, v4, :cond_5

    .line 506
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 507
    iput v1, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    .line 516
    :cond_0
    :goto_0
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    if-ltz v0, :cond_6

    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    :goto_1
    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    .line 519
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-lez v0, :cond_7

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    neg-int v0, v0

    :goto_2
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    .line 522
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    if-ne v0, v2, :cond_9

    .line 523
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-lez v0, :cond_8

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v0, v0

    :goto_3
    iput v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    .line 529
    :goto_4
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    if-lez v0, :cond_1

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    neg-int v2, v0

    :cond_1
    iput v2, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    .line 530
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    if-ltz v0, :cond_b

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    neg-int v0, v0

    :goto_5
    iput v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    .line 531
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    if-lez v0, :cond_2

    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    const/16 v2, 0x8

    if-gt v0, v2, :cond_2

    iget v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    :cond_2
    iput v4, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    .line 534
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    if-ltz v0, :cond_3

    iget v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    :cond_3
    iput v1, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    .line 535
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x2c

    if-lt v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    const/16 v1, 0x8c

    if-gt v0, v1, :cond_c

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    neg-int v0, v0

    :goto_6
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    .line 536
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_d

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    const/16 v1, 0x14

    if-gt v0, v1, :cond_d

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    neg-int v0, v0

    :goto_7
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    .line 537
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, -0xc8

    if-lt v0, v1, :cond_e

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    const/16 v1, 0x12c

    if-gt v0, v1, :cond_e

    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    :goto_8
    iput v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    .line 540
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_4

    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    neg-int v5, v0

    :cond_4
    iput v5, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Signal after validate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SignalStrength;->log(Ljava/lang/String;)V

    .line 547
    return-void

    .line 509
    :cond_5
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    const v6, 0xffff00

    and-int/2addr v0, v6

    shr-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    .line 510
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 516
    goto/16 :goto_1

    :cond_7
    move v0, v2

    .line 519
    goto/16 :goto_2

    :cond_8
    move v0, v3

    .line 523
    goto/16 :goto_3

    .line 525
    :cond_9
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    if-ltz v0, :cond_a

    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    neg-int v3, v0

    :cond_a
    iput v3, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    goto/16 :goto_4

    :cond_b
    move v0, v4

    .line 530
    goto/16 :goto_5

    :cond_c
    move v0, v5

    .line 535
    goto :goto_6

    :cond_d
    move v0, v5

    .line 536
    goto :goto_7

    :cond_e
    move v0, v5

    .line 537
    goto :goto_8
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 445
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget v0, p0, Landroid/telephony/SignalStrength;->mGsmBitErrorRate:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    iget v0, p0, Landroid/telephony/SignalStrength;->mCdmaEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 450
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoEcio:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget v0, p0, Landroid/telephony/SignalStrength;->mEvdoSnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteSignalStrength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRsrq:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteRssnr:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget v0, p0, Landroid/telephony/SignalStrength;->mLteCqi:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 457
    iget v0, p0, Landroid/telephony/SignalStrength;->mTdScdmaRscp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 458
    iget-boolean v0, p0, Landroid/telephony/SignalStrength;->isGsm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 460
    iget v0, p0, Landroid/telephony/SignalStrength;->mSignalBar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    return-void

    .line 458
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
