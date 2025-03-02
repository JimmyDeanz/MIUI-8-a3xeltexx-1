.class public Landroid/content/ContentProviderOperation;
.super Ljava/lang/Object;
.source "ContentProviderOperation.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProviderOperation$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ContentProviderOperation"

.field public static final TYPE_ASSERT:I = 0x4

.field public static final TYPE_DELETE:I = 0x3

.field public static final TYPE_INSERT:I = 0x1

.field public static final TYPE_UPDATE:I = 0x2


# instance fields
.field private final mExpectedCount:Ljava/lang/Integer;

.field private final mSelection:Ljava/lang/String;

.field private final mSelectionArgs:[Ljava/lang/String;

.field private final mSelectionArgsBackReferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:I

.field private final mUri:Landroid/net/Uri;

.field private final mValues:Landroid/content/ContentValues;

.field private final mValuesBackReferences:Landroid/content/ContentValues;

.field private final mYieldAllowed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 472
    new-instance v0, Landroid/content/ContentProviderOperation$1;

    invoke-direct {v0}, Landroid/content/ContentProviderOperation$1;-><init>()V

    sput-object v0, Landroid/content/ContentProviderOperation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/content/ContentProviderOperation$Builder;)V
    .locals 1
    .param p1, "builder"    # Landroid/content/ContentProviderOperation$Builder;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    # getter for: Landroid/content/ContentProviderOperation$Builder;->mType:I
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->access$000(Landroid/content/ContentProviderOperation$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    .line 64
    # getter for: Landroid/content/ContentProviderOperation$Builder;->mUri:Landroid/net/Uri;
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->access$100(Landroid/content/ContentProviderOperation$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    .line 65
    # getter for: Landroid/content/ContentProviderOperation$Builder;->mValues:Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->access$200(Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentValues;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    .line 66
    # getter for: Landroid/content/ContentProviderOperation$Builder;->mSelection:Ljava/lang/String;
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->access$300(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    .line 67
    # getter for: Landroid/content/ContentProviderOperation$Builder;->mSelectionArgs:[Ljava/lang/String;
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->access$400(Landroid/content/ContentProviderOperation$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    .line 68
    # getter for: Landroid/content/ContentProviderOperation$Builder;->mExpectedCount:Ljava/lang/Integer;
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->access$500(Landroid/content/ContentProviderOperation$Builder;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    .line 69
    # getter for: Landroid/content/ContentProviderOperation$Builder;->mSelectionArgsBackReferences:Ljava/util/Map;
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->access$600(Landroid/content/ContentProviderOperation$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    .line 70
    # getter for: Landroid/content/ContentProviderOperation$Builder;->mValuesBackReferences:Landroid/content/ContentValues;
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->access$700(Landroid/content/ContentProviderOperation$Builder;)Landroid/content/ContentValues;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    .line 71
    # getter for: Landroid/content/ContentProviderOperation$Builder;->mYieldAllowed:Z
    invoke-static {p1}, Landroid/content/ContentProviderOperation$Builder;->access$800(Landroid/content/ContentProviderOperation$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/ContentProviderOperation$Builder;Landroid/content/ContentProviderOperation$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/content/ContentProviderOperation$Builder;
    .param p2, "x1"    # Landroid/content/ContentProviderOperation$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation$Builder;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentProviderOperation;Z)V
    .locals 1
    .param p1, "cpo"    # Landroid/content/ContentProviderOperation;
    .param p2, "removeUserIdFromUri"    # Z

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iget v0, p1, Landroid/content/ContentProviderOperation;->mType:I

    iput v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    .line 99
    if-eqz p2, :cond_0

    .line 100
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    .line 104
    :goto_0
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    .line 105
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    .line 106
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    .line 107
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    .line 108
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    .line 109
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    .line 110
    iget-boolean v0, p1, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    iput-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    .line 111
    return-void

    .line 102
    :cond_0
    iget-object v0, p1, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    iput-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/content/ContentProviderOperation;->mType:I

    .line 76
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    :goto_0
    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v2

    :goto_2
    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroid/content/ContentValues;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    :goto_4
    iput-object v2, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    :cond_0
    iput-object v3, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    .line 87
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    if-eqz v2, :cond_6

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_6

    .line 90
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    move-object v2, v3

    .line 77
    goto :goto_0

    :cond_2
    move-object v2, v3

    .line 78
    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 79
    goto :goto_2

    :cond_4
    move-object v2, v3

    .line 80
    goto :goto_3

    :cond_5
    move-object v2, v3

    .line 81
    goto :goto_4

    .line 93
    :cond_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    :goto_6
    iput-boolean v2, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    .line 94
    return-void

    .line 93
    :cond_7
    const/4 v2, 0x0

    goto :goto_6
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/ContentProviderOperation$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/content/ContentProviderOperation$1;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private backRefToValue([Landroid/content/ContentProviderResult;ILjava/lang/Integer;)J
    .locals 6
    .param p1, "backRefs"    # [Landroid/content/ContentProviderResult;
    .param p2, "numBackRefs"    # I
    .param p3, "backRefIndex"    # Ljava/lang/Integer;

    .prologue
    .line 453
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v1, p2, :cond_0

    .line 454
    const-string v1, "ContentProviderOperation"

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "asked for back ref "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but there are only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " back refs"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 458
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, p1, v1

    .line 460
    .local v0, "backRef":Landroid/content/ContentProviderResult;
    iget-object v1, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 461
    iget-object v1, v0, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v2

    .line 465
    .local v2, "backRefValue":J
    :goto_0
    return-wide v2

    .line 463
    .end local v2    # "backRefValue":J
    :cond_1
    iget-object v1, v0, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    .restart local v2    # "backRefValue":J
    goto :goto_0
.end method

.method public static newAssertQuery(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 200
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$1;)V

    return-object v0
.end method

.method public static newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 191
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$1;)V

    return-object v0
.end method

.method public static newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 173
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$1;)V

    return-object v0
.end method

.method public static newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 182
    new-instance v0, Landroid/content/ContentProviderOperation$Builder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Landroid/content/ContentProviderOperation$Builder;-><init>(ILandroid/net/Uri;Landroid/content/ContentProviderOperation$1;)V

    return-object v0
.end method


# virtual methods
.method public apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;
    .locals 19
    .param p1, "provider"    # Landroid/content/ContentProvider;
    .param p2, "backRefs"    # [Landroid/content/ContentProviderResult;
    .param p3, "numBackRefs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 302
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation;->resolveValueBackReferences([Landroid/content/ContentProviderResult;I)Landroid/content/ContentValues;

    move-result-object v18

    .line 303
    .local v18, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentProviderOperation;->resolveSelectionArgsBackReferences([Landroid/content/ContentProviderResult;I)[Ljava/lang/String;

    move-result-object v7

    .line 306
    .local v7, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget v3, v0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 307
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 308
    .local v15, "newUri":Landroid/net/Uri;
    if-nez v15, :cond_0

    .line 309
    new-instance v3, Landroid/content/OperationApplicationException;

    const-string/jumbo v4, "insert failed"

    invoke-direct {v3, v4}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 311
    :cond_0
    new-instance v3, Landroid/content/ContentProviderResult;

    invoke-direct {v3, v15}, Landroid/content/ContentProviderResult;-><init>(Landroid/net/Uri;)V

    .line 361
    .end local v15    # "newUri":Landroid/net/Uri;
    :goto_0
    return-object v3

    .line 315
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 316
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4, v7}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .line 356
    .local v16, "numRows":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v0, v16

    if-eq v3, v0, :cond_a

    .line 357
    const-string v3, "ContentProviderOperation"

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v3, Landroid/content/OperationApplicationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wrong number of rows: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 317
    .end local v16    # "numRows":I
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 318
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v1, v4, v7}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v16

    .restart local v16    # "numRows":I
    goto :goto_1

    .line 319
    .end local v16    # "numRows":I
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_9

    .line 321
    const/4 v5, 0x0

    .line 322
    .local v5, "projection":[Ljava/lang/String;
    if-eqz v18, :cond_5

    .line 324
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 325
    .local v17, "projectionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v18 .. v18}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 326
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 328
    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "projection":[Ljava/lang/String;
    check-cast v5, [Ljava/lang/String;

    .line 330
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v17    # "projectionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "projection":[Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 332
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v16

    .line 333
    .restart local v16    # "numRows":I
    if-eqz v5, :cond_8

    .line 334
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 335
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    array-length v3, v5

    if-ge v13, v3, :cond_6

    .line 336
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 337
    .local v10, "cursorValue":Ljava/lang/String;
    aget-object v3, v5, v13

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 338
    .local v12, "expectedValue":Ljava/lang/String;
    invoke-static {v10, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 340
    const-string v3, "ContentProviderOperation"

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    new-instance v3, Landroid/content/OperationApplicationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found value "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " when expected "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for column "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v6, v5, v13

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    .end local v10    # "cursorValue":Ljava/lang/String;
    .end local v12    # "expectedValue":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v16    # "numRows":I
    :catchall_0
    move-exception v3

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v3

    .line 335
    .restart local v10    # "cursorValue":Ljava/lang/String;
    .restart local v12    # "expectedValue":Ljava/lang/String;
    .restart local v13    # "i":I
    .restart local v16    # "numRows":I
    :cond_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 349
    .end local v10    # "cursorValue":Ljava/lang/String;
    .end local v12    # "expectedValue":Ljava/lang/String;
    .end local v13    # "i":I
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 352
    .end local v5    # "projection":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v16    # "numRows":I
    :cond_9
    const-string v3, "ContentProviderOperation"

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad type, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Landroid/content/ContentProviderOperation;->mType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 361
    .restart local v16    # "numRows":I
    :cond_a
    new-instance v3, Landroid/content/ContentProviderResult;

    move/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/content/ContentProviderResult;-><init>(I)V

    goto/16 :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    return v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getWithoutUserIdInUri()Landroid/content/ContentProviderOperation;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentProvider;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    new-instance v0, Landroid/content/ContentProviderOperation;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation;Z)V

    move-object p0, v0

    .line 118
    .end local p0    # "this":Landroid/content/ContentProviderOperation;
    :cond_0
    return-object p0
.end method

.method public isAssertQuery()Z
    .locals 2

    .prologue
    .line 263
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDelete()Z
    .locals 2

    .prologue
    .line 245
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDeleteOperation()Z
    .locals 2

    .prologue
    .line 227
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInsert()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 236
    iget v1, p0, Landroid/content/ContentProviderOperation;->mType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadOperation()Z
    .locals 2

    .prologue
    .line 283
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUpdate()Z
    .locals 2

    .prologue
    .line 254
    iget v0, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWriteOperation()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 274
    iget v1, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroid/content/ContentProviderOperation;->mType:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Landroid/content/ContentProviderOperation;->mType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isYieldAllowed()Z
    .locals 1

    .prologue
    .line 217
    iget-boolean v0, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    return v0
.end method

.method public resolveSelectionArgsBackReferences([Landroid/content/ContentProviderResult;I)[Ljava/lang/String;
    .locals 8
    .param p1, "backRefs"    # [Landroid/content/ContentProviderResult;
    .param p2, "numBackRefs"    # I

    .prologue
    const/4 v7, 0x0

    .line 416
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    if-nez v5, :cond_1

    .line 417
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    .line 428
    :cond_0
    return-object v2

    .line 419
    :cond_1
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    array-length v5, v5

    new-array v2, v5, [Ljava/lang/String;

    .line 420
    .local v2, "newArgs":[Ljava/lang/String;
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    iget-object v6, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    array-length v6, v6

    invoke-static {v5, v7, v2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 422
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 423
    .local v3, "selectionArgBackRef":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 424
    .local v4, "selectionArgIndex":Ljava/lang/Integer;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 425
    .local v0, "backRefIndex":I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, p1, p2, v6}, Landroid/content/ContentProviderOperation;->backRefToValue([Landroid/content/ContentProviderResult;ILjava/lang/Integer;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    goto :goto_0
.end method

.method public resolveValueBackReferences([Landroid/content/ContentProviderResult;I)Landroid/content/ContentValues;
    .locals 8
    .param p1, "backRefs"    # [Landroid/content/ContentProviderResult;
    .param p2, "numBackRefs"    # I

    .prologue
    .line 379
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    if-nez v5, :cond_1

    .line 380
    iget-object v4, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    .line 397
    :cond_0
    return-object v4

    .line 383
    :cond_1
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    if-nez v5, :cond_2

    .line 384
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 388
    .local v4, "values":Landroid/content/ContentValues;
    :goto_0
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-virtual {v5}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 389
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 390
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 391
    .local v0, "backRefIndex":Ljava/lang/Integer;
    if-nez v0, :cond_3

    .line 392
    const-string v5, "ContentProviderOperation"

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "values backref "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not an integer"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 386
    .end local v0    # "backRefIndex":Ljava/lang/Integer;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "values":Landroid/content/ContentValues;
    :cond_2
    new-instance v4, Landroid/content/ContentValues;

    iget-object v5, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    invoke-direct {v4, v5}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .restart local v4    # "values":Landroid/content/ContentValues;
    goto :goto_0

    .line 395
    .restart local v0    # "backRefIndex":Ljava/lang/Integer;
    .restart local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "key":Ljava/lang/String;
    :cond_3
    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProviderOperation;->backRefToValue([Landroid/content/ContentProviderResult;ILjava/lang/Integer;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/content/ContentProviderOperation;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSelection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExpectedCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mYieldAllowed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValues: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mValuesBackReferences: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSelectionArgsBackReferences: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 122
    iget v2, p0, Landroid/content/ContentProviderOperation;->mType:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mUri:Landroid/net/Uri;

    invoke-static {p1, v2}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    .line 124
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    if-eqz v2, :cond_0

    .line 125
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2, p1, v4}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    .line 130
    :goto_0
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 131
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelection:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    :goto_1
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 137
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgs:[Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 142
    :goto_2
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    if-eqz v2, :cond_3

    .line 143
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mExpectedCount:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    :goto_3
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    if-eqz v2, :cond_4

    .line 149
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mValuesBackReferences:Landroid/content/ContentValues;

    invoke-virtual {v2, p1, v4}, Landroid/content/ContentValues;->writeToParcel(Landroid/os/Parcel;I)V

    .line 154
    :goto_4
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    if-eqz v2, :cond_5

    .line 155
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget-object v2, p0, Landroid/content/ContentProviderOperation;->mSelectionArgsBackReferences:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 128
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 140
    :cond_2
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 146
    :cond_3
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 152
    :cond_4
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 162
    :cond_5
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    :cond_6
    iget-boolean v2, p0, Landroid/content/ContentProviderOperation;->mYieldAllowed:Z

    if-eqz v2, :cond_7

    move v2, v3

    :goto_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    return-void

    :cond_7
    move v2, v4

    .line 164
    goto :goto_6
.end method
