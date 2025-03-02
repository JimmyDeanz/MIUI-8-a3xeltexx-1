.class public final Landroid/os/BatteryStats$LevelStepTracker;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LevelStepTracker"
.end annotation


# instance fields
.field public mLastStepTime:J

.field public mNumStepDurations:I

.field public final mStepDurations:[J


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "maxLevelSteps"    # I

    .prologue
    .line 612
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 613
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 614
    return-void
.end method

.method public constructor <init>(I[J)V
    .locals 3
    .param p1, "numSteps"    # I
    .param p2, "steps"    # [J

    .prologue
    const/4 v2, 0x0

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 617
    iput p1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 618
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 619
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    invoke-static {p2, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 620
    return-void
.end method

.method private appendHex(JILjava/lang/StringBuilder;)V
    .locals 7
    .param p1, "val"    # J
    .param p3, "topOffset"    # I
    .param p4, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 642
    const/4 v1, 0x0

    .line 643
    .local v1, "hasData":Z
    :cond_0
    :goto_0
    if-ltz p3, :cond_3

    .line 644
    shr-long v2, p1, p3

    const-wide/16 v4, 0xf

    and-long/2addr v2, v4

    long-to-int v0, v2

    .line 645
    .local v0, "digit":I
    add-int/lit8 p3, p3, -0x4

    .line 646
    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    .line 649
    :cond_1
    const/4 v1, 0x1

    .line 650
    if-ltz v0, :cond_2

    const/16 v2, 0x9

    if-gt v0, v2, :cond_2

    .line 651
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 653
    :cond_2
    add-int/lit8 v2, v0, 0x61

    add-int/lit8 v2, v2, -0xa

    int-to-char v2, v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 656
    .end local v0    # "digit":I
    :cond_3
    return-void
.end method


# virtual methods
.method public addLevelSteps(IJJ)V
    .locals 14
    .param p1, "numStepLevels"    # I
    .param p2, "modeBits"    # J
    .param p4, "elapsedRealtime"    # J

    .prologue
    .line 855
    iget v5, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 856
    .local v5, "stepCount":I
    iget-wide v6, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 857
    .local v6, "lastStepTime":J
    const-wide/16 v12, 0x0

    cmp-long v9, v6, v12

    if-ltz v9, :cond_2

    if-lez p1, :cond_2

    .line 858
    iget-object v8, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 859
    .local v8, "steps":[J
    sub-long v2, p4, v6

    .line 860
    .local v2, "duration":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 861
    const/4 v9, 0x0

    const/4 v12, 0x1

    array-length v13, v8

    add-int/lit8 v13, v13, -0x1

    invoke-static {v8, v9, v8, v12, v13}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 862
    sub-int v9, p1, v4

    int-to-long v12, v9

    div-long v10, v2, v12

    .line 863
    .local v10, "thisDuration":J
    sub-long/2addr v2, v10

    .line 864
    const-wide v12, 0xffffffffffL

    cmp-long v9, v10, v12

    if-lez v9, :cond_0

    .line 865
    const-wide v10, 0xffffffffffL

    .line 867
    :cond_0
    const/4 v9, 0x0

    or-long v12, v10, p2

    aput-wide v12, v8, v9

    .line 860
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 869
    .end local v10    # "thisDuration":J
    :cond_1
    add-int/2addr v5, p1

    .line 870
    array-length v9, v8

    if-le v5, v9, :cond_2

    .line 871
    array-length v5, v8

    .line 874
    .end local v2    # "duration":J
    .end local v4    # "i":I
    .end local v8    # "steps":[J
    :cond_2
    iput v5, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 875
    move-wide/from16 v0, p4

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 876
    return-void
.end method

.method public clearTime()V
    .locals 2

    .prologue
    .line 773
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 774
    return-void
.end method

.method public computeTimeEstimate(JJ[I)J
    .locals 15
    .param p1, "modesOfInterest"    # J
    .param p3, "modeValues"    # J
    .param p5, "outNumOfInterest"    # [I

    .prologue
    .line 819
    iget-object v7, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 820
    .local v7, "steps":[J
    iget v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 821
    .local v0, "count":I
    if-gtz v0, :cond_0

    .line 822
    const-wide/16 v10, -0x1

    .line 851
    :goto_0
    return-wide v10

    .line 824
    :cond_0
    const-wide/16 v8, 0x0

    .line 825
    .local v8, "total":J
    const/4 v6, 0x0

    .line 826
    .local v6, "numOfInterest":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 827
    aget-wide v10, v7, v1

    const-wide/high16 v12, 0xff000000000000L

    and-long/2addr v10, v12

    const/16 v12, 0x30

    shr-long v2, v10, v12

    .line 829
    .local v2, "initMode":J
    aget-wide v10, v7, v1

    const-wide/high16 v12, -0x100000000000000L

    and-long/2addr v10, v12

    const/16 v12, 0x38

    shr-long v4, v10, v12

    .line 832
    .local v4, "modMode":J
    and-long v10, v4, p1

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_1

    .line 834
    and-long v10, v2, p1

    cmp-long v10, v10, p3

    if-nez v10, :cond_1

    .line 836
    add-int/lit8 v6, v6, 0x1

    .line 837
    aget-wide v10, v7, v1

    const-wide v12, 0xffffffffffL

    and-long/2addr v10, v12

    add-long/2addr v8, v10

    .line 826
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 841
    .end local v2    # "initMode":J
    .end local v4    # "modMode":J
    :cond_2
    if-gtz v6, :cond_3

    .line 842
    const-wide/16 v10, -0x1

    goto :goto_0

    .line 845
    :cond_3
    if-eqz p5, :cond_4

    .line 846
    const/4 v10, 0x0

    aput v6, p5, v10

    .line 851
    :cond_4
    int-to-long v10, v6

    div-long v10, v8, v10

    const-wide/16 v12, 0x64

    mul-long/2addr v10, v12

    goto :goto_0
.end method

.method public computeTimePerLevel()J
    .locals 10

    .prologue
    .line 777
    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    .line 778
    .local v2, "steps":[J
    iget v1, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 781
    .local v1, "numSteps":I
    if-gtz v1, :cond_0

    .line 782
    const-wide/16 v6, -0x1

    .line 788
    :goto_0
    return-wide v6

    .line 784
    :cond_0
    const-wide/16 v4, 0x0

    .line 785
    .local v4, "total":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 786
    aget-wide v6, v2, v0

    const-wide v8, 0xffffffffffL

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 785
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 788
    :cond_1
    int-to-long v6, v1

    div-long v6, v4, v6

    goto :goto_0
.end method

.method public decodeEntryAt(ILjava/lang/String;)V
    .locals 16
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 698
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 699
    .local v2, "N":I
    const/4 v6, 0x0

    .line 701
    .local v6, "i":I
    const-wide/16 v10, 0x0

    .line 702
    .local v10, "out":J
    :goto_0
    if-ge v6, v2, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .local v3, "c":C
    const/16 v7, 0x2d

    if-eq v3, v7, :cond_0

    .line 703
    add-int/lit8 v6, v6, 0x1

    .line 704
    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    .line 724
    :sswitch_0
    const-wide/high16 v12, 0x200000000000000L

    or-long/2addr v10, v12

    .line 725
    goto :goto_0

    .line 705
    :sswitch_1
    const-wide/16 v12, 0x0

    or-long/2addr v10, v12

    .line 706
    goto :goto_0

    .line 707
    :sswitch_2
    const-wide/high16 v12, 0x1000000000000L

    or-long/2addr v10, v12

    .line 708
    goto :goto_0

    .line 709
    :sswitch_3
    const-wide/high16 v12, 0x2000000000000L

    or-long/2addr v10, v12

    .line 710
    goto :goto_0

    .line 711
    :sswitch_4
    const-wide/high16 v12, 0x3000000000000L

    or-long/2addr v10, v12

    .line 713
    goto :goto_0

    .line 714
    :sswitch_5
    const-wide/high16 v12, 0x4000000000000L

    or-long/2addr v10, v12

    .line 716
    goto :goto_0

    .line 717
    :sswitch_6
    const-wide/high16 v12, 0x8000000000000L

    or-long/2addr v10, v12

    .line 719
    goto :goto_0

    .line 720
    :sswitch_7
    const-wide/16 v12, 0x0

    or-long/2addr v10, v12

    .line 721
    goto :goto_0

    .line 722
    :sswitch_8
    const-wide/high16 v12, 0x100000000000000L

    or-long/2addr v10, v12

    .line 723
    goto :goto_0

    .line 726
    :sswitch_9
    const-wide/high16 v12, 0x300000000000000L    # 3.13151306251402E-294

    or-long/2addr v10, v12

    .line 728
    goto :goto_0

    .line 729
    :sswitch_a
    const-wide/high16 v12, 0x400000000000000L

    or-long/2addr v10, v12

    .line 731
    goto :goto_0

    .line 732
    :sswitch_b
    const-wide/high16 v12, 0x800000000000000L

    or-long/2addr v10, v12

    goto :goto_0

    .line 737
    .end local v3    # "c":C
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 738
    const-wide/16 v8, 0x0

    .line 739
    .local v8, "level":J
    :cond_1
    :goto_1
    if-ge v6, v2, :cond_4

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .restart local v3    # "c":C
    const/16 v7, 0x2d

    if-eq v3, v7, :cond_4

    .line 740
    add-int/lit8 v6, v6, 0x1

    .line 741
    const/4 v7, 0x4

    shl-long/2addr v8, v7

    .line 742
    const/16 v7, 0x30

    if-lt v3, v7, :cond_2

    const/16 v7, 0x39

    if-gt v3, v7, :cond_2

    .line 743
    add-int/lit8 v7, v3, -0x30

    int-to-long v12, v7

    add-long/2addr v8, v12

    goto :goto_1

    .line 744
    :cond_2
    const/16 v7, 0x61

    if-lt v3, v7, :cond_3

    const/16 v7, 0x66

    if-gt v3, v7, :cond_3

    .line 745
    add-int/lit8 v7, v3, -0x61

    add-int/lit8 v7, v7, 0xa

    int-to-long v12, v7

    add-long/2addr v8, v12

    goto :goto_1

    .line 746
    :cond_3
    const/16 v7, 0x41

    if-lt v3, v7, :cond_1

    const/16 v7, 0x46

    if-gt v3, v7, :cond_1

    .line 747
    add-int/lit8 v7, v3, -0x41

    add-int/lit8 v7, v7, 0xa

    int-to-long v12, v7

    add-long/2addr v8, v12

    goto :goto_1

    .line 750
    .end local v3    # "c":C
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 751
    const/16 v7, 0x28

    shl-long v12, v8, v7

    const-wide v14, 0xff0000000000L

    and-long/2addr v12, v14

    or-long/2addr v10, v12

    .line 752
    const-wide/16 v4, 0x0

    .line 753
    .local v4, "duration":J
    :cond_5
    :goto_2
    if-ge v6, v2, :cond_8

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .restart local v3    # "c":C
    const/16 v7, 0x2d

    if-eq v3, v7, :cond_8

    .line 754
    add-int/lit8 v6, v6, 0x1

    .line 755
    const/4 v7, 0x4

    shl-long/2addr v4, v7

    .line 756
    const/16 v7, 0x30

    if-lt v3, v7, :cond_6

    const/16 v7, 0x39

    if-gt v3, v7, :cond_6

    .line 757
    add-int/lit8 v7, v3, -0x30

    int-to-long v12, v7

    add-long/2addr v4, v12

    goto :goto_2

    .line 758
    :cond_6
    const/16 v7, 0x61

    if-lt v3, v7, :cond_7

    const/16 v7, 0x66

    if-gt v3, v7, :cond_7

    .line 759
    add-int/lit8 v7, v3, -0x61

    add-int/lit8 v7, v7, 0xa

    int-to-long v12, v7

    add-long/2addr v4, v12

    goto :goto_2

    .line 760
    :cond_7
    const/16 v7, 0x41

    if-lt v3, v7, :cond_5

    const/16 v7, 0x46

    if-gt v3, v7, :cond_5

    .line 761
    add-int/lit8 v7, v3, -0x41

    add-int/lit8 v7, v7, 0xa

    int-to-long v12, v7

    add-long/2addr v4, v12

    goto :goto_2

    .line 764
    .end local v3    # "c":C
    :cond_8
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    const-wide v12, 0xffffffffffL

    and-long/2addr v12, v4

    or-long/2addr v12, v10

    aput-wide v12, v7, p1

    .line 765
    return-void

    .line 704
    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_0
        0x46 -> :sswitch_7
        0x49 -> :sswitch_b
        0x4f -> :sswitch_8
        0x50 -> :sswitch_a
        0x5a -> :sswitch_9
        0x64 -> :sswitch_3
        0x66 -> :sswitch_1
        0x69 -> :sswitch_6
        0x6f -> :sswitch_2
        0x70 -> :sswitch_5
        0x7a -> :sswitch_4
    .end sparse-switch
.end method

.method public encodeEntryAt(ILjava/lang/StringBuilder;)V
    .locals 11
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/lang/StringBuilder;

    .prologue
    const/16 v10, 0x2d

    .line 659
    iget-object v7, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v4, v7, p1

    .line 660
    .local v4, "item":J
    const-wide v8, 0xffffffffffL

    and-long v0, v4, v8

    .line 661
    .local v0, "duration":J
    const-wide v8, 0xff0000000000L

    and-long/2addr v8, v4

    const/16 v7, 0x28

    shr-long/2addr v8, v7

    long-to-int v3, v8

    .line 663
    .local v3, "level":I
    const-wide/high16 v8, 0xff000000000000L

    and-long/2addr v8, v4

    const/16 v7, 0x30

    shr-long/2addr v8, v7

    long-to-int v2, v8

    .line 665
    .local v2, "initMode":I
    const-wide/high16 v8, -0x100000000000000L

    and-long/2addr v8, v4

    const/16 v7, 0x38

    shr-long/2addr v8, v7

    long-to-int v6, v8

    .line 667
    .local v6, "modMode":I
    and-int/lit8 v7, v2, 0x3

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_0

    .line 673
    :goto_0
    and-int/lit8 v7, v2, 0x4

    if-eqz v7, :cond_0

    .line 674
    const/16 v7, 0x70

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 676
    :cond_0
    and-int/lit8 v7, v2, 0x8

    if-eqz v7, :cond_1

    .line 677
    const/16 v7, 0x69

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 679
    :cond_1
    and-int/lit8 v7, v6, 0x3

    add-int/lit8 v7, v7, 0x1

    packed-switch v7, :pswitch_data_1

    .line 685
    :goto_1
    and-int/lit8 v7, v6, 0x4

    if-eqz v7, :cond_2

    .line 686
    const/16 v7, 0x50

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 688
    :cond_2
    and-int/lit8 v7, v6, 0x8

    if-eqz v7, :cond_3

    .line 689
    const/16 v7, 0x49

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 691
    :cond_3
    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 692
    int-to-long v8, v3

    const/4 v7, 0x4

    invoke-direct {p0, v8, v9, v7, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    .line 693
    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 694
    const/16 v7, 0x24

    invoke-direct {p0, v0, v1, v7, p2}, Landroid/os/BatteryStats$LevelStepTracker;->appendHex(JILjava/lang/StringBuilder;)V

    .line 695
    return-void

    .line 668
    :pswitch_0
    const/16 v7, 0x66

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 669
    :pswitch_1
    const/16 v7, 0x6f

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 670
    :pswitch_2
    const/16 v7, 0x64

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 671
    :pswitch_3
    const/16 v7, 0x7a

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 680
    :pswitch_4
    const/16 v7, 0x46

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 681
    :pswitch_5
    const/16 v7, 0x4f

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 682
    :pswitch_6
    const/16 v7, 0x44

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 683
    :pswitch_7
    const/16 v7, 0x5a

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 667
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 679
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public getDurationAt(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 623
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide v2, 0xffffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public getInitModeAt(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 632
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, 0xff000000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x30

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getLevelAt(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 627
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide v2, 0xff0000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x28

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getModModeAt(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 637
    iget-object v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v0, v0, p1

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v0, v2

    const/16 v2, 0x38

    shr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 768
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mLastStepTime:J

    .line 769
    const/4 v0, 0x0

    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 770
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 879
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 880
    .local v0, "N":I
    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    array-length v2, v2

    if-le v0, v2, :cond_0

    .line 881
    new-instance v2, Landroid/os/ParcelFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "more step durations than available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/ParcelFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 883
    :cond_0
    iput v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 884
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 885
    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    aput-wide v4, v2, v1

    .line 884
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 887
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 890
    iget v0, p0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 891
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 892
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 893
    iget-object v2, p0, Landroid/os/BatteryStats$LevelStepTracker;->mStepDurations:[J

    aget-wide v2, v2, v1

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 892
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 895
    :cond_0
    return-void
.end method
