.class public Landroid/content/pm/SdpUserInfo;
.super Ljava/lang/Object;
.source "SdpUserInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/SdpUserInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SdpUserInfo"


# instance fields
.field public flags:I

.field public id:I

.field public isMigrating:Z

.field public prevStatus:I

.field public status:I

.field public version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Landroid/content/pm/SdpUserInfo$1;

    invoke-direct {v0}, Landroid/content/pm/SdpUserInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/SdpUserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Landroid/content/pm/SdpUserInfo;->flags:I

    .line 35
    iput v1, p0, Landroid/content/pm/SdpUserInfo;->version:I

    .line 36
    iput v0, p0, Landroid/content/pm/SdpUserInfo;->prevStatus:I

    .line 37
    iput v0, p0, Landroid/content/pm/SdpUserInfo;->status:I

    .line 38
    iput-boolean v0, p0, Landroid/content/pm/SdpUserInfo;->isMigrating:Z

    .line 42
    iput p1, p0, Landroid/content/pm/SdpUserInfo;->id:I

    .line 43
    iput p2, p0, Landroid/content/pm/SdpUserInfo;->flags:I

    .line 44
    iput v1, p0, Landroid/content/pm/SdpUserInfo;->prevStatus:I

    .line 45
    iput v1, p0, Landroid/content/pm/SdpUserInfo;->status:I

    .line 46
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v0, p0, Landroid/content/pm/SdpUserInfo;->flags:I

    .line 35
    const/4 v1, -0x1

    iput v1, p0, Landroid/content/pm/SdpUserInfo;->version:I

    .line 36
    iput v0, p0, Landroid/content/pm/SdpUserInfo;->prevStatus:I

    .line 37
    iput v0, p0, Landroid/content/pm/SdpUserInfo;->status:I

    .line 38
    iput-boolean v0, p0, Landroid/content/pm/SdpUserInfo;->isMigrating:Z

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/SdpUserInfo;->id:I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/SdpUserInfo;->flags:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/SdpUserInfo;->version:I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/SdpUserInfo;->prevStatus:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/content/pm/SdpUserInfo;->status:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Landroid/content/pm/SdpUserInfo;->isMigrating:Z

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/SdpUserInfo$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/pm/SdpUserInfo$1;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/content/pm/SdpUserInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public dump()V
    .locals 3

    .prologue
    .line 68
    const-string v0, "SdpUserInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SDP INFO DUMP : id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/SdpUserInfo;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; flags = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/SdpUserInfo;->flags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/SdpUserInfo;->version:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; prevStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/SdpUserInfo;->prevStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/content/pm/SdpUserInfo;->status:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v0, "SdpUserInfo"

    const-string v1, "\n"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "parcelableFlags"    # I

    .prologue
    .line 58
    iget v0, p0, Landroid/content/pm/SdpUserInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget v0, p0, Landroid/content/pm/SdpUserInfo;->flags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget v0, p0, Landroid/content/pm/SdpUserInfo;->version:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Landroid/content/pm/SdpUserInfo;->prevStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Landroid/content/pm/SdpUserInfo;->status:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-boolean v0, p0, Landroid/content/pm/SdpUserInfo;->isMigrating:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
