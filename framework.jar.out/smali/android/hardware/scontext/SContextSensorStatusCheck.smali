.class public Landroid/hardware/scontext/SContextSensorStatusCheck;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextSensorStatusCheck.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextSensorStatusCheck;",
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
    .line 175
    new-instance v0, Landroid/hardware/scontext/SContextSensorStatusCheck$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSensorStatusCheck$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextSensorStatusCheck;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    .line 88
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 94
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextSensorStatusCheck;->readFromParcel(Landroid/os/Parcel;)V

    .line 95
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    .line 169
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Landroid/hardware/scontext/SContextEventContext;->describeContents()I

    move-result v0

    return v0
.end method

.method public getStatus()I
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Landroid/hardware/scontext/SContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    const-string v1, "Status"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getXAxis()I
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Landroid/hardware/scontext/SContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    const-string v1, "XAxis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getYAxis()I
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Landroid/hardware/scontext/SContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    const-string v1, "YAxis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getZAxis()I
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Landroid/hardware/scontext/SContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    const-string v1, "ZAxis"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 144
    iput-object p1, p0, Landroid/hardware/scontext/SContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    .line 145
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 158
    iget-object v0, p0, Landroid/hardware/scontext/SContextSensorStatusCheck;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 159
    return-void
.end method
