.class public Landroid/hardware/scontext/SContextExercise;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextExercise.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextExercise;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;

.field private mMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/hardware/scontext/SContextExercise$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextExercise$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextExercise;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextExercise;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/hardware/scontext/SContextEventContext;->describeContents()I

    move-result v0

    return v0
.end method

.method public getAltitude()[F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "res":[F
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "AltitudeArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLatitude()[D
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "res":[D
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "LatitudeArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLoggingSize()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "res":I
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "DataCount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getLongitude()[D
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "res":[D
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "LongitudeArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getMode()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v1, "Mode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPedoDistance()[D
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "res":[D
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "PedoDistanceDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPedoSpeed()[D
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "res":[D
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "PedoSpeedArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPressure()[F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "res":[F
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "PressureArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSpeed()[F
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "res":[F
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "SpeedArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getFloatArray(Ljava/lang/String;)[F

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getStatus()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "res":I
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "GpsStatus"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getStepCount()[J
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "StepCountDiffArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getTimeStamp()[J
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, "res":[J
    iget v1, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v2, "TimeStampArray"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method setValues(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    iput-object p1, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    const-string v0, "Mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextExercise;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    iget v0, p0, Landroid/hardware/scontext/SContextExercise;->mMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
