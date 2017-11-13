.class public Lcom/android/internal/app/ProcStatsCollection;
.super Ljava/lang/Object;
.source "ProcStatsCollection.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/app/ProcStatsCollection;",
            ">;"
        }
    .end annotation
.end field

.field public static final LABEL_BG_TOTAL:I = 0x1

.field public static final LABEL_TOTAL:I


# instance fields
.field public Label:[Ljava/lang/String;

.field public avgPss:[J

.field public avgUss:[J

.field public hasExtra:Z

.field private installed_app:I

.field public maxPss:[J

.field public maxUss:[J

.field public minPss:[J

.field public minUss:[J

.field public percentage:[D

.field public procName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/app/ProcStatsCollection$1;

    invoke-direct {v0}, Lcom/android/internal/app/ProcStatsCollection$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/ProcStatsCollection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/internal/app/ProcStatsCollection;->hasExtra:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->procName:Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->Label:[Ljava/lang/String;

    new-array v0, v1, [D

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->percentage:[D

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->minPss:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->avgPss:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->maxPss:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->minUss:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->avgUss:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->maxUss:[J

    iput v2, p0, Lcom/android/internal/app/ProcStatsCollection;->installed_app:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/app/ProcStatsCollection;->hasExtra:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->procName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->Label:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->percentage:[D

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->minPss:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->avgPss:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->maxPss:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->minUss:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->avgUss:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->maxUss:[J

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public GetInstalledAppCount()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/app/ProcStatsCollection;->installed_app:I

    return v0
.end method

.method public SetInstalledAppCount(I)V
    .locals 0
    .param p1, "apps"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/app/ProcStatsCollection;->installed_app:I

    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAvgPss()[J
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->avgPss:[J

    return-object v0
.end method

.method public getAvgUss()[J
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->avgUss:[J

    return-object v0
.end method

.method public getLabel()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->Label:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxPss()[J
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->maxPss:[J

    return-object v0
.end method

.method public getMaxUss()[J
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->maxUss:[J

    return-object v0
.end method

.method public getMinPss()[J
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->minPss:[J

    return-object v0
.end method

.method public getMinUss()[J
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->minUss:[J

    return-object v0
.end method

.method public getPercentage()[D
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->percentage:[D

    return-object v0
.end method

.method public getProcName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->procName:Ljava/lang/String;

    return-object v0
.end method

.method public setAvgPss([J)V
    .locals 1
    .param p1, "_avgPss"    # [J

    .prologue
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->avgPss:[J

    return-void
.end method

.method public setAvgUss([J)V
    .locals 1
    .param p1, "_avgUss"    # [J

    .prologue
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->avgUss:[J

    return-void
.end method

.method public setLabel([Ljava/lang/String;)V
    .locals 1
    .param p1, "_Label"    # [Ljava/lang/String;

    .prologue
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->Label:[Ljava/lang/String;

    return-void
.end method

.method public setMaxPss([J)V
    .locals 1
    .param p1, "_maxPss"    # [J

    .prologue
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->maxPss:[J

    return-void
.end method

.method public setMaxUss([J)V
    .locals 1
    .param p1, "_maxUss"    # [J

    .prologue
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->maxUss:[J

    return-void
.end method

.method public setMinPss([J)V
    .locals 1
    .param p1, "_minPss"    # [J

    .prologue
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->minPss:[J

    return-void
.end method

.method public setMinUss([J)V
    .locals 1
    .param p1, "_minUss"    # [J

    .prologue
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->minUss:[J

    return-void
.end method

.method public setPercentage([D)V
    .locals 1
    .param p1, "_percentage"    # [D

    .prologue
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->percentage:[D

    return-void
.end method

.method public setProcName(Ljava/lang/String;)V
    .locals 0
    .param p1, "_procName"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/ProcStatsCollection;->procName:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/app/ProcStatsCollection;->hasExtra:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->procName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->Label:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->percentage:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    iget-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->minPss:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->avgPss:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->maxPss:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->minUss:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->avgUss:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    iget-object v0, p0, Lcom/android/internal/app/ProcStatsCollection;->maxUss:[J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
