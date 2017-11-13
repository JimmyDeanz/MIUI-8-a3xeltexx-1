.class public Lcom/android/internal/app/MemDumpInfo;
.super Ljava/lang/Object;
.source "MemDumpInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/app/MemDumpInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private free_size:J

.field public hasExtra:Z

.field public label:Ljava/lang/String;

.field private lost_size:J

.field public procName:Ljava/lang/String;

.field public pss:J

.field public swap_out:J

.field private total_size:J

.field private used_size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/app/MemDumpInfo$1;

    invoke-direct {v0}, Lcom/android/internal/app/MemDumpInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/MemDumpInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/MemDumpInfo;->hasExtra:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/app/MemDumpInfo;->label:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/app/MemDumpInfo;->procName:Ljava/lang/String;

    iput-wide v2, p0, Lcom/android/internal/app/MemDumpInfo;->pss:J

    iput-wide v2, p0, Lcom/android/internal/app/MemDumpInfo;->swap_out:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/app/MemDumpInfo;->hasExtra:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->pss:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->swap_out:J

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public GetFreeSize()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->free_size:J

    return-wide v0
.end method

.method public GetLostSize()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->lost_size:J

    return-wide v0
.end method

.method public GetTotalSize()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->total_size:J

    return-wide v0
.end method

.method public GetUsedSize()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->used_size:J

    return-wide v0
.end method

.method public SetFreeSize(J)V
    .locals 1
    .param p1, "free"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/internal/app/MemDumpInfo;->free_size:J

    return-void
.end method

.method public SetLostSize(J)V
    .locals 1
    .param p1, "Lost"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/internal/app/MemDumpInfo;->lost_size:J

    return-void
.end method

.method public SetTotalSize(J)V
    .locals 1
    .param p1, "total"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/internal/app/MemDumpInfo;->total_size:J

    return-void
.end method

.method public SetUsedSize(J)V
    .locals 1
    .param p1, "Used"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/internal/app/MemDumpInfo;->used_size:J

    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/MemDumpInfo;->hasExtra:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/app/MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->pss:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/android/internal/app/MemDumpInfo;->swap_out:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
