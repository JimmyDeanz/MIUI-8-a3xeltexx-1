.class public Landroid/view/animation/interpolator/BounceEaseOut;
.super Landroid/view/animation/BaseInterpolator;
.source "BounceEaseOut.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 96
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 97
    return-void
.end method

.method private out(F)F
    .locals 5
    .param p1, "t"    # F

    .prologue
    const/high16 v4, 0x40f20000    # 7.5625f

    .line 104
    float-to-double v0, p1

    const-wide v2, 0x3fd745d1745d1746L    # 0.36363636363636365

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 105
    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    .line 111
    :goto_0
    return v0

    .line 106
    :cond_0
    float-to-double v0, p1

    const-wide v2, 0x3fe745d1745d1746L    # 0.7272727272727273

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 107
    float-to-double v0, p1

    const-wide v2, 0x3fe1745d1745d174L    # 0.5454545454545454

    sub-double/2addr v0, v2

    double-to-float p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    add-float/2addr v0, v1

    goto :goto_0

    .line 108
    :cond_1
    float-to-double v0, p1

    const-wide v2, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 109
    float-to-double v0, p1

    const-wide v2, 0x3fea2e8ba2e8ba2fL    # 0.8181818181818182

    sub-double/2addr v0, v2

    double-to-float p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f700000    # 0.9375f

    add-float/2addr v0, v1

    goto :goto_0

    .line 111
    :cond_2
    float-to-double v0, p1

    const-wide v2, 0x3fee8ba2e8ba2e8cL    # 0.9545454545454546

    sub-double/2addr v0, v2

    double-to-float p1, v0

    mul-float v0, v4, p1

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f7c0000    # 0.984375f

    add-float/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "t"    # F

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/view/animation/interpolator/BounceEaseOut;->out(F)F

    move-result v0

    return v0
.end method
