.class final Landroid/content/res/StringBlock;
.super Ljava/lang/Object;
.source "StringBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/StringBlock$Height;,
        Landroid/content/res/StringBlock$StyleIDs;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AssetManager"

.field private static final localLOGV:Z


# instance fields
.field private final mNative:J

.field private final mOwnsNative:Z

.field private mSparseStrings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mStrings:[Ljava/lang/CharSequence;

.field mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

.field private final mUseSparse:Z


# direct methods
.method constructor <init>(JZ)V
    .locals 1
    .param p1, "obj"    # J
    .param p3, "useSparse"    # Z

    .prologue
    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 532
    iput-wide p1, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 533
    iput-boolean p3, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 534
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 537
    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "useSparse"    # Z

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 56
    invoke-static {p1, p2, p3}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 57
    iput-boolean p4, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 58
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 61
    return-void
.end method

.method public constructor <init>([BZ)V
    .locals 2
    .param p1, "data"    # [B
    .param p2, "useSparse"    # Z

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 48
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/content/res/StringBlock;->nativeCreate([BII)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    .line 49
    iput-boolean p2, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    .line 53
    return-void
.end method

.method private static addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .locals 3
    .param p0, "buffer"    # Landroid/text/Spannable;
    .param p1, "what"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const/16 v2, 0xa

    .line 411
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    .line 413
    .local v0, "len":I
    if-eqz p2, :cond_0

    if-eq p2, v0, :cond_0

    add-int/lit8 v1, p2, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_0

    .line 414
    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-lez p2, :cond_0

    .line 415
    add-int/lit8 v1, p2, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_2

    .line 421
    :cond_0
    if-eqz p3, :cond_1

    if-eq p3, v0, :cond_1

    add-int/lit8 v1, p3, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-eq v1, v2, :cond_1

    .line 422
    add-int/lit8 p3, p3, 0x1

    :goto_1
    if-ge p3, v0, :cond_1

    .line 423
    add-int/lit8 v1, p3, -0x1

    invoke-interface {p0, v1}, Landroid/text/Spannable;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_3

    .line 429
    :cond_1
    const/16 v1, 0x33

    invoke-interface {p0, p1, p2, p3, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 430
    return-void

    .line 414
    :cond_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 422
    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method private applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;Z)Ljava/lang/CharSequence;
    .locals 18
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "style"    # [I
    .param p3, "ids"    # Landroid/content/res/StringBlock$StyleIDs;
    .param p4, "hasCustomizedString"    # Z

    .prologue
    .line 181
    move-object/from16 v0, p2

    array-length v14, v0

    if-nez v14, :cond_0

    .line 355
    .end local p1    # "str":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 183
    .restart local p1    # "str":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    .line 220
    .local v4, "i":I
    new-instance v2, Landroid/text/SpannableString;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 221
    .local v2, "buffer":Landroid/text/SpannableString;
    const/4 v4, 0x0

    .line 222
    :goto_1
    move-object/from16 v0, p2

    array-length v14, v0

    if-ge v4, v14, :cond_15

    .line 223
    aget v12, p2, v4

    .line 228
    .local v12, "type":I
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->boldId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_2

    .line 229
    new-instance v14, Landroid/text/style/StyleSpan;

    const/4 v15, 0x1

    invoke-direct {v14, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 353
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x3

    .line 354
    goto :goto_1

    .line 232
    :cond_2
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->italicId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$100(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_3

    .line 233
    new-instance v14, Landroid/text/style/StyleSpan;

    const/4 v15, 0x2

    invoke-direct {v14, v15}, Landroid/text/style/StyleSpan;-><init>(I)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 236
    :cond_3
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->underlineId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$200(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_4

    .line 237
    new-instance v14, Landroid/text/style/UnderlineSpan;

    invoke-direct {v14}, Landroid/text/style/UnderlineSpan;-><init>()V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 240
    :cond_4
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->ttId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$300(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_5

    .line 241
    new-instance v14, Landroid/text/style/TypefaceSpan;

    const-string/jumbo v15, "monospace"

    invoke-direct {v14, v15}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    .line 244
    :cond_5
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->bigId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$400(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_6

    .line 245
    new-instance v14, Landroid/text/style/RelativeSizeSpan;

    const/high16 v15, 0x3fa00000    # 1.25f

    invoke-direct {v14, v15}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 248
    :cond_6
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->smallId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$500(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_7

    .line 249
    new-instance v14, Landroid/text/style/RelativeSizeSpan;

    const v15, 0x3f4ccccd    # 0.8f

    invoke-direct {v14, v15}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 252
    :cond_7
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->subId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$600(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_8

    .line 253
    new-instance v14, Landroid/text/style/SubscriptSpan;

    invoke-direct {v14}, Landroid/text/style/SubscriptSpan;-><init>()V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 256
    :cond_8
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->supId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$700(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_9

    .line 257
    new-instance v14, Landroid/text/style/SuperscriptSpan;

    invoke-direct {v14}, Landroid/text/style/SuperscriptSpan;-><init>()V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 260
    :cond_9
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->strikeId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$800(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_a

    .line 261
    new-instance v14, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v14}, Landroid/text/style/StrikethroughSpan;-><init>()V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 264
    :cond_a
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->listItemId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$900(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_b

    .line 265
    new-instance v14, Landroid/text/style/BulletSpan;

    const/16 v15, 0xa

    invoke-direct {v14, v15}, Landroid/text/style/BulletSpan;-><init>(I)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    invoke-static {v2, v14, v15, v0}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    goto/16 :goto_2

    .line 267
    :cond_b
    # getter for: Landroid/content/res/StringBlock$StyleIDs;->marqueeId:I
    invoke-static/range {p3 .. p3}, Landroid/content/res/StringBlock$StyleIDs;->access$1000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v14

    if-ne v12, v14, :cond_c

    .line 268
    sget-object v14, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x12

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 272
    :cond_c
    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v14, v15, v12}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v11

    .line 274
    .local v11, "tag":Ljava/lang/String;
    const-string v14, "font;"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 277
    const-string v14, ";height="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 278
    .local v9, "sub":Ljava/lang/String;
    if-eqz v9, :cond_d

    .line 279
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 280
    .local v8, "size":I
    new-instance v14, Landroid/content/res/StringBlock$Height;

    invoke-direct {v14, v8}, Landroid/content/res/StringBlock$Height;-><init>(I)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    invoke-static {v2, v14, v15, v0}, Landroid/content/res/StringBlock;->addParagraphSpan(Landroid/text/Spannable;Ljava/lang/Object;II)V

    .line 284
    .end local v8    # "size":I
    :cond_d
    const-string v14, ";size="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 285
    if-eqz v9, :cond_e

    .line 286
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 287
    .restart local v8    # "size":I
    new-instance v14, Landroid/text/style/AbsoluteSizeSpan;

    const/4 v15, 0x1

    invoke-direct {v14, v8, v15}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 292
    .end local v8    # "size":I
    :cond_e
    const-string v14, ";fgcolor="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 293
    if-eqz v9, :cond_f

    .line 294
    const/4 v14, 0x1

    invoke-static {v9, v14}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v14

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 299
    :cond_f
    const-string v14, ";color="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 300
    if-eqz v9, :cond_10

    .line 301
    const/4 v14, 0x1

    invoke-static {v9, v14}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v14

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 306
    :cond_10
    const-string v14, ";bgcolor="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 307
    if-eqz v9, :cond_11

    .line 308
    const/4 v14, 0x0

    invoke-static {v9, v14}, Landroid/content/res/StringBlock;->getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;

    move-result-object v14

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 313
    :cond_11
    const-string v14, ";face="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 314
    if-eqz v9, :cond_1

    .line 315
    new-instance v14, Landroid/text/style/TypefaceSpan;

    invoke-direct {v14, v9}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 319
    .end local v9    # "sub":Ljava/lang/String;
    :cond_12
    const-string v14, "a;"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 322
    const-string v14, ";href="

    invoke-static {v11, v14}, Landroid/content/res/StringBlock;->subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 323
    .restart local v9    # "sub":Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 324
    new-instance v14, Landroid/text/style/URLSpan;

    invoke-direct {v14, v9}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_2

    .line 328
    .end local v9    # "sub":Ljava/lang/String;
    :cond_13
    const-string v14, "annotation;"

    invoke-virtual {v11, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 329
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    .line 332
    .local v6, "len":I
    const/16 v14, 0x3b

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .local v10, "t":I
    :goto_3
    if-ge v10, v6, :cond_1

    .line 333
    const/16 v14, 0x3d

    invoke-virtual {v11, v14, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 334
    .local v3, "eq":I
    if-ltz v3, :cond_1

    .line 338
    const/16 v14, 0x3b

    invoke-virtual {v11, v14, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v7

    .line 339
    .local v7, "next":I
    if-gez v7, :cond_14

    .line 340
    move v7, v6

    .line 343
    :cond_14
    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v11, v14, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 344
    .local v5, "key":Ljava/lang/String;
    add-int/lit8 v14, v3, 0x1

    invoke-virtual {v11, v14, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 346
    .local v13, "value":Ljava/lang/String;
    new-instance v14, Landroid/text/Annotation;

    invoke-direct {v14, v5, v13}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v15, v4, 0x1

    aget v15, p2, v15

    add-int/lit8 v16, v4, 0x2

    aget v16, p2, v16

    add-int/lit8 v16, v16, 0x1

    const/16 v17, 0x21

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v14, v15, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 332
    move v10, v7

    goto :goto_3

    .line 355
    .end local v3    # "eq":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "len":I
    .end local v7    # "next":I
    .end local v10    # "t":I
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    .end local v13    # "value":Ljava/lang/String;
    :cond_15
    new-instance p1, Landroid/text/SpannedString;

    .end local p1    # "str":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-direct {v0, v2}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private static getColor(Ljava/lang/String;Z)Landroid/text/style/CharacterStyle;
    .locals 11
    .param p0, "color"    # Ljava/lang/String;
    .param p1, "foreground"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 373
    const/high16 v6, -0x1000000

    .line 375
    .local v6, "c":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 377
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 378
    .local v10, "res":Landroid/content/res/Resources;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 379
    .local v9, "name":Ljava/lang/String;
    const-string v0, "color"

    const-string v3, "android"

    invoke-virtual {v10, v9, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 380
    .local v7, "colorRes":I
    if-eqz v7, :cond_1

    .line 381
    invoke-virtual {v10, v7, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v4

    .line 382
    .local v4, "colors":Landroid/content/res/ColorStateList;
    if-eqz p1, :cond_0

    .line 383
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    move v3, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    .line 400
    .end local v4    # "colors":Landroid/content/res/ColorStateList;
    .end local v7    # "colorRes":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "res":Landroid/content/res/Resources;
    :goto_0
    return-object v0

    .line 385
    .restart local v4    # "colors":Landroid/content/res/ColorStateList;
    .restart local v7    # "colorRes":I
    .restart local v9    # "name":Ljava/lang/String;
    .restart local v10    # "res":Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    .line 397
    .end local v4    # "colors":Landroid/content/res/ColorStateList;
    .end local v7    # "colorRes":I
    .end local v9    # "name":Ljava/lang/String;
    .end local v10    # "res":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    .line 398
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    goto :goto_0

    .line 390
    :cond_2
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_1

    .line 391
    :catch_0
    move-exception v8

    .line 392
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const/high16 v6, -0x1000000

    goto :goto_1

    .line 400
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    new-instance v0, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v0, v6}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    goto :goto_0
.end method

.method private static native nativeCreate([BII)J
.end method

.method private static native nativeDestroy(J)V
.end method

.method private static native nativeGetSize(J)I
.end method

.method private static native nativeGetString(JI)Ljava/lang/String;
.end method

.method private static native nativeGetStyle(JI)[I
.end method

.method private static subtag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "full"    # Ljava/lang/String;
    .param p1, "attribute"    # Ljava/lang/String;

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 434
    .local v1, "start":I
    if-gez v1, :cond_0

    .line 435
    const/4 v2, 0x0

    .line 444
    :goto_0
    return-object v2

    .line 438
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 439
    const/16 v2, 0x3b

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 441
    .local v0, "end":I
    if-gez v0, :cond_1

    .line 442
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 444
    :cond_1
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 156
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    iget-boolean v0, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v0, :cond_0

    .line 159
    iget-wide v0, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v0, v1}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    .line 162
    :cond_0
    return-void

    .line 158
    :catchall_0
    move-exception v0

    iget-boolean v1, p0, Landroid/content/res/StringBlock;->mOwnsNative:Z

    if-eqz v1, :cond_1

    .line 159
    iget-wide v2, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v2, v3}, Landroid/content/res/StringBlock;->nativeDestroy(J)V

    :cond_1
    throw v0
.end method

.method public get(I)Ljava/lang/CharSequence;
    .locals 10
    .param p1, "idx"    # I

    .prologue
    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v8, :cond_0

    .line 66
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aget-object v2, v8, p1

    .line 67
    .local v2, "res":Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    .line 68
    monitor-exit p0

    .line 150
    :goto_0
    return-object v2

    .line 70
    .end local v2    # "res":Ljava/lang/CharSequence;
    :cond_0
    iget-object v8, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    if-eqz v8, :cond_1

    .line 71
    iget-object v8, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v8, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 72
    .restart local v2    # "res":Ljava/lang/CharSequence;
    if-eqz v2, :cond_2

    .line 73
    monitor-exit p0

    goto :goto_0

    .line 151
    .end local v2    # "res":Ljava/lang/CharSequence;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 76
    :cond_1
    :try_start_1
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9}, Landroid/content/res/StringBlock;->nativeGetSize(J)I

    move-result v1

    .line 77
    .local v1, "num":I
    iget-boolean v8, p0, Landroid/content/res/StringBlock;->mUseSparse:Z

    if-eqz v8, :cond_5

    const/16 v8, 0xfa

    if-le v1, v8, :cond_5

    .line 78
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    .line 83
    .end local v1    # "num":I
    :cond_2
    :goto_1
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, p1}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, "str":Ljava/lang/String;
    move-object v2, v3

    .line 85
    .restart local v2    # "res":Ljava/lang/CharSequence;
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, p1}, Landroid/content/res/StringBlock;->nativeGetStyle(JI)[I

    move-result-object v4

    .line 88
    .local v4, "style":[I
    if-eqz v4, :cond_12

    .line 89
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    if-nez v8, :cond_3

    .line 90
    new-instance v8, Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {v8}, Landroid/content/res/StringBlock$StyleIDs;-><init>()V

    iput-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    .line 93
    :cond_3
    const/4 v0, 0x0

    .line 97
    .local v0, "hasCustomizedString":Z
    const/4 v6, 0x0

    .local v6, "styleIndex":I
    :goto_2
    array-length v8, v4

    if-ge v6, v8, :cond_11

    .line 98
    aget v5, v4, v6

    .line 100
    .local v5, "styleId":I
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->boldId:I
    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->access$000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->italicId:I
    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->access$100(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->underlineId:I
    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->access$200(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->ttId:I
    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->access$300(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->bigId:I
    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->access$400(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->smallId:I
    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->access$500(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->subId:I
    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->access$600(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->supId:I
    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->access$700(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->strikeId:I
    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->access$800(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->listItemId:I
    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->access$900(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-eq v5, v8, :cond_4

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # getter for: Landroid/content/res/StringBlock$StyleIDs;->marqueeId:I
    invoke-static {v8}, Landroid/content/res/StringBlock$StyleIDs;->access$1000(Landroid/content/res/StringBlock$StyleIDs;)I

    move-result v8

    if-ne v5, v8, :cond_6

    .line 97
    :cond_4
    :goto_3
    add-int/lit8 v6, v6, 0x3

    goto :goto_2

    .line 80
    .end local v0    # "hasCustomizedString":Z
    .end local v2    # "res":Ljava/lang/CharSequence;
    .end local v3    # "str":Ljava/lang/String;
    .end local v4    # "style":[I
    .end local v5    # "styleId":I
    .end local v6    # "styleIndex":I
    .restart local v1    # "num":I
    :cond_5
    new-array v8, v1, [Ljava/lang/CharSequence;

    iput-object v8, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    goto :goto_1

    .line 116
    .end local v1    # "num":I
    .restart local v0    # "hasCustomizedString":Z
    .restart local v2    # "res":Ljava/lang/CharSequence;
    .restart local v3    # "str":Ljava/lang/String;
    .restart local v4    # "style":[I
    .restart local v5    # "styleId":I
    .restart local v6    # "styleIndex":I
    :cond_6
    iget-wide v8, p0, Landroid/content/res/StringBlock;->mNative:J

    invoke-static {v8, v9, v5}, Landroid/content/res/StringBlock;->nativeGetString(JI)Ljava/lang/String;

    move-result-object v7

    .line 118
    .local v7, "styleTag":Ljava/lang/String;
    const-string v8, "b"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 119
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->boldId:I
    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$002(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_3

    .line 120
    :cond_7
    const-string/jumbo v8, "i"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 121
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->italicId:I
    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$102(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_3

    .line 122
    :cond_8
    const-string/jumbo v8, "u"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 123
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->underlineId:I
    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$202(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_3

    .line 124
    :cond_9
    const-string/jumbo v8, "tt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 125
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->ttId:I
    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$302(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_3

    .line 126
    :cond_a
    const-string v8, "big"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 127
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->bigId:I
    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$402(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_3

    .line 128
    :cond_b
    const-string/jumbo v8, "small"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 129
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->smallId:I
    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$502(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_3

    .line 130
    :cond_c
    const-string/jumbo v8, "sup"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 131
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->supId:I
    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$702(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto :goto_3

    .line 132
    :cond_d
    const-string/jumbo v8, "sub"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 133
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->subId:I
    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$602(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_3

    .line 134
    :cond_e
    const-string/jumbo v8, "strike"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 135
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->strikeId:I
    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$802(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_3

    .line 136
    :cond_f
    const-string/jumbo v8, "li"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 137
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->listItemId:I
    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$902(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_3

    .line 138
    :cond_10
    const-string/jumbo v8, "marquee"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 139
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    # setter for: Landroid/content/res/StringBlock$StyleIDs;->marqueeId:I
    invoke-static {v8, v5}, Landroid/content/res/StringBlock$StyleIDs;->access$1002(Landroid/content/res/StringBlock$StyleIDs;I)I

    goto/16 :goto_3

    .line 146
    .end local v5    # "styleId":I
    .end local v7    # "styleTag":Ljava/lang/String;
    :cond_11
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStyleIDs:Landroid/content/res/StringBlock$StyleIDs;

    invoke-direct {p0, v3, v4, v8, v0}, Landroid/content/res/StringBlock;->applyStyles(Ljava/lang/String;[ILandroid/content/res/StringBlock$StyleIDs;Z)Ljava/lang/CharSequence;

    move-result-object v2

    .line 148
    .end local v0    # "hasCustomizedString":Z
    .end local v6    # "styleIndex":I
    :cond_12
    iget-object v8, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    if-eqz v8, :cond_13

    iget-object v8, p0, Landroid/content/res/StringBlock;->mStrings:[Ljava/lang/CharSequence;

    aput-object v2, v8, p1

    .line 150
    :goto_4
    monitor-exit p0

    goto/16 :goto_0

    .line 149
    :cond_13
    iget-object v8, p0, Landroid/content/res/StringBlock;->mSparseStrings:Landroid/util/SparseArray;

    invoke-virtual {v8, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4
.end method
