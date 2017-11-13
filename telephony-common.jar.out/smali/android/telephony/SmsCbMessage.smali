.class public Landroid/telephony/SmsCbMessage;
.super Ljava/lang/Object;
.source "SmsCbMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SmsCbMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final GEOGRAPHICAL_SCOPE_CELL_WIDE:I = 0x3

.field public static final GEOGRAPHICAL_SCOPE_CELL_WIDE_IMMEDIATE:I = 0x0

.field public static final GEOGRAPHICAL_SCOPE_LA_WIDE:I = 0x2

.field public static final GEOGRAPHICAL_SCOPE_PLMN_WIDE:I = 0x1

.field protected static final LOG_TAG:Ljava/lang/String; = "SMSCB"

.field public static final MESSAGE_FORMAT_3GPP:I = 0x1

.field public static final MESSAGE_FORMAT_3GPP2:I = 0x2

.field public static final MESSAGE_PRIORITY_EMERGENCY:I = 0x3

.field public static final MESSAGE_PRIORITY_INTERACTIVE:I = 0x1

.field public static final MESSAGE_PRIORITY_NORMAL:I = 0x0

.field public static final MESSAGE_PRIORITY_URGENT:I = 0x2


# instance fields
.field private final mBody:Ljava/lang/String;

.field private final mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

.field private final mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

.field private final mGeographicalScope:I

.field private final mLanguage:Ljava/lang/String;

.field private final mLocation:Landroid/telephony/SmsCbLocation;

.field private final mMessageFormat:I

.field private final mPriority:I

.field private final mSerialNumber:I

.field private final mServiceCategory:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 237
    new-instance v0, Landroid/telephony/SmsCbMessage$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbMessage$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIILandroid/telephony/SmsCbLocation;ILjava/lang/String;Ljava/lang/String;ILandroid/telephony/SmsCbEtwsInfo;Landroid/telephony/SmsCbCmasInfo;)V
    .locals 0
    .param p1, "messageFormat"    # I
    .param p2, "geographicalScope"    # I
    .param p3, "serialNumber"    # I
    .param p4, "location"    # Landroid/telephony/SmsCbLocation;
    .param p5, "serviceCategory"    # I
    .param p6, "language"    # Ljava/lang/String;
    .param p7, "body"    # Ljava/lang/String;
    .param p8, "priority"    # I
    .param p9, "etwsWarningInfo"    # Landroid/telephony/SmsCbEtwsInfo;
    .param p10, "cmasWarningInfo"    # Landroid/telephony/SmsCbCmasInfo;

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p1, p0, Landroid/telephony/SmsCbMessage;->mMessageFormat:I

    .line 163
    iput p2, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    .line 164
    iput p3, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    .line 165
    iput-object p4, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    .line 166
    iput p5, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    .line 167
    iput-object p6, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    .line 168
    iput-object p7, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    .line 169
    iput p8, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    .line 170
    iput-object p9, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 171
    iput-object p10, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 172
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SmsCbMessage;->mMessageFormat:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    .line 180
    new-instance v1, Landroid/telephony/SmsCbLocation;

    invoke-direct {v1, p1}, Landroid/telephony/SmsCbLocation;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 186
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 200
    :pswitch_0
    iput-object v2, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 201
    iput-object v2, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    .line 203
    :goto_0
    return-void

    .line 189
    :pswitch_1
    new-instance v1, Landroid/telephony/SmsCbEtwsInfo;

    invoke-direct {v1, p1}, Landroid/telephony/SmsCbEtwsInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 190
    iput-object v2, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    goto :goto_0

    .line 195
    :pswitch_2
    iput-object v2, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    .line 196
    new-instance v1, Landroid/telephony/SmsCbCmasInfo;

    invoke-direct {v1, p1}, Landroid/telephony/SmsCbCmasInfo;-><init>(Landroid/os/Parcel;)V

    iput-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    goto :goto_0

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 523
    const/4 v0, 0x0

    return v0
.end method

.method public getCmasAlertHandling()I
    .locals 3

    .prologue
    .line 448
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v1}, Landroid/telephony/SmsCbCmasInfo;->getAlertHandling()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 451
    :goto_0
    return v1

    .line 449
    :catch_0
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SMSCB"

    const-string v2, "Null pointer exception in getCmasAlertHandling"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCmasCategory()I
    .locals 3

    .prologue
    .line 396
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v1}, Landroid/telephony/SmsCbCmasInfo;->getCategory()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 399
    :goto_0
    return v1

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SMSCB"

    const-string v2, "Null pointer exception in getCmasCategory"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCmasCertainty()I
    .locals 3

    .prologue
    .line 428
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v1}, Landroid/telephony/SmsCbCmasInfo;->getCertainty()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 431
    :goto_0
    return v1

    .line 429
    :catch_0
    move-exception v0

    .line 430
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SMSCB"

    const-string v2, "Null pointer exception in getCmasCertainty"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCmasMessageID()I
    .locals 3

    .prologue
    .line 440
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v1}, Landroid/telephony/SmsCbCmasInfo;->getMessageID()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 443
    :goto_0
    return v1

    .line 441
    :catch_0
    move-exception v0

    .line 442
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SMSCB"

    const-string v2, "Null pointer exception in getCmasMessageID"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCmasMsgExpires()J
    .locals 4

    .prologue
    .line 456
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v1}, Landroid/telephony/SmsCbCmasInfo;->getMsgExpires()J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 459
    :goto_0
    return-wide v2

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SMSCB"

    const-string v2, "Null pointer exception in getCmasMsgExpires"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getCmasRecordTypeFirstExists()Z
    .locals 3

    .prologue
    .line 478
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v1}, Landroid/telephony/SmsCbCmasInfo;->getCMASRecordTypeFirstExists()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 481
    :goto_0
    return v1

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SMSCB"

    const-string v2, "Null pointer exception in getCmasRecordTypeFirstExists"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCmasRecordTypeSecondExists()Z
    .locals 3

    .prologue
    .line 487
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v1}, Landroid/telephony/SmsCbCmasInfo;->getCMASRecordTypeSecondExists()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 490
    :goto_0
    return v1

    .line 488
    :catch_0
    move-exception v0

    .line 489
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SMSCB"

    const-string v2, "Null pointer exception in getCmasRecordTypeSecondExists"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCmasRecordTypeThirdExists()Z
    .locals 3

    .prologue
    .line 497
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v1}, Landroid/telephony/SmsCbCmasInfo;->getCMASRecordTypeThirdExists()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 500
    :goto_0
    return v1

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SMSCB"

    const-string v2, "Null pointer exception in getCmasRecordTypeThirdExists"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCmasRecordTypeZeroExists()Z
    .locals 3

    .prologue
    .line 469
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v1}, Landroid/telephony/SmsCbCmasInfo;->getCMASRecordTypeZeroExists()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 472
    :goto_0
    return v1

    .line 470
    :catch_0
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SMSCB"

    const-string v2, "Null pointer exception in getCmasRecordTypeZeroExists"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCmasResponseType()I
    .locals 3

    .prologue
    .line 404
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v1}, Landroid/telephony/SmsCbCmasInfo;->getResponseType()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 407
    :goto_0
    return v1

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SMSCB"

    const-string v2, "Null pointer exception in getCmasResponseType"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCmasSeverity()I
    .locals 3

    .prologue
    .line 412
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v1}, Landroid/telephony/SmsCbCmasInfo;->getSeverity()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 415
    :goto_0
    return v1

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SMSCB"

    const-string v2, "Null pointer exception in getCmasSeverity"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCmasUrgency()I
    .locals 3

    .prologue
    .line 420
    :try_start_0
    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v1}, Landroid/telephony/SmsCbCmasInfo;->getUrgency()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 423
    :goto_0
    return v1

    .line 421
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "SMSCB"

    const-string v2, "Null pointer exception in getCmasUrgency"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCmasWarningInfo()Landroid/telephony/SmsCbCmasInfo;
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    return-object v0
.end method

.method public getEtwsWarningInfo()Landroid/telephony/SmsCbEtwsInfo;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    return-object v0
.end method

.method public getGeographicalScope()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    return v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getLocation()Landroid/telephony/SmsCbLocation;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    return-object v0
.end method

.method public getMessageBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getMessageFormat()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMessageFormat:I

    return v0
.end method

.method public getMessagePriority()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    return v0
.end method

.method public getSerialNumber()I
    .locals 1

    .prologue
    .line 268
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    return v0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    .line 294
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    return v0
.end method

.method public isCmasMessage()Z
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmergencyMessage()Z
    .locals 2

    .prologue
    .line 369
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEtwsMessage()Z
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbMessage{geographicalScope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serialNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", serviceCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    invoke-virtual {v2}, Landroid/telephony/SmsCbEtwsInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v2}, Landroid/telephony/SmsCbCmasInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 214
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mMessageFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 215
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mGeographicalScope:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mSerialNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLocation:Landroid/telephony/SmsCbLocation;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsCbLocation;->writeToParcel(Landroid/os/Parcel;I)V

    .line 218
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mServiceCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mLanguage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mBody:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget v0, p0, Landroid/telephony/SmsCbMessage;->mPriority:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    if-eqz v0, :cond_0

    .line 224
    const/16 v0, 0x45

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mEtwsWarningInfo:Landroid/telephony/SmsCbEtwsInfo;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsCbEtwsInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 234
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    if-eqz v0, :cond_1

    .line 228
    const/16 v0, 0x43

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget-object v0, p0, Landroid/telephony/SmsCbMessage;->mCmasWarningInfo:Landroid/telephony/SmsCbCmasInfo;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/SmsCbCmasInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 232
    :cond_1
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
