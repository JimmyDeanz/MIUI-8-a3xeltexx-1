.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$1;,
        Landroid/text/StaticLayout$LineBreaks;,
        Landroid/text/StaticLayout$Builder;
    }
.end annotation


# static fields
.field private static final CHAR_FIRST_CJK:C = '\u2e80'

.field private static final CHAR_FIRST_HIGH_SURROGATE:I = 0xd800

.field private static final CHAR_HYPHEN:C = '-'

.field private static final CHAR_LAST_LOW_SURROGATE:I = 0xdfff

.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final CHAR_SLASH:C = '/'

.field private static final CHAR_SPACE:C = ' '

.field private static final CHAR_TAB:C = '\t'

.field private static final CHAR_ZWS:C = '\u200b'

.field private static final CHN_LineBreak:I = 0x3

.field private static final COLUMNS_ELLIPSIZE:I = 0x6

.field private static final COLUMNS_NORMAL:I = 0x4

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x5

.field private static final ELLIPSIS_START:I = 0x4

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final HYPHEN:I = 0x3

.field private static final JPN_LineBreak:I = 0x2

.field private static final KOR_LineBreak:I = 0x1

.field private static final MYM_LineBreak:I = 0x4

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mCJKLineBreak:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mLeftIndents:[I

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mRightIndents:[I

.field private mTopPadding:I


# direct methods
.method private constructor <init>(Landroid/text/StaticLayout$Builder;)V
    .locals 8
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;

    .prologue
    .line 534
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_0

    iget-object v1, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    :goto_0
    iget-object v2, p1, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    iget v3, p1, Landroid/text/StaticLayout$Builder;->mWidth:I

    iget-object v4, p1, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    iget v5, p1, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    iget v6, p1, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1955
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    .line 2022
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 541
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v0, :cond_2

    .line 542
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    check-cast v7, Landroid/text/Layout$Ellipsizer;

    .line 544
    .local v7, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v7, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 545
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    iput v0, v7, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 546
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, v7, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 547
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 549
    const/4 v0, 0x6

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 555
    .end local v7    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 556
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 557
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 559
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    .line 560
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    iput-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    .line 562
    iget-boolean v0, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    iget-boolean v1, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 563
    return-void

    .line 534
    :cond_0
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/text/Layout$SpannedEllipsizer;

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/text/Layout$Ellipsizer;

    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    invoke-direct {v1, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 551
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 552
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mWidth:I

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/text/StaticLayout$Builder;
    .param p2, "x1"    # Landroid/text/StaticLayout$1;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 526
    move-object v0, p0

    move-object v1, p1

    move-object v4, v2

    move v6, v5

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    .line 1955
    iput v3, p0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    .line 2022
    const v0, 0x7fffffff

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 528
    const/4 v0, 0x6

    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 529
    const-class v0, Landroid/text/Layout$Directions;

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 530
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 531
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z

    .prologue
    .line 443
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 445
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I

    .prologue
    .line 465
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 468
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z

    .prologue
    .line 455
    const/4 v11, 0x0

    const/4 v12, 0x0

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 457
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "ellipsizedWidth"    # I
    .param p13, "maxLines"    # I

    .prologue
    .line 479
    if-nez p11, :cond_0

    move-object v3, p1

    :goto_0
    move-object v2, p0

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 1955
    const/4 v2, 0x0

    iput v2, p0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    .line 2022
    const v2, 0x7fffffff

    iput v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 486
    invoke-static/range {p1 .. p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p9

    move/from16 v1, p8

    invoke-virtual {v2, v0, v1}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p12

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move-object/from16 v0, p11

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    move/from16 v0, p13

    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v10

    .line 502
    .local v10, "b":Landroid/text/StaticLayout$Builder;
    if-eqz p11, :cond_2

    .line 503
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    check-cast v11, Landroid/text/Layout$Ellipsizer;

    .line 505
    .local v11, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v11, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 506
    move/from16 v0, p12

    iput v0, v11, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 507
    move-object/from16 v0, p11

    iput-object v0, v11, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 508
    move/from16 v0, p12

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    .line 510
    const/4 v2, 0x6

    iput v2, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 516
    .end local v11    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    const-class v2, Landroid/text/Layout$Directions;

    iget v3, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/Layout$Directions;

    iput-object v2, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 517
    iget-object v2, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 518
    move/from16 v0, p13

    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 520
    iget-boolean v2, v10, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    iget-boolean v3, v10, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    invoke-virtual {p0, v10, v2, v3}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 522
    # invokes: Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V
    invoke-static {v10}, Landroid/text/StaticLayout$Builder;->access$900(Landroid/text/StaticLayout$Builder;)V

    .line 523
    return-void

    .line 479
    .end local v10    # "b":Landroid/text/StaticLayout$Builder;
    :cond_0
    instance-of v2, p1, Landroid/text/Spanned;

    if-eqz v2, :cond_1

    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    invoke-direct {v3, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    invoke-direct {v3, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 512
    .restart local v10    # "b":Landroid/text/StaticLayout$Builder;
    :cond_2
    const/4 v2, 0x4

    iput v2, p0, Landroid/text/StaticLayout;->mColumns:I

    .line 513
    move/from16 v0, p5

    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    .prologue
    .line 423
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 425
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    .prologue
    .line 434
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    .line 436
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Landroid/text/StaticLayout;->nNewBuilder()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 47
    invoke-static {p0, p1}, Landroid/text/StaticLayout;->nFinishBuilder(J)V

    return-void
.end method

.method static synthetic access$200(J[I)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # [I

    .prologue
    .line 47
    invoke-static {p0, p1, p2}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    return-void
.end method

.method static synthetic access$300(JLjava/lang/String;J)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nSetLocale(JLjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$400(JJJIIZ)F
    .locals 2
    .param p0, "x0"    # J
    .param p2, "x1"    # J
    .param p4, "x2"    # J
    .param p6, "x3"    # I
    .param p7, "x4"    # I
    .param p8, "x5"    # Z

    .prologue
    .line 47
    invoke-static/range {p0 .. p8}, Landroid/text/StaticLayout;->nAddStyleRun(JJJIIZ)F

    move-result v0

    return v0
.end method

.method static synthetic access$500(JII[F)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # [F

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nAddMeasuredRun(JII[F)V

    return-void
.end method

.method static synthetic access$600(JIIF)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # F

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nAddReplacementRun(JIIF)V

    return-void
.end method

.method static synthetic access$800(J)V
    .locals 0
    .param p0, "x0"    # J

    .prologue
    .line 47
    invoke-static {p0, p1}, Landroid/text/StaticLayout;->nFreeBuilder(J)V

    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z[C)V
    .locals 23
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "widths"    # [F
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z
    .param p11, "chs"    # [C

    .prologue
    .line 1510
    cmpg-float v20, p8, p5

    if-gtz v20, :cond_0

    if-nez p10, :cond_0

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v21, v0

    mul-int v21, v21, p7

    add-int/lit8 v21, v21, 0x4

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v21, v0

    mul-int v21, v21, p7

    add-int/lit8 v21, v21, 0x5

    const/16 v22, 0x0

    aput v22, v20, v21

    .line 1638
    :goto_0
    return-void

    .line 1517
    :cond_0
    sget-object v20, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_4

    sget-object v20, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    :goto_1
    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, p9

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    move-result v6

    .line 1520
    .local v6, "ellipsisWidth":F
    const/4 v5, 0x0

    .line 1521
    .local v5, "ellipsisStart":I
    const/4 v4, 0x0

    .line 1522
    .local v4, "ellipsisCount":I
    sub-int v10, p2, p1

    .line 1525
    .local v10, "len":I
    sget-object v20, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_8

    .line 1526
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 1527
    const/16 v17, 0x0

    .line 1529
    .local v17, "sum":F
    move v14, v10

    .line 1531
    .local v14, "rightForZeroWidth":I
    move v7, v10

    .local v7, "i":I
    :goto_2
    if-ltz v7, :cond_1

    .line 1532
    if-nez v7, :cond_5

    move/from16 v0, p1

    move/from16 v1, p4

    if-ne v0, v1, :cond_5

    .line 1546
    :cond_1
    if-eqz v7, :cond_2

    .line 1547
    move v7, v14

    .line 1550
    :cond_2
    const/4 v5, 0x0

    .line 1551
    move v4, v7

    .line 1636
    .end local v7    # "i":I
    .end local v14    # "rightForZeroWidth":I
    .end local v17    # "sum":F
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v21, v0

    mul-int v21, v21, p7

    add-int/lit8 v21, v21, 0x4

    aput v5, v20, v21

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    move/from16 v21, v0

    mul-int v21, v21, p7

    add-int/lit8 v21, v21, 0x5

    aput v4, v20, v21

    goto :goto_0

    .line 1517
    .end local v4    # "ellipsisCount":I
    .end local v5    # "ellipsisStart":I
    .end local v6    # "ellipsisWidth":F
    .end local v10    # "len":I
    :cond_4
    sget-object v20, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    goto :goto_1

    .line 1535
    .restart local v4    # "ellipsisCount":I
    .restart local v5    # "ellipsisStart":I
    .restart local v6    # "ellipsisWidth":F
    .restart local v7    # "i":I
    .restart local v10    # "len":I
    .restart local v14    # "rightForZeroWidth":I
    .restart local v17    # "sum":F
    :cond_5
    add-int/lit8 v20, v7, -0x1

    add-int v20, v20, p1

    sub-int v20, v20, p4

    aget v19, p3, v20

    .line 1537
    .local v19, "w":F
    add-float v20, v19, v17

    add-float v20, v20, v6

    cmpl-float v20, v20, p5

    if-gtz v20, :cond_1

    .line 1540
    const/16 v20, 0x0

    cmpl-float v20, v19, v20

    if-eqz v20, :cond_6

    .line 1541
    add-int/lit8 v14, v7, -0x1

    .line 1544
    :cond_6
    add-float v17, v17, v19

    .line 1531
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 1553
    .end local v7    # "i":I
    .end local v14    # "rightForZeroWidth":I
    .end local v17    # "sum":F
    .end local v19    # "w":F
    :cond_7
    const-string v20, "StaticLayout"

    const/16 v21, 0x5

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1554
    const-string v20, "StaticLayout"

    const-string v21, "Start Ellipsis only supported with one line"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1557
    :cond_8
    sget-object v20, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_9

    sget-object v20, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_9

    sget-object v20, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p6

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 1559
    :cond_9
    const/16 v17, 0x0

    .line 1562
    .restart local v17    # "sum":F
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_4
    if-ge v7, v10, :cond_a

    .line 1563
    add-int v20, v7, p1

    sub-int v20, v20, p4

    aget v19, p3, v20

    .line 1565
    .restart local v19    # "w":F
    add-float v20, v19, v17

    add-float v20, v20, v6

    cmpl-float v20, v20, p5

    if-lez v20, :cond_c

    .line 1572
    .end local v19    # "w":F
    :cond_a
    :goto_5
    if-eqz p11, :cond_b

    if-lez v7, :cond_b

    if-ge v7, v10, :cond_b

    aget-char v20, p11, v7

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isArabicChar(C)Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1573
    new-instance v16, Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p11

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v7}, Ljava/lang/String;-><init>([CII)V

    .line 1574
    .local v16, "s":Ljava/lang/String;
    move-object/from16 v0, p9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v18

    .line 1575
    .local v18, "tmpwid":F
    add-float v20, v18, v6

    cmpg-float v20, v20, p5

    if-gtz v20, :cond_d

    .line 1581
    .end local v16    # "s":Ljava/lang/String;
    .end local v18    # "tmpwid":F
    :cond_b
    move v5, v7

    .line 1582
    sub-int v4, v10, v7

    .line 1583
    if-eqz p10, :cond_3

    if-nez v4, :cond_3

    if-lez v10, :cond_3

    .line 1584
    add-int/lit8 v5, v10, -0x1

    .line 1585
    :goto_6
    if-lez v5, :cond_e

    add-int v20, v5, p1

    sub-int v20, v20, p4

    aget v20, p3, v20

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-nez v20, :cond_e

    add-int v20, v5, p1

    sub-int v20, v20, p4

    aget-char v20, p11, v20

    const/16 v21, 0xa

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_e

    .line 1586
    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .line 1569
    .restart local v19    # "w":F
    :cond_c
    add-float v17, v17, v19

    .line 1562
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1578
    .end local v19    # "w":F
    .restart local v16    # "s":Ljava/lang/String;
    .restart local v18    # "tmpwid":F
    :cond_d
    add-int/lit8 v7, v7, -0x1

    .line 1579
    goto :goto_5

    .line 1587
    .end local v16    # "s":Ljava/lang/String;
    .end local v18    # "tmpwid":F
    :cond_e
    sub-int v4, v10, v5

    goto/16 :goto_3

    .line 1591
    .end local v7    # "i":I
    .end local v17    # "sum":F
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_16

    .line 1592
    const/4 v11, 0x0

    .local v11, "lsum":F
    const/4 v15, 0x0

    .line 1593
    .local v15, "rsum":F
    const/4 v9, 0x0

    .local v9, "left":I
    move v13, v10

    .line 1594
    .local v13, "right":I
    move v14, v13

    .line 1596
    .restart local v14    # "rightForZeroWidth":I
    sub-float v20, p5, v6

    const/high16 v21, 0x40000000    # 2.0f

    div-float v12, v20, v21

    .line 1597
    .local v12, "ravail":F
    move v13, v10

    :goto_7
    if-lez v13, :cond_10

    .line 1601
    add-int/lit8 v20, v13, -0x1

    add-int v20, v20, p1

    sub-int v20, v20, p4

    aget v19, p3, v20

    .line 1603
    .restart local v19    # "w":F
    add-float v20, v19, v15

    cmpl-float v20, v20, v12

    if-lez v20, :cond_13

    .line 1612
    .end local v19    # "w":F
    :cond_10
    if-eqz v13, :cond_11

    .line 1613
    move v13, v14

    .line 1616
    :cond_11
    sub-float v20, p5, v6

    sub-float v8, v20, v15

    .line 1617
    .local v8, "lavail":F
    const/4 v9, 0x0

    :goto_8
    if-ge v9, v13, :cond_12

    .line 1618
    add-int v20, v9, p1

    sub-int v20, v20, p4

    aget v19, p3, v20

    .line 1620
    .restart local v19    # "w":F
    add-float v20, v19, v11

    cmpl-float v20, v20, v8

    if-lez v20, :cond_15

    .line 1627
    .end local v19    # "w":F
    :cond_12
    move v5, v9

    .line 1628
    sub-int v4, v13, v9

    .line 1629
    goto/16 :goto_3

    .line 1606
    .end local v8    # "lavail":F
    .restart local v19    # "w":F
    :cond_13
    const/16 v20, 0x0

    cmpl-float v20, v19, v20

    if-eqz v20, :cond_14

    .line 1607
    add-int/lit8 v14, v13, -0x1

    .line 1610
    :cond_14
    add-float v15, v15, v19

    .line 1597
    add-int/lit8 v13, v13, -0x1

    goto :goto_7

    .line 1624
    .restart local v8    # "lavail":F
    :cond_15
    add-float v11, v11, v19

    .line 1617
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 1630
    .end local v8    # "lavail":F
    .end local v9    # "left":I
    .end local v11    # "lsum":F
    .end local v12    # "ravail":F
    .end local v13    # "right":I
    .end local v14    # "rightForZeroWidth":I
    .end local v15    # "rsum":F
    .end local v19    # "w":F
    :cond_16
    const-string v20, "StaticLayout"

    const/16 v21, 0x5

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v20

    if-eqz v20, :cond_3

    .line 1631
    const-string v20, "StaticLayout"

    const-string v21, "Middle Ellipsis only supported with one line"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private generateForCJK(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 159
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;
    .param p2, "includepad"    # Z
    .param p3, "trackpad"    # Z

    .prologue
    .line 898
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 899
    .local v5, "source":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    move/from16 v99, v0

    .line 900
    .local v99, "bufStart":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    move/from16 v37, v0

    .line 901
    .local v37, "bufEnd":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v46, v0

    .line 902
    .local v46, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    move/from16 v141, v0

    .line 903
    .local v141, "outerWidth":I
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 904
    .local v8, "textDir":Landroid/text/TextDirectionHeuristic;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    move/from16 v27, v0

    .line 905
    .local v27, "spacingmult":F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    move/from16 v28, v0

    .line 906
    .local v28, "spacingadd":F
    move-object/from16 v0, p1

    iget v9, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    int-to-float v0, v9

    move/from16 v44, v0

    .line 907
    .local v44, "ellipsizedWidth":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v43, v0

    .line 909
    .local v43, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    const/4 v9, 0x4

    new-array v0, v9, [I

    move-object/from16 v147, v0

    .line 912
    .local v147, "spanEndCache":[I
    const/16 v9, 0x10

    new-array v0, v9, [I

    move-object/from16 v117, v0

    .line 914
    .local v117, "fmCache":[I
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 916
    const/16 v26, 0x0

    .line 917
    .local v26, "v":I
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v27, v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    cmpl-float v9, v28, v9

    if-eqz v9, :cond_3

    :cond_0
    const/16 v33, 0x1

    .line 919
    .local v33, "needMultiply":Z
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v31, v0

    .line 920
    .local v31, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v30, 0x0

    .line 922
    .local v30, "chooseHtv":[I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    .line 924
    .local v4, "measured":Landroid/text/MeasuredText;
    const/16 v153, 0x0

    .line 925
    .local v153, "spanned":Landroid/text/Spanned;
    instance-of v9, v5, Landroid/text/Spanned;

    if-eqz v9, :cond_1

    move-object/from16 v153, v5

    .line 926
    check-cast v153, Landroid/text/Spanned;

    .line 929
    :cond_1
    move/from16 v6, v99

    .local v6, "paraStart":I
    :goto_1
    move/from16 v0, v37

    if-gt v6, v0, :cond_1a

    .line 930
    const/16 v9, 0xa

    move/from16 v0, v37

    invoke-static {v5, v9, v6, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    .line 931
    .local v7, "paraEnd":I
    if-gez v7, :cond_4

    .line 932
    move/from16 v7, v37

    .line 936
    :goto_2
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v111, v9, 0x1

    .line 937
    .local v111, "firstWidthLineLimit":I
    const/4 v15, 0x1

    .line 938
    .local v15, "firstWidthLineCount":I
    move/from16 v110, v141

    .line 939
    .local v110, "firstWidth":I
    move/from16 v142, v141

    .line 941
    .local v142, "restWidth":I
    const/16 v29, 0x0

    .line 943
    .local v29, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v153, :cond_9

    .line 944
    const-class v9, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v153

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v145

    check-cast v145, [Landroid/text/style/LeadingMarginSpan;

    .line 946
    .local v145, "sp":[Landroid/text/style/LeadingMarginSpan;
    const/16 v123, 0x0

    .local v123, "i":I
    :goto_3
    move-object/from16 v0, v145

    array-length v9, v0

    move/from16 v0, v123

    if-ge v0, v9, :cond_5

    .line 947
    aget-object v131, v145, v123

    .line 948
    .local v131, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v9, v145, v123

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v110, v110, v9

    .line 949
    aget-object v9, v145, v123

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v142, v142, v9

    .line 953
    move-object/from16 v0, v131

    instance-of v9, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v9, :cond_2

    move-object/from16 v132, v131

    .line 954
    check-cast v132, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 955
    .local v132, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    move-object/from16 v0, v153

    move-object/from16 v1, v132

    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v133

    .line 956
    .local v133, "lmsFirstLine":I
    invoke-interface/range {v132 .. v132}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v9

    add-int v9, v9, v133

    move/from16 v0, v111

    invoke-static {v0, v9}, Ljava/lang/Math;->max(II)I

    move-result v111

    .line 958
    invoke-interface/range {v132 .. v132}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v9

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 946
    .end local v132    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v133    # "lmsFirstLine":I
    :cond_2
    add-int/lit8 v123, v123, 0x1

    goto :goto_3

    .line 917
    .end local v4    # "measured":Landroid/text/MeasuredText;
    .end local v6    # "paraStart":I
    .end local v7    # "paraEnd":I
    .end local v15    # "firstWidthLineCount":I
    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v30    # "chooseHtv":[I
    .end local v31    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v33    # "needMultiply":Z
    .end local v110    # "firstWidth":I
    .end local v111    # "firstWidthLineLimit":I
    .end local v123    # "i":I
    .end local v131    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v142    # "restWidth":I
    .end local v145    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .end local v153    # "spanned":Landroid/text/Spanned;
    :cond_3
    const/16 v33, 0x0

    goto/16 :goto_0

    .line 934
    .restart local v4    # "measured":Landroid/text/MeasuredText;
    .restart local v6    # "paraStart":I
    .restart local v7    # "paraEnd":I
    .restart local v30    # "chooseHtv":[I
    .restart local v31    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v33    # "needMultiply":Z
    .restart local v153    # "spanned":Landroid/text/Spanned;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 963
    .restart local v15    # "firstWidthLineCount":I
    .restart local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v110    # "firstWidth":I
    .restart local v111    # "firstWidthLineLimit":I
    .restart local v123    # "i":I
    .restart local v142    # "restWidth":I
    .restart local v145    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_5
    const-class v9, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v153

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v29, [Landroid/text/style/LineHeightSpan;

    .line 965
    .restart local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v29

    array-length v9, v0

    if-eqz v9, :cond_9

    .line 966
    if-eqz v30, :cond_6

    move-object/from16 v0, v30

    array-length v9, v0

    move-object/from16 v0, v29

    array-length v10, v0

    if-ge v9, v10, :cond_7

    .line 968
    :cond_6
    move-object/from16 v0, v29

    array-length v9, v0

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v30

    .line 971
    :cond_7
    const/16 v123, 0x0

    :goto_4
    move-object/from16 v0, v29

    array-length v9, v0

    move/from16 v0, v123

    if-ge v0, v9, :cond_9

    .line 972
    aget-object v9, v29, v123

    move-object/from16 v0, v153

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v134

    .line 974
    .local v134, "o":I
    move/from16 v0, v134

    if-ge v0, v6, :cond_8

    .line 978
    move-object/from16 v0, p0

    move/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    aput v9, v30, v123

    .line 971
    :goto_5
    add-int/lit8 v123, v123, 0x1

    goto :goto_4

    .line 982
    :cond_8
    aput v26, v30, v123

    goto :goto_5

    .line 988
    .end local v123    # "i":I
    .end local v134    # "o":I
    .end local v145    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_9
    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 989
    iget-object v12, v4, Landroid/text/MeasuredText;->mChars:[C

    .line 990
    .local v12, "chs":[C
    iget-object v0, v4, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v41, v0

    .line 991
    .local v41, "widths":[F
    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v34, v0

    .line 992
    .local v34, "chdirs":[B
    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v35, v0

    .line 993
    .local v35, "dir":I
    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v36, v0

    .line 996
    .local v36, "easy":Z
    const/16 v17, 0x0

    .line 997
    .local v17, "variableTabStops":[I
    if-eqz v153, :cond_b

    .line 998
    const-class v9, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v153

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v154

    check-cast v154, [Landroid/text/style/TabStopSpan;

    .line 1000
    .local v154, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v154

    array-length v9, v0

    if-lez v9, :cond_b

    .line 1001
    move-object/from16 v0, v154

    array-length v9, v0

    new-array v0, v9, [I

    move-object/from16 v155, v0

    .line 1002
    .local v155, "stops":[I
    const/16 v123, 0x0

    .restart local v123    # "i":I
    :goto_6
    move-object/from16 v0, v154

    array-length v9, v0

    move/from16 v0, v123

    if-ge v0, v9, :cond_a

    .line 1003
    aget-object v9, v154, v123

    invoke-interface {v9}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v9

    aput v9, v155, v123

    .line 1002
    add-int/lit8 v123, v123, 0x1

    goto :goto_6

    .line 1005
    :cond_a
    const/4 v9, 0x0

    move-object/from16 v0, v155

    array-length v10, v0

    move-object/from16 v0, v155

    invoke-static {v0, v9, v10}, Ljava/util/Arrays;->sort([III)V

    .line 1006
    move-object/from16 v17, v155

    .line 1010
    .end local v123    # "i":I
    .end local v154    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v155    # "stops":[I
    :cond_b
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    sub-int v13, v7, v6

    move/from16 v0, v110

    int-to-float v14, v0

    move/from16 v0, v142

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v18, 0x14

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    move/from16 v20, v0

    invoke-static/range {v10 .. v20}, Landroid/text/StaticLayout;->nSetupParagraph(J[CIFIF[IIII)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_c

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v9, :cond_12

    .line 1017
    :cond_c
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_d

    const/16 v129, 0x0

    .line 1018
    .local v129, "leftLen":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_e

    const/16 v143, 0x0

    .line 1019
    .local v143, "rightLen":I
    :goto_8
    const/4 v9, 0x1

    move/from16 v0, v129

    move/from16 v1, v143

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/text/StaticLayout;->mLineCount:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v125

    .line 1020
    .local v125, "indentsLen":I
    move/from16 v0, v125

    new-array v0, v0, [I

    move-object/from16 v124, v0

    .line 1021
    .local v124, "indents":[I
    const/16 v123, 0x0

    .restart local v123    # "i":I
    :goto_9
    move/from16 v0, v123

    move/from16 v1, v125

    if-ge v0, v1, :cond_11

    .line 1022
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_f

    const/16 v130, 0x0

    .line 1024
    .local v130, "leftMargin":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_10

    const/16 v144, 0x0

    .line 1026
    .local v144, "rightMargin":I
    :goto_b
    add-int v9, v130, v144

    aput v9, v124, v123

    .line 1021
    add-int/lit8 v123, v123, 0x1

    goto :goto_9

    .line 1017
    .end local v123    # "i":I
    .end local v124    # "indents":[I
    .end local v125    # "indentsLen":I
    .end local v129    # "leftLen":I
    .end local v130    # "leftMargin":I
    .end local v143    # "rightLen":I
    .end local v144    # "rightMargin":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v0, v9

    move/from16 v129, v0

    goto :goto_7

    .line 1018
    .restart local v129    # "leftLen":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v0, v9

    move/from16 v143, v0

    goto :goto_8

    .line 1022
    .restart local v123    # "i":I
    .restart local v124    # "indents":[I
    .restart local v125    # "indentsLen":I
    .restart local v143    # "rightLen":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v123

    add-int/lit8 v11, v129, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v130, v9, v10

    goto :goto_a

    .line 1024
    .restart local v130    # "leftMargin":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v123

    add-int/lit8 v11, v143, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v144, v9, v10

    goto :goto_b

    .line 1028
    .end local v130    # "leftMargin":I
    :cond_11
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v0, v124

    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    .line 1034
    .end local v123    # "i":I
    .end local v124    # "indents":[I
    .end local v125    # "indentsLen":I
    .end local v129    # "leftLen":I
    .end local v143    # "rightLen":I
    :cond_12
    const/16 v118, 0x0

    .line 1035
    .local v118, "fmCacheCount":I
    const/16 v148, 0x0

    .line 1036
    .local v148, "spanEndCacheCount":I
    move/from16 v152, v6

    .local v152, "spanStart":I
    :goto_c
    move/from16 v0, v152

    if-ge v0, v7, :cond_16

    .line 1037
    mul-int/lit8 v9, v118, 0x4

    move-object/from16 v0, v117

    array-length v10, v0

    if-lt v9, v10, :cond_13

    .line 1038
    mul-int/lit8 v9, v118, 0x4

    mul-int/lit8 v9, v9, 0x2

    new-array v0, v9, [I

    move-object/from16 v122, v0

    .line 1039
    .local v122, "grow":[I
    const/4 v9, 0x0

    const/4 v10, 0x0

    mul-int/lit8 v11, v118, 0x4

    move-object/from16 v0, v117

    move-object/from16 v1, v122

    invoke-static {v0, v9, v1, v10, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1040
    move-object/from16 v117, v122

    .line 1043
    .end local v122    # "grow":[I
    :cond_13
    move-object/from16 v0, v147

    array-length v9, v0

    move/from16 v0, v148

    if-lt v0, v9, :cond_14

    .line 1044
    mul-int/lit8 v9, v148, 0x2

    new-array v0, v9, [I

    move-object/from16 v122, v0

    .line 1045
    .restart local v122    # "grow":[I
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v147

    move-object/from16 v1, v122

    move/from16 v2, v148

    invoke-static {v0, v9, v1, v10, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1046
    move-object/from16 v147, v122

    .line 1049
    .end local v122    # "grow":[I
    :cond_14
    if-nez v153, :cond_15

    .line 1050
    move/from16 v146, v7

    .line 1051
    .local v146, "spanEnd":I
    sub-int v151, v146, v152

    .line 1052
    .local v151, "spanLen":I
    move-object/from16 v0, v46

    move/from16 v1, v151

    move-object/from16 v2, v31

    invoke-virtual {v4, v0, v1, v2}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 1065
    :goto_d
    mul-int/lit8 v9, v118, 0x4

    add-int/lit8 v9, v9, 0x0

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    aput v10, v117, v9

    .line 1066
    mul-int/lit8 v9, v118, 0x4

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    aput v10, v117, v9

    .line 1067
    mul-int/lit8 v9, v118, 0x4

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    aput v10, v117, v9

    .line 1068
    mul-int/lit8 v9, v118, 0x4

    add-int/lit8 v9, v9, 0x3

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    aput v10, v117, v9

    .line 1069
    add-int/lit8 v118, v118, 0x1

    .line 1071
    aput v146, v147, v148

    .line 1072
    add-int/lit8 v148, v148, 0x1

    .line 1036
    move/from16 v152, v146

    goto :goto_c

    .line 1054
    .end local v146    # "spanEnd":I
    .end local v151    # "spanLen":I
    :cond_15
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v153

    move/from16 v1, v152

    invoke-interface {v0, v1, v7, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v146

    .line 1056
    .restart local v146    # "spanEnd":I
    sub-int v151, v146, v152

    .line 1057
    .restart local v151    # "spanLen":I
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v153

    move/from16 v1, v152

    move/from16 v2, v146

    invoke-interface {v0, v1, v2, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v154

    check-cast v154, [Landroid/text/style/MetricAffectingSpan;

    .line 1059
    .local v154, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v154

    move-object/from16 v1, v153

    invoke-static {v0, v1, v9}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v154

    .end local v154    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v154, [Landroid/text/style/MetricAffectingSpan;

    .line 1060
    .restart local v154    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v46

    move-object/from16 v1, v154

    move/from16 v2, v151

    move-object/from16 v3, v31

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto :goto_d

    .line 1077
    .end local v146    # "spanEnd":I
    .end local v151    # "spanLen":I
    .end local v154    # "spans":[Landroid/text/style/MetricAffectingSpan;
    :cond_16
    move/from16 v158, v110

    .line 1079
    .local v158, "width":I
    const/16 v74, 0x0

    .line 1081
    .local v74, "w":F
    move/from16 v20, v6

    .line 1085
    .local v20, "here":I
    move/from16 v135, v6

    .line 1086
    .local v135, "ok":I
    move/from16 v140, v74

    .line 1087
    .local v140, "okWidth":F
    const/16 v136, 0x0

    .local v136, "okAscent":I
    const/16 v138, 0x0

    .local v138, "okDescent":I
    const/16 v139, 0x0

    .local v139, "okTop":I
    const/16 v137, 0x0

    .line 1091
    .local v137, "okBottom":I
    move/from16 v112, v6

    .line 1092
    .local v112, "fit":I
    move/from16 v113, v74

    .line 1093
    .local v113, "fitWidth":F
    const/16 v51, 0x0

    .local v51, "fitAscent":I
    const/16 v52, 0x0

    .local v52, "fitDescent":I
    const/16 v53, 0x0

    .local v53, "fitTop":I
    const/16 v54, 0x0

    .line 1095
    .local v54, "fitBottom":I
    move/from16 v114, v74

    .line 1097
    .local v114, "fitWidthGraphing":F
    const/16 v32, 0x0

    .line 1098
    .local v32, "hasTabOrEmoji":I
    const/16 v156, 0x0

    .line 1100
    .local v156, "tabStops":Landroid/text/Layout$TabStops;
    const/16 v121, 0x0

    .local v121, "fmTop":I
    const/16 v116, 0x0

    .local v116, "fmBottom":I
    const/16 v115, 0x0

    .local v115, "fmAscent":I
    const/16 v120, 0x0

    .line 1101
    .local v120, "fmDescent":I
    const/16 v119, 0x0

    .line 1102
    .local v119, "fmCacheIndex":I
    const/16 v149, 0x0

    .line 1104
    .local v149, "spanEndCacheIndex":I
    move/from16 v152, v6

    move/from16 v150, v149

    .end local v149    # "spanEndCacheIndex":I
    .local v150, "spanEndCacheIndex":I
    :goto_e
    move/from16 v0, v152

    if-ge v0, v7, :cond_17

    .line 1106
    move-object/from16 v0, v147

    array-length v9, v0

    move/from16 v0, v150

    if-lt v0, v9, :cond_1d

    .line 1321
    :cond_17
    move/from16 v0, v20

    if-eq v7, v0, :cond_19

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v9, v10, :cond_19

    .line 1322
    or-int v9, v53, v54

    or-int v9, v9, v52

    or-int v9, v9, v51

    if-nez v9, :cond_18

    .line 1323
    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1325
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v53, v0

    .line 1326
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v54, v0

    .line 1327
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v51, v0

    .line 1328
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v52, v0

    .line 1331
    :cond_18
    move/from16 v0, v37

    if-eq v7, v0, :cond_4a

    const/16 v76, 0x1

    :goto_f
    move-object/from16 v47, p0

    move-object/from16 v48, v5

    move/from16 v49, v20

    move/from16 v50, v7

    move/from16 v55, v26

    move/from16 v56, v27

    move/from16 v57, v28

    move-object/from16 v58, v29

    move-object/from16 v59, v30

    move-object/from16 v60, v31

    move/from16 v61, v32

    move/from16 v62, v33

    move-object/from16 v63, v34

    move/from16 v64, v35

    move/from16 v65, v36

    move/from16 v66, v37

    move/from16 v67, p2

    move/from16 v68, p3

    move-object/from16 v69, v12

    move-object/from16 v70, v41

    move/from16 v71, v6

    move-object/from16 v72, v43

    move/from16 v73, v44

    move-object/from16 v75, v46

    invoke-direct/range {v47 .. v76}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v26

    .line 1343
    :cond_19
    move v6, v7

    .line 1345
    move/from16 v0, v37

    if-eq v7, v0, :cond_1a

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v9, v10, :cond_4b

    .line 1349
    .end local v7    # "paraEnd":I
    .end local v12    # "chs":[C
    .end local v15    # "firstWidthLineCount":I
    .end local v17    # "variableTabStops":[I
    .end local v20    # "here":I
    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v32    # "hasTabOrEmoji":I
    .end local v34    # "chdirs":[B
    .end local v35    # "dir":I
    .end local v36    # "easy":Z
    .end local v41    # "widths":[F
    .end local v51    # "fitAscent":I
    .end local v52    # "fitDescent":I
    .end local v53    # "fitTop":I
    .end local v54    # "fitBottom":I
    .end local v74    # "w":F
    .end local v110    # "firstWidth":I
    .end local v111    # "firstWidthLineLimit":I
    .end local v112    # "fit":I
    .end local v113    # "fitWidth":F
    .end local v114    # "fitWidthGraphing":F
    .end local v115    # "fmAscent":I
    .end local v116    # "fmBottom":I
    .end local v118    # "fmCacheCount":I
    .end local v119    # "fmCacheIndex":I
    .end local v120    # "fmDescent":I
    .end local v121    # "fmTop":I
    .end local v135    # "ok":I
    .end local v136    # "okAscent":I
    .end local v137    # "okBottom":I
    .end local v138    # "okDescent":I
    .end local v139    # "okTop":I
    .end local v140    # "okWidth":F
    .end local v142    # "restWidth":I
    .end local v148    # "spanEndCacheCount":I
    .end local v150    # "spanEndCacheIndex":I
    .end local v152    # "spanStart":I
    .end local v156    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v158    # "width":I
    :cond_1a
    move/from16 v0, v37

    move/from16 v1, v99

    if-eq v0, v1, :cond_1b

    add-int/lit8 v9, v37, -0x1

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v9, v10, :cond_1c

    .line 1352
    const/16 v60, 0x0

    move-object/from16 v55, v4

    move-object/from16 v56, v5

    move/from16 v57, v99

    move/from16 v58, v37

    move-object/from16 v59, v8

    invoke-virtual/range {v55 .. v60}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 1354
    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1356
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v79, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v80, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v81, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v82, v0

    const/16 v86, 0x0

    const/16 v87, 0x0

    const/16 v89, 0x0

    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v91, v0

    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v92, v0

    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v93, v0

    const/16 v97, 0x0

    const/16 v98, 0x0

    const/16 v102, 0x0

    const/16 v104, 0x0

    move-object/from16 v75, p0

    move-object/from16 v76, v5

    move/from16 v77, v37

    move/from16 v78, v37

    move/from16 v83, v26

    move/from16 v84, v27

    move/from16 v85, v28

    move-object/from16 v88, v31

    move/from16 v90, v33

    move/from16 v94, v37

    move/from16 v95, p2

    move/from16 v96, p3

    move-object/from16 v100, v43

    move/from16 v101, v44

    move-object/from16 v103, v46

    invoke-direct/range {v75 .. v104}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v26

    .line 1367
    :cond_1c
    :goto_10
    return-void

    .line 1109
    .restart local v7    # "paraEnd":I
    .restart local v12    # "chs":[C
    .restart local v15    # "firstWidthLineCount":I
    .restart local v17    # "variableTabStops":[I
    .restart local v20    # "here":I
    .restart local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v32    # "hasTabOrEmoji":I
    .restart local v34    # "chdirs":[B
    .restart local v35    # "dir":I
    .restart local v36    # "easy":Z
    .restart local v41    # "widths":[F
    .restart local v51    # "fitAscent":I
    .restart local v52    # "fitDescent":I
    .restart local v53    # "fitTop":I
    .restart local v54    # "fitBottom":I
    .restart local v74    # "w":F
    .restart local v110    # "firstWidth":I
    .restart local v111    # "firstWidthLineLimit":I
    .restart local v112    # "fit":I
    .restart local v113    # "fitWidth":F
    .restart local v114    # "fitWidthGraphing":F
    .restart local v115    # "fmAscent":I
    .restart local v116    # "fmBottom":I
    .restart local v118    # "fmCacheCount":I
    .restart local v119    # "fmCacheIndex":I
    .restart local v120    # "fmDescent":I
    .restart local v121    # "fmTop":I
    .restart local v135    # "ok":I
    .restart local v136    # "okAscent":I
    .restart local v137    # "okBottom":I
    .restart local v138    # "okDescent":I
    .restart local v139    # "okTop":I
    .restart local v140    # "okWidth":F
    .restart local v142    # "restWidth":I
    .restart local v148    # "spanEndCacheCount":I
    .restart local v150    # "spanEndCacheIndex":I
    .restart local v152    # "spanStart":I
    .restart local v156    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v158    # "width":I
    :cond_1d
    add-int/lit8 v149, v150, 0x1

    .end local v150    # "spanEndCacheIndex":I
    .restart local v149    # "spanEndCacheIndex":I
    aget v146, v147, v150

    .line 1112
    .restart local v146    # "spanEnd":I
    mul-int/lit8 v9, v119, 0x4

    add-int/lit8 v9, v9, 0x0

    aget v9, v117, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1113
    mul-int/lit8 v9, v119, 0x4

    add-int/lit8 v9, v9, 0x1

    aget v9, v117, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1114
    mul-int/lit8 v9, v119, 0x4

    add-int/lit8 v9, v9, 0x2

    aget v9, v117, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1115
    mul-int/lit8 v9, v119, 0x4

    add-int/lit8 v9, v9, 0x3

    aget v9, v117, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1116
    add-int/lit8 v119, v119, 0x1

    .line 1118
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, v121

    if-ge v9, v0, :cond_1e

    .line 1119
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v121, v0

    .line 1121
    :cond_1e
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v0, v115

    if-ge v9, v0, :cond_1f

    .line 1122
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v115, v0

    .line 1124
    :cond_1f
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, v120

    if-le v9, v0, :cond_20

    .line 1125
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v120, v0

    .line 1127
    :cond_20
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v0, v116

    if-le v9, v0, :cond_21

    .line 1128
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v116, v0

    .line 1130
    :cond_21
    const/16 v105, 0x0

    .line 1132
    .local v105, "bZerowithspace":Z
    move/from16 v128, v152

    .local v128, "j":I
    :goto_11
    move/from16 v0, v128

    move/from16 v1, v146

    if-ge v0, v1, :cond_44

    .line 1133
    sub-int v9, v128, v6

    aget-char v107, v12, v9

    .line 1135
    .local v107, "c":C
    const/16 v9, 0xa

    move/from16 v0, v107

    if-ne v0, v9, :cond_32

    .line 1176
    :goto_12
    const/16 v9, 0x20

    move/from16 v0, v107

    if-eq v0, v9, :cond_22

    const/16 v9, 0x9

    move/from16 v0, v107

    if-eq v0, v9, :cond_22

    const/16 v9, 0x200b

    move/from16 v0, v107

    if-ne v0, v9, :cond_39

    :cond_22
    const/16 v127, 0x1

    .line 1178
    .local v127, "isSpaceOrTab":Z
    :goto_13
    move/from16 v0, v158

    int-to-float v9, v0

    cmpg-float v9, v74, v9

    if-lez v9, :cond_23

    if-eqz v127, :cond_40

    .line 1179
    :cond_23
    move/from16 v113, v74

    .line 1180
    if-nez v127, :cond_24

    .line 1181
    move/from16 v114, v74

    .line 1183
    :cond_24
    add-int/lit8 v112, v128, 0x1

    .line 1185
    move/from16 v0, v121

    move/from16 v1, v53

    if-ge v0, v1, :cond_25

    .line 1186
    move/from16 v53, v121

    .line 1187
    :cond_25
    move/from16 v0, v115

    move/from16 v1, v51

    if-ge v0, v1, :cond_26

    .line 1188
    move/from16 v51, v115

    .line 1189
    :cond_26
    move/from16 v0, v120

    move/from16 v1, v52

    if-le v0, v1, :cond_27

    .line 1190
    move/from16 v52, v120

    .line 1191
    :cond_27
    move/from16 v0, v116

    move/from16 v1, v54

    if-le v0, v1, :cond_28

    .line 1192
    move/from16 v54, v116

    .line 1195
    :cond_28
    const/16 v9, 0x200b

    move/from16 v0, v107

    if-ne v0, v9, :cond_29

    .line 1196
    const/16 v105, 0x1

    .line 1199
    :cond_29
    const/16 v126, 0x0

    .line 1200
    .local v126, "isLineBreak":Z
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3b

    .line 1201
    if-nez v127, :cond_2d

    const/16 v9, 0x2f

    move/from16 v0, v107

    if-eq v0, v9, :cond_2a

    const/16 v9, 0x2d

    move/from16 v0, v107

    if-ne v0, v9, :cond_2b

    :cond_2a
    add-int/lit8 v9, v128, 0x1

    move/from16 v0, v146

    if-ge v9, v0, :cond_2d

    add-int/lit8 v9, v128, 0x1

    sub-int/2addr v9, v6

    aget-char v9, v12, v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_2d

    :cond_2b
    if-nez v105, :cond_2c

    const/16 v9, 0x2e80

    move/from16 v0, v107

    if-lt v0, v9, :cond_2c

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v107

    invoke-direct {v0, v1, v9}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v9

    if-eqz v9, :cond_2c

    add-int/lit8 v9, v128, 0x1

    move/from16 v0, v146

    if-ge v9, v0, :cond_2c

    add-int/lit8 v9, v128, 0x1

    sub-int/2addr v9, v6

    aget-char v9, v12, v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v9

    if-nez v9, :cond_2d

    :cond_2c
    if-nez v105, :cond_3a

    const/16 v9, 0x2e80

    move/from16 v0, v107

    if-lt v0, v9, :cond_3a

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v107

    invoke-direct {v0, v1, v9}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v9

    if-eqz v9, :cond_3a

    add-int/lit8 v9, v128, 0x1

    move/from16 v0, v146

    if-ge v9, v0, :cond_3a

    add-int/lit8 v9, v128, 0x1

    sub-int/2addr v9, v6

    aget-char v9, v12, v9

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v9

    if-nez v9, :cond_3a

    :cond_2d
    const/16 v126, 0x1

    .line 1222
    :goto_14
    if-eqz v126, :cond_31

    .line 1223
    move/from16 v140, v114

    .line 1224
    add-int/lit8 v135, v128, 0x1

    .line 1226
    move/from16 v0, v53

    move/from16 v1, v139

    if-ge v0, v1, :cond_2e

    .line 1227
    move/from16 v139, v53

    .line 1228
    :cond_2e
    move/from16 v0, v51

    move/from16 v1, v136

    if-ge v0, v1, :cond_2f

    .line 1229
    move/from16 v136, v51

    .line 1230
    :cond_2f
    move/from16 v0, v52

    move/from16 v1, v138

    if-le v0, v1, :cond_30

    .line 1231
    move/from16 v138, v52

    .line 1232
    :cond_30
    move/from16 v0, v54

    move/from16 v1, v137

    if-le v0, v1, :cond_31

    .line 1233
    move/from16 v137, v54

    .line 1132
    .end local v126    # "isLineBreak":Z
    :cond_31
    add-int/lit8 v128, v128, 0x1

    goto/16 :goto_11

    .line 1137
    .end local v127    # "isSpaceOrTab":Z
    :cond_32
    const/16 v9, 0x9

    move/from16 v0, v107

    if-ne v0, v9, :cond_35

    .line 1138
    const/high16 v9, 0x20000000

    and-int v9, v9, v32

    if-nez v9, :cond_33

    .line 1139
    const/high16 v9, 0x20000000

    or-int v32, v32, v9

    .line 1140
    if-eqz v153, :cond_33

    .line 1142
    const-class v9, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v153

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v154

    check-cast v154, [Landroid/text/style/TabStopSpan;

    .line 1144
    .local v154, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v154

    array-length v9, v0

    if-lez v9, :cond_33

    .line 1145
    new-instance v156, Landroid/text/Layout$TabStops;

    .end local v156    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v9, 0x14

    move-object/from16 v0, v156

    move-object/from16 v1, v154

    invoke-direct {v0, v9, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 1149
    .end local v154    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v156    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_33
    if-eqz v156, :cond_34

    .line 1150
    move-object/from16 v0, v156

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v74

    goto/16 :goto_12

    .line 1152
    :cond_34
    const/16 v9, 0x14

    move/from16 v0, v74

    invoke-static {v0, v9}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    move-result v74

    goto/16 :goto_12

    .line 1154
    :cond_35
    const v9, 0xd800

    move/from16 v0, v107

    if-lt v0, v9, :cond_38

    const v9, 0xdfff

    move/from16 v0, v107

    if-gt v0, v9, :cond_38

    add-int/lit8 v9, v128, 0x1

    move/from16 v0, v146

    if-ge v9, v0, :cond_38

    .line 1156
    sub-int v9, v128, v6

    invoke-static {v12, v9}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v108

    .line 1158
    .local v108, "emoji":I
    sget v9, Landroid/text/StaticLayout;->MIN_EMOJI:I

    move/from16 v0, v108

    if-lt v0, v9, :cond_37

    sget v9, Landroid/text/StaticLayout;->MAX_EMOJI:I

    move/from16 v0, v108

    if-gt v0, v9, :cond_37

    .line 1159
    sget-object v9, Landroid/text/StaticLayout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    move/from16 v0, v108

    invoke-virtual {v9, v0}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    move-result-object v106

    .line 1161
    .local v106, "bm":Landroid/graphics/Bitmap;
    if-eqz v106, :cond_36

    .line 1162
    invoke-virtual/range {v106 .. v106}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual/range {v46 .. v46}, Landroid/text/TextPaint;->ascent()F

    move-result v10

    neg-float v10, v10

    mul-float/2addr v9, v10

    invoke-virtual/range {v106 .. v106}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float v157, v9, v10

    .line 1163
    .local v157, "wid":F
    add-float v74, v74, v157

    .line 1164
    or-int/lit8 v32, v32, 0x1

    .line 1165
    add-int/lit8 v128, v128, 0x1

    .line 1166
    goto/16 :goto_12

    .line 1167
    .end local v157    # "wid":F
    :cond_36
    sub-int v9, v128, v6

    aget v9, v41, v9

    add-float v74, v74, v9

    goto/16 :goto_12

    .line 1170
    .end local v106    # "bm":Landroid/graphics/Bitmap;
    :cond_37
    sub-int v9, v128, v6

    aget v9, v41, v9

    add-float v74, v74, v9

    goto/16 :goto_12

    .line 1173
    .end local v108    # "emoji":I
    :cond_38
    sub-int v9, v128, v6

    aget v9, v41, v9

    add-float v74, v74, v9

    goto/16 :goto_12

    .line 1176
    :cond_39
    const/16 v127, 0x0

    goto/16 :goto_13

    .line 1201
    .restart local v126    # "isLineBreak":Z
    .restart local v127    # "isSpaceOrTab":Z
    :cond_3a
    const/16 v126, 0x0

    goto/16 :goto_14

    .line 1212
    :cond_3b
    if-nez v127, :cond_3e

    const/16 v9, 0x2f

    move/from16 v0, v107

    if-eq v0, v9, :cond_3c

    const/16 v9, 0x2d

    move/from16 v0, v107

    if-ne v0, v9, :cond_3d

    :cond_3c
    add-int/lit8 v9, v128, 0x1

    move/from16 v0, v146

    if-ge v9, v0, :cond_3e

    add-int/lit8 v9, v128, 0x1

    sub-int/2addr v9, v6

    aget-char v9, v12, v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v9

    if-eqz v9, :cond_3e

    :cond_3d
    const/16 v9, 0x2e80

    move/from16 v0, v107

    if-lt v0, v9, :cond_3f

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v107

    invoke-direct {v0, v1, v9}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v9

    if-eqz v9, :cond_3f

    add-int/lit8 v9, v128, 0x1

    move/from16 v0, v146

    if-ge v9, v0, :cond_3f

    add-int/lit8 v9, v128, 0x1

    sub-int/2addr v9, v6

    aget-char v9, v12, v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Landroid/text/StaticLayout;->isIdeographic(CZ)Z

    move-result v9

    if-eqz v9, :cond_3f

    :cond_3e
    const/16 v126, 0x1

    :goto_15
    goto/16 :goto_14

    :cond_3f
    const/16 v126, 0x0

    goto :goto_15

    .line 1240
    .end local v126    # "isLineBreak":Z
    :cond_40
    move/from16 v0, v135

    move/from16 v1, v20

    if-eq v0, v1, :cond_45

    .line 1241
    move/from16 v109, v135

    .line 1242
    .local v109, "endPos":I
    move/from16 v22, v136

    .line 1243
    .local v22, "above":I
    move/from16 v23, v138

    .line 1244
    .local v23, "below":I
    move/from16 v24, v139

    .line 1245
    .local v24, "top":I
    move/from16 v25, v137

    .line 1246
    .local v25, "bottom":I
    move/from16 v45, v140

    .line 1269
    .local v45, "currentTextWidth":F
    :goto_16
    const/16 v9, 0xa

    move/from16 v0, v107

    if-ne v0, v9, :cond_41

    .line 1270
    add-int/lit8 v109, v109, 0x1

    .line 1273
    :cond_41
    move/from16 v21, v109

    .line 1274
    .local v21, "ellipseEnd":I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_42

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v43

    if-ne v0, v9, :cond_42

    .line 1275
    move/from16 v21, v7

    .line 1277
    :cond_42
    const/16 v47, 0x1

    move-object/from16 v18, p0

    move-object/from16 v19, v5

    move/from16 v38, p2

    move/from16 v39, p3

    move-object/from16 v40, v12

    move/from16 v42, v6

    invoke-direct/range {v18 .. v47}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v26

    .line 1284
    move/from16 v0, v109

    move/from16 v1, v146

    if-ge v0, v1, :cond_48

    .line 1286
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v121, v0

    .line 1287
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v116, v0

    .line 1288
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v115, v0

    .line 1289
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v120, v0

    .line 1294
    :goto_17
    move/from16 v20, v109

    .line 1295
    add-int/lit8 v128, v20, -0x1

    .line 1296
    move/from16 v112, v20

    move/from16 v135, v20

    .line 1297
    const/16 v74, 0x0

    .line 1298
    move/from16 v114, v74

    .line 1299
    const/16 v54, 0x0

    move/from16 v53, v54

    move/from16 v52, v54

    move/from16 v51, v54

    .line 1300
    const/16 v137, 0x0

    move/from16 v139, v137

    move/from16 v138, v137

    move/from16 v136, v137

    .line 1301
    const/16 v32, 0x0

    .line 1303
    add-int/lit8 v111, v111, -0x1

    if-gtz v111, :cond_43

    .line 1304
    move/from16 v158, v142

    .line 1307
    :cond_43
    move/from16 v0, v20

    move/from16 v1, v152

    if-ge v0, v1, :cond_49

    .line 1308
    move/from16 v146, v20

    .line 1309
    add-int/lit8 v149, v149, -0x1

    .line 1310
    add-int/lit8 v119, v119, -0x1

    .line 1104
    .end local v21    # "ellipseEnd":I
    .end local v22    # "above":I
    .end local v23    # "below":I
    .end local v24    # "top":I
    .end local v25    # "bottom":I
    .end local v45    # "currentTextWidth":F
    .end local v107    # "c":C
    .end local v109    # "endPos":I
    .end local v127    # "isSpaceOrTab":Z
    :cond_44
    move/from16 v152, v146

    move/from16 v150, v149

    .end local v149    # "spanEndCacheIndex":I
    .restart local v150    # "spanEndCacheIndex":I
    goto/16 :goto_e

    .line 1247
    .end local v150    # "spanEndCacheIndex":I
    .restart local v107    # "c":C
    .restart local v127    # "isSpaceOrTab":Z
    .restart local v149    # "spanEndCacheIndex":I
    :cond_45
    move/from16 v0, v112

    move/from16 v1, v20

    if-eq v0, v1, :cond_46

    .line 1248
    move/from16 v109, v112

    .line 1249
    .restart local v109    # "endPos":I
    move/from16 v22, v51

    .line 1250
    .restart local v22    # "above":I
    move/from16 v23, v52

    .line 1251
    .restart local v23    # "below":I
    move/from16 v24, v53

    .line 1252
    .restart local v24    # "top":I
    move/from16 v25, v54

    .line 1253
    .restart local v25    # "bottom":I
    move/from16 v45, v113

    .restart local v45    # "currentTextWidth":F
    goto/16 :goto_16

    .line 1256
    .end local v22    # "above":I
    .end local v23    # "below":I
    .end local v24    # "top":I
    .end local v25    # "bottom":I
    .end local v45    # "currentTextWidth":F
    .end local v109    # "endPos":I
    :cond_46
    add-int/lit8 v109, v20, 0x1

    .line 1259
    .restart local v109    # "endPos":I
    :goto_18
    move/from16 v0, v109

    move/from16 v1, v146

    if-ge v0, v1, :cond_47

    sub-int v9, v109, v6

    aget v9, v41, v9

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-nez v9, :cond_47

    .line 1260
    add-int/lit8 v109, v109, 0x1

    goto :goto_18

    .line 1262
    :cond_47
    move/from16 v22, v115

    .line 1263
    .restart local v22    # "above":I
    move/from16 v23, v120

    .line 1264
    .restart local v23    # "below":I
    move/from16 v24, v121

    .line 1265
    .restart local v24    # "top":I
    move/from16 v25, v116

    .line 1266
    .restart local v25    # "bottom":I
    sub-int v9, v20, v6

    aget v45, v41, v9

    .restart local v45    # "currentTextWidth":F
    goto/16 :goto_16

    .line 1291
    .restart local v21    # "ellipseEnd":I
    :cond_48
    const/16 v120, 0x0

    move/from16 v115, v120

    move/from16 v116, v120

    move/from16 v121, v120

    goto :goto_17

    .line 1314
    :cond_49
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v9, v10, :cond_31

    goto/16 :goto_10

    .line 1331
    .end local v21    # "ellipseEnd":I
    .end local v22    # "above":I
    .end local v23    # "below":I
    .end local v24    # "top":I
    .end local v25    # "bottom":I
    .end local v45    # "currentTextWidth":F
    .end local v105    # "bZerowithspace":Z
    .end local v107    # "c":C
    .end local v109    # "endPos":I
    .end local v127    # "isSpaceOrTab":Z
    .end local v128    # "j":I
    .end local v146    # "spanEnd":I
    .end local v149    # "spanEndCacheIndex":I
    .restart local v150    # "spanEndCacheIndex":I
    :cond_4a
    const/16 v76, 0x0

    goto/16 :goto_f

    .line 929
    :cond_4b
    move v6, v7

    goto/16 :goto_1
.end method

.method private final isIdeographic(CZ)Z
    .locals 4
    .param p1, "c"    # C
    .param p2, "includeNonStarters"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1795
    const/16 v2, 0x2e80

    if-lt p1, v2, :cond_1

    const/16 v2, 0x2fff

    if-gt p1, v2, :cond_1

    move p2, v0

    .line 1952
    .end local p2    # "includeNonStarters":Z
    :cond_0
    :goto_0
    return p2

    .line 1798
    .restart local p2    # "includeNonStarters":Z
    :cond_1
    const/16 v2, 0x3000

    if-ne p1, v2, :cond_2

    move p2, v0

    .line 1799
    goto :goto_0

    .line 1801
    :cond_2
    const/16 v2, 0x3040

    if-lt p1, v2, :cond_4

    const/16 v2, 0x309f

    if-gt p1, v2, :cond_4

    .line 1802
    if-nez p2, :cond_3

    .line 1803
    sparse-switch p1, :sswitch_data_0

    :cond_3
    move p2, v0

    .line 1823
    goto :goto_0

    :sswitch_0
    move p2, v1

    .line 1820
    goto :goto_0

    .line 1825
    :cond_4
    const/16 v2, 0x30a0

    if-lt p1, v2, :cond_6

    const/16 v2, 0x30ff

    if-gt p1, v2, :cond_6

    .line 1826
    if-nez p2, :cond_5

    .line 1827
    sparse-switch p1, :sswitch_data_1

    :cond_5
    move p2, v0

    .line 1848
    goto :goto_0

    :sswitch_1
    move p2, v1

    .line 1845
    goto :goto_0

    .line 1850
    :cond_6
    const/16 v2, 0x3400

    if-lt p1, v2, :cond_7

    const/16 v2, 0x4db5

    if-gt p1, v2, :cond_7

    move p2, v0

    .line 1851
    goto :goto_0

    .line 1853
    :cond_7
    const/16 v2, 0x4e00

    if-lt p1, v2, :cond_8

    const v2, 0x9fbb

    if-gt p1, v2, :cond_8

    move p2, v0

    .line 1854
    goto :goto_0

    .line 1856
    :cond_8
    const v2, 0xf900

    if-lt p1, v2, :cond_9

    const v2, 0xfad9

    if-gt p1, v2, :cond_9

    move p2, v0

    .line 1857
    goto :goto_0

    .line 1859
    :cond_9
    const v2, 0xa000

    if-lt p1, v2, :cond_a

    const v2, 0xa48f

    if-gt p1, v2, :cond_a

    move p2, v0

    .line 1860
    goto :goto_0

    .line 1862
    :cond_a
    const v2, 0xa490

    if-lt p1, v2, :cond_b

    const v2, 0xa4cf

    if-gt p1, v2, :cond_b

    move p2, v0

    .line 1863
    goto :goto_0

    .line 1865
    :cond_b
    const v2, 0xfe62

    if-lt p1, v2, :cond_c

    const v2, 0xfe66

    if-gt p1, v2, :cond_c

    move p2, v0

    .line 1866
    goto :goto_0

    .line 1868
    :cond_c
    const v2, 0xff10

    if-lt p1, v2, :cond_d

    const v2, 0xff19

    if-gt p1, v2, :cond_d

    move p2, v0

    .line 1869
    goto :goto_0

    .line 1872
    :cond_d
    iget v2, p0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_14

    .line 1873
    const/16 v2, 0x3001

    if-lt p1, v2, :cond_f

    const/16 v2, 0x301f

    if-gt p1, v2, :cond_f

    .line 1874
    if-nez p2, :cond_e

    .line 1875
    packed-switch p1, :pswitch_data_0

    .line 1888
    :cond_e
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    :pswitch_1
    move p2, v0

    .line 1897
    goto/16 :goto_0

    :pswitch_2
    move p2, v1

    .line 1885
    goto/16 :goto_0

    :pswitch_3
    move p2, v1

    .line 1895
    goto/16 :goto_0

    .line 1900
    :cond_f
    const v2, 0xff01

    if-lt p1, v2, :cond_11

    const v2, 0xff9f

    if-gt p1, v2, :cond_11

    .line 1901
    if-nez p2, :cond_10

    .line 1902
    sparse-switch p1, :sswitch_data_2

    .line 1922
    :cond_10
    sparse-switch p1, :sswitch_data_3

    move p2, v0

    .line 1929
    goto/16 :goto_0

    :sswitch_2
    move p2, v1

    .line 1919
    goto/16 :goto_0

    :sswitch_3
    move p2, v1

    .line 1927
    goto/16 :goto_0

    .line 1931
    :cond_11
    const/16 v2, 0x21

    if-lt p1, v2, :cond_13

    const/16 v2, 0x3f

    if-gt p1, v2, :cond_13

    .line 1932
    if-nez p2, :cond_12

    .line 1933
    sparse-switch p1, :sswitch_data_4

    :cond_12
    move p2, v0

    .line 1944
    goto/16 :goto_0

    :sswitch_4
    move p2, v1

    .line 1941
    goto/16 :goto_0

    .line 1946
    :cond_13
    const/16 v0, 0x5d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x90

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2019

    if-eq p1, v0, :cond_0

    const/16 v0, 0x201d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2032

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2033

    if-eq p1, v0, :cond_0

    const/16 v0, 0x309b

    if-eq p1, v0, :cond_0

    const/16 v0, 0x309c

    if-eq p1, v0, :cond_0

    const/16 v0, 0x30fb

    if-eq p1, v0, :cond_0

    :cond_14
    move p2, v1

    .line 1952
    goto/16 :goto_0

    .line 1803
    :sswitch_data_0
    .sparse-switch
        0x3041 -> :sswitch_0
        0x3043 -> :sswitch_0
        0x3045 -> :sswitch_0
        0x3047 -> :sswitch_0
        0x3049 -> :sswitch_0
        0x3063 -> :sswitch_0
        0x3083 -> :sswitch_0
        0x3085 -> :sswitch_0
        0x3087 -> :sswitch_0
        0x308e -> :sswitch_0
        0x3095 -> :sswitch_0
        0x3096 -> :sswitch_0
        0x309b -> :sswitch_0
        0x309c -> :sswitch_0
        0x309d -> :sswitch_0
        0x309e -> :sswitch_0
    .end sparse-switch

    .line 1827
    :sswitch_data_1
    .sparse-switch
        0x30a0 -> :sswitch_1
        0x30a1 -> :sswitch_1
        0x30a3 -> :sswitch_1
        0x30a5 -> :sswitch_1
        0x30a7 -> :sswitch_1
        0x30a9 -> :sswitch_1
        0x30c3 -> :sswitch_1
        0x30e3 -> :sswitch_1
        0x30e5 -> :sswitch_1
        0x30e7 -> :sswitch_1
        0x30ee -> :sswitch_1
        0x30f5 -> :sswitch_1
        0x30f6 -> :sswitch_1
        0x30fb -> :sswitch_1
        0x30fc -> :sswitch_1
        0x30fd -> :sswitch_1
        0x30fe -> :sswitch_1
    .end sparse-switch

    .line 1875
    :pswitch_data_0
    .packed-switch 0x3001
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 1888
    :pswitch_data_1
    .packed-switch 0x3008
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 1902
    :sswitch_data_2
    .sparse-switch
        0xff01 -> :sswitch_2
        0xff09 -> :sswitch_2
        0xff0c -> :sswitch_2
        0xff0e -> :sswitch_2
        0xff1a -> :sswitch_2
        0xff1b -> :sswitch_2
        0xff1f -> :sswitch_2
        0xff3d -> :sswitch_2
        0xff5d -> :sswitch_2
        0xff61 -> :sswitch_2
        0xff63 -> :sswitch_2
        0xff64 -> :sswitch_2
        0xff65 -> :sswitch_2
        0xff70 -> :sswitch_2
        0xff9e -> :sswitch_2
        0xff9f -> :sswitch_2
    .end sparse-switch

    .line 1922
    :sswitch_data_3
    .sparse-switch
        0xff08 -> :sswitch_3
        0xff3b -> :sswitch_3
        0xff5b -> :sswitch_3
        0xff62 -> :sswitch_3
    .end sparse-switch

    .line 1933
    :sswitch_data_4
    .sparse-switch
        0x21 -> :sswitch_4
        0x29 -> :sswitch_4
        0x2c -> :sswitch_4
        0x2e -> :sswitch_4
        0x3a -> :sswitch_4
        0x3b -> :sswitch_4
        0x3f -> :sswitch_4
    .end sparse-switch
.end method

.method private static native nAddMeasuredRun(JII[F)V
.end method

.method private static native nAddReplacementRun(JIIF)V
.end method

.method private static native nAddStyleRun(JJJIIZ)F
.end method

.method private static native nComputeLineBreaks(JLandroid/text/StaticLayout$LineBreaks;[I[F[II)I
.end method

.method private static native nFinishBuilder(J)V
.end method

.method private static native nFreeBuilder(J)V
.end method

.method private static native nGetWidths(J[F)V
.end method

.method static native nLoadHyphenator(Ljava/nio/ByteBuffer;I)J
.end method

.method private static native nNewBuilder()J
.end method

.method private static native nSetIndents(J[I)V
.end method

.method private static native nSetLocale(JLjava/lang/String;J)V
.end method

.method private static native nSetupParagraph(J[CIFIF[IIII)V
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 29
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "above"    # I
    .param p5, "below"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "v"    # I
    .param p9, "spacingmult"    # F
    .param p10, "spacingadd"    # F
    .param p11, "chooseHt"    # [Landroid/text/style/LineHeightSpan;
    .param p12, "chooseHtv"    # [I
    .param p13, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "flags"    # I
    .param p15, "needMultiply"    # Z
    .param p16, "chdirs"    # [B
    .param p17, "dir"    # I
    .param p18, "easy"    # Z
    .param p19, "bufEnd"    # I
    .param p20, "includePad"    # Z
    .param p21, "trackPad"    # Z
    .param p22, "chs"    # [C
    .param p23, "widths"    # [F
    .param p24, "widthStart"    # I
    .param p25, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p26, "ellipsisWidth"    # F
    .param p27, "textWidth"    # F
    .param p28, "paint"    # Landroid/text/TextPaint;
    .param p29, "moreChars"    # Z

    .prologue
    .line 1381
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v23, v0

    .line 1382
    .local v23, "j":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v27, v23, v2

    .line 1383
    .local v27, "off":I
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v27

    add-int/lit8 v28, v2, 0x1

    .line 1384
    .local v28, "want":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    move-object/from16 v26, v0

    .line 1386
    .local v26, "lines":[I
    move-object/from16 v0, v26

    array-length v2, v0

    move/from16 v0, v28

    if-lt v0, v2, :cond_0

    .line 1387
    const-class v2, Landroid/text/Layout$Directions;

    invoke-static/range {v28 .. v28}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/Layout$Directions;

    .line 1389
    .local v21, "grow2":[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v5, v5

    move-object/from16 v0, v21

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1391
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 1393
    move-object/from16 v0, v21

    array-length v2, v0

    new-array v0, v2, [I

    move-object/from16 v20, v0

    .line 1394
    .local v20, "grow":[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v26

    array-length v4, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 1395
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 1396
    move-object/from16 v26, v20

    .line 1399
    .end local v20    # "grow":[I
    .end local v21    # "grow2":[Landroid/text/Layout$Directions;
    :cond_0
    if-eqz p11, :cond_3

    .line 1400
    move/from16 v0, p4

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1401
    move/from16 v0, p5

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1402
    move/from16 v0, p6

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1403
    move/from16 v0, p7

    move-object/from16 v1, p13

    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1405
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move-object/from16 v0, p11

    array-length v2, v0

    move/from16 v0, v22

    if-ge v0, v2, :cond_2

    .line 1406
    aget-object v2, p11, v22

    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v2, :cond_1

    .line 1407
    aget-object v2, p11, v22

    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v6, p12, v22

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    move-object/from16 v9, p28

    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 1405
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 1411
    :cond_1
    aget-object v2, p11, v22

    aget v6, p12, v22

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v7, p8

    move-object/from16 v8, p13

    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    goto :goto_1

    .line 1415
    :cond_2
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 p4, v0

    .line 1416
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 p5, v0

    .line 1417
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 p6, v0

    .line 1418
    move-object/from16 v0, p13

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 p7, v0

    .line 1421
    .end local v22    # "i":I
    :cond_3
    if-nez v23, :cond_f

    const/16 v19, 0x1

    .line 1422
    .local v19, "firstLine":Z
    :goto_2
    add-int/lit8 v2, v23, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_10

    const/4 v14, 0x1

    .line 1423
    .local v14, "currentLineIsTheLastVisibleOne":Z
    :goto_3
    if-nez v14, :cond_4

    move/from16 v0, p3

    move/from16 v1, p19

    if-ne v0, v1, :cond_11

    :cond_4
    const/16 v24, 0x1

    .line 1425
    .local v24, "lastLine":Z
    :goto_4
    if-eqz v19, :cond_6

    .line 1426
    if-eqz p21, :cond_5

    .line 1427
    sub-int v2, p6, p4

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 1430
    :cond_5
    if-eqz p20, :cond_6

    .line 1431
    move/from16 p4, p6

    .line 1437
    :cond_6
    if-eqz v24, :cond_8

    .line 1438
    if-eqz p21, :cond_7

    .line 1439
    sub-int v2, p7, p5

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 1442
    :cond_7
    if-eqz p20, :cond_8

    .line 1443
    move/from16 p5, p7

    .line 1448
    :cond_8
    if-eqz p15, :cond_13

    if-nez v24, :cond_13

    .line 1449
    sub-int v2, p5, p4

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v3, p9, v3

    mul-float/2addr v2, v3

    add-float v2, v2, p10

    float-to-double v0, v2

    move-wide/from16 v16, v0

    .line 1450
    .local v16, "ex":D
    const-wide/16 v2, 0x0

    cmpl-double v2, v16, v2

    if-ltz v2, :cond_12

    .line 1451
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double v2, v2, v16

    double-to-int v0, v2

    move/from16 v18, v0

    .line 1459
    .end local v16    # "ex":D
    .local v18, "extra":I
    :goto_5
    add-int/lit8 v2, v27, 0x0

    aput p2, v26, v2

    .line 1460
    add-int/lit8 v2, v27, 0x1

    aput p8, v26, v2

    .line 1461
    add-int/lit8 v2, v27, 0x2

    add-int v3, p5, v18

    aput v3, v26, v2

    .line 1463
    sub-int v2, p5, p4

    add-int v2, v2, v18

    add-int p8, p8, v2

    .line 1464
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v27

    add-int/lit8 v2, v2, 0x0

    aput p3, v26, v2

    .line 1465
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int v2, v2, v27

    add-int/lit8 v2, v2, 0x1

    aput p8, v26, v2

    .line 1469
    add-int/lit8 v2, v27, 0x0

    aget v3, v26, v2

    const/high16 v4, 0x20000000

    and-int v4, v4, p14

    or-int/2addr v3, v4

    aput v3, v26, v2

    .line 1470
    add-int/lit8 v2, v27, 0x3

    aput p14, v26, v2

    .line 1472
    add-int/lit8 v2, v27, 0x0

    aget v3, v26, v2

    shl-int/lit8 v4, p17, 0x1e

    or-int/2addr v3, v4

    aput v3, v26, v2

    .line 1473
    sget-object v25, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1477
    .local v25, "linedirs":Landroid/text/Layout$Directions;
    if-eqz p18, :cond_14

    .line 1478
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aput-object v25, v2, v23

    .line 1484
    :goto_6
    if-eqz p25, :cond_e

    .line 1487
    if-eqz p29, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_15

    const/4 v12, 0x1

    .line 1489
    .local v12, "forceEllipsis":Z
    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    if-nez p29, :cond_a

    :cond_9
    if-eqz v19, :cond_b

    if-nez p29, :cond_b

    :cond_a
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_d

    :cond_b
    if-nez v19, :cond_16

    if-nez v14, :cond_c

    if-nez p29, :cond_16

    :cond_c
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p25

    if-ne v0, v2, :cond_16

    :cond_d
    const/4 v15, 0x1

    .line 1494
    .local v15, "doEllipsis":Z
    :goto_8
    if-eqz v15, :cond_e

    move-object/from16 v2, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p23

    move/from16 v6, p24

    move/from16 v7, p26

    move-object/from16 v8, p25

    move/from16 v9, v23

    move/from16 v10, p27

    move-object/from16 v11, p28

    move-object/from16 v13, p22

    .line 1495
    invoke-direct/range {v2 .. v13}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z[C)V

    .line 1501
    .end local v12    # "forceEllipsis":Z
    .end local v15    # "doEllipsis":Z
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1502
    return p8

    .line 1421
    .end local v14    # "currentLineIsTheLastVisibleOne":Z
    .end local v18    # "extra":I
    .end local v19    # "firstLine":Z
    .end local v24    # "lastLine":Z
    .end local v25    # "linedirs":Landroid/text/Layout$Directions;
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 1422
    .restart local v19    # "firstLine":Z
    :cond_10
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1423
    .restart local v14    # "currentLineIsTheLastVisibleOne":Z
    :cond_11
    const/16 v24, 0x0

    goto/16 :goto_4

    .line 1453
    .restart local v16    # "ex":D
    .restart local v24    # "lastLine":Z
    :cond_12
    move-wide/from16 v0, v16

    neg-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v0, v2

    move/from16 v18, v0

    .restart local v18    # "extra":I
    goto/16 :goto_5

    .line 1456
    .end local v16    # "ex":D
    .end local v18    # "extra":I
    :cond_13
    const/16 v18, 0x0

    .restart local v18    # "extra":I
    goto/16 :goto_5

    .line 1480
    .restart local v25    # "linedirs":Landroid/text/Layout$Directions;
    :cond_14
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v4, p2, p24

    sub-int v6, p2, p24

    sub-int v7, p3, p2

    move/from16 v2, p17

    move-object/from16 v3, p16

    move-object/from16 v5, p22

    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v2

    aput-object v2, v8, v23

    goto/16 :goto_6

    .line 1487
    :cond_15
    const/4 v12, 0x0

    goto :goto_7

    .line 1489
    .restart local v12    # "forceEllipsis":Z
    :cond_16
    const/4 v15, 0x0

    goto :goto_8
.end method


# virtual methods
.method generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 116
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;
    .param p2, "includepad"    # Z
    .param p3, "trackpad"    # Z

    .prologue
    .line 566
    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 567
    .local v5, "source":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    move/from16 v72, v0

    .line 568
    .local v72, "bufStart":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    move/from16 v37, v0

    .line 569
    .local v37, "bufEnd":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v46, v0

    .line 570
    .local v46, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    move/from16 v99, v0

    .line 571
    .local v99, "outerWidth":I
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 572
    .local v8, "textDir":Landroid/text/TextDirectionHeuristic;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    move/from16 v27, v0

    .line 573
    .local v27, "spacingmult":F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    move/from16 v28, v0

    .line 574
    .local v28, "spacingadd":F
    move-object/from16 v0, p1

    iget v9, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    int-to-float v0, v9

    move/from16 v74, v0

    .line 575
    .local v74, "ellipsizedWidth":F
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v43, v0

    .line 576
    .local v43, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    new-instance v94, Landroid/text/StaticLayout$LineBreaks;

    invoke-direct/range {v94 .. v94}, Landroid/text/StaticLayout$LineBreaks;-><init>()V

    .line 578
    .local v94, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    const/4 v9, 0x4

    new-array v0, v9, [I

    move-object/from16 v106, v0

    .line 581
    .local v106, "spanEndCache":[I
    const/16 v9, 0x10

    new-array v0, v9, [I

    move-object/from16 v85, v0

    .line 582
    .local v85, "fmCache":[I
    invoke-virtual/range {v46 .. v46}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    move-result-object v9

    move-object/from16 v0, p1

    # invokes: Landroid/text/StaticLayout$Builder;->setLocale(Ljava/util/Locale;)V
    invoke-static {v0, v9}, Landroid/text/StaticLayout$Builder;->access$1000(Landroid/text/StaticLayout$Builder;Ljava/util/Locale;)V

    .line 585
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    .line 586
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/text/StaticLayout$Builder;->mLocale:Ljava/util/Locale;

    if-eqz v9, :cond_0

    .line 587
    const-string v9, "ko"

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/text/StaticLayout$Builder;->mLocale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 588
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    .line 595
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    if-lez v9, :cond_5

    .line 596
    invoke-direct/range {p0 .. p3}, Landroid/text/StaticLayout;->generateForCJK(Landroid/text/StaticLayout$Builder;ZZ)V

    .line 894
    :cond_1
    :goto_1
    return-void

    .line 589
    :cond_2
    const-string v9, "ja"

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/text/StaticLayout$Builder;->mLocale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 590
    const/4 v9, 0x2

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    goto :goto_0

    .line 591
    :cond_3
    const-string/jumbo v9, "my"

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/text/StaticLayout$Builder;->mLocale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string v9, "ZG"

    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/text/StaticLayout$Builder;->mLocale:Ljava/util/Locale;

    invoke-virtual {v10}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 592
    :cond_4
    const/4 v9, 0x4

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mCJKLineBreak:I

    goto :goto_0

    .line 601
    :cond_5
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 603
    const/16 v26, 0x0

    .line 604
    .local v26, "v":I
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v27, v9

    if-nez v9, :cond_6

    const/4 v9, 0x0

    cmpl-float v9, v28, v9

    if-eqz v9, :cond_9

    :cond_6
    const/16 v33, 0x1

    .line 606
    .local v33, "needMultiply":Z
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v31, v0

    .line 607
    .local v31, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v30, 0x0

    .line 609
    .local v30, "chooseHtv":[I
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    .line 611
    .local v4, "measured":Landroid/text/MeasuredText;
    const/16 v112, 0x0

    .line 612
    .local v112, "spanned":Landroid/text/Spanned;
    instance-of v9, v5, Landroid/text/Spanned;

    if-eqz v9, :cond_7

    move-object/from16 v112, v5

    .line 613
    check-cast v112, Landroid/text/Spanned;

    .line 616
    :cond_7
    move/from16 v6, v72

    .local v6, "paraStart":I
    :goto_3
    move/from16 v0, v37

    if-gt v6, v0, :cond_24

    .line 617
    const/16 v9, 0xa

    move/from16 v0, v37

    invoke-static {v5, v9, v6, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v7

    .line 618
    .local v7, "paraEnd":I
    if-gez v7, :cond_a

    .line 619
    move/from16 v7, v37

    .line 623
    :goto_4
    const/4 v15, 0x1

    .line 624
    .local v15, "firstWidthLineCount":I
    move/from16 v82, v99

    .line 625
    .local v82, "firstWidth":I
    move/from16 v101, v99

    .line 627
    .local v101, "restWidth":I
    const/16 v29, 0x0

    .line 629
    .local v29, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v112, :cond_c

    .line 630
    const-class v9, Landroid/text/style/LeadingMarginSpan;

    move-object/from16 v0, v112

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v104

    check-cast v104, [Landroid/text/style/LeadingMarginSpan;

    .line 632
    .local v104, "sp":[Landroid/text/style/LeadingMarginSpan;
    const/16 v89, 0x0

    .local v89, "i":I
    :goto_5
    move-object/from16 v0, v104

    array-length v9, v0

    move/from16 v0, v89

    if-ge v0, v9, :cond_b

    .line 633
    aget-object v96, v104, v89

    .line 634
    .local v96, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v9, v104, v89

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v82, v82, v9

    .line 635
    aget-object v9, v104, v89

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    sub-int v101, v101, v9

    .line 639
    move-object/from16 v0, v96

    instance-of v9, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v9, :cond_8

    move-object/from16 v97, v96

    .line 640
    check-cast v97, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 641
    .local v97, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    invoke-interface/range {v97 .. v97}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v9

    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 632
    .end local v97    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    :cond_8
    add-int/lit8 v89, v89, 0x1

    goto :goto_5

    .line 604
    .end local v4    # "measured":Landroid/text/MeasuredText;
    .end local v6    # "paraStart":I
    .end local v7    # "paraEnd":I
    .end local v15    # "firstWidthLineCount":I
    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v30    # "chooseHtv":[I
    .end local v31    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v33    # "needMultiply":Z
    .end local v82    # "firstWidth":I
    .end local v89    # "i":I
    .end local v96    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v101    # "restWidth":I
    .end local v104    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .end local v112    # "spanned":Landroid/text/Spanned;
    :cond_9
    const/16 v33, 0x0

    goto :goto_2

    .line 621
    .restart local v4    # "measured":Landroid/text/MeasuredText;
    .restart local v6    # "paraStart":I
    .restart local v7    # "paraEnd":I
    .restart local v30    # "chooseHtv":[I
    .restart local v31    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v33    # "needMultiply":Z
    .restart local v112    # "spanned":Landroid/text/Spanned;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 646
    .restart local v15    # "firstWidthLineCount":I
    .restart local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v82    # "firstWidth":I
    .restart local v89    # "i":I
    .restart local v101    # "restWidth":I
    .restart local v104    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_b
    const-class v9, Landroid/text/style/LineHeightSpan;

    move-object/from16 v0, v112

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v29

    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v29, [Landroid/text/style/LineHeightSpan;

    .line 648
    .restart local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v29

    array-length v9, v0

    if-nez v9, :cond_d

    .line 649
    const/16 v29, 0x0

    .end local v89    # "i":I
    .end local v104    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_c
    move-object/from16 v9, p1

    .line 673
    invoke-virtual/range {v4 .. v9}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 674
    iget-object v12, v4, Landroid/text/MeasuredText;->mChars:[C

    .line 675
    .local v12, "chs":[C
    iget-object v0, v4, Landroid/text/MeasuredText;->mWidths:[F

    move-object/from16 v41, v0

    .line 676
    .local v41, "widths":[F
    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v34, v0

    .line 677
    .local v34, "chdirs":[B
    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v35, v0

    .line 678
    .local v35, "dir":I
    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v36, v0

    .line 681
    .local v36, "easy":Z
    const/16 v17, 0x0

    .line 682
    .local v17, "variableTabStops":[I
    if-eqz v112, :cond_12

    .line 683
    const-class v9, Landroid/text/style/TabStopSpan;

    move-object/from16 v0, v112

    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v113

    check-cast v113, [Landroid/text/style/TabStopSpan;

    .line 685
    .local v113, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v113

    array-length v9, v0

    if-lez v9, :cond_12

    .line 686
    move-object/from16 v0, v113

    array-length v9, v0

    new-array v0, v9, [I

    move-object/from16 v114, v0

    .line 687
    .local v114, "stops":[I
    const/16 v89, 0x0

    .restart local v89    # "i":I
    :goto_6
    move-object/from16 v0, v113

    array-length v9, v0

    move/from16 v0, v89

    if-ge v0, v9, :cond_11

    .line 688
    aget-object v9, v113, v89

    invoke-interface {v9}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v9

    aput v9, v114, v89

    .line 687
    add-int/lit8 v89, v89, 0x1

    goto :goto_6

    .line 651
    .end local v12    # "chs":[C
    .end local v17    # "variableTabStops":[I
    .end local v34    # "chdirs":[B
    .end local v35    # "dir":I
    .end local v36    # "easy":Z
    .end local v41    # "widths":[F
    .end local v113    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v114    # "stops":[I
    .restart local v104    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_d
    if-eqz v30, :cond_e

    move-object/from16 v0, v30

    array-length v9, v0

    move-object/from16 v0, v29

    array-length v10, v0

    if-ge v9, v10, :cond_f

    .line 653
    :cond_e
    move-object/from16 v0, v29

    array-length v9, v0

    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v30

    .line 656
    :cond_f
    const/16 v89, 0x0

    :goto_7
    move-object/from16 v0, v29

    array-length v9, v0

    move/from16 v0, v89

    if-ge v0, v9, :cond_c

    .line 657
    aget-object v9, v29, v89

    move-object/from16 v0, v112

    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v98

    .line 659
    .local v98, "o":I
    move/from16 v0, v98

    if-ge v0, v6, :cond_10

    .line 663
    move-object/from16 v0, p0

    move/from16 v1, v98

    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v9

    aput v9, v30, v89

    .line 656
    :goto_8
    add-int/lit8 v89, v89, 0x1

    goto :goto_7

    .line 667
    :cond_10
    aput v26, v30, v89

    goto :goto_8

    .line 690
    .end local v98    # "o":I
    .end local v104    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .restart local v12    # "chs":[C
    .restart local v17    # "variableTabStops":[I
    .restart local v34    # "chdirs":[B
    .restart local v35    # "dir":I
    .restart local v36    # "easy":Z
    .restart local v41    # "widths":[F
    .restart local v113    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v114    # "stops":[I
    :cond_11
    const/4 v9, 0x0

    move-object/from16 v0, v114

    array-length v10, v0

    move-object/from16 v0, v114

    invoke-static {v0, v9, v10}, Ljava/util/Arrays;->sort([III)V

    .line 691
    move-object/from16 v17, v114

    .line 695
    .end local v89    # "i":I
    .end local v113    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v114    # "stops":[I
    :cond_12
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    sub-int v13, v7, v6

    move/from16 v0, v82

    int-to-float v14, v0

    move/from16 v0, v101

    int-to-float v0, v0

    move/from16 v16, v0

    const/16 v18, 0x14

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    move/from16 v20, v0

    invoke-static/range {v10 .. v20}, Landroid/text/StaticLayout;->nSetupParagraph(J[CIFIF[IIII)V

    .line 698
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_13

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v9, :cond_19

    .line 702
    :cond_13
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_14

    const/16 v92, 0x0

    .line 703
    .local v92, "leftLen":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_15

    const/16 v102, 0x0

    .line 704
    .local v102, "rightLen":I
    :goto_a
    const/4 v9, 0x1

    move/from16 v0, v92

    move/from16 v1, v102

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Landroid/text/StaticLayout;->mLineCount:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v91

    .line 705
    .local v91, "indentsLen":I
    move/from16 v0, v91

    new-array v0, v0, [I

    move-object/from16 v90, v0

    .line 706
    .local v90, "indents":[I
    const/16 v89, 0x0

    .restart local v89    # "i":I
    :goto_b
    move/from16 v0, v89

    move/from16 v1, v91

    if-ge v0, v1, :cond_18

    .line 707
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v9, :cond_16

    const/16 v93, 0x0

    .line 709
    .local v93, "leftMargin":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_17

    const/16 v103, 0x0

    .line 711
    .local v103, "rightMargin":I
    :goto_d
    add-int v9, v93, v103

    aput v9, v90, v89

    .line 706
    add-int/lit8 v89, v89, 0x1

    goto :goto_b

    .line 702
    .end local v89    # "i":I
    .end local v90    # "indents":[I
    .end local v91    # "indentsLen":I
    .end local v92    # "leftLen":I
    .end local v93    # "leftMargin":I
    .end local v102    # "rightLen":I
    .end local v103    # "rightMargin":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v0, v9

    move/from16 v92, v0

    goto :goto_9

    .line 703
    .restart local v92    # "leftLen":I
    :cond_15
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v0, v9

    move/from16 v102, v0

    goto :goto_a

    .line 707
    .restart local v89    # "i":I
    .restart local v90    # "indents":[I
    .restart local v91    # "indentsLen":I
    .restart local v102    # "rightLen":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v89

    add-int/lit8 v11, v92, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v93, v9, v10

    goto :goto_c

    .line 709
    .restart local v93    # "leftMargin":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int v10, v10, v89

    add-int/lit8 v11, v102, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    aget v103, v9, v10

    goto :goto_d

    .line 713
    .end local v93    # "leftMargin":I
    :cond_18
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v0, v90

    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    .line 719
    .end local v89    # "i":I
    .end local v90    # "indents":[I
    .end local v91    # "indentsLen":I
    .end local v92    # "leftLen":I
    .end local v102    # "rightLen":I
    :cond_19
    const/16 v86, 0x0

    .line 720
    .local v86, "fmCacheCount":I
    const/16 v107, 0x0

    .line 721
    .local v107, "spanEndCacheCount":I
    move/from16 v111, v6

    .local v111, "spanStart":I
    :goto_e
    move/from16 v0, v111

    if-ge v0, v7, :cond_1d

    .line 722
    mul-int/lit8 v9, v86, 0x4

    move-object/from16 v0, v85

    array-length v10, v0

    if-lt v9, v10, :cond_1a

    .line 723
    mul-int/lit8 v9, v86, 0x4

    mul-int/lit8 v9, v9, 0x2

    new-array v0, v9, [I

    move-object/from16 v88, v0

    .line 724
    .local v88, "grow":[I
    const/4 v9, 0x0

    const/4 v10, 0x0

    mul-int/lit8 v11, v86, 0x4

    move-object/from16 v0, v85

    move-object/from16 v1, v88

    invoke-static {v0, v9, v1, v10, v11}, Ljava/lang/System;->arraycopy([II[III)V

    .line 725
    move-object/from16 v85, v88

    .line 728
    .end local v88    # "grow":[I
    :cond_1a
    move-object/from16 v0, v106

    array-length v9, v0

    move/from16 v0, v107

    if-lt v0, v9, :cond_1b

    .line 729
    mul-int/lit8 v9, v107, 0x2

    new-array v0, v9, [I

    move-object/from16 v88, v0

    .line 730
    .restart local v88    # "grow":[I
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v106

    move-object/from16 v1, v88

    move/from16 v2, v107

    invoke-static {v0, v9, v1, v10, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 731
    move-object/from16 v106, v88

    .line 734
    .end local v88    # "grow":[I
    :cond_1b
    if-nez v112, :cond_1c

    .line 735
    move/from16 v105, v7

    .line 736
    .local v105, "spanEnd":I
    sub-int v110, v105, v111

    .line 737
    .local v110, "spanLen":I
    move-object/from16 v0, v46

    move/from16 v1, v110

    move-object/from16 v2, v31

    invoke-virtual {v4, v0, v1, v2}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    .line 750
    :goto_f
    mul-int/lit8 v9, v86, 0x4

    add-int/lit8 v9, v9, 0x0

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    aput v10, v85, v9

    .line 751
    mul-int/lit8 v9, v86, 0x4

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    aput v10, v85, v9

    .line 752
    mul-int/lit8 v9, v86, 0x4

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    aput v10, v85, v9

    .line 753
    mul-int/lit8 v9, v86, 0x4

    add-int/lit8 v9, v9, 0x3

    move-object/from16 v0, v31

    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    aput v10, v85, v9

    .line 754
    add-int/lit8 v86, v86, 0x1

    .line 756
    aput v105, v106, v107

    .line 757
    add-int/lit8 v107, v107, 0x1

    .line 721
    move/from16 v111, v105

    goto :goto_e

    .line 739
    .end local v105    # "spanEnd":I
    .end local v110    # "spanLen":I
    :cond_1c
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v112

    move/from16 v1, v111

    invoke-interface {v0, v1, v7, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v105

    .line 741
    .restart local v105    # "spanEnd":I
    sub-int v110, v105, v111

    .line 742
    .restart local v110    # "spanLen":I
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v112

    move/from16 v1, v111

    move/from16 v2, v105

    invoke-interface {v0, v1, v2, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v113

    check-cast v113, [Landroid/text/style/MetricAffectingSpan;

    .line 744
    .local v113, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    move-object/from16 v0, v113

    move-object/from16 v1, v112

    invoke-static {v0, v1, v9}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v113

    .end local v113    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v113, [Landroid/text/style/MetricAffectingSpan;

    .line 745
    .restart local v113    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v46

    move-object/from16 v1, v113

    move/from16 v2, v110

    move-object/from16 v3, v31

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    goto :goto_f

    .line 760
    .end local v105    # "spanEnd":I
    .end local v110    # "spanLen":I
    .end local v113    # "spans":[Landroid/text/style/MetricAffectingSpan;
    :cond_1d
    move-object/from16 v0, p1

    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-object/from16 v0, v41

    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nGetWidths(J[F)V

    .line 761
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    move-wide/from16 v18, v0

    move-object/from16 v0, v94

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v94

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v22, v0

    move-object/from16 v0, v94

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v94

    iget-object v9, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    array-length v0, v9

    move/from16 v24, v0

    move-object/from16 v20, v94

    invoke-static/range {v18 .. v24}, Landroid/text/StaticLayout;->nComputeLineBreaks(JLandroid/text/StaticLayout$LineBreaks;[I[F[II)I

    move-result v78

    .line 764
    .local v78, "breakCount":I
    move-object/from16 v0, v94

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    move-object/from16 v80, v0

    .line 765
    .local v80, "breaks":[I
    move-object/from16 v0, v94

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    move-object/from16 v95, v0

    .line 766
    .local v95, "lineWidths":[F
    move-object/from16 v0, v94

    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    move-object/from16 v84, v0

    .line 768
    .local v84, "flags":[I
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    sub-int v100, v9, v10

    .line 769
    .local v100, "remainingLineCount":I
    if-eqz v43, :cond_20

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v43

    if-eq v0, v9, :cond_1e

    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_20

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, v43

    if-eq v0, v9, :cond_20

    :cond_1e
    const/16 v81, 0x1

    .line 773
    .local v81, "ellipsisMayBeApplied":Z
    :goto_10
    if-lez v100, :cond_22

    move/from16 v0, v100

    move/from16 v1, v78

    if-ge v0, v1, :cond_22

    if-eqz v81, :cond_22

    .line 776
    const/16 v115, 0x0

    .line 777
    .local v115, "width":F
    const/16 v83, 0x0

    .line 778
    .local v83, "flag":I
    add-int/lit8 v89, v100, -0x1

    .restart local v89    # "i":I
    :goto_11
    move/from16 v0, v89

    move/from16 v1, v78

    if-ge v0, v1, :cond_21

    .line 779
    aget v9, v95, v89

    add-float v115, v115, v9

    .line 780
    aget v9, v80, v89

    add-int/lit8 v9, v9, -0x1

    aget-char v9, v12, v9

    const/16 v10, 0x20

    if-ne v9, v10, :cond_1f

    add-int/lit8 v9, v78, -0x1

    move/from16 v0, v89

    if-ge v0, v9, :cond_1f

    aget v9, v80, v89

    add-int/lit8 v9, v9, -0x1

    aget v9, v41, v9

    add-float v115, v115, v9

    .line 781
    :cond_1f
    aget v9, v84, v89

    const/high16 v10, 0x20000000

    and-int/2addr v9, v10

    or-int v83, v83, v9

    .line 778
    add-int/lit8 v89, v89, 0x1

    goto :goto_11

    .line 769
    .end local v81    # "ellipsisMayBeApplied":Z
    .end local v83    # "flag":I
    .end local v89    # "i":I
    .end local v115    # "width":F
    :cond_20
    const/16 v81, 0x0

    goto :goto_10

    .line 783
    .restart local v81    # "ellipsisMayBeApplied":Z
    .restart local v83    # "flag":I
    .restart local v89    # "i":I
    .restart local v115    # "width":F
    :cond_21
    add-int/lit8 v9, v100, -0x1

    aput v115, v95, v9

    .line 784
    add-int/lit8 v9, v100, -0x1

    aput v83, v84, v9

    .line 786
    add-int/lit8 v9, v100, -0x1

    add-int/lit8 v10, v78, -0x1

    aget v10, v80, v10

    aput v10, v80, v9

    .line 788
    move/from16 v78, v100

    .line 792
    .end local v83    # "flag":I
    .end local v89    # "i":I
    .end local v115    # "width":F
    :cond_22
    move/from16 v20, v6

    .line 794
    .local v20, "here":I
    const/16 v24, 0x0

    .local v24, "fmTop":I
    const/16 v25, 0x0

    .local v25, "fmBottom":I
    const/16 v22, 0x0

    .local v22, "fmAscent":I
    const/16 v23, 0x0

    .line 795
    .local v23, "fmDescent":I
    const/16 v87, 0x0

    .line 796
    .local v87, "fmCacheIndex":I
    const/16 v108, 0x0

    .line 797
    .local v108, "spanEndCacheIndex":I
    const/16 v79, 0x0

    .line 798
    .local v79, "breakIndex":I
    move/from16 v111, v6

    move/from16 v109, v108

    .end local v108    # "spanEndCacheIndex":I
    .local v109, "spanEndCacheIndex":I
    :goto_12
    move/from16 v0, v111

    if-ge v0, v7, :cond_23

    .line 800
    move-object/from16 v0, v106

    array-length v9, v0

    move/from16 v0, v109

    if-lt v0, v9, :cond_26

    .line 871
    :cond_23
    move/from16 v0, v37

    if-ne v7, v0, :cond_32

    .line 875
    .end local v7    # "paraEnd":I
    .end local v12    # "chs":[C
    .end local v15    # "firstWidthLineCount":I
    .end local v17    # "variableTabStops":[I
    .end local v20    # "here":I
    .end local v22    # "fmAscent":I
    .end local v23    # "fmDescent":I
    .end local v24    # "fmTop":I
    .end local v25    # "fmBottom":I
    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v34    # "chdirs":[B
    .end local v35    # "dir":I
    .end local v36    # "easy":Z
    .end local v41    # "widths":[F
    .end local v78    # "breakCount":I
    .end local v79    # "breakIndex":I
    .end local v80    # "breaks":[I
    .end local v81    # "ellipsisMayBeApplied":Z
    .end local v82    # "firstWidth":I
    .end local v84    # "flags":[I
    .end local v86    # "fmCacheCount":I
    .end local v87    # "fmCacheIndex":I
    .end local v95    # "lineWidths":[F
    .end local v100    # "remainingLineCount":I
    .end local v101    # "restWidth":I
    .end local v107    # "spanEndCacheCount":I
    .end local v109    # "spanEndCacheIndex":I
    .end local v111    # "spanStart":I
    :cond_24
    move/from16 v0, v37

    move/from16 v1, v72

    if-eq v0, v1, :cond_25

    add-int/lit8 v9, v37, -0x1

    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_1

    :cond_25
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v9, v10, :cond_1

    move-object/from16 v48, v4

    move-object/from16 v49, v5

    move/from16 v50, v37

    move/from16 v51, v37

    move-object/from16 v52, v8

    move-object/from16 v53, p1

    .line 879
    invoke-virtual/range {v48 .. v53}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 881
    move-object/from16 v0, v46

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 883
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v52, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v53, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v54, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v55, v0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v62, 0x0

    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    move-object/from16 v64, v0

    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    move/from16 v65, v0

    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    move/from16 v66, v0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v75, 0x0

    const/16 v77, 0x0

    move-object/from16 v48, p0

    move-object/from16 v49, v5

    move/from16 v50, v37

    move/from16 v51, v37

    move/from16 v56, v26

    move/from16 v57, v27

    move/from16 v58, v28

    move-object/from16 v61, v31

    move/from16 v63, v33

    move/from16 v67, v37

    move/from16 v68, p2

    move/from16 v69, p3

    move-object/from16 v73, v43

    move-object/from16 v76, v46

    invoke-direct/range {v48 .. v77}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v26

    goto/16 :goto_1

    .line 803
    .restart local v7    # "paraEnd":I
    .restart local v12    # "chs":[C
    .restart local v15    # "firstWidthLineCount":I
    .restart local v17    # "variableTabStops":[I
    .restart local v20    # "here":I
    .restart local v22    # "fmAscent":I
    .restart local v23    # "fmDescent":I
    .restart local v24    # "fmTop":I
    .restart local v25    # "fmBottom":I
    .restart local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v34    # "chdirs":[B
    .restart local v35    # "dir":I
    .restart local v36    # "easy":Z
    .restart local v41    # "widths":[F
    .restart local v78    # "breakCount":I
    .restart local v79    # "breakIndex":I
    .restart local v80    # "breaks":[I
    .restart local v81    # "ellipsisMayBeApplied":Z
    .restart local v82    # "firstWidth":I
    .restart local v84    # "flags":[I
    .restart local v86    # "fmCacheCount":I
    .restart local v87    # "fmCacheIndex":I
    .restart local v95    # "lineWidths":[F
    .restart local v100    # "remainingLineCount":I
    .restart local v101    # "restWidth":I
    .restart local v107    # "spanEndCacheCount":I
    .restart local v109    # "spanEndCacheIndex":I
    .restart local v111    # "spanStart":I
    :cond_26
    add-int/lit8 v108, v109, 0x1

    .end local v109    # "spanEndCacheIndex":I
    .restart local v108    # "spanEndCacheIndex":I
    aget v105, v106, v109

    .line 806
    .restart local v105    # "spanEnd":I
    mul-int/lit8 v9, v87, 0x4

    add-int/lit8 v9, v9, 0x0

    aget v9, v85, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 807
    mul-int/lit8 v9, v87, 0x4

    add-int/lit8 v9, v9, 0x1

    aget v9, v85, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 808
    mul-int/lit8 v9, v87, 0x4

    add-int/lit8 v9, v9, 0x2

    aget v9, v85, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 809
    mul-int/lit8 v9, v87, 0x4

    add-int/lit8 v9, v9, 0x3

    aget v9, v85, v9

    move-object/from16 v0, v31

    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 810
    add-int/lit8 v87, v87, 0x1

    .line 812
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v0, v24

    if-ge v9, v0, :cond_27

    .line 813
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v24, v0

    .line 815
    :cond_27
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v0, v22

    if-ge v9, v0, :cond_28

    .line 816
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    .line 818
    :cond_28
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v0, v23

    if-le v9, v0, :cond_29

    .line 819
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v23, v0

    .line 821
    :cond_29
    move-object/from16 v0, v31

    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v0, v25

    if-le v9, v0, :cond_2a

    .line 822
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v25, v0

    .line 826
    :cond_2a
    :goto_13
    move/from16 v0, v79

    move/from16 v1, v78

    if-ge v0, v1, :cond_2b

    aget v9, v80, v79

    add-int/2addr v9, v6

    move/from16 v0, v111

    if-ge v9, v0, :cond_2b

    .line 827
    add-int/lit8 v79, v79, 0x1

    goto :goto_13

    .line 830
    :cond_2b
    move/from16 v0, v79

    move/from16 v1, v78

    if-ge v0, v1, :cond_31

    aget v9, v80, v79

    add-int/2addr v9, v6

    move/from16 v0, v105

    if-gt v9, v0, :cond_31

    .line 831
    aget v9, v80, v79

    add-int v21, v6, v9

    .line 833
    .local v21, "endPos":I
    move/from16 v0, v21

    move/from16 v1, v37

    if-ge v0, v1, :cond_2e

    const/16 v47, 0x1

    .line 835
    .local v47, "moreChars":Z
    :goto_14
    move/from16 v44, v74

    .line 837
    .local v44, "elipsizeWidth_span":F
    if-nez v79, :cond_2f

    move/from16 v0, v82

    move/from16 v1, v99

    if-eq v0, v1, :cond_2f

    .line 838
    sub-int v9, v99, v82

    int-to-float v9, v9

    sub-float v44, v74, v9

    .line 842
    :cond_2c
    :goto_15
    const/4 v9, 0x0

    cmpg-float v9, v44, v9

    if-gez v9, :cond_2d

    move/from16 v44, v74

    .line 845
    :cond_2d
    aget v32, v84, v79

    aget v45, v95, v79

    move-object/from16 v18, p0

    move-object/from16 v19, v5

    move/from16 v38, p2

    move/from16 v39, p3

    move-object/from16 v40, v12

    move/from16 v42, v6

    invoke-direct/range {v18 .. v47}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v26

    .line 852
    move/from16 v0, v21

    move/from16 v1, v105

    if-ge v0, v1, :cond_30

    .line 854
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v24, v0

    .line 855
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v25, v0

    .line 856
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v22, v0

    .line 857
    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v23, v0

    .line 862
    :goto_16
    move/from16 v20, v21

    .line 863
    add-int/lit8 v79, v79, 0x1

    .line 865
    move-object/from16 v0, p0

    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v9, v10, :cond_2b

    goto/16 :goto_1

    .line 833
    .end local v44    # "elipsizeWidth_span":F
    .end local v47    # "moreChars":Z
    :cond_2e
    const/16 v47, 0x0

    goto :goto_14

    .line 839
    .restart local v44    # "elipsizeWidth_span":F
    .restart local v47    # "moreChars":Z
    :cond_2f
    if-eqz v79, :cond_2c

    move/from16 v0, v101

    move/from16 v1, v99

    if-eq v0, v1, :cond_2c

    .line 840
    sub-int v9, v99, v101

    int-to-float v9, v9

    sub-float v44, v74, v9

    goto :goto_15

    .line 859
    :cond_30
    const/16 v23, 0x0

    move/from16 v22, v23

    move/from16 v25, v23

    move/from16 v24, v23

    goto :goto_16

    .line 798
    .end local v21    # "endPos":I
    .end local v44    # "elipsizeWidth_span":F
    .end local v47    # "moreChars":Z
    :cond_31
    move/from16 v111, v105

    move/from16 v109, v108

    .end local v108    # "spanEndCacheIndex":I
    .restart local v109    # "spanEndCacheIndex":I
    goto/16 :goto_12

    .line 616
    .end local v105    # "spanEnd":I
    :cond_32
    move v6, v7

    goto/16 :goto_3
.end method

.method public getBottomPadding()I
    .locals 1

    .prologue
    .line 1717
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1762
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 1763
    const/4 v0, 0x0

    .line 1766
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1771
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    .line 1772
    const/4 v0, 0x0

    .line 1775
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    goto :goto_0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 1780
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    return v0
.end method

.method public getHyphen(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1725
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 5
    .param p1, "line"    # I
    .param p2, "align"    # Landroid/text/Layout$Alignment;

    .prologue
    const/4 v2, 0x0

    .line 1733
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne p2, v3, :cond_2

    .line 1734
    iget-object v3, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v3, :cond_1

    .line 1754
    :cond_0
    :goto_0
    return v2

    .line 1737
    :cond_1
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v2, v2, v3

    goto :goto_0

    .line 1739
    :cond_2
    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p2, v3, :cond_3

    .line 1740
    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v3, :cond_0

    .line 1743
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v2, v2, v3

    neg-int v2, v2

    goto :goto_0

    .line 1745
    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v2, :cond_6

    .line 1746
    const/4 v0, 0x0

    .line 1747
    .local v0, "left":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v2, :cond_4

    .line 1748
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v0, v2, v3

    .line 1750
    :cond_4
    const/4 v1, 0x0

    .line 1751
    .local v1, "right":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v2, :cond_5

    .line 1752
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v1, v2, v3

    .line 1754
    :cond_5
    sub-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1756
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unhandled alignment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public getLineContainsTab(I)Z
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1702
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLineCount()I
    .locals 1

    .prologue
    .line 1667
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1682
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x2

    aget v0, v1, v2

    .line 1683
    .local v0, "descent":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 1685
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1687
    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1707
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 6
    .param p1, "vertical"    # I

    .prologue
    .line 1646
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1647
    .local v1, "high":I
    const/4 v3, -0x1

    .line 1649
    .local v3, "low":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 1650
    .local v2, "lines":[I
    :goto_0
    sub-int v4, v1, v3

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 1651
    add-int v4, v1, v3

    shr-int/lit8 v0, v4, 0x1

    .line 1652
    .local v0, "guess":I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v4, v0

    add-int/lit8 v4, v4, 0x1

    aget v4, v2, v4

    if-le v4, p1, :cond_0

    .line 1653
    move v1, v0

    goto :goto_0

    .line 1655
    :cond_0
    move v3, v0

    goto :goto_0

    .line 1658
    .end local v0    # "guess":I
    :cond_1
    if-gez v3, :cond_2

    .line 1659
    const/4 v3, 0x0

    .line 1661
    .end local v3    # "low":I
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1692
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1672
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v2, p1

    add-int/lit8 v2, v2, 0x1

    aget v0, v1, v2

    .line 1673
    .local v0, "top":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt p1, v1, :cond_0

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    if-eq p1, v1, :cond_0

    .line 1675
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    move-result v1

    add-int/2addr v0, v1

    .line 1677
    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1697
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public getTopPadding()I
    .locals 1

    .prologue
    .line 1712
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
