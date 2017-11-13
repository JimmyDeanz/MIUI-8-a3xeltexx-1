.class final Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "NinePatchDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/NinePatchDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NinePatchState"
.end annotation


# instance fields
.field mAutoMirrored:Z

.field mBaseAlpha:F

.field mChangingConfigurations:I

.field mDither:Z

.field mNinePatch:Landroid/graphics/NinePatch;

.field mOpticalInsets:Landroid/graphics/Insets;

.field mPadding:Landroid/graphics/Rect;

.field mTargetDensity:I

.field mThemeAttrs:[I

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 702
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 689
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    .line 690
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    .line 691
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    .line 692
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 693
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    .line 694
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 695
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    .line 696
    iput-boolean v2, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    .line 697
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    .line 698
    iput-boolean v2, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    .line 704
    return-void
.end method

.method constructor <init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "ninePatch"    # Landroid/graphics/NinePatch;
    .param p2, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 707
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 708
    return-void
.end method

.method constructor <init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "ninePatch"    # Landroid/graphics/NinePatch;
    .param p2, "padding"    # Landroid/graphics/Rect;
    .param p3, "opticalInsets"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 712
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;-><init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V

    .line 713
    return-void
.end method

.method constructor <init>(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 3
    .param p1, "ninePatch"    # Landroid/graphics/NinePatch;
    .param p2, "padding"    # Landroid/graphics/Rect;
    .param p3, "opticalInsets"    # Landroid/graphics/Rect;
    .param p4, "dither"    # Z
    .param p5, "autoMirror"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 716
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 689
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    .line 690
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    .line 691
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    .line 692
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 693
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    .line 694
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 695
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    .line 696
    iput-boolean v2, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    .line 697
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    .line 698
    iput-boolean v2, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    .line 717
    iput-object p1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    .line 718
    iput-object p2, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    .line 719
    invoke-static {p3}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 720
    iput-boolean p4, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    .line 721
    iput-boolean p5, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    .line 722
    return-void
.end method

.method constructor <init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;)V
    .locals 3
    .param p1, "state"    # Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 726
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 689
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    .line 690
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    .line 691
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    .line 692
    sget-object v0, Landroid/graphics/drawable/Drawable;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 693
    iput-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    .line 694
    sget-object v0, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 695
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    .line 696
    iput-boolean v2, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    .line 697
    const/16 v0, 0xa0

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    .line 698
    iput-boolean v2, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    .line 728
    iget-object v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    .line 729
    iget-object v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    .line 730
    iget-object v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 731
    iget-object v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    .line 732
    iget-object v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mPadding:Landroid/graphics/Rect;

    .line 733
    iget-object v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    iput-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mOpticalInsets:Landroid/graphics/Insets;

    .line 734
    iget v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mBaseAlpha:F

    .line 735
    iget-boolean v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mDither:Z

    .line 736
    iget v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    .line 737
    iget v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    iput v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTargetDensity:I

    .line 738
    iget-boolean v0, p1, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mAutoMirrored:Z

    .line 739
    return-void
.end method


# virtual methods
.method public addAtlasableBitmaps(Ljava/util/Collection;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 749
    .local p1, "atlasList":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mNinePatch:Landroid/graphics/NinePatch;

    invoke-virtual {v1}, Landroid/graphics/NinePatch;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 750
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->isAtlasable(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 751
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 753
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canApplyTheme()Z
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mThemeAttrs:[I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 768
    iget v1, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mChangingConfigurations:I

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getChangingConfigurations()I

    move-result v0

    :goto_0
    or-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 758
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-direct {v0, p0, v1, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;Landroid/graphics/drawable/NinePatchDrawable$1;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 763
    new-instance v0, Landroid/graphics/drawable/NinePatchDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/drawable/NinePatchDrawable$NinePatchState;Landroid/content/res/Resources;Landroid/graphics/drawable/NinePatchDrawable$1;)V

    return-object v0
.end method
