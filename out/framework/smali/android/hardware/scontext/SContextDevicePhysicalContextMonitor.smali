.class public Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;
.super Landroid/hardware/scontext/SContextEventContext;
.source "SContextDevicePhysicalContextMonitor.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;",
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
    new-instance v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 93
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->mContext:Landroid/os/Bundle;

    .line 94
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 98
    invoke-direct {p0}, Landroid/hardware/scontext/SContextEventContext;-><init>()V

    .line 99
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->readFromParcel(Landroid/os/Parcel;)V

    .line 100
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->mContext:Landroid/os/Bundle;

    .line 168
    return-void
.end method


# virtual methods
.method public bridge synthetic describeContents()I
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Landroid/hardware/scontext/SContextEventContext;->describeContents()I

    move-result v0

    return v0
.end method

.method public getAODReason()I
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "AODReason"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAODStatus()I
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->mContext:Landroid/os/Bundle;

    const-string v1, "AODStatus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method setValues(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    .line 143
    iput-object p1, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->mContext:Landroid/os/Bundle;

    .line 144
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 157
    iget-object v0, p0, Landroid/hardware/scontext/SContextDevicePhysicalContextMonitor;->mContext:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 158
    return-void
.end method
