.class final Lcom/android/server/wm/AppWindowAnimator$DummyAnimation;
.super Landroid/view/animation/Animation;
.source "AppWindowAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppWindowAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DummyAnimation"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 424
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 1
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;

    .prologue
    .line 427
    const/4 v0, 0x0

    return v0
.end method
