.class public Landroid/telephony/SubInfoRecord;
.super Ljava/lang/Object;
.source "SubInfoRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telephony/SubInfoRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public color:I

.field public dataRoaming:I

.field public displayName:Ljava/lang/String;

.field public displayNumberFormat:I

.field public iccId:Ljava/lang/String;

.field public mNwMode:I

.field public mStatus:I

.field public mcc:I

.field public mnc:I

.field public nameSource:I

.field public number:Ljava/lang/String;

.field public simIconRes:[I

.field public slotId:I

.field public subId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/telephony/SubInfoRecord$1;

    invoke-direct {v0}, Landroid/telephony/SubInfoRecord$1;-><init>()V

    sput-object v0, Landroid/telephony/SubInfoRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x3e8

    iput-wide v0, p0, Landroid/telephony/SubInfoRecord;->subId:J

    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/SubInfoRecord;->iccId:Ljava/lang/String;

    iput v3, p0, Landroid/telephony/SubInfoRecord;->slotId:I

    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    iput v2, p0, Landroid/telephony/SubInfoRecord;->nameSource:I

    iput v2, p0, Landroid/telephony/SubInfoRecord;->color:I

    const-string v0, ""

    iput-object v0, p0, Landroid/telephony/SubInfoRecord;->number:Ljava/lang/String;

    iput v2, p0, Landroid/telephony/SubInfoRecord;->displayNumberFormat:I

    iput v2, p0, Landroid/telephony/SubInfoRecord;->dataRoaming:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/telephony/SubInfoRecord;->simIconRes:[I

    iput v2, p0, Landroid/telephony/SubInfoRecord;->mcc:I

    iput v2, p0, Landroid/telephony/SubInfoRecord;->mnc:I

    iput v2, p0, Landroid/telephony/SubInfoRecord;->mStatus:I

    iput v3, p0, Landroid/telephony/SubInfoRecord;->mNwMode:I

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;II[IIII)V
    .locals 0
    .param p1, "subId"    # J
    .param p3, "iccId"    # Ljava/lang/String;
    .param p4, "slotId"    # I
    .param p5, "displayName"    # Ljava/lang/String;
    .param p6, "nameSource"    # I
    .param p7, "color"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "displayFormat"    # I
    .param p10, "roaming"    # I
    .param p11, "iconRes"    # [I
    .param p12, "mcc"    # I
    .param p13, "mnc"    # I
    .param p14, "status"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;ILjava/lang/String;IILjava/lang/String;II[IIIII)V
    .locals 3
    .param p1, "subId"    # J
    .param p3, "iccId"    # Ljava/lang/String;
    .param p4, "slotId"    # I
    .param p5, "displayName"    # Ljava/lang/String;
    .param p6, "nameSource"    # I
    .param p7, "color"    # I
    .param p8, "number"    # Ljava/lang/String;
    .param p9, "displayFormat"    # I
    .param p10, "roaming"    # I
    .param p11, "iconRes"    # [I
    .param p12, "mcc"    # I
    .param p13, "mnc"    # I
    .param p14, "status"    # I
    .param p15, "nwMode"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/telephony/SubInfoRecord;->subId:J

    iput-object p3, p0, Landroid/telephony/SubInfoRecord;->iccId:Ljava/lang/String;

    iput p4, p0, Landroid/telephony/SubInfoRecord;->slotId:I

    iput-object p5, p0, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    iput p6, p0, Landroid/telephony/SubInfoRecord;->nameSource:I

    iput p7, p0, Landroid/telephony/SubInfoRecord;->color:I

    iput-object p8, p0, Landroid/telephony/SubInfoRecord;->number:Ljava/lang/String;

    iput p9, p0, Landroid/telephony/SubInfoRecord;->displayNumberFormat:I

    iput p10, p0, Landroid/telephony/SubInfoRecord;->dataRoaming:I

    iput-object p11, p0, Landroid/telephony/SubInfoRecord;->simIconRes:[I

    iput p12, p0, Landroid/telephony/SubInfoRecord;->mcc:I

    move/from16 v0, p13

    iput v0, p0, Landroid/telephony/SubInfoRecord;->mnc:I

    move/from16 v0, p14

    iput v0, p0, Landroid/telephony/SubInfoRecord;->mStatus:I

    move/from16 v0, p15

    iput v0, p0, Landroid/telephony/SubInfoRecord;->mNwMode:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "None"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-wide v0, p0, Landroid/telephony/SubInfoRecord;->subId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/telephony/SubInfoRecord;->iccId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/SubInfoRecord;->slotId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/SubInfoRecord;->displayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/SubInfoRecord;->nameSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SubInfoRecord;->color:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/SubInfoRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/telephony/SubInfoRecord;->displayNumberFormat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SubInfoRecord;->dataRoaming:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/telephony/SubInfoRecord;->simIconRes:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    iget v0, p0, Landroid/telephony/SubInfoRecord;->mcc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SubInfoRecord;->mnc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SubInfoRecord;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/telephony/SubInfoRecord;->mNwMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
