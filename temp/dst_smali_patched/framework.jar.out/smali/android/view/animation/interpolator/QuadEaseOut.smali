.class public Landroid/view/animation/interpolator/QuadEaseOut;
.super Landroid/view/animation/BaseInterpolator;
.source "QuadEaseOut.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    return-void
.end method

.method private out(F)F
    .locals 2
    .param p1, "t"    # F

    .prologue
    neg-float v0, p1

    const/high16 v1, 0x40000000    # 2.0f

    sub-float v1, p1, v1

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "t"    # F

    .prologue
    invoke-direct {p0, p1}, Landroid/view/animation/interpolator/QuadEaseOut;->out(F)F

    move-result v0

    return v0
.end method
