.class public Landroid/sec/enterprise/email/EnterpriseEmailAccount;
.super Ljava/lang/Object;
.source "EnterpriseEmailAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/sec/enterprise/email/EnterpriseEmailAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDisplayName:Ljava/lang/String;

.field public mEmailAddress:Ljava/lang/String;

.field public mEmailNotificationVibrateAlways:Z

.field public mEmailNotificationVibrateWhenSilent:Z

.field public mId:J

.field public mInComingAcceptAllCertificates:Z

.field public mInComingPassword:Ljava/lang/String;

.field public mInComingProtocol:Ljava/lang/String;

.field public mInComingServerAddress:Ljava/lang/String;

.field public mInComingServerPort:I

.field public mInComingUseSSL:Z

.field public mInComingUseTLS:Z

.field public mInComingUserName:Ljava/lang/String;

.field public mIsDefault:Z

.field public mOffPeakSyncSchedule:I

.field public mOutgoingAcceptAllCertificates:Z

.field public mOutgoingPassword:Ljava/lang/String;

.field public mOutgoingProtocol:Ljava/lang/String;

.field public mOutgoingServerAddress:Ljava/lang/String;

.field public mOutgoingServerPort:I

.field public mOutgoingUseSSL:Z

.field public mOutgoingUseTLS:Z

.field public mOutgoingUserName:Ljava/lang/String;

.field public mPeakDays:I

.field public mPeakEndMinute:I

.field public mPeakStartMinute:I

.field public mPeakSyncSchedule:I

.field public mRoamingSyncSchedule:I

.field public mSenderName:Ljava/lang/String;

.field public mSignature:Ljava/lang/String;

.field public mSyncInterval:I

.field public mSyncLookback:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 245
    new-instance v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount$1;

    invoke-direct {v0}, Landroid/sec/enterprise/email/EnterpriseEmailAccount$1;-><init>()V

    sput-object v0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    invoke-virtual {p0, p1}, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->readFromParcel(Landroid/os/Parcel;)V

    .line 258
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/sec/enterprise/email/EnterpriseEmailAccount$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/sec/enterprise/email/EnterpriseEmailAccount$1;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/sec/enterprise/email/EnterpriseEmailAccount;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 241
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUserName:Ljava/lang/String;

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerAddress:Ljava/lang/String;

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerPort:I

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingProtocol:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingPassword:Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseSSL:Z

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseTLS:Z

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingAcceptAllCertificates:Z

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUserName:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerAddress:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerPort:I

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingPassword:Ljava/lang/String;

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseSSL:Z

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseTLS:Z

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingAcceptAllCertificates:Z

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mDisplayName:Ljava/lang/String;

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailAddress:Ljava/lang/String;

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSenderName:Ljava/lang/String;

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSignature:Ljava/lang/String;

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSyncLookback:I

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSyncInterval:I

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_6
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateAlways:Z

    .line 328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    :goto_7
    iput-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateWhenSilent:Z

    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_8

    :goto_8
    iput-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mIsDefault:Z

    .line 330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mPeakDays:I

    .line 331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mPeakStartMinute:I

    .line 332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mPeakEndMinute:I

    .line 333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mPeakSyncSchedule:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOffPeakSyncSchedule:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mRoamingSyncSchedule:I

    .line 336
    return-void

    :cond_0
    move v0, v2

    .line 307
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 308
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 309
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 316
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 317
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 318
    goto :goto_5

    :cond_6
    move v0, v2

    .line 327
    goto :goto_6

    :cond_7
    move v0, v2

    .line 328
    goto :goto_7

    :cond_8
    move v1, v2

    .line 329
    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDisplayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEmailAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSenderName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSyncLookback ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSyncLookback:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSyncInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSyncInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEmailNotificationVibrateAlways ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateAlways:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mIsDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPeakDays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mPeakDays:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPeakStartMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mPeakStartMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPeakEndMinute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mPeakEndMinute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPeakSyncSchedule= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mPeakSyncSchedule:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mOffPeakSyncSchedule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOffPeakSyncSchedule:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRoamingSyncSchedule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mRoamingSyncSchedule:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 267
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingServerPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseSSL:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingUseTLS:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOutgoingAcceptAllCertificates:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingServerPort:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 277
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingProtocol:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 279
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseSSL:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingUseTLS:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mInComingAcceptAllCertificates:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    iget-wide v4, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mId:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 283
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSenderName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSignature:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSyncLookback:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mSyncInterval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateAlways:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mEmailNotificationVibrateWhenSilent:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-boolean v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mIsDefault:Z

    if-eqz v0, :cond_8

    :goto_8
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mPeakDays:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mPeakStartMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mPeakEndMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mPeakSyncSchedule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mOffPeakSyncSchedule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget v0, p0, Landroid/sec/enterprise/email/EnterpriseEmailAccount;->mRoamingSyncSchedule:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    return-void

    :cond_0
    move v0, v2

    .line 270
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 271
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 272
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 279
    goto :goto_3

    :cond_4
    move v0, v2

    .line 280
    goto :goto_4

    :cond_5
    move v0, v2

    .line 281
    goto :goto_5

    :cond_6
    move v0, v2

    .line 289
    goto :goto_6

    :cond_7
    move v0, v2

    .line 290
    goto :goto_7

    :cond_8
    move v1, v2

    .line 291
    goto :goto_8
.end method
