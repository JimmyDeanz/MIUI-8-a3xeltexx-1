.class public Landroid/view/animation/interpolator/QuadEaseIn;
.super Landroid/view/animation/BaseInterpolator;
.source "QuadEaseIn.java"


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

.method private in(F)F
    .locals 1
    .param p1, "t"    # F

    .prologue
    mul-float v0, p1, p1

    return v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "t"    # F

    .prologue
    invoke-direct {p0, p1}, Landroid/view/animation/interpolator/QuadEaseIn;->in(F)F

    move-result v0

    return v0
.end method
