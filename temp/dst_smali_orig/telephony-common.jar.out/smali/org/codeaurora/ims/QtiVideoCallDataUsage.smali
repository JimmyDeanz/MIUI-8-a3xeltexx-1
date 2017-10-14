.class public Lorg/codeaurora/ims/QtiVideoCallDataUsage;
.super Ljava/lang/Object;
.source "QtiVideoCallDataUsage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/codeaurora/ims/QtiVideoCallDataUsage$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lorg/codeaurora/ims/QtiVideoCallDataUsage;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATA_USAGE_INVALID_VALUE:I = -0x1

.field public static final DATA_USAGE_LTE:I = 0x0

.field public static final DATA_USAGE_WLAN:I = 0x1

.field private static final TEXT:[Ljava/lang/String;


# instance fields
.field private mDataUsage:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "LteDataUsage = "

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, " WlanDataUsage = "

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->TEXT:[Ljava/lang/String;

    new-instance v0, Lorg/codeaurora/ims/QtiVideoCallDataUsage$1;

    invoke-direct {v0}, Lorg/codeaurora/ims/QtiVideoCallDataUsage$1;-><init>()V

    sput-object v0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([J)V
    .locals 1
    .param p1, "dUsage"    # [J

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->mDataUsage:[J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getLteDataUsage()J
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->mDataUsage:[J

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->mDataUsage:[J

    aget-wide v0, v0, v1

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getWlanDataUsage()J
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-object v0, p0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->mDataUsage:[J

    array-length v0, v0

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->mDataUsage:[J

    aget-wide v0, v0, v1

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->mDataUsage:[J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->mDataUsage:[J

    if-eqz v2, :cond_1

    const-string v1, ""

    .local v1, "msg":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->mDataUsage:[J

    array-length v2, v2

    if-ge v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->TEXT:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->mDataUsage:[J

    aget-wide v4, v3, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .end local v0    # "i":I
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flag"    # I

    .prologue
    iget-object v0, p0, Lorg/codeaurora/ims/QtiVideoCallDataUsage;->mDataUsage:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
