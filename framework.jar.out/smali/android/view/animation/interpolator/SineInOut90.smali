.class public Landroid/view/animation/interpolator/SineInOut90;
.super Landroid/view/animation/BaseInterpolator;
.source "SineInOut90.java"


# static fields
.field private static final segments:[[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [[F

    const/4 v1, 0x0

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/animation/interpolator/SineInOut90;->segments:[[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3e7ced91    # 0.247f
    .end array-data

    :array_1
    .array-data 4
        0x3e7ced91    # 0.247f
        0x3ef5c28f    # 0.48f
        0x3f333333    # 0.7f
    .end array-data

    :array_2
    .array-data 4
        0x3f333333    # 0.7f
        0x3f55c28f    # 0.835f
        0x3f67ae14    # 0.905f
    .end array-data

    :array_3
    .array-data 4
        0x3f67ae14    # 0.905f
        0x3f747ae1    # 0.955f
        0x3f7a5e35    # 0.978f
    .end array-data

    :array_4
    .array-data 4
        0x3f7a5e35    # 0.978f
        0x3f7ff972    # 0.9999f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/view/animation/BaseInterpolator;-><init>()V

    .line 80
    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .param p1, "input"    # F

    .prologue
    .line 84
    sget-object v0, Landroid/view/animation/interpolator/SineInOut90;->segments:[[F

    invoke-static {p1, v0}, Landroid/view/animation/interpolator/SineBase;->getInterpolation(F[[F)F

    move-result v0

    return v0
.end method
