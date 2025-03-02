.class public Landroid/hardware/scontext/SContextHallSensor;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextHallSensor.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextHallSensor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 109
    new-instance v0, Landroid/hardware/scontext/SContextHallSensor$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextHallSensor$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextHallSensor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextHallSensor;->mContext:Landroid/os/Bundle;

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 41
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextHallSensor;->readFromParcel(Landroid/os/Parcel;)V

    .line 42
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextHallSensor;->mContext:Landroid/os/Bundle;

    .line 103
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 24
    invoke-super {p0}, Landroid/hardware/scontext/SContextEventContext;->describeContents()I

    move-result v0

    return v0
.end method

.method public getAngle()S
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Landroid/hardware/scontext/SContextHallSensor;->mContext:Landroid/os/Bundle;

    const-string v1, "Angle"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public getIntensity()S
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Landroid/hardware/scontext/SContextHallSensor;->mContext:Landroid/os/Bundle;

    const-string v1, "Intensity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public getType()S
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/hardware/scontext/SContextHallSensor;->mContext:Landroid/os/Bundle;

    const-string v1, "Type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v0

    return v0
.end method

.method public setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 82
    iput-object p1, p0, Landroid/hardware/scontext/SContextHallSensor;->mContext:Landroid/os/Bundle;

    .line 83
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 93
    iget-object v0, p0, Landroid/hardware/scontext/SContextHallSensor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 94
    return-void
.end method
