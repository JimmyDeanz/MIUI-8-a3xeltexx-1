.class public Landroid/telephony/SmsCbCmasInfo;
.super Ljava/lang/Object;
.source "SmsCbCmasInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CMAS_AMBER:I = 0x1003

.field public static final CMAS_CATEGORY_CBRNE:I = 0xa

.field public static final CMAS_CATEGORY_ENV:I = 0x7

.field public static final CMAS_CATEGORY_FIRE:I = 0x5

.field public static final CMAS_CATEGORY_GEO:I = 0x0

.field public static final CMAS_CATEGORY_HEALTH:I = 0x6

.field public static final CMAS_CATEGORY_INFRA:I = 0x9

.field public static final CMAS_CATEGORY_MET:I = 0x1

.field public static final CMAS_CATEGORY_OTHER:I = 0xb

.field public static final CMAS_CATEGORY_RESCUE:I = 0x4

.field public static final CMAS_CATEGORY_SAFETY:I = 0x2

.field public static final CMAS_CATEGORY_SECURITY:I = 0x3

.field public static final CMAS_CATEGORY_TRANSPORT:I = 0x8

.field public static final CMAS_CATEGORY_UNKNOWN:I = -0x1

.field public static final CMAS_CERTAINTY_LIKELY:I = 0x1

.field public static final CMAS_CERTAINTY_OBSERVED:I = 0x0

.field public static final CMAS_CERTAINTY_UNKNOWN:I = -0x1

.field public static final CMAS_CLASS_CHILD_ABDUCTION_EMERGENCY:I = 0x3

.field public static final CMAS_CLASS_CMAS_EXERCISE:I = 0x5

.field public static final CMAS_CLASS_EXTREME_THREAT:I = 0x1

.field public static final CMAS_CLASS_OPERATOR_DEFINED_USE:I = 0x6

.field public static final CMAS_CLASS_PRESIDENTIAL_LEVEL_ALERT:I = 0x0

.field public static final CMAS_CLASS_REQUIRED_MONTHLY_TEST:I = 0x4

.field public static final CMAS_CLASS_SEVERE_THREAT:I = 0x2

.field public static final CMAS_CLASS_UNKNOWN:I = -0x1

.field public static final CMAS_RESPONSE_TYPE_ASSESS:I = 0x6

.field public static final CMAS_RESPONSE_TYPE_AVOID:I = 0x5

.field public static final CMAS_RESPONSE_TYPE_EVACUATE:I = 0x1

.field public static final CMAS_RESPONSE_TYPE_EXECUTE:I = 0x3

.field public static final CMAS_RESPONSE_TYPE_MONITOR:I = 0x4

.field public static final CMAS_RESPONSE_TYPE_NONE:I = 0x7

.field public static final CMAS_RESPONSE_TYPE_PREPARE:I = 0x2

.field public static final CMAS_RESPONSE_TYPE_SHELTER:I = 0x0

.field public static final CMAS_RESPONSE_TYPE_UNKNOWN:I = -0x1

.field public static final CMAS_SERVICE_EXTREME_THREAT_LIFE_PROPERTY:I = 0x1001

.field public static final CMAS_SERVICE_PRESIDENTIAL_LEVEL_ALERT:I = 0x1000

.field public static final CMAS_SERVICE_SEVERE_THREAT_LIFE_PROPERTY:I = 0x1002

.field public static final CMAS_SEVERITY_EXTREME:I = 0x0

.field public static final CMAS_SEVERITY_SEVERE:I = 0x1

.field public static final CMAS_SEVERITY_UNKNOWN:I = -0x1

.field public static final CMAS_TEST_MESSAGE:I = 0x1004

.field public static final CMAS_URGENCY_EXPECTED:I = 0x1

.field public static final CMAS_URGENCY_IMMEDIATE:I = 0x0

.field public static final CMAS_URGENCY_UNKNOWN:I = -0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SmsCbCmasInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final EUALERT_CLASS_EU_INFO:I = 0x7

.field private static final LOG_TAG:Ljava/lang/String; = "SmsCbCmasInfo"


# instance fields
.field private mAlertHandling:I

.field private mCategory:I

.field private mCertainty:I

.field private mLanguage:I

.field private final mMessageClass:I

.field private mMessageID:I

.field private mMsgExpires:J

.field private mRecordType:I

.field private mResponseType:I

.field private mSeverity:I

.field private mUrgency:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 506
    new-instance v0, Landroid/telephony/SmsCbCmasInfo$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbCmasInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbCmasInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 3
    .param p1, "messageClass"    # I
    .param p2, "category"    # I
    .param p3, "responseType"    # I
    .param p4, "severity"    # I
    .param p5, "urgency"    # I
    .param p6, "certainty"    # I

    .prologue
    const/4 v2, 0x0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput p1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 267
    iput p2, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    .line 268
    iput p3, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    .line 269
    iput p4, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    .line 270
    iput p5, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    .line 271
    iput p6, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    .line 273
    iput v2, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I

    .line 274
    iput v2, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageID:I

    .line 275
    iput v2, p0, Landroid/telephony/SmsCbCmasInfo;->mAlertHandling:I

    .line 276
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMsgExpires:J

    .line 277
    iput v2, p0, Landroid/telephony/SmsCbCmasInfo;->mLanguage:I

    .line 279
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0
    .param p1, "messageClass"    # I
    .param p2, "category"    # I
    .param p3, "responseType"    # I
    .param p4, "severity"    # I
    .param p5, "urgency"    # I
    .param p6, "certainty"    # I
    .param p7, "recordTypeAll"    # I

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput p1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 286
    iput p2, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    .line 287
    iput p3, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    .line 288
    iput p4, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    .line 289
    iput p5, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    .line 290
    iput p6, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    .line 291
    iput p7, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I

    .line 292
    return-void
.end method

.method public constructor <init>(IIIIIIIIJII)V
    .locals 1
    .param p1, "messageClass"    # I
    .param p2, "category"    # I
    .param p3, "responseType"    # I
    .param p4, "severity"    # I
    .param p5, "urgency"    # I
    .param p6, "certainty"    # I
    .param p7, "messageID"    # I
    .param p8, "alertHandling"    # I
    .param p9, "msgExpires"    # J
    .param p11, "language"    # I
    .param p12, "recordTypeAll"    # I

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput p1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 310
    iput p2, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    .line 311
    iput p3, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    .line 312
    iput p4, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    .line 313
    iput p5, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    .line 314
    iput p6, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    .line 315
    iput p7, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageID:I

    .line 316
    iput p8, p0, Landroid/telephony/SmsCbCmasInfo;->mAlertHandling:I

    .line 317
    iput-wide p9, p0, Landroid/telephony/SmsCbCmasInfo;->mMsgExpires:J

    .line 318
    iput p11, p0, Landroid/telephony/SmsCbCmasInfo;->mLanguage:I

    .line 319
    iput p12, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I

    .line 320
    return-void
.end method

.method public constructor <init>(IIIJII)V
    .locals 0
    .param p1, "messageClass"    # I
    .param p2, "messageID"    # I
    .param p3, "alertHandling"    # I
    .param p4, "msgExpires"    # J
    .param p6, "language"    # I
    .param p7, "recordTypeAll"    # I

    .prologue
    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput p1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 298
    iput p2, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageID:I

    .line 299
    iput p3, p0, Landroid/telephony/SmsCbCmasInfo;->mAlertHandling:I

    .line 300
    iput-wide p4, p0, Landroid/telephony/SmsCbCmasInfo;->mMsgExpires:J

    .line 301
    iput p6, p0, Landroid/telephony/SmsCbCmasInfo;->mLanguage:I

    .line 302
    iput p7, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I

    .line 303
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageID:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mLanguage:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mAlertHandling:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMsgExpires:J

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I

    .line 339
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 500
    const/4 v0, 0x0

    return v0
.end method

.method public getAlertHandling()I
    .locals 1

    .prologue
    .line 427
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mAlertHandling:I

    return v0
.end method

.method public getCMASRecordTypeFirstExists()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 456
    :try_start_0
    iget v2, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 458
    :cond_0
    :goto_0
    return v1

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCMASRecordTypeSecondExists()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 464
    :try_start_0
    iget v2, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 466
    :cond_0
    :goto_0
    return v1

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCMASRecordTypeThirdExists()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 473
    :try_start_0
    iget v2, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 475
    :cond_0
    :goto_0
    return v1

    .line 474
    :catch_0
    move-exception v0

    .line 475
    .local v0, "e":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getCMASRecordTypeZeroExists()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 448
    :try_start_0
    iget v3, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_0

    .line 450
    :goto_0
    return v1

    :cond_0
    move v1, v2

    .line 448
    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    move v1, v2

    .line 450
    goto :goto_0
.end method

.method public getCategory()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    return v0
.end method

.method public getCertainty()I
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    return v0
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    .line 442
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mLanguage:I

    return v0
.end method

.method public getMessageClass()I
    .locals 1

    .prologue
    .line 371
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    return v0
.end method

.method public getMessageID()I
    .locals 1

    .prologue
    .line 422
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageID:I

    return v0
.end method

.method public getMsgExpires()J
    .locals 4

    .prologue
    .line 433
    :try_start_0
    iget-wide v2, p0, Landroid/telephony/SmsCbCmasInfo;->mMsgExpires:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_0
    return-wide v2

    .line 434
    :catch_0
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SmsCbCmasInfo"

    const-string v2, "Null pointer exception in getMsgExpires"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getResponseType()I
    .locals 1

    .prologue
    .line 389
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    return v0
.end method

.method public getSeverity()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    return v0
.end method

.method public getUrgency()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbCmasInfo{messageClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", severity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", urgency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", certainty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recordType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", alertHandling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mAlertHandling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mLanguage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMsgExpires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/telephony/SmsCbCmasInfo;->mMsgExpires:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 350
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 352
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 353
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 354
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 355
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 358
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mLanguage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 359
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mAlertHandling:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget-wide v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMsgExpires:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 361
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mRecordType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    return-void
.end method
