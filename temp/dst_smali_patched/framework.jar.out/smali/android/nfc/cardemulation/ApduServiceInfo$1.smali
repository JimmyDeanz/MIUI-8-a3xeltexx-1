.class final Landroid/nfc/cardemulation/ApduServiceInfo$1;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/cardemulation/ApduServiceInfo;
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
        "Landroid/nfc/cardemulation/ApduServiceInfo;",
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
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 27
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    sget-object v1, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .local v2, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .local v4, "description":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    .local v3, "onHost":Z
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v26

    .local v26, "numStaticGroups":I
    if-lez v26, :cond_0

    sget-object v1, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v25

    .local v25, "numDynamicGroups":I
    if-lez v25, :cond_1

    sget-object v1, Landroid/nfc/cardemulation/AidGroup;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v7, 0x1

    .local v7, "requiresUnlock":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .local v8, "bannerResource":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .local v9, "uid":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .local v10, "settingsActivityName":Ljava/lang/String;
    sget-object v1, Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p1

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;

    .local v23, "seInfo":Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .local v20, "bannerFileName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v11, 0x1

    .local v11, "isSelected":Z
    :goto_2
    const-string v1, "DCM"

    sget-object v12, Landroid/nfc/cardemulation/ApduServiceInfo;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "KDI"

    sget-object v12, Landroid/nfc/cardemulation/ApduServiceInfo;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_2
    new-instance v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    invoke-direct/range {v1 .. v11}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Z)V

    move-object v12, v1

    :goto_3
    return-object v12

    .end local v3    # "onHost":Z
    .end local v5    # "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v6    # "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .end local v7    # "requiresUnlock":Z
    .end local v8    # "bannerResource":I
    .end local v9    # "uid":I
    .end local v10    # "settingsActivityName":Ljava/lang/String;
    .end local v11    # "isSelected":Z
    .end local v20    # "bannerFileName":Ljava/lang/String;
    .end local v23    # "seInfo":Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;
    .end local v25    # "numDynamicGroups":I
    .end local v26    # "numStaticGroups":I
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .restart local v3    # "onHost":Z
    .restart local v5    # "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .restart local v6    # "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .restart local v25    # "numDynamicGroups":I
    .restart local v26    # "numStaticGroups":I
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .restart local v7    # "requiresUnlock":Z
    .restart local v8    # "bannerResource":I
    .restart local v9    # "uid":I
    .restart local v10    # "settingsActivityName":Ljava/lang/String;
    .restart local v20    # "bannerFileName":Ljava/lang/String;
    .restart local v23    # "seInfo":Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .restart local v11    # "isSelected":Z
    :cond_6
    new-instance v12, Landroid/nfc/cardemulation/ApduServiceInfo;

    move-object v13, v2

    move v14, v3

    move-object v15, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    move/from16 v21, v9

    move-object/from16 v22, v10

    move/from16 v24, v11

    invoke-direct/range {v12 .. v24}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;ILjava/lang/String;Landroid/nfc/cardemulation/ApduServiceInfo$SecureElementInfo;Z)V

    goto :goto_3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    new-array v0, p1, [Landroid/nfc/cardemulation/ApduServiceInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/nfc/cardemulation/ApduServiceInfo$1;->newArray(I)[Landroid/nfc/cardemulation/ApduServiceInfo;

    move-result-object v0

    return-object v0
.end method
