.class Landroid/view/ScaleGestureDetector$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ScaleGestureDetector;


# direct methods
.method constructor <init>(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .prologue
    .line 492
    iput-object p1, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 496
    iget-object v0, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    # setter for: Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F
    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->access$002(Landroid/view/ScaleGestureDetector;F)F

    .line 497
    iget-object v0, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    # setter for: Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F
    invoke-static {v0, v1}, Landroid/view/ScaleGestureDetector;->access$102(Landroid/view/ScaleGestureDetector;F)F

    .line 498
    iget-object v0, p0, Landroid/view/ScaleGestureDetector$1;->this$0:Landroid/view/ScaleGestureDetector;

    # setter for: Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I
    invoke-static {v0, v2}, Landroid/view/ScaleGestureDetector;->access$202(Landroid/view/ScaleGestureDetector;I)I

    .line 499
    return v2
.end method
