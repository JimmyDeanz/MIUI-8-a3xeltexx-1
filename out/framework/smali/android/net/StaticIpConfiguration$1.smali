.class final Landroid/net/StaticIpConfiguration$1;
.super Ljava/lang/Object;
.source "StaticIpConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/StaticIpConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/net/StaticIpConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/StaticIpConfiguration;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 167
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    .line 168
    .local v0, "s":Landroid/net/StaticIpConfiguration;
    invoke-static {v0, p1}, Landroid/net/StaticIpConfiguration;->readFromParcel(Landroid/net/StaticIpConfiguration;Landroid/os/Parcel;)V

    .line 169
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Landroid/net/StaticIpConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/StaticIpConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/StaticIpConfiguration;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 173
    new-array v0, p1, [Landroid/net/StaticIpConfiguration;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Landroid/net/StaticIpConfiguration$1;->newArray(I)[Landroid/net/StaticIpConfiguration;

    move-result-object v0

    return-object v0
.end method
