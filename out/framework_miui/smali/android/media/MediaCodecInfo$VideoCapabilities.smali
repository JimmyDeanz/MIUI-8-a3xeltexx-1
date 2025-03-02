.class public final Landroid/media/MediaCodecInfo$VideoCapabilities;
.super Ljava/lang/Object;
.source "MediaCodecInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoCapabilities"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCapabilities"


# instance fields
.field private mAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private mBitrateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockCountRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockHeight:I

.field private mBlockWidth:I

.field private mBlocksPerSecondRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightAlignment:I

.field private mHeightRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasuredFrameRates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private mSmallerDimensionUpperLimit:I

.field private mVerticalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWidthAlignment:I

.field private mWidthRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 1343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyAlignment(II)V
    .locals 6
    .param p1, "widthAlignment"    # I
    .param p2, "heightAlignment"    # I

    .prologue
    .line 1638
    const-string/jumbo v0, "widthAlignment must be a power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->access$600(ILjava/lang/String;)I

    .line 1639
    const-string/jumbo v0, "heightAlignment must be a power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->access$600(ILjava/lang/String;)I

    .line 1641
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    if-le p2, v0, :cond_1

    .line 1643
    :cond_0
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_INTEGERS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$000()Landroid/util/Range;

    move-result-object v3

    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_LONGS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    move-result-object v4

    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$500()Landroid/util/Range;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    .line 1649
    :cond_1
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 1650
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 1652
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    invoke-static {v0, v1}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1653
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-static {v0, v1}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1654
    return-void
.end method

.method private applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V
    .locals 7
    .param p1, "blockWidth"    # I
    .param p2, "blockHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local p4, "rates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .local p5, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const/4 v6, 0x1

    .line 1600
    const-string v3, "blockWidth must be a power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {p1, v3}, Landroid/media/MediaCodecInfo;->access$600(ILjava/lang/String;)I

    .line 1601
    const-string v3, "blockHeight must be a power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {p2, v3}, Landroid/media/MediaCodecInfo;->access$600(ILjava/lang/String;)I

    .line 1603
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1604
    .local v2, "newBlockWidth":I
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1607
    .local v1, "newBlockHeight":I
    mul-int v3, v2, v1

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int/2addr v3, v4

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v0, v3, v4

    .line 1609
    .local v0, "factor":I
    if-eq v0, v6, :cond_0

    .line 1610
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v3, v0}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1611
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1613
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v4, v1, v4

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v5, v2, v5

    invoke-static {v3, v4, v5}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1617
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v4, v2, v4

    invoke-static {v3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1619
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v4, v1, v4

    invoke-static {v3, v4}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1622
    :cond_0
    mul-int v3, v2, v1

    div-int/2addr v3, p1

    div-int v0, v3, p2

    .line 1623
    if-eq v0, v6, :cond_1

    .line 1624
    invoke-static {p3, v0}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object p3

    .line 1625
    int-to-long v4, v0

    invoke-static {p4, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object p4

    .line 1626
    div-int v3, v1, p2

    div-int v4, v2, p1

    invoke-static {p5, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object p5

    .line 1630
    :cond_1
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v3, p3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1631
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v3, p4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1632
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v3, p5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1633
    iput v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 1634
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 1635
    return-void
.end method

.method private applyLevelLimits()V
    .locals 48

    .prologue
    .line 1729
    const/16 v40, 0x0

    .line 1730
    .local v40, "maxBlocksPerSecond":I
    const/4 v5, 0x0

    .line 1731
    .local v5, "maxBlocks":I
    const/16 v41, 0x0

    .line 1732
    .local v41, "maxBps":I
    const/16 v42, 0x0

    .line 1734
    .local v42, "maxDPBBlocks":I
    const/16 v37, 0x4

    .line 1735
    .local v37, "errors":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v0, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    move-object/from16 v46, v0

    .line 1736
    .local v46, "profileLevels":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    invoke-virtual {v2}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    move-result-object v44

    .line 1738
    .local v44, "mime":Ljava/lang/String;
    const-string/jumbo v2, "video/avc"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1739
    const/16 v5, 0x63

    .line 1740
    const/16 v40, 0x5cd

    .line 1741
    const v41, 0xfa00

    .line 1742
    const/16 v42, 0x18c

    .line 1743
    move-object/from16 v36, v46

    .local v36, "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v39, v0

    .local v39, "len$":I
    const/16 v38, 0x0

    .local v38, "i$":I
    :goto_0
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_1

    aget-object v45, v36, v38

    .line 1744
    .local v45, "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v34, 0x0

    .local v34, "MBPS":I
    const/16 v32, 0x0

    .local v32, "FS":I
    const/16 v28, 0x0

    .local v28, "BR":I
    const/16 v29, 0x0

    .line 1745
    .local v29, "DPB":I
    const/16 v47, 0x1

    .line 1746
    .local v47, "supported":Z
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v2, :sswitch_data_0

    .line 1782
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized level "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    or-int/lit8 v37, v37, 0x1

    .line 1786
    :goto_1
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v2, :sswitch_data_1

    .line 1803
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized profile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    or-int/lit8 v37, v37, 0x1

    .line 1806
    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    .line 1808
    :goto_2
    if-eqz v47, :cond_0

    .line 1809
    and-int/lit8 v37, v37, -0x5

    .line 1811
    :cond_0
    move/from16 v0, v34

    move/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v40

    .line 1812
    move/from16 v0, v32

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1813
    move/from16 v0, v28

    move/from16 v1, v41

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v41

    .line 1814
    move/from16 v0, v42

    move/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 1743
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_0

    .line 1748
    :sswitch_0
    const/16 v34, 0x5cd

    const/16 v32, 0x63

    const/16 v28, 0x40

    const/16 v29, 0x18c

    goto :goto_1

    .line 1750
    :sswitch_1
    const/16 v34, 0x5cd

    const/16 v32, 0x63

    const/16 v28, 0x80

    const/16 v29, 0x18c

    goto :goto_1

    .line 1752
    :sswitch_2
    const/16 v34, 0xbb8

    const/16 v32, 0x18c

    const/16 v28, 0xc0

    const/16 v29, 0x384

    goto :goto_1

    .line 1754
    :sswitch_3
    const/16 v34, 0x1770

    const/16 v32, 0x18c

    const/16 v28, 0x180

    const/16 v29, 0x948

    goto :goto_1

    .line 1756
    :sswitch_4
    const/16 v34, 0x2e68

    const/16 v32, 0x18c

    const/16 v28, 0x300

    const/16 v29, 0x948

    goto/16 :goto_1

    .line 1758
    :sswitch_5
    const/16 v34, 0x2e68

    const/16 v32, 0x18c

    const/16 v28, 0x7d0

    const/16 v29, 0x948

    goto/16 :goto_1

    .line 1760
    :sswitch_6
    const/16 v34, 0x4d58

    const/16 v32, 0x318

    const/16 v28, 0xfa0

    const/16 v29, 0x1290

    goto/16 :goto_1

    .line 1762
    :sswitch_7
    const/16 v34, 0x4f1a

    const/16 v32, 0x654

    const/16 v28, 0xfa0

    const/16 v29, 0x1fa4

    goto/16 :goto_1

    .line 1764
    :sswitch_8
    const v34, 0x9e34

    const/16 v32, 0x654

    const/16 v28, 0x2710

    const/16 v29, 0x1fa4

    goto/16 :goto_1

    .line 1766
    :sswitch_9
    const v34, 0x1a5e0

    const/16 v32, 0xe10

    const/16 v28, 0x36b0

    const/16 v29, 0x4650

    goto/16 :goto_1

    .line 1768
    :sswitch_a
    const v34, 0x34bc0

    const/16 v32, 0x1400

    const/16 v28, 0x4e20

    const/16 v29, 0x5000

    goto/16 :goto_1

    .line 1770
    :sswitch_b
    const v34, 0x3c000

    const/16 v32, 0x2000

    const/16 v28, 0x4e20

    const v29, 0x8000

    goto/16 :goto_1

    .line 1772
    :sswitch_c
    const v34, 0x3c000

    const/16 v32, 0x2000

    const v28, 0xc350

    const v29, 0x8000

    goto/16 :goto_1

    .line 1774
    :sswitch_d
    const v34, 0x7f800

    const/16 v32, 0x2200

    const v28, 0xc350

    const v29, 0x8800

    goto/16 :goto_1

    .line 1776
    :sswitch_e
    const/high16 v34, 0x90000

    const/16 v32, 0x5640

    const v28, 0x20f58

    const v29, 0x1af40

    goto/16 :goto_1

    .line 1778
    :sswitch_f
    const/high16 v34, 0xf0000

    const v32, 0x9000

    const v28, 0x3a980

    const v29, 0x2d000

    goto/16 :goto_1

    .line 1780
    :sswitch_10
    const v34, 0x1fa400

    const v32, 0x9000

    const v28, 0x3a980

    const v29, 0x2d000

    goto/16 :goto_1

    .line 1788
    :sswitch_11
    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0x4e2

    move/from16 v28, v0

    goto/16 :goto_2

    .line 1790
    :sswitch_12
    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0xbb8

    move/from16 v28, v0

    goto/16 :goto_2

    .line 1794
    :sswitch_13
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported profile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    or-int/lit8 v37, v37, 0x2

    .line 1797
    const/16 v47, 0x0

    .line 1801
    :sswitch_14
    move/from16 v0, v28

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v28, v0

    goto/16 :goto_2

    .line 1817
    .end local v28    # "BR":I
    .end local v29    # "DPB":I
    .end local v32    # "FS":I
    .end local v34    # "MBPS":I
    .end local v45    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v47    # "supported":Z
    :cond_1
    mul-int/lit8 v2, v5, 0x8

    int-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v3, v10

    .line 1818
    .local v3, "maxLengthInBlocks":I
    move/from16 v0, v40

    int-to-long v6, v0

    const/16 v8, 0x10

    const/16 v9, 0x10

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v2, p0

    move v4, v3

    invoke-direct/range {v2 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 2194
    .end local v3    # "maxLengthInBlocks":I
    .end local v36    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v38    # "i$":I
    .end local v39    # "len$":I
    :goto_3
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 2195
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v4, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    or-int v4, v4, v37

    iput v4, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    .line 2196
    return-void

    .line 1823
    :cond_2
    const-string/jumbo v2, "video/mpeg2"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1824
    const/16 v7, 0xb

    .local v7, "maxWidth":I
    const/16 v8, 0x9

    .local v8, "maxHeight":I
    const/16 v43, 0xf

    .line 1825
    .local v43, "maxRate":I
    const/16 v5, 0x63

    .line 1826
    const/16 v40, 0x5cd

    .line 1827
    const v41, 0xfa00

    .line 1828
    move-object/from16 v36, v46

    .restart local v36    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v39, v0

    .restart local v39    # "len$":I
    const/16 v38, 0x0

    .restart local v38    # "i$":I
    :goto_4
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_4

    aget-object v45, v36, v38

    .line 1829
    .restart local v45    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v34, 0x0

    .restart local v34    # "MBPS":I
    const/16 v32, 0x0

    .restart local v32    # "FS":I
    const/16 v28, 0x0

    .restart local v28    # "BR":I
    const/16 v30, 0x0

    .local v30, "FR":I
    const/16 v35, 0x0

    .local v35, "W":I
    const/16 v33, 0x0

    .line 1830
    .local v33, "H":I
    const/16 v47, 0x1

    .line 1831
    .restart local v47    # "supported":Z
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v2, :pswitch_data_0

    .line 1870
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized profile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    or-int/lit8 v37, v37, 0x1

    .line 1874
    :goto_5
    if-eqz v47, :cond_3

    .line 1875
    and-int/lit8 v37, v37, -0x5

    .line 1877
    :cond_3
    move/from16 v0, v34

    move/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v40

    .line 1878
    move/from16 v0, v32

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1879
    move/from16 v0, v28

    mul-int/lit16 v2, v0, 0x3e8

    move/from16 v0, v41

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v41

    .line 1880
    move/from16 v0, v35

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1881
    move/from16 v0, v33

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1882
    move/from16 v0, v30

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v43

    .line 1828
    add-int/lit8 v38, v38, 0x1

    goto :goto_4

    .line 1833
    :pswitch_0
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    packed-switch v2, :pswitch_data_1

    .line 1837
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized profile/level "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    or-int/lit8 v37, v37, 0x1

    .line 1842
    goto :goto_5

    .line 1835
    :pswitch_1
    const/16 v30, 0x1e

    const/16 v35, 0x2d

    const/16 v33, 0x24

    const v34, 0xbdd8

    const/16 v32, 0x654

    const/16 v28, 0x3a98

    goto :goto_5

    .line 1844
    :pswitch_2
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    packed-switch v2, :pswitch_data_2

    .line 1854
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized profile/level "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    or-int/lit8 v37, v37, 0x1

    .line 1859
    goto/16 :goto_5

    .line 1846
    :pswitch_3
    const/16 v30, 0x1e

    const/16 v35, 0x16

    const/16 v33, 0x12

    const/16 v34, 0x2e68

    const/16 v32, 0x18c

    const/16 v28, 0xfa0

    goto/16 :goto_5

    .line 1848
    :pswitch_4
    const/16 v30, 0x1e

    const/16 v35, 0x2d

    const/16 v33, 0x24

    const v34, 0xbdd8

    const/16 v32, 0x654

    const/16 v28, 0x3a98

    goto/16 :goto_5

    .line 1850
    :pswitch_5
    const/16 v30, 0x3c

    const/16 v35, 0x5a

    const/16 v33, 0x44

    const v34, 0x59a60

    const/16 v32, 0x17e8

    const v28, 0xea60

    goto/16 :goto_5

    .line 1852
    :pswitch_6
    const/16 v30, 0x3c

    const/16 v35, 0x78

    const/16 v33, 0x44

    const v34, 0x77880

    const/16 v32, 0x1fe0

    const v28, 0x13880

    goto/16 :goto_5

    .line 1864
    :pswitch_7
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported profile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1866
    or-int/lit8 v37, v37, 0x2

    .line 1867
    const/16 v47, 0x0

    .line 1868
    goto/16 :goto_5

    .line 1884
    .end local v28    # "BR":I
    .end local v30    # "FR":I
    .end local v32    # "FS":I
    .end local v33    # "H":I
    .end local v34    # "MBPS":I
    .end local v35    # "W":I
    .end local v45    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v47    # "supported":Z
    :cond_4
    move/from16 v0, v40

    int-to-long v10, v0

    const/16 v12, 0x10

    const/16 v13, 0x10

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v6, p0

    move v9, v5

    invoke-direct/range {v6 .. v15}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 1888
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    goto/16 :goto_3

    .line 1889
    .end local v7    # "maxWidth":I
    .end local v8    # "maxHeight":I
    .end local v36    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v38    # "i$":I
    .end local v39    # "len$":I
    .end local v43    # "maxRate":I
    :cond_5
    const-string/jumbo v2, "video/mp4v-es"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1890
    const/16 v7, 0xb

    .restart local v7    # "maxWidth":I
    const/16 v8, 0x9

    .restart local v8    # "maxHeight":I
    const/16 v43, 0xf

    .line 1891
    .restart local v43    # "maxRate":I
    const/16 v5, 0x63

    .line 1892
    const/16 v40, 0x5cd

    .line 1893
    const v41, 0xfa00

    .line 1894
    move-object/from16 v36, v46

    .restart local v36    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v39, v0

    .restart local v39    # "len$":I
    const/16 v38, 0x0

    .restart local v38    # "i$":I
    :goto_6
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_7

    aget-object v45, v36, v38

    .line 1895
    .restart local v45    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v34, 0x0

    .restart local v34    # "MBPS":I
    const/16 v32, 0x0

    .restart local v32    # "FS":I
    const/16 v28, 0x0

    .restart local v28    # "BR":I
    const/16 v30, 0x0

    .restart local v30    # "FR":I
    const/16 v35, 0x0

    .restart local v35    # "W":I
    const/16 v33, 0x0

    .line 1896
    .restart local v33    # "H":I
    const/16 v47, 0x1

    .line 1897
    .restart local v47    # "supported":Z
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v2, :sswitch_data_2

    .line 1971
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized profile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    or-int/lit8 v37, v37, 0x1

    .line 1975
    :goto_7
    if-eqz v47, :cond_6

    .line 1976
    and-int/lit8 v37, v37, -0x5

    .line 1978
    :cond_6
    move/from16 v0, v34

    move/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v40

    .line 1979
    move/from16 v0, v32

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1980
    move/from16 v0, v28

    mul-int/lit16 v2, v0, 0x3e8

    move/from16 v0, v41

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v41

    .line 1981
    move/from16 v0, v35

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1982
    move/from16 v0, v33

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1983
    move/from16 v0, v30

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v43

    .line 1894
    add-int/lit8 v38, v38, 0x1

    goto :goto_6

    .line 1899
    :sswitch_15
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v2, :sswitch_data_3

    .line 1920
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized profile/level "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1923
    or-int/lit8 v37, v37, 0x1

    .line 1925
    goto :goto_7

    .line 1901
    :sswitch_16
    const/16 v30, 0xf

    const/16 v35, 0xb

    const/16 v33, 0x9

    const/16 v34, 0x5cd

    const/16 v32, 0x63

    const/16 v28, 0x40

    goto :goto_7

    .line 1903
    :sswitch_17
    const/16 v30, 0x1e

    const/16 v35, 0xb

    const/16 v33, 0x9

    const/16 v34, 0x5cd

    const/16 v32, 0x63

    const/16 v28, 0x40

    goto/16 :goto_7

    .line 1905
    :sswitch_18
    const/16 v30, 0x1e

    const/16 v35, 0xb

    const/16 v33, 0x9

    const/16 v34, 0x5cd

    const/16 v32, 0x63

    const/16 v28, 0x80

    goto/16 :goto_7

    .line 1907
    :sswitch_19
    const/16 v30, 0x1e

    const/16 v35, 0x16

    const/16 v33, 0x12

    const/16 v34, 0x1734

    const/16 v32, 0x18c

    const/16 v28, 0x80

    goto/16 :goto_7

    .line 1909
    :sswitch_1a
    const/16 v30, 0x1e

    const/16 v35, 0x16

    const/16 v33, 0x12

    const/16 v34, 0x2e68

    const/16 v32, 0x18c

    const/16 v28, 0x180

    goto/16 :goto_7

    .line 1916
    :sswitch_1b
    const/16 v30, 0x1e

    const/16 v35, 0x16

    const/16 v33, 0x12

    const/16 v34, 0x2e68

    const/16 v32, 0x18c

    const/16 v28, 0x180

    .line 1917
    const/16 v47, 0x0

    .line 1918
    goto/16 :goto_7

    .line 1927
    :sswitch_1c
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v2, :sswitch_data_4

    .line 1945
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized profile/level "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    or-int/lit8 v37, v37, 0x1

    .line 1950
    goto/16 :goto_7

    .line 1930
    :sswitch_1d
    const/16 v30, 0x1e

    const/16 v35, 0xb

    const/16 v33, 0x9

    const/16 v34, 0xb9a

    const/16 v32, 0x63

    const/16 v28, 0x80

    goto/16 :goto_7

    .line 1932
    :sswitch_1e
    const/16 v30, 0x1e

    const/16 v35, 0x16

    const/16 v33, 0x12

    const/16 v34, 0x1734

    const/16 v32, 0x18c

    const/16 v28, 0x180

    goto/16 :goto_7

    .line 1934
    :sswitch_1f
    const/16 v30, 0x1e

    const/16 v35, 0x16

    const/16 v33, 0x12

    const/16 v34, 0x2e68

    const/16 v32, 0x18c

    const/16 v28, 0x300

    goto/16 :goto_7

    .line 1941
    :sswitch_20
    const/16 v30, 0x1e

    const/16 v35, 0x2c

    const/16 v33, 0x24

    const/16 v34, 0x5cd0

    const/16 v32, 0x318

    const/16 v28, 0xbb8

    goto/16 :goto_7

    .line 1943
    :sswitch_21
    const/16 v30, 0x1e

    const/16 v35, 0x2d

    const/16 v33, 0x24

    const v34, 0xbdd8

    const/16 v32, 0x654

    const/16 v28, 0x1f40

    goto/16 :goto_7

    .line 1965
    :sswitch_22
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported profile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    or-int/lit8 v37, v37, 0x2

    .line 1968
    const/16 v47, 0x0

    .line 1969
    goto/16 :goto_7

    .line 1985
    .end local v28    # "BR":I
    .end local v30    # "FR":I
    .end local v32    # "FS":I
    .end local v33    # "H":I
    .end local v34    # "MBPS":I
    .end local v35    # "W":I
    .end local v45    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v47    # "supported":Z
    :cond_7
    move/from16 v0, v40

    int-to-long v10, v0

    const/16 v12, 0x10

    const/16 v13, 0x10

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v6, p0

    move v9, v5

    invoke-direct/range {v6 .. v15}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 1989
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v4, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    goto/16 :goto_3

    .line 1990
    .end local v7    # "maxWidth":I
    .end local v8    # "maxHeight":I
    .end local v36    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v38    # "i$":I
    .end local v39    # "len$":I
    .end local v43    # "maxRate":I
    :cond_8
    const-string/jumbo v2, "video/3gpp"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1991
    const/16 v7, 0xb

    .restart local v7    # "maxWidth":I
    const/16 v8, 0x9

    .restart local v8    # "maxHeight":I
    const/16 v43, 0xf

    .line 1992
    .restart local v43    # "maxRate":I
    const/16 v5, 0x63

    .line 1993
    const/16 v40, 0x5cd

    .line 1994
    const v41, 0xfa00

    .line 1995
    move-object/from16 v36, v46

    .restart local v36    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v39, v0

    .restart local v39    # "len$":I
    const/16 v38, 0x0

    .restart local v38    # "i$":I
    :goto_8
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_9

    aget-object v45, v36, v38

    .line 1996
    .restart local v45    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const/16 v34, 0x0

    .restart local v34    # "MBPS":I
    const/16 v28, 0x0

    .restart local v28    # "BR":I
    const/16 v30, 0x0

    .restart local v30    # "FR":I
    const/16 v35, 0x0

    .restart local v35    # "W":I
    const/16 v33, 0x0

    .line 1997
    .restart local v33    # "H":I
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v2, :sswitch_data_5

    .line 2022
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized profile/level "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    or-int/lit8 v37, v37, 0x1

    .line 2026
    :goto_9
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    sparse-switch v2, :sswitch_data_6

    .line 2038
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized profile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    or-int/lit8 v37, v37, 0x1

    .line 2042
    :sswitch_23
    and-int/lit8 v37, v37, -0x5

    .line 2043
    move/from16 v0, v34

    move/from16 v1, v40

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v40

    .line 2044
    mul-int v2, v35, v33

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2045
    const v2, 0xfa00

    mul-int v2, v2, v28

    move/from16 v0, v41

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v41

    .line 2046
    move/from16 v0, v35

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2047
    move/from16 v0, v33

    invoke-static {v0, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 2048
    move/from16 v0, v30

    move/from16 v1, v43

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v43

    .line 1995
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_8

    .line 1999
    :sswitch_24
    const/16 v30, 0xf

    const/16 v35, 0xb

    const/16 v33, 0x9

    const/16 v28, 0x1

    mul-int/lit8 v34, v30, 0x63

    goto :goto_9

    .line 2002
    :sswitch_25
    const/16 v30, 0x1e

    const/16 v35, 0x16

    const/16 v33, 0x12

    const/16 v28, 0x2

    move/from16 v0, v30

    mul-int/lit16 v0, v0, 0x18c

    move/from16 v34, v0

    goto :goto_9

    .line 2005
    :sswitch_26
    const/16 v30, 0x1e

    const/16 v35, 0x16

    const/16 v33, 0x12

    const/16 v28, 0x6

    move/from16 v0, v30

    mul-int/lit16 v0, v0, 0x18c

    move/from16 v34, v0

    goto/16 :goto_9

    .line 2008
    :sswitch_27
    const/16 v30, 0x1e

    const/16 v35, 0x16

    const/16 v33, 0x12

    const/16 v28, 0x20

    move/from16 v0, v30

    mul-int/lit16 v0, v0, 0x18c

    move/from16 v34, v0

    goto/16 :goto_9

    .line 2011
    :sswitch_28
    const/16 v30, 0x1e

    const/16 v35, 0xb

    const/16 v33, 0x9

    const/16 v28, 0x2

    mul-int/lit8 v34, v30, 0x63

    goto/16 :goto_9

    .line 2014
    :sswitch_29
    const/16 v30, 0x3c

    const/16 v35, 0x16

    const/16 v33, 0x12

    const/16 v28, 0x40

    const/16 v2, 0x18c

    mul-int/lit8 v34, v2, 0x32

    goto/16 :goto_9

    .line 2017
    :sswitch_2a
    const/16 v30, 0x3c

    const/16 v35, 0x2d

    const/16 v33, 0x12

    const/16 v28, 0x80

    const/16 v2, 0x32a

    mul-int/lit8 v34, v2, 0x32

    goto/16 :goto_9

    .line 2020
    :sswitch_2b
    const/16 v30, 0x3c

    const/16 v35, 0x2d

    const/16 v33, 0x24

    const/16 v28, 0x100

    const/16 v2, 0x654

    mul-int/lit8 v34, v2, 0x32

    goto/16 :goto_9

    .line 2050
    .end local v28    # "BR":I
    .end local v30    # "FR":I
    .end local v33    # "H":I
    .end local v34    # "MBPS":I
    .end local v35    # "W":I
    .end local v45    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_9
    move/from16 v0, v40

    int-to-long v10, v0

    const/16 v12, 0x10

    const/16 v13, 0x10

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v6, p0

    move v9, v5

    invoke-direct/range {v6 .. v15}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 2054
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    goto/16 :goto_3

    .line 2055
    .end local v7    # "maxWidth":I
    .end local v8    # "maxHeight":I
    .end local v36    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v38    # "i$":I
    .end local v39    # "len$":I
    .end local v43    # "maxRate":I
    :cond_a
    const-string/jumbo v2, "video/x-vnd.on2.vp8"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string/jumbo v2, "video/x-vnd.on2.vp9"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2057
    :cond_b
    const v40, 0x7fffffff

    move/from16 v5, v40

    .line 2060
    const v41, 0x5f5e100

    .line 2064
    move-object/from16 v36, v46

    .restart local v36    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v39, v0

    .restart local v39    # "len$":I
    const/16 v38, 0x0

    .restart local v38    # "i$":I
    :goto_a
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_c

    aget-object v45, v36, v38

    .line 2065
    .restart local v45    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    packed-switch v2, :pswitch_data_3

    .line 2072
    :pswitch_8
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized level "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    or-int/lit8 v37, v37, 0x1

    .line 2076
    :pswitch_9
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v2, :pswitch_data_4

    .line 2080
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized profile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    or-int/lit8 v37, v37, 0x1

    .line 2084
    :pswitch_a
    and-int/lit8 v37, v37, -0x5

    .line 2064
    add-int/lit8 v38, v38, 0x1

    goto :goto_a

    .line 2087
    .end local v45    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_c
    const-string/jumbo v2, "video/x-vnd.on2.vp8"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v16, 0x10

    .line 2089
    .local v16, "blockSize":I
    :goto_b
    const/16 v11, 0x7fff

    const/16 v12, 0x7fff

    move/from16 v0, v40

    int-to-long v14, v0

    const/16 v18, 0x1

    const/16 v19, 0x1

    move-object/from16 v10, p0

    move v13, v5

    move/from16 v17, v16

    invoke-direct/range {v10 .. v19}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    goto/16 :goto_3

    .line 2087
    .end local v16    # "blockSize":I
    :cond_d
    const/16 v16, 0x8

    goto :goto_b

    .line 2092
    .end local v36    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v38    # "i$":I
    .end local v39    # "len$":I
    :cond_e
    const-string/jumbo v2, "video/hevc"

    move-object/from16 v0, v44

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2093
    const v5, 0x9000

    .line 2094
    mul-int/lit8 v40, v5, 0xf

    .line 2095
    const v41, 0x1f400

    .line 2096
    move-object/from16 v36, v46

    .restart local v36    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v39, v0

    .restart local v39    # "len$":I
    const/16 v38, 0x0

    .restart local v38    # "i$":I
    :goto_c
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_f

    aget-object v45, v36, v38

    .line 2097
    .restart local v45    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    const-wide/16 v30, 0x0

    .line 2098
    .local v30, "FR":D
    const/16 v32, 0x0

    .line 2099
    .restart local v32    # "FS":I
    const/16 v28, 0x0

    .line 2100
    .restart local v28    # "BR":I
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    sparse-switch v2, :sswitch_data_7

    .line 2149
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized level "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2151
    or-int/lit8 v37, v37, 0x1

    .line 2153
    :goto_d
    move-object/from16 v0, v45

    iget v2, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    packed-switch v2, :pswitch_data_5

    .line 2158
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized profile "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v45

    iget v6, v0, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    or-int/lit8 v37, v37, 0x1

    .line 2170
    :pswitch_b
    and-int/lit8 v37, v37, -0x5

    .line 2171
    move/from16 v0, v32

    int-to-double v10, v0

    mul-double v10, v10, v30

    double-to-int v2, v10

    move/from16 v0, v40

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v40

    .line 2172
    move/from16 v0, v32

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2173
    move/from16 v0, v28

    mul-int/lit16 v2, v0, 0x3e8

    move/from16 v0, v41

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v41

    .line 2096
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_c

    .line 2103
    :sswitch_2c
    const-wide/high16 v30, 0x402e000000000000L    # 15.0

    const v32, 0x9000

    const/16 v28, 0x80

    goto :goto_d

    .line 2106
    :sswitch_2d
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    const v32, 0x1e000

    const/16 v28, 0x5dc

    goto :goto_d

    .line 2109
    :sswitch_2e
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    const v32, 0x3c000

    const/16 v28, 0xbb8

    goto :goto_d

    .line 2112
    :sswitch_2f
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    const v32, 0x87000

    const/16 v28, 0x1770

    goto :goto_d

    .line 2115
    :sswitch_30
    const-wide v30, 0x4040e00000000000L    # 33.75

    const/high16 v32, 0xf0000

    const/16 v28, 0x2710

    goto :goto_d

    .line 2117
    :sswitch_31
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    const/high16 v32, 0x220000

    const/16 v28, 0x2ee0

    goto/16 :goto_d

    .line 2119
    :sswitch_32
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    const/high16 v32, 0x220000

    const/16 v28, 0x7530

    goto/16 :goto_d

    .line 2121
    :sswitch_33
    const-wide/high16 v30, 0x404e000000000000L    # 60.0

    const/high16 v32, 0x220000

    const/16 v28, 0x4e20

    goto/16 :goto_d

    .line 2123
    :sswitch_34
    const-wide/high16 v30, 0x404e000000000000L    # 60.0

    const/high16 v32, 0x220000

    const v28, 0xc350

    goto/16 :goto_d

    .line 2125
    :sswitch_35
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    const/high16 v32, 0x880000

    const/16 v28, 0x61a8

    goto/16 :goto_d

    .line 2127
    :sswitch_36
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    const/high16 v32, 0x880000

    const v28, 0x186a0

    goto/16 :goto_d

    .line 2129
    :sswitch_37
    const-wide/high16 v30, 0x404e000000000000L    # 60.0

    const/high16 v32, 0x880000

    const v28, 0x9c40

    goto/16 :goto_d

    .line 2131
    :sswitch_38
    const-wide/high16 v30, 0x404e000000000000L    # 60.0

    const/high16 v32, 0x880000

    const v28, 0x27100

    goto/16 :goto_d

    .line 2133
    :sswitch_39
    const-wide/high16 v30, 0x405e000000000000L    # 120.0

    const/high16 v32, 0x880000

    const v28, 0xea60

    goto/16 :goto_d

    .line 2135
    :sswitch_3a
    const-wide/high16 v30, 0x405e000000000000L    # 120.0

    const/high16 v32, 0x880000

    const v28, 0x3a980

    goto/16 :goto_d

    .line 2137
    :sswitch_3b
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    const/high16 v32, 0x2200000

    const v28, 0xea60

    goto/16 :goto_d

    .line 2139
    :sswitch_3c
    const-wide/high16 v30, 0x403e000000000000L    # 30.0

    const/high16 v32, 0x2200000

    const v28, 0x3a980

    goto/16 :goto_d

    .line 2141
    :sswitch_3d
    const-wide/high16 v30, 0x404e000000000000L    # 60.0

    const/high16 v32, 0x2200000

    const v28, 0x1d4c0

    goto/16 :goto_d

    .line 2143
    :sswitch_3e
    const-wide/high16 v30, 0x404e000000000000L    # 60.0

    const/high16 v32, 0x2200000

    const v28, 0x75300

    goto/16 :goto_d

    .line 2145
    :sswitch_3f
    const-wide/high16 v30, 0x405e000000000000L    # 120.0

    const/high16 v32, 0x2200000

    const v28, 0x3a980

    goto/16 :goto_d

    .line 2147
    :sswitch_40
    const-wide/high16 v30, 0x405e000000000000L    # 120.0

    const/high16 v32, 0x2200000

    const v28, 0xc3500

    goto/16 :goto_d

    .line 2176
    .end local v28    # "BR":I
    .end local v30    # "FR":D
    .end local v32    # "FS":I
    .end local v45    # "profileLevel":Landroid/media/MediaCodecInfo$CodecProfileLevel;
    :cond_f
    mul-int/lit8 v2, v5, 0x8

    int-to-double v10, v2

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-int v3, v10

    .line 2178
    .restart local v3    # "maxLengthInBlocks":I
    const/16 v2, 0x40

    invoke-static {v5, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v5

    .line 2179
    const/16 v2, 0x40

    move/from16 v0, v40

    invoke-static {v0, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v40

    .line 2180
    const/16 v2, 0x8

    invoke-static {v3, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    .line 2182
    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const/16 v24, 0x8

    const/16 v25, 0x8

    const/16 v26, 0x1

    const/16 v27, 0x1

    move-object/from16 v18, p0

    move/from16 v19, v3

    move/from16 v20, v3

    move/from16 v21, v5

    invoke-direct/range {v18 .. v27}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    goto/16 :goto_3

    .line 2188
    .end local v3    # "maxLengthInBlocks":I
    .end local v36    # "arr$":[Landroid/media/MediaCodecInfo$CodecProfileLevel;
    .end local v38    # "i$":I
    .end local v39    # "len$":I
    :cond_10
    const-string v2, "VideoCapabilities"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unsupported mime "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    const v41, 0xfa00

    .line 2192
    or-int/lit8 v37, v37, 0x2

    goto/16 :goto_3

    .line 1746
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
        0x400 -> :sswitch_a
        0x800 -> :sswitch_b
        0x1000 -> :sswitch_c
        0x2000 -> :sswitch_d
        0x4000 -> :sswitch_e
        0x8000 -> :sswitch_f
        0x10000 -> :sswitch_10
    .end sparse-switch

    .line 1786
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_14
        0x2 -> :sswitch_14
        0x4 -> :sswitch_13
        0x8 -> :sswitch_11
        0x10 -> :sswitch_12
        0x20 -> :sswitch_13
        0x40 -> :sswitch_13
    .end sparse-switch

    .line 1831
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
    .end packed-switch

    .line 1833
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    .line 1844
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1897
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_15
        0x2 -> :sswitch_22
        0x4 -> :sswitch_22
        0x8 -> :sswitch_22
        0x10 -> :sswitch_22
        0x20 -> :sswitch_22
        0x40 -> :sswitch_22
        0x80 -> :sswitch_22
        0x100 -> :sswitch_22
        0x200 -> :sswitch_22
        0x400 -> :sswitch_22
        0x800 -> :sswitch_22
        0x1000 -> :sswitch_22
        0x2000 -> :sswitch_22
        0x4000 -> :sswitch_22
        0x8000 -> :sswitch_1c
    .end sparse-switch

    .line 1899
    :sswitch_data_3
    .sparse-switch
        0x1 -> :sswitch_16
        0x2 -> :sswitch_18
        0x4 -> :sswitch_17
        0x8 -> :sswitch_19
        0x10 -> :sswitch_1a
        0x20 -> :sswitch_1b
        0x40 -> :sswitch_1b
        0x80 -> :sswitch_1b
    .end sparse-switch

    .line 1927
    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_1d
        0x4 -> :sswitch_1d
        0x8 -> :sswitch_1e
        0x10 -> :sswitch_1f
        0x20 -> :sswitch_20
        0x40 -> :sswitch_20
        0x80 -> :sswitch_21
    .end sparse-switch

    .line 1997
    :sswitch_data_5
    .sparse-switch
        0x1 -> :sswitch_24
        0x2 -> :sswitch_25
        0x4 -> :sswitch_26
        0x8 -> :sswitch_27
        0x10 -> :sswitch_28
        0x20 -> :sswitch_29
        0x40 -> :sswitch_2a
        0x80 -> :sswitch_2b
    .end sparse-switch

    .line 2026
    :sswitch_data_6
    .sparse-switch
        0x1 -> :sswitch_23
        0x2 -> :sswitch_23
        0x4 -> :sswitch_23
        0x8 -> :sswitch_23
        0x10 -> :sswitch_23
        0x20 -> :sswitch_23
        0x40 -> :sswitch_23
        0x80 -> :sswitch_23
        0x100 -> :sswitch_23
    .end sparse-switch

    .line 2065
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 2076
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch

    .line 2100
    :sswitch_data_7
    .sparse-switch
        0x1 -> :sswitch_2c
        0x2 -> :sswitch_2c
        0x4 -> :sswitch_2d
        0x8 -> :sswitch_2d
        0x10 -> :sswitch_2e
        0x20 -> :sswitch_2e
        0x40 -> :sswitch_2f
        0x80 -> :sswitch_2f
        0x100 -> :sswitch_30
        0x200 -> :sswitch_30
        0x400 -> :sswitch_31
        0x800 -> :sswitch_32
        0x1000 -> :sswitch_33
        0x2000 -> :sswitch_34
        0x4000 -> :sswitch_35
        0x8000 -> :sswitch_36
        0x10000 -> :sswitch_37
        0x20000 -> :sswitch_38
        0x40000 -> :sswitch_39
        0x80000 -> :sswitch_3a
        0x100000 -> :sswitch_3b
        0x200000 -> :sswitch_3c
        0x400000 -> :sswitch_3d
        0x800000 -> :sswitch_3e
        0x1000000 -> :sswitch_3f
        0x2000000 -> :sswitch_40
    .end sparse-switch

    .line 2153
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_b
        :pswitch_b
    .end packed-switch
.end method

.method private applyMacroBlockLimits(IIIJIIII)V
    .locals 6
    .param p1, "maxHorizontalBlocks"    # I
    .param p2, "maxVerticalBlocks"    # I
    .param p3, "maxBlocks"    # I
    .param p4, "maxBlocksPerSecond"    # J
    .param p6, "blockWidth"    # I
    .param p7, "blockHeight"    # I
    .param p8, "widthAlignment"    # I
    .param p9, "heightAlignment"    # I

    .prologue
    .line 1713
    invoke-direct {p0, p8, p9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyAlignment(II)V

    .line 1714
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    new-instance v0, Landroid/util/Rational;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Landroid/util/Rational;-><init>(II)V

    new-instance v1, Landroid/util/Rational;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Landroid/util/Rational;-><init>(II)V

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    move-object v0, p0

    move v1, p6

    move v2, p7

    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    .line 1720
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int/2addr v2, p6

    div-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1723
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int/2addr v2, p7

    div-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1726
    return-void
.end method

.method public static create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 1
    .param p0, "info"    # Landroid/media/MediaFormat;
    .param p1, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .prologue
    .line 1348
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities;

    invoke-direct {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;-><init>()V

    .line 1349
    .local v0, "caps":Landroid/media/MediaCodecInfo$VideoCapabilities;
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 1350
    return-object v0
.end method

.method private estimateFrameRatesFor(II)Landroid/util/Range;
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1230
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->findClosestSize(II)Landroid/util/Size;

    move-result-object v2

    .line 1231
    .local v2, "size":Landroid/util/Size;
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    .line 1232
    .local v0, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-double v4, v3

    mul-int v3, p1, p2

    int-to-double v6, v3

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 1233
    .local v1, "ratio":Ljava/lang/Double;
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    long-to-double v6, v6

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    return-object v3
.end method

.method private findClosestSize(II)Landroid/util/Size;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1215
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v5

    .line 1216
    .local v5, "targetBlockCount":I
    const/4 v0, 0x0

    .line 1217
    .local v0, "closestSize":Landroid/util/Size;
    const v3, 0x7fffffff

    .line 1218
    .local v3, "minDiff":I
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Size;

    .line 1219
    .local v4, "size":Landroid/util/Size;
    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v7

    invoke-direct {p0, v6, v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    move-result v6

    sub-int v6, v5, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 1221
    .local v1, "diff":I
    if-ge v1, v3, :cond_0

    .line 1222
    move v3, v1

    .line 1223
    move-object v0, v4

    goto :goto_0

    .line 1226
    .end local v1    # "diff":I
    .end local v4    # "size":Landroid/util/Size;
    :cond_1
    return-object v0
.end method

.method private getBlockCount(II)I
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1210
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Landroid/media/Utils;->divUp(II)I

    move-result v0

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method private getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Landroid/util/Size;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1408
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1409
    .local v5, "ret":Ljava/util/Map;, "Ljava/util/Map<Landroid/util/Size;Landroid/util/Range<Ljava/lang/Long;>;>;"
    const-string/jumbo v3, "measured-frame-rate-"

    .line 1410
    .local v3, "prefix":Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1411
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1413
    .local v1, "key":Ljava/lang/String;
    const-string/jumbo v10, "measured-frame-rate-"

    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1416
    const-string/jumbo v10, "measured-frame-rate-"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1417
    .local v8, "subKey":Ljava/lang/String;
    const-string v10, "-"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1418
    .local v9, "temp":[Ljava/lang/String;
    array-length v10, v9

    const/4 v11, 0x5

    if-ne v10, v11, :cond_0

    .line 1421
    const/4 v10, 0x3

    aget-object v7, v9, v10

    .line 1422
    .local v7, "sizeStr":Ljava/lang/String;
    const/4 v10, 0x0

    invoke-static {v7, v10}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v6

    .line 1423
    .local v6, "size":Landroid/util/Size;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v11

    mul-int/2addr v10, v11

    if-lez v10, :cond_0

    .line 1426
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v4

    .line 1427
    .local v4, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-ltz v10, :cond_0

    .line 1430
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1432
    .end local v1    # "key":Ljava/lang/String;
    .end local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    .end local v6    # "size":Landroid/util/Size;
    .end local v7    # "sizeStr":Ljava/lang/String;
    .end local v8    # "subKey":Ljava/lang/String;
    .end local v9    # "temp":[Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method private initWithPlatformLimits()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1383
    # getter for: Landroid/media/MediaCodecInfo;->BITRATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$100()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 1385
    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1386
    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1387
    # getter for: Landroid/media/MediaCodecInfo;->FRAME_RATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 1389
    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1390
    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1393
    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_INTEGERS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$000()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1394
    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_LONGS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1396
    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$500()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1397
    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$500()Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1400
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 1401
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 1402
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 1403
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 1404
    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 1405
    return-void
.end method

.method private parseFromInfo(Landroid/media/MediaFormat;)V
    .locals 26
    .param p1, "info"    # Landroid/media/MediaFormat;

    .prologue
    .line 1436
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v21

    .line 1437
    .local v21, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v16, Landroid/util/Size;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    move-object/from16 v0, v16

    invoke-direct {v0, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 1438
    .local v16, "blockSize":Landroid/util/Size;
    new-instance v12, Landroid/util/Size;

    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    invoke-direct {v12, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 1439
    .local v12, "alignment":Landroid/util/Size;
    const/16 v17, 0x0

    .local v17, "counts":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v25, 0x0

    .local v25, "widths":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v20, 0x0

    .line 1440
    .local v20, "heights":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/16 v19, 0x0

    .local v19, "frameRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v13, 0x0

    .line 1441
    .local v13, "bitRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .line 1442
    .local v14, "blockRates":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Long;>;"
    const/16 v23, 0x0

    .local v23, "ratios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const/4 v15, 0x0

    .line 1444
    .local v15, "blockRatios":Landroid/util/Range;, "Landroid/util/Range<Landroid/util/Rational;>;"
    const-string v2, "block-size"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v16

    .line 1445
    const-string v2, "alignment"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v12}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    move-result-object v12

    .line 1446
    const-string v2, "block-count-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v17

    .line 1447
    const-string v2, "blocks-per-second-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v14

    .line 1449
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    .line 1451
    const-string/jumbo v2, "size-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    .line 1452
    .local v22, "o":Ljava/lang/Object;
    invoke-static/range {v22 .. v22}, Landroid/media/Utils;->parseSizeRange(Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v24

    .line 1453
    .local v24, "sizeRange":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/Size;Landroid/util/Size;>;"
    if-eqz v24, :cond_0

    .line 1455
    :try_start_0
    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v25

    .line 1458
    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v24

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v20

    .line 1472
    :cond_0
    :goto_0
    const-string v2, "feature-can-swap-width-height"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1473
    if-eqz v25, :cond_c

    .line 1474
    invoke-virtual/range {v25 .. v25}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {v20 .. v20}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 1476
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v20

    move-object/from16 v25, v20

    .line 1485
    :cond_1
    :goto_1
    const-string v2, "block-aspect-ratio-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v23

    .line 1487
    const-string/jumbo v2, "pixel-aspect-ratio-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v15

    .line 1489
    const-string v2, "frame-rate-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v19

    .line 1490
    if-eqz v19, :cond_2

    .line 1492
    :try_start_1
    # getter for: Landroid/media/MediaCodecInfo;->FRAME_RATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    .line 1499
    :cond_2
    :goto_2
    const-string v2, "bitrate-range"

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    move-result-object v13

    .line 1500
    if-eqz v13, :cond_3

    .line 1502
    :try_start_2
    # getter for: Landroid/media/MediaCodecInfo;->BITRATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$100()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v13

    .line 1510
    :cond_3
    :goto_3
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v2

    const-string v3, "block-size width must be power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->access$600(ILjava/lang/String;)I

    .line 1512
    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v2

    const-string v3, "block-size height must be power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->access$600(ILjava/lang/String;)I

    .line 1515
    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v2

    const-string v3, "alignment width must be power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->access$600(ILjava/lang/String;)I

    .line 1517
    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v2

    const-string v3, "alignment height must be power of two"

    # invokes: Landroid/media/MediaCodecInfo;->checkPowerOfTwo(ILjava/lang/String;)I
    invoke-static {v2, v3}, Landroid/media/MediaCodecInfo;->access$600(ILjava/lang/String;)I

    .line 1521
    const v3, 0x7fffffff

    const v4, 0x7fffffff

    const v5, 0x7fffffff

    const-wide v6, 0x7fffffffffffffffL

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v8

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v9

    invoke-virtual {v12}, Landroid/util/Size;->getWidth()I

    move-result v10

    invoke-virtual {v12}, Landroid/util/Size;->getHeight()I

    move-result v11

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 1526
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v2, v2, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_d

    .line 1529
    if-eqz v25, :cond_4

    .line 1530
    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1532
    :cond_4
    if-eqz v20, :cond_5

    .line 1533
    # getter for: Landroid/media/MediaCodecInfo;->SIZE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1535
    :cond_5
    if-eqz v17, :cond_6

    .line 1536
    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_INTEGERS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$000()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1540
    :cond_6
    if-eqz v14, :cond_7

    .line 1541
    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_LONGS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    int-to-long v4, v3

    invoke-static {v14, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1545
    :cond_7
    if-eqz v15, :cond_8

    .line 1546
    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$500()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v15, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1551
    :cond_8
    if-eqz v23, :cond_9

    .line 1552
    # getter for: Landroid/media/MediaCodecInfo;->POSITIVE_RATIONALS:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$500()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1554
    :cond_9
    if-eqz v19, :cond_a

    .line 1555
    # getter for: Landroid/media/MediaCodecInfo;->FRAME_RATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 1557
    :cond_a
    if-eqz v13, :cond_b

    .line 1558
    # getter for: Landroid/media/MediaCodecInfo;->BITRATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$100()Landroid/util/Range;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 1594
    :cond_b
    :goto_4
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    .line 1595
    return-void

    .line 1461
    :catch_0
    move-exception v18

    .line 1462
    .local v18, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "VideoCapabilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not parse size range \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1463
    const/16 v25, 0x0

    .line 1464
    const/16 v20, 0x0

    goto/16 :goto_0

    .line 1478
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    :cond_c
    const-string v2, "VideoCapabilities"

    const-string v3, "feature can-swap-width-height is best used with size-range"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 1481
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v2, v3}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    goto/16 :goto_1

    .line 1493
    :catch_1
    move-exception v18

    .line 1494
    .restart local v18    # "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "VideoCapabilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frame rate range ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is out of limits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Landroid/media/MediaCodecInfo;->FRAME_RATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 1503
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v18

    .line 1504
    .restart local v18    # "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "VideoCapabilities"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitrate range ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is out of limits: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Landroid/media/MediaCodecInfo;->BITRATE_RANGE:Landroid/util/Range;
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$100()Landroid/util/Range;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 1562
    .end local v18    # "e":Ljava/lang/IllegalArgumentException;
    :cond_d
    if-eqz v25, :cond_e

    .line 1563
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1565
    :cond_e
    if-eqz v20, :cond_f

    .line 1566
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1568
    :cond_f
    if-eqz v17, :cond_10

    .line 1569
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    move-object/from16 v0, v17

    invoke-static {v0, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1573
    :cond_10
    if-eqz v14, :cond_11

    .line 1574
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    int-to-long v4, v3

    invoke-static {v14, v4, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1578
    :cond_11
    if-eqz v15, :cond_12

    .line 1579
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getHeight()I

    move-result v4

    div-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-virtual/range {v16 .. v16}, Landroid/util/Size;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    invoke-static {v15, v3, v4}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1584
    :cond_12
    if-eqz v23, :cond_13

    .line 1585
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1587
    :cond_13
    if-eqz v19, :cond_14

    .line 1588
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 1590
    :cond_14
    if-eqz v13, :cond_b

    .line 1591
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    invoke-virtual {v2, v13}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    goto/16 :goto_4
.end method

.method private supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z
    .locals 12
    .param p1, "width"    # Ljava/lang/Integer;
    .param p2, "height"    # Ljava/lang/Integer;
    .param p3, "rate"    # Ljava/lang/Number;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1296
    const/4 v4, 0x1

    .line 1298
    .local v4, "ok":Z
    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    .line 1299
    iget-object v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v8, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    rem-int/2addr v8, v9

    if-nez v8, :cond_4

    move v4, v6

    .line 1302
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    .line 1303
    iget-object v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v8, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    rem-int/2addr v8, v9

    if-nez v8, :cond_5

    move v4, v6

    .line 1306
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    if-eqz p3, :cond_2

    .line 1307
    iget-object v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    invoke-static {v10, v11}, Landroid/media/Utils;->intRangeFor(D)Landroid/util/Range;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v4

    .line 1309
    :cond_2
    if-eqz v4, :cond_3

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 1310
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    iget v9, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-gt v8, v9, :cond_6

    move v4, v6

    .line 1312
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {v8, v9}, Landroid/media/Utils;->divUp(II)I

    move-result v5

    .line 1313
    .local v5, "widthInBlocks":I
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {v8, v9}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    .line 1314
    .local v1, "heightInBlocks":I
    mul-int v0, v5, v1

    .line 1315
    .local v0, "blockCount":I
    if-eqz v4, :cond_7

    iget-object v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    new-instance v9, Landroid/util/Rational;

    invoke-direct {v9, v5, v1}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    new-instance v9, Landroid/util/Rational;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v4, v6

    .line 1319
    :goto_3
    if-eqz v4, :cond_3

    if-eqz p3, :cond_3

    .line 1320
    int-to-double v6, v0

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    mul-double v2, v6, v8

    .line 1321
    .local v2, "blocksPerSec":D
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-static {v2, v3}, Landroid/media/Utils;->longRangeFor(D)Landroid/util/Range;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    move-result v4

    .line 1325
    .end local v0    # "blockCount":I
    .end local v1    # "heightInBlocks":I
    .end local v2    # "blocksPerSec":D
    .end local v5    # "widthInBlocks":I
    :cond_3
    return v4

    :cond_4
    move v4, v7

    .line 1299
    goto/16 :goto_0

    :cond_5
    move v4, v7

    .line 1303
    goto/16 :goto_1

    :cond_6
    move v4, v7

    .line 1310
    goto :goto_2

    .restart local v0    # "blockCount":I
    .restart local v1    # "heightInBlocks":I
    .restart local v5    # "widthInBlocks":I
    :cond_7
    move v4, v7

    .line 1315
    goto :goto_3
.end method

.method private updateLimits()V
    .locals 8

    .prologue
    .line 1658
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1660
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 1664
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1666
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 1670
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 1676
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    new-instance v2, Landroid/util/Rational;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/util/Rational;-><init>(II)V

    new-instance v3, Landroid/util/Rational;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v4, v0}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 1683
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v0, v2

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1686
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v0, v2

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1689
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    new-instance v2, Landroid/util/Rational;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v2, v3, v0}, Landroid/util/Rational;-><init>(II)V

    new-instance v3, Landroid/util/Rational;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v3, v4, v0}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 1693
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 1698
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 1701
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v4, v0

    div-long/2addr v2, v4

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v6, v0

    div-double/2addr v4, v6

    double-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 1706
    return-void
.end method


# virtual methods
.method public areSizeAndRateSupported(IID)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # D

    .prologue
    .line 1283
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public getAchievableFrameRatesFor(II)Landroid/util/Range;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1265
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unsupported size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1269
    :cond_0
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 1270
    :cond_1
    const-string v1, "VideoCapabilities"

    const-string v2, "Codec did not publish any measurement data."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    :goto_0
    return-object v0

    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->estimateFrameRatesFor(II)Landroid/util/Range;

    move-result-object v0

    goto :goto_0
.end method

.method public getAspectRatioRange(Z)Landroid/util/Range;
    .locals 1
    .param p1, "blocks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Range",
            "<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1379
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    goto :goto_0
.end method

.method public getBitrateRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1029
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    return-object v0
.end method

.method public getBlockCountRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1369
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    return-object v0
.end method

.method public getBlockSize()Landroid/util/Size;
    .locals 3

    .prologue
    .line 1364
    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getBlocksPerSecondRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1374
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    return-object v0
.end method

.method public getHeightAlignment()I
    .locals 1

    .prologue
    .line 1063
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    return v0
.end method

.method public getSmallerDimensionUpperLimit()I
    .locals 1

    .prologue
    .line 1080
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    return v0
.end method

.method public getSupportedFrameRates()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1092
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedFrameRatesFor(II)Landroid/util/Range;
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1195
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1196
    .local v1, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1197
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unsupported size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1199
    :cond_0
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    move-result v2

    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v3}, Landroid/media/Utils;->divUp(II)I

    move-result v3

    mul-int v0, v2, v3

    .line 1202
    .local v0, "blockCount":I
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    long-to-double v2, v2

    int-to-double v4, v0

    div-double v4, v2, v4

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    int-to-double v6, v0

    div-double/2addr v4, v6

    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v6, v2

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v2

    return-object v2
.end method

.method public getSupportedHeights()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1043
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedHeightsFor(I)Landroid/util/Range;
    .locals 12
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1145
    :try_start_0
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 1146
    .local v3, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    rem-int v5, p1, v5

    if-eqz v5, :cond_1

    .line 1148
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unsupported width"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1176
    .end local v3    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 1178
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "VideoCapabilities"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not get supported heights for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unsupported width"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1150
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v3    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v5}, Landroid/media/Utils;->divUp(II)I

    move-result v4

    .line 1153
    .local v4, "widthInBlocks":I
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v4}, Landroid/media/Utils;->divUp(II)I

    move-result v6

    int-to-double v8, v4

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1157
    .local v2, "minHeightInBlocks":I
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    div-int v6, v5, v4

    int-to-double v8, v4

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-int v5, v8

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1161
    .local v1, "maxHeightInBlocks":I
    add-int/lit8 v5, v2, -0x1

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    mul-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 1166
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-le p1, v5, :cond_2

    .line 1167
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    .line 1171
    :cond_2
    int-to-double v6, p1

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    int-to-double v8, p1

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v6, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    .line 1175
    return-object v3
.end method

.method public getSupportedWidths()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1036
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedWidthsFor(I)Landroid/util/Range;
    .locals 12
    .param p1, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1101
    :try_start_0
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 1102
    .local v4, "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    rem-int v5, p1, v5

    if-eqz v5, :cond_1

    .line 1104
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unsupported height"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1132
    .end local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :catch_0
    move-exception v0

    .line 1134
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "VideoCapabilities"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "could not get supported widths for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "unsupported height"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1106
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "range":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    :cond_1
    :try_start_1
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p1, v5}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    .line 1109
    .local v1, "heightInBlocks":I
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v6

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    int-to-double v10, v1

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v5, v8

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1113
    .local v3, "minWidthInBlocks":I
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    div-int v6, v5, v1

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    int-to-double v10, v1

    mul-double/2addr v8, v10

    double-to-int v5, v8

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1117
    .local v2, "maxWidthInBlocks":I
    add-int/lit8 v5, v3, -0x1

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    mul-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    .line 1122
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    if-le p1, v5, :cond_2

    .line 1123
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    .line 1127
    :cond_2
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v6

    int-to-double v8, p1

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Landroid/util/Rational;

    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    move-result-wide v8

    int-to-double v10, p1

    mul-double/2addr v8, v10

    double-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 1131
    return-object v4
.end method

.method public getWidthAlignment()I
    .locals 1

    .prologue
    .line 1053
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    return v0
.end method

.method public init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 0
    .param p1, "info"    # Landroid/media/MediaFormat;
    .param p2, "parent"    # Landroid/media/MediaCodecInfo$CodecCapabilities;

    .prologue
    .line 1355
    iput-object p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 1356
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->initWithPlatformLimits()V

    .line 1357
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyLevelLimits()V

    .line 1358
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    .line 1359
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    .line 1360
    return-void
.end method

.method public isSizeSupported(II)Z
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1291
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public supportsFormat(Landroid/media/MediaFormat;)Z
    .locals 5
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 1332
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v1

    .line 1333
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "width"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1334
    .local v3, "width":Ljava/lang/Integer;
    const-string/jumbo v4, "height"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1335
    .local v0, "height":Ljava/lang/Integer;
    const-string v4, "frame-rate"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    .line 1339
    .local v2, "rate":Ljava/lang/Number;
    invoke-direct {p0, v3, v0, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result v4

    return v4
.end method
