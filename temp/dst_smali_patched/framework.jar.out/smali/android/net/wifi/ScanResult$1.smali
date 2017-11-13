.class final Landroid/net/wifi/ScanResult$1;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
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
        "Landroid/net/wifi/ScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;
    .locals 21
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    .local v3, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    sget-object v4, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    check-cast v3, Landroid/net/wifi/WifiSsid;

    .restart local v3    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_0
    new-instance v2, Landroid/net/wifi/ScanResult;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    const/16 v17, 0x0

    invoke-direct/range {v2 .. v17}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIIIZ)V

    .local v2, "sr":Landroid/net/wifi/ScanResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/net/wifi/ScanResult;->seen:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v2, Landroid/net/wifi/ScanResult;->untrusted:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Landroid/net/wifi/ScanResult;->numConnection:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Landroid/net/wifi/ScanResult;->numUsage:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    iput v4, v2, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, v2, Landroid/net/wifi/ScanResult;->flags:J

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, v2, Landroid/net/wifi/ScanResult;->is5GHzVsi:Z

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/wifi/ScanResult;->ChannelMode:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/wifi/ScanResult;->BSSLoadElement:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/wifi/ScanResult;->SamsungVsie:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .local v20, "n":I
    if-eqz v20, :cond_3

    move/from16 v0, v20

    new-array v4, v0, [Landroid/net/wifi/ScanResult$InformationElement;

    iput-object v4, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    new-instance v5, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-direct {v5}, Landroid/net/wifi/ScanResult$InformationElement;-><init>()V

    aput-object v5, v4, v18

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v4, v4, v18

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, v4, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .local v19, "len":I
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v4, v4, v18

    move/from16 v0, v19

    new-array v5, v0, [B

    iput-object v5, v4, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v4, v4, v18

    iget-object v4, v4, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->readByteArray([B)V

    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .end local v18    # "i":I
    .end local v19    # "len":I
    .end local v20    # "n":I
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_1

    .restart local v20    # "n":I
    :cond_3
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/wifi/ScanResult;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/net/wifi/ScanResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/net/wifi/ScanResult$1;->newArray(I)[Landroid/net/wifi/ScanResult;

    move-result-object v0

    return-object v0
.end method
