.class Lcom/android/incallui/view/VoLTEVideoPreview$1;
.super Ljava/lang/Object;
.source "VoLTEVideoPreview.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/view/VoLTEVideoPreview;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/view/VoLTEVideoPreview;


# direct methods
.method constructor <init>(Lcom/android/incallui/view/VoLTEVideoPreview;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/incallui/view/VoLTEVideoPreview$1;->this$0:Lcom/android/incallui/view/VoLTEVideoPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 93
    if-eq p5, p9, :cond_0

    iget-object v0, p0, Lcom/android/incallui/view/VoLTEVideoPreview$1;->this$0:Lcom/android/incallui/view/VoLTEVideoPreview;

    # getter for: Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewHeight:F
    invoke-static {v0}, Lcom/android/incallui/view/VoLTEVideoPreview;->access$000(Lcom/android/incallui/view/VoLTEVideoPreview;)F

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/view/VoLTEVideoPreview$1;->this$0:Lcom/android/incallui/view/VoLTEVideoPreview;

    invoke-virtual {v1}, Lcom/android/incallui/view/VoLTEVideoPreview;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/incallui/view/VoLTEVideoPreview$1;->this$0:Lcom/android/incallui/view/VoLTEVideoPreview;

    iget-object v1, p0, Lcom/android/incallui/view/VoLTEVideoPreview$1;->this$0:Lcom/android/incallui/view/VoLTEVideoPreview;

    invoke-virtual {v1}, Lcom/android/incallui/view/VoLTEVideoPreview;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    # setter for: Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewHeight:F
    invoke-static {v0, v1}, Lcom/android/incallui/view/VoLTEVideoPreview;->access$002(Lcom/android/incallui/view/VoLTEVideoPreview;F)F

    .line 95
    iget-object v0, p0, Lcom/android/incallui/view/VoLTEVideoPreview$1;->this$0:Lcom/android/incallui/view/VoLTEVideoPreview;

    iget-object v1, p0, Lcom/android/incallui/view/VoLTEVideoPreview$1;->this$0:Lcom/android/incallui/view/VoLTEVideoPreview;

    # getter for: Lcom/android/incallui/view/VoLTEVideoPreview;->mScreenHeight:F
    invoke-static {v1}, Lcom/android/incallui/view/VoLTEVideoPreview;->access$200(Lcom/android/incallui/view/VoLTEVideoPreview;)F

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/view/VoLTEVideoPreview$1;->this$0:Lcom/android/incallui/view/VoLTEVideoPreview;

    # getter for: Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewTopMargin:F
    invoke-static {v2}, Lcom/android/incallui/view/VoLTEVideoPreview;->access$300(Lcom/android/incallui/view/VoLTEVideoPreview;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/incallui/view/VoLTEVideoPreview$1;->this$0:Lcom/android/incallui/view/VoLTEVideoPreview;

    # getter for: Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewHeight:F
    invoke-static {v2}, Lcom/android/incallui/view/VoLTEVideoPreview;->access$000(Lcom/android/incallui/view/VoLTEVideoPreview;)F

    move-result v2

    sub-float/2addr v1, v2

    # setter for: Lcom/android/incallui/view/VoLTEVideoPreview;->mPreviewBottomMargin:F
    invoke-static {v0, v1}, Lcom/android/incallui/view/VoLTEVideoPreview;->access$102(Lcom/android/incallui/view/VoLTEVideoPreview;F)F

    .line 96
    iget-object v0, p0, Lcom/android/incallui/view/VoLTEVideoPreview$1;->this$0:Lcom/android/incallui/view/VoLTEVideoPreview;

    iget-object v1, p0, Lcom/android/incallui/view/VoLTEVideoPreview$1;->this$0:Lcom/android/incallui/view/VoLTEVideoPreview;

    # getter for: Lcom/android/incallui/view/VoLTEVideoPreview;->mCurrentPosition:I
    invoke-static {v1}, Lcom/android/incallui/view/VoLTEVideoPreview;->access$400(Lcom/android/incallui/view/VoLTEVideoPreview;)I

    move-result v1

    const/4 v2, 0x0

    # invokes: Lcom/android/incallui/view/VoLTEVideoPreview;->movePreviewAnimator(II)V
    invoke-static {v0, v1, v2}, Lcom/android/incallui/view/VoLTEVideoPreview;->access$500(Lcom/android/incallui/view/VoLTEVideoPreview;II)V

    .line 98
    :cond_0
    return-void
.end method
