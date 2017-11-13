.class public Lcom/movial/ipphone/SessionCall;
.super Lcom/android/internal/telephony/DriverCall;
.source "SessionCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/movial/ipphone/SessionCall$State;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/movial/ipphone/SessionCall;",
            ">;"
        }
    .end annotation
.end field

.field public static final MSG_CALL_ANSWERED:I = 0x2

.field public static final MSG_CALL_RINGBACK:I = 0x7

.field public static final MSG_CALL_RINGING:I = 0x1

.field public static final MSG_INCOMING_CALL:I = 0x3

.field public static final MSG_UPDATE_CNAM:I = 0x6

.field public static final MSG_UPDATE_CONNECTION:I = 0x4

.field public static final MSG_UPDATE_CONNECTION_FAILED:I = 0x5


# instance fields
.field public cause:I

.field public inConf:Z

.field public inviteDisplayName:Ljava/lang/String;

.field public state:Lcom/movial/ipphone/SessionCall$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/movial/ipphone/SessionCall$1;

    invoke-direct {v0}, Lcom/movial/ipphone/SessionCall$1;-><init>()V

    sput-object v0, Lcom/movial/ipphone/SessionCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/DriverCall;-><init>()V

    invoke-virtual {p0, p1}, Lcom/movial/ipphone/SessionCall;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/movial/ipphone/SessionCall$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/movial/ipphone/SessionCall$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/movial/ipphone/SessionCall;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/movial/ipphone/SessionCall;->index:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/movial/ipphone/SessionCall;->isMT:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/movial/ipphone/SessionCall;->inConf:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/movial/ipphone/SessionCall;->number:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/movial/ipphone/SessionCall;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/movial/ipphone/SessionCall;->numberPresentation:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/SessionCall$State;

    iput-object v0, p0, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/movial/ipphone/SessionCall;->cause:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/movial/ipphone/SessionCall;->inviteDisplayName:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/movial/ipphone/SessionCall;->index:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/movial/ipphone/SessionCall;->isMT:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean v0, p0, Lcom/movial/ipphone/SessionCall;->inConf:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/movial/ipphone/SessionCall;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/movial/ipphone/SessionCall;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/movial/ipphone/SessionCall;->numberPresentation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/movial/ipphone/SessionCall;->state:Lcom/movial/ipphone/SessionCall$State;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget v0, p0, Lcom/movial/ipphone/SessionCall;->cause:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/movial/ipphone/SessionCall;->inviteDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
