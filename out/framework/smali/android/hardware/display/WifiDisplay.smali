.class public final Landroid/hardware/display/WifiDisplay;
.super Ljava/lang/Object;
.source "WifiDisplay.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/hardware/display/WifiDisplay;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/display/WifiDisplay;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;


# instance fields
.field private final mCanConnect:Z

.field private mDevInfo:I

.field private final mDeviceAddress:Ljava/lang/String;

.field private final mDeviceAlias:Ljava/lang/String;

.field private final mDeviceName:Ljava/lang/String;

.field private final mIsAvailable:Z

.field private mIsEmptySurface:Z

.field private final mIsRemembered:Z

.field private mPrimaryDeviceType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/hardware/display/WifiDisplay;

    sput-object v0, Landroid/hardware/display/WifiDisplay;->EMPTY_ARRAY:[Landroid/hardware/display/WifiDisplay;

    .line 47
    new-instance v0, Landroid/hardware/display/WifiDisplay$1;

    invoke-direct {v0}, Landroid/hardware/display/WifiDisplay$1;-><init>()V

    sput-object v0, Landroid/hardware/display/WifiDisplay;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceAlias"    # Ljava/lang/String;
    .param p4, "available"    # Z
    .param p5, "canConnect"    # Z
    .param p6, "remembered"    # Z

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/WifiDisplay;->mDevInfo:I

    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    if-nez p2, :cond_1

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    iput-object p1, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    .line 89
    iput-object p3, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    .line 90
    iput-boolean p4, p0, Landroid/hardware/display/WifiDisplay;->mIsAvailable:Z

    .line 91
    iput-boolean p5, p0, Landroid/hardware/display/WifiDisplay;->mCanConnect:Z

    .line 92
    iput-boolean p6, p0, Landroid/hardware/display/WifiDisplay;->mIsRemembered:Z

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;)V
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "deviceName"    # Ljava/lang/String;
    .param p3, "deviceAlias"    # Ljava/lang/String;
    .param p4, "available"    # Z
    .param p5, "canConnect"    # Z
    .param p6, "remembered"    # Z
    .param p7, "primaryDeviceType"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/display/WifiDisplay;->mDevInfo:I

    .line 99
    if-nez p1, :cond_0

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceAddress must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_0
    if-nez p2, :cond_1

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "deviceName must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_1
    iput-object p1, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    .line 107
    iput-object p2, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    .line 108
    iput-object p3, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    .line 109
    iput-boolean p4, p0, Landroid/hardware/display/WifiDisplay;->mIsAvailable:Z

    .line 110
    iput-boolean p5, p0, Landroid/hardware/display/WifiDisplay;->mCanConnect:Z

    .line 111
    iput-boolean p6, p0, Landroid/hardware/display/WifiDisplay;->mIsRemembered:Z

    .line 113
    iput-object p7, p0, Landroid/hardware/display/WifiDisplay;->mPrimaryDeviceType:Ljava/lang/String;

    .line 114
    return-void
.end method


# virtual methods
.method public canConnect()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplay;->mCanConnect:Z

    return v0
.end method

.method public compareTo(Landroid/hardware/display/WifiDisplay;)I
    .locals 1
    .param p1, "other"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 335
    const/4 v0, -0x1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 32
    check-cast p1, Landroid/hardware/display/WifiDisplay;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay;->compareTo(Landroid/hardware/display/WifiDisplay;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Landroid/hardware/display/WifiDisplay;)Z
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 264
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 255
    instance-of v0, p1, Landroid/hardware/display/WifiDisplay;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/hardware/display/WifiDisplay;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceInfo()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getPrimaryDeviceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSameAddress(Landroid/hardware/display/WifiDisplay;)Z
    .locals 2
    .param p1, "other"    # Landroid/hardware/display/WifiDisplay;

    .prologue
    .line 277
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    iget-object v1, p1, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 155
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplay;->mIsAvailable:Z

    return v0
.end method

.method public isEmptySurface()Z
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x0

    return v0
.end method

.method public isRemembered()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplay;->mIsRemembered:Z

    return v0
.end method

.method public setDeviceInfo(I)V
    .locals 0
    .param p1, "devInfo"    # I

    .prologue
    .line 226
    return-void
.end method

.method public setEmptySurface(Z)V
    .locals 0
    .param p1, "isEmptySurface"    # Z

    .prologue
    .line 249
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", alias "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isAvailable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/display/WifiDisplay;->mIsAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", canConnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/display/WifiDisplay;->mCanConnect:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isRemembered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/display/WifiDisplay;->mIsRemembered:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", primaryDeviceType "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/display/WifiDisplay;->mPrimaryDeviceType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", devInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/display/WifiDisplay;->mDevInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isEmptySurface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/display/WifiDisplay;->mIsEmptySurface:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 290
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Landroid/hardware/display/WifiDisplay;->mDeviceAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplay;->mIsAvailable:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplay;->mCanConnect:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-boolean v0, p0, Landroid/hardware/display/WifiDisplay;->mIsRemembered:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    return-void

    :cond_0
    move v0, v2

    .line 293
    goto :goto_0

    :cond_1
    move v0, v2

    .line 294
    goto :goto_1

    :cond_2
    move v1, v2

    .line 295
    goto :goto_2
.end method
