.class public Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuBgImageView;
.super Landroid/widget/ImageView;
.source "AirButtonGlobalMenuBgImageView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setAnimationArc(F)V
    .locals 0
    .param p1, "animationArc"    # F

    .prologue
    return-void
.end method

.method public startCloseAnimation(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p1, "startDelay"    # I
    .param p2, "mFinishListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    return-void
.end method

.method public startOpenAnimation()V
    .locals 0

    .prologue
    return-void
.end method
