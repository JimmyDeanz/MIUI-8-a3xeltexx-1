.class public final Landroid/bluetooth/BluetoothOobData;
.super Ljava/lang/Object;
.source "BluetoothOobData.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/bluetooth/BluetoothOobData;",
            ">;"
        }
    .end annotation
.end field

.field public static final HASH_P192_LEN:I = 0x10

.field public static final HASH_P256_LEN:I = 0x10

.field public static final RANDOMIZER_P192_LEN:I = 0x10

.field public static final RANDOMIZER_P256_LEN:I = 0x10

.field public static final TAG:Ljava/lang/String; = "BluetoothOobData"


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mHashP192:[B

.field private mHashP256:[B

.field private mRandomizerP192:[B

.field private mRandomizerP256:[B

.field private mValid_P192_P256:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 220
    new-instance v0, Landroid/bluetooth/BluetoothOobData$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothOobData$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothOobData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-array v0, v2, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP192:[B

    .line 44
    new-array v0, v2, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP192:[B

    .line 45
    new-array v0, v2, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP256:[B

    .line 46
    new-array v0, v2, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP256:[B

    .line 56
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP192:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 57
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP192:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 58
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP256:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 59
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP256:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 60
    iput v1, p0, Landroid/bluetooth/BluetoothOobData;->mValid_P192_P256:I

    .line 61
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mAddress:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothOobData;)V
    .locals 3
    .param p1, "obbdata"    # Landroid/bluetooth/BluetoothOobData;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x10

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP192:[B

    .line 44
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP192:[B

    .line 45
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP256:[B

    .line 46
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP256:[B

    .line 98
    iget-object v0, p1, Landroid/bluetooth/BluetoothOobData;->mHashP192:[B

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p1, Landroid/bluetooth/BluetoothOobData;->mHashP192:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP192:[B

    .line 102
    :goto_0
    iget-object v0, p1, Landroid/bluetooth/BluetoothOobData;->mRandomizerP192:[B

    if-eqz v0, :cond_1

    .line 103
    iget-object v0, p1, Landroid/bluetooth/BluetoothOobData;->mRandomizerP192:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP192:[B

    .line 106
    :goto_1
    iget-object v0, p1, Landroid/bluetooth/BluetoothOobData;->mHashP256:[B

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p1, Landroid/bluetooth/BluetoothOobData;->mHashP256:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP256:[B

    .line 110
    :goto_2
    iget-object v0, p1, Landroid/bluetooth/BluetoothOobData;->mRandomizerP256:[B

    if-eqz v0, :cond_3

    .line 111
    iget-object v0, p1, Landroid/bluetooth/BluetoothOobData;->mRandomizerP256:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP256:[B

    .line 114
    :goto_3
    iget v0, p1, Landroid/bluetooth/BluetoothOobData;->mValid_P192_P256:I

    iput v0, p0, Landroid/bluetooth/BluetoothOobData;->mValid_P192_P256:I

    .line 115
    iget-object v0, p1, Landroid/bluetooth/BluetoothOobData;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mAddress:Ljava/lang/String;

    .line 116
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP192:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP192:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_1

    .line 108
    :cond_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP256:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_2

    .line 112
    :cond_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP256:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_3
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/16 v1, 0x10

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP192:[B

    .line 44
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP192:[B

    .line 45
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP256:[B

    .line 46
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP256:[B

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothOobData;->mValid_P192_P256:I

    .line 232
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP192:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 233
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP192:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 234
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP256:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 235
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP256:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 236
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mAddress:Ljava/lang/String;

    .line 237
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothOobData$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/bluetooth/BluetoothOobData$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothOobData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>([B[B[B[BILjava/lang/String;)V
    .locals 3
    .param p1, "hashP192"    # [B
    .param p2, "randomizerP192"    # [B
    .param p3, "hashP256"    # [B
    .param p4, "randomizerP256"    # [B
    .param p5, "valid_P192_P256"    # I
    .param p6, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x10

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP192:[B

    .line 44
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP192:[B

    .line 45
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP256:[B

    .line 46
    new-array v0, v1, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP256:[B

    .line 73
    iput v2, p0, Landroid/bluetooth/BluetoothOobData;->mValid_P192_P256:I

    .line 74
    if-eqz p1, :cond_0

    .line 75
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP192:[B

    .line 78
    :goto_0
    if-eqz p2, :cond_1

    .line 79
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP192:[B

    .line 82
    :goto_1
    if-eqz p3, :cond_2

    .line 83
    invoke-static {p3, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP256:[B

    .line 86
    :goto_2
    if-eqz p4, :cond_3

    .line 87
    invoke-static {p4, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP256:[B

    .line 90
    :goto_3
    iput p5, p0, Landroid/bluetooth/BluetoothOobData;->mValid_P192_P256:I

    .line 91
    iput-object p6, p0, Landroid/bluetooth/BluetoothOobData;->mAddress:Ljava/lang/String;

    .line 92
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP192:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP192:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_1

    .line 84
    :cond_2
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP256:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_2

    .line 88
    :cond_3
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP256:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAddressStringFromBytearray([B)Ljava/lang/String;
    .locals 8
    .param p1, "address"    # [B

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 190
    const-string v0, "%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X:%02X"

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/Object;

    aget-byte v2, p1, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v3

    aget-byte v2, p1, v4

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v4

    aget-byte v2, p1, v5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v5

    aget-byte v2, p1, v6

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v6

    aget-byte v2, p1, v7

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x5

    const/4 v3, 0x5

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const/4 v3, 0x6

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const/4 v3, 0x7

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const/16 v3, 0x8

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const/16 v3, 0x9

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0xa

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const/16 v3, 0xb

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0xc

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const/16 v3, 0xd

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0xe

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0xf

    aget-byte v3, p1, v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBtAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getHashP192()[B
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP192:[B

    return-object v0
.end method

.method public getHashP256()[B
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP256:[B

    return-object v0
.end method

.method public getRandomizerP192()[B
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP192:[B

    return-object v0
.end method

.method public getRandomizerP256()[B
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP256:[B

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mValid_P192_P256 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothOobData;->mValid_P192_P256:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHashP192 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothOobData;->mHashP192:[B

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothOobData;->getAddressStringFromBytearray([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRandomizerP192 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP192:[B

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothOobData;->getAddressStringFromBytearray([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHashP256 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothOobData;->mHashP256:[B

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothOobData;->getAddressStringFromBytearray([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRandomizerP256 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP256:[B

    invoke-virtual {p0, v1}, Landroid/bluetooth/BluetoothOobData;->getAddressStringFromBytearray([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAddress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/BluetoothOobData;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValid_P192_P256()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Landroid/bluetooth/BluetoothOobData;->mValid_P192_P256:I

    return v0
.end method

.method public setBtAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 145
    iput-object p1, p0, Landroid/bluetooth/BluetoothOobData;->mAddress:Ljava/lang/String;

    .line 146
    return-void
.end method

.method public setHashP192([B)V
    .locals 1
    .param p1, "hashP192"    # [B

    .prologue
    .line 120
    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP192:[B

    .line 121
    return-void
.end method

.method public setHashP256([B)V
    .locals 1
    .param p1, "randomizerP256"    # [B

    .prologue
    .line 130
    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP256:[B

    .line 131
    return-void
.end method

.method public setRandomizerP192([B)V
    .locals 1
    .param p1, "randomizerP192"    # [B

    .prologue
    .line 125
    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP192:[B

    .line 126
    return-void
.end method

.method public setRandomizerP256([B)V
    .locals 1
    .param p1, "randomizerP256"    # [B

    .prologue
    .line 135
    const/16 v0, 0x10

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP256:[B

    .line 136
    return-void
.end method

.method public setValid_P192_P256(I)V
    .locals 0
    .param p1, "valid_P192_P256"    # I

    .prologue
    .line 140
    iput p1, p0, Landroid/bluetooth/BluetoothOobData;->mValid_P192_P256:I

    .line 141
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 211
    iget v0, p0, Landroid/bluetooth/BluetoothOobData;->mValid_P192_P256:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP192:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 213
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP192:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 214
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mHashP256:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 215
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mRandomizerP256:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 216
    iget-object v0, p0, Landroid/bluetooth/BluetoothOobData;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    return-void
.end method
