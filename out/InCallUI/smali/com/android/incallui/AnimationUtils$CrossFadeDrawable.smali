.class Lcom/android/incallui/AnimationUtils$CrossFadeDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/AnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CrossFadeDrawable"
.end annotation


# instance fields
.field private mCrossFadeAlpha:I


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v3, 0xff

    .line 261
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/incallui/AnimationUtils$CrossFadeDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 262
    .local v0, "first":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/incallui/AnimationUtils$CrossFadeDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 264
    .local v1, "second":Landroid/graphics/drawable/Drawable;
    iget v2, p0, Lcom/android/incallui/AnimationUtils$CrossFadeDrawable;->mCrossFadeAlpha:I

    if-lez v2, :cond_0

    .line 265
    iget v2, p0, Lcom/android/incallui/AnimationUtils$CrossFadeDrawable;->mCrossFadeAlpha:I

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 266
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 267
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 270
    :cond_0
    iget v2, p0, Lcom/android/incallui/AnimationUtils$CrossFadeDrawable;->mCrossFadeAlpha:I

    if-ge v2, v3, :cond_1

    .line 271
    iget v2, p0, Lcom/android/incallui/AnimationUtils$CrossFadeDrawable;->mCrossFadeAlpha:I

    rsub-int v2, v2, 0xff

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 272
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 273
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 275
    :cond_1
    return-void
.end method

.method public setCrossFadeAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 251
    iput p1, p0, Lcom/android/incallui/AnimationUtils$CrossFadeDrawable;->mCrossFadeAlpha:I

    .line 252
    invoke-virtual {p0}, Lcom/android/incallui/AnimationUtils$CrossFadeDrawable;->invalidateSelf()V

    .line 253
    return-void
.end method
