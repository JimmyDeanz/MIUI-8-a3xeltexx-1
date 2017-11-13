.class public abstract Lcom/android/incallui/ZoomControl;
.super Landroid/widget/RelativeLayout;
.source "ZoomControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/ZoomControl$OnZoomChangedListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/incallui/ZoomControl$OnZoomChangedListener;

.field protected mOrientation:I

.field protected mZoomIn:Landroid/widget/ImageView;

.field protected mZoomIndex:I

.field protected mZoomMax:I

.field protected mZoomOut:Landroid/widget/ImageView;

.field protected mZoomSlider:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    const v0, 0x7f0200a6

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f0200ac

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    .line 57
    const v0, 0x7f0200a9

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/ZoomControl;->addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    .line 58
    return-void
.end method

.method private changeZoomIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/incallui/ZoomControl;->mListener:Lcom/android/incallui/ZoomControl$OnZoomChangedListener;

    if-eqz v0, :cond_2

    .line 117
    iget v0, p0, Lcom/android/incallui/ZoomControl;->mZoomMax:I

    if-le p1, v0, :cond_0

    iget p1, p0, Lcom/android/incallui/ZoomControl;->mZoomMax:I

    .line 118
    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/incallui/ZoomControl;->mListener:Lcom/android/incallui/ZoomControl$OnZoomChangedListener;

    invoke-interface {v0, p1}, Lcom/android/incallui/ZoomControl$OnZoomChangedListener;->onZoomValueChanged(I)V

    .line 120
    iput p1, p0, Lcom/android/incallui/ZoomControl;->mZoomIndex:I

    .line 122
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected addImageView(Landroid/content/Context;I)Landroid/widget/ImageView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "iconResourceId"    # I

    .prologue
    .line 66
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, "image":Landroid/widget/ImageView;
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/incallui/ZoomControl;->addView(Landroid/view/View;)V

    .line 69
    return-object v0
.end method

.method public closeZoomControl()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/incallui/ZoomControl;->mZoomSlider:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 74
    return-void
.end method

.method public getZoomIndex()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/android/incallui/ZoomControl;->mZoomIndex:I

    return v0
.end method

.method public getZoomMax()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/android/incallui/ZoomControl;->mZoomMax:I

    return v0
.end method

.method protected performZoom(D)V
    .locals 5
    .param p1, "zoomPercentage"    # D

    .prologue
    .line 110
    iget v1, p0, Lcom/android/incallui/ZoomControl;->mZoomMax:I

    int-to-double v2, v1

    mul-double/2addr v2, p1

    double-to-int v0, v2

    .line 111
    .local v0, "index":I
    iget v1, p0, Lcom/android/incallui/ZoomControl;->mZoomIndex:I

    if-ne v1, v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/incallui/ZoomControl;->changeZoomIndex(I)Z

    goto :goto_0
.end method

.method public setActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setActivated(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/incallui/ZoomControl;->mZoomIn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/incallui/ZoomControl;->mZoomOut:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setActivated(Z)V

    .line 130
    return-void
.end method

.method public setZoomIndex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 93
    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/incallui/ZoomControl;->mZoomMax:I

    if-le p1, v0, :cond_1

    .line 94
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid zoom value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    iput p1, p0, Lcom/android/incallui/ZoomControl;->mZoomIndex:I

    .line 97
    invoke-virtual {p0}, Lcom/android/incallui/ZoomControl;->invalidate()V

    .line 98
    return-void
.end method

.method public setZoomMax(I)V
    .locals 0
    .param p1, "zoomMax"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/android/incallui/ZoomControl;->mZoomMax:I

    .line 81
    invoke-virtual {p0}, Lcom/android/incallui/ZoomControl;->requestLayout()V

    .line 82
    return-void
.end method
