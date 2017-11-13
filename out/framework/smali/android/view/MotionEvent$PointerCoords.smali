.class public final Landroid/view/MotionEvent$PointerCoords;
.super Ljava/lang/Object;
.source "MotionEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PointerCoords"
.end annotation


# static fields
.field private static final INITIAL_PACKED_AXIS_VALUES:I = 0x8


# instance fields
.field public grip:F

.field private mPackedAxisBits:J

.field private mPackedAxisValues:[F

.field public orientation:F

.field public palm:F

.field public pressure:F

.field public size:F

.field public toolMajor:F

.field public toolMinor:F

.field public touchMajor:F

.field public touchMinor:F

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3741
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3742
    return-void
.end method

.method public constructor <init>(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 0
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .prologue
    .line 3750
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3751
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent$PointerCoords;->copyFrom(Landroid/view/MotionEvent$PointerCoords;)V

    .line 3752
    return-void
.end method

.method public static createArray(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 3
    .param p0, "size"    # I

    .prologue
    .line 3756
    new-array v0, p0, [Landroid/view/MotionEvent$PointerCoords;

    .line 3757
    .local v0, "array":[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 3758
    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v0, v1

    .line 3757
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3760
    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3879
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3881
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3882
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3883
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3884
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3885
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3886
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3887
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3888
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3889
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3891
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    .line 3894
    iput v2, p0, Landroid/view/MotionEvent$PointerCoords;->grip:F

    .line 3896
    return-void
.end method

.method public copyFrom(Landroid/view/MotionEvent$PointerCoords;)V
    .locals 9
    .param p1, "other"    # Landroid/view/MotionEvent$PointerCoords;

    .prologue
    const/4 v8, 0x0

    .line 3904
    iget-wide v0, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3905
    .local v0, "bits":J
    iput-wide v0, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3906
    const-wide/16 v6, 0x0

    cmp-long v5, v0, v6

    if-eqz v5, :cond_2

    .line 3907
    iget-object v3, p1, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3908
    .local v3, "otherValues":[F
    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v2

    .line 3909
    .local v2, "count":I
    iget-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3910
    .local v4, "values":[F
    if-eqz v4, :cond_0

    array-length v5, v4

    if-le v2, v5, :cond_1

    .line 3911
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 3912
    iput-object v4, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 3914
    :cond_1
    invoke-static {v3, v8, v4, v8, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 3917
    .end local v2    # "count":I
    .end local v3    # "otherValues":[F
    .end local v4    # "values":[F
    :cond_2
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->x:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3918
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->y:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 3919
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 3920
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->size:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 3921
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 3922
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 3923
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 3924
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 3925
    iget v5, p1, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    iput v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 3939
    return-void
.end method

.method public getAxisValue(I)F
    .locals 12
    .param p1, "axis"    # I

    .prologue
    const-wide/16 v10, -0x1

    .line 3951
    sparse-switch p1, :sswitch_data_0

    .line 3980
    if-ltz p1, :cond_0

    const/16 v5, 0x3f

    if-le p1, v5, :cond_1

    .line 3981
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Axis out of range."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3953
    :sswitch_0
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 3989
    :goto_0
    return v5

    .line 3955
    :sswitch_1
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_0

    .line 3957
    :sswitch_2
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_0

    .line 3959
    :sswitch_3
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_0

    .line 3961
    :sswitch_4
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_0

    .line 3963
    :sswitch_5
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_0

    .line 3965
    :sswitch_6
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_0

    .line 3967
    :sswitch_7
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_0

    .line 3969
    :sswitch_8
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_0

    .line 3972
    :sswitch_9
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    goto :goto_0

    .line 3976
    :sswitch_a
    iget v5, p0, Landroid/view/MotionEvent$PointerCoords;->grip:F

    goto :goto_0

    .line 3983
    :cond_1
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 3984
    .local v2, "bits":J
    const-wide/high16 v6, -0x8000000000000000L

    ushr-long v0, v6, p1

    .line 3985
    .local v0, "axisBit":J
    and-long v6, v2, v0

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 3986
    const/4 v5, 0x0

    goto :goto_0

    .line 3988
    :cond_2
    ushr-long v6, v10, p1

    xor-long/2addr v6, v10

    and-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 3989
    .local v4, "index":I
    iget-object v5, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    aget v5, v5, v4

    goto :goto_0

    .line 3951
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x30 -> :sswitch_9
        0x31 -> :sswitch_a
    .end sparse-switch
.end method

.method public setAxisValue(IF)V
    .locals 13
    .param p1, "axis"    # I
    .param p2, "value"    # F

    .prologue
    const-wide/16 v10, -0x1

    const/4 v12, 0x0

    .line 4004
    sparse-switch p1, :sswitch_data_0

    .line 4042
    :goto_0
    if-ltz p1, :cond_0

    const/16 v8, 0x3f

    if-le p1, v8, :cond_1

    .line 4043
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Axis out of range."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 4006
    :sswitch_0
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 4074
    :goto_1
    return-void

    .line 4009
    :sswitch_1
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->y:F

    goto :goto_1

    .line 4012
    :sswitch_2
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    goto :goto_1

    .line 4015
    :sswitch_3
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->size:F

    goto :goto_1

    .line 4018
    :sswitch_4
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    goto :goto_1

    .line 4021
    :sswitch_5
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    goto :goto_1

    .line 4024
    :sswitch_6
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    goto :goto_1

    .line 4027
    :sswitch_7
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    goto :goto_1

    .line 4030
    :sswitch_8
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    goto :goto_1

    .line 4034
    :sswitch_9
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->palm:F

    goto :goto_1

    .line 4039
    :sswitch_a
    iput p2, p0, Landroid/view/MotionEvent$PointerCoords;->grip:F

    goto :goto_0

    .line 4045
    :cond_1
    iget-wide v2, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4046
    .local v2, "bits":J
    const-wide/high16 v8, -0x8000000000000000L

    ushr-long v0, v8, p1

    .line 4047
    .local v0, "axisBit":J
    ushr-long v8, v10, p1

    xor-long/2addr v8, v10

    and-long/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Long;->bitCount(J)I

    move-result v5

    .line 4048
    .local v5, "index":I
    iget-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4049
    .local v7, "values":[F
    and-long v8, v2, v0

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 4050
    if-nez v7, :cond_4

    .line 4051
    const/16 v8, 0x8

    new-array v7, v8, [F

    .line 4052
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    .line 4069
    :cond_2
    :goto_2
    or-long v8, v2, v0

    iput-wide v8, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisBits:J

    .line 4071
    :cond_3
    aput p2, v7, v5

    goto :goto_1

    .line 4054
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->bitCount(J)I

    move-result v4

    .line 4055
    .local v4, "count":I
    array-length v8, v7

    if-ge v4, v8, :cond_5

    .line 4056
    if-eq v5, v4, :cond_2

    .line 4057
    add-int/lit8 v8, v5, 0x1

    sub-int v9, v4, v5

    invoke-static {v7, v5, v7, v8, v9}, Ljava/lang/System;->arraycopy([FI[FII)V

    goto :goto_2

    .line 4061
    :cond_5
    mul-int/lit8 v8, v4, 0x2

    new-array v6, v8, [F

    .line 4062
    .local v6, "newValues":[F
    invoke-static {v7, v12, v6, v12, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 4063
    add-int/lit8 v8, v5, 0x1

    sub-int v9, v4, v5

    invoke-static {v7, v5, v6, v8, v9}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 4065
    move-object v7, v6

    .line 4066
    iput-object v7, p0, Landroid/view/MotionEvent$PointerCoords;->mPackedAxisValues:[F

    goto :goto_2

    .line 4004
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x30 -> :sswitch_9
        0x31 -> :sswitch_a
    .end sparse-switch
.end method
