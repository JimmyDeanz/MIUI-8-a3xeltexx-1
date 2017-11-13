.class Landroid/view/ScaleGestureDetector$SaveState;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ScaleGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SaveState"
.end annotation


# instance fields
.field mLenBeforeSqrt:F

.field mSpanX:F

.field mSpanY:F

.field maxX:F

.field maxY:F

.field minX:F

.field minY:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    invoke-virtual {p0}, Landroid/view/ScaleGestureDetector$SaveState;->reset()V

    .line 188
    return-void
.end method


# virtual methods
.method reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 191
    iput v0, p0, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    iput v0, p0, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    iput v0, p0, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    iput v0, p0, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    .line 192
    iput v0, p0, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    .line 193
    iput v0, p0, Landroid/view/ScaleGestureDetector$SaveState;->mSpanX:F

    .line 194
    iput v0, p0, Landroid/view/ScaleGestureDetector$SaveState;->mSpanY:F

    .line 195
    return-void
.end method
