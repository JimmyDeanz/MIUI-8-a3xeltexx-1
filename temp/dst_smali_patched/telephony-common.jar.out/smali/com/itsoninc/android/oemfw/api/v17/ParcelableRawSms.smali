.class public Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;
.super Ljava/lang/Object;
.source "ParcelableRawSms.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private encoding:Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

.field private pdu:[B

.field private phoneId:I

.field private subId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$1;

    invoke-direct {v0}, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$1;-><init>()V

    sput-object v0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->pdu:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;->valueOf(Ljava/lang/String;)Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    move-result-object v0

    iput-object v0, p0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->encoding:Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->phoneId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->subId:I

    return-void
.end method

.method public constructor <init>([BLcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;II)V
    .locals 0
    .param p1, "pdu"    # [B
    .param p2, "encoding"    # Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;
    .param p3, "phoneId"    # I
    .param p4, "subId"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->pdu:[B

    if-nez p2, :cond_0

    sget-object p2, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;->UNKNOWN:Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    .end local p2    # "encoding":Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;
    :cond_0
    iput-object p2, p0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->encoding:Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    iput p3, p0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->phoneId:I

    iput p4, p0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->subId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getEncoding()Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->encoding:Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    return-object v0
.end method

.method public getPdu()[B
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->pdu:[B

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->phoneId:I

    return v0
.end method

.method public getSubId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->subId:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->pdu:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->encoding:Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;

    invoke-virtual {v0}, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms$Encoding;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->phoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/itsoninc/android/oemfw/api/v17/ParcelableRawSms;->subId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
