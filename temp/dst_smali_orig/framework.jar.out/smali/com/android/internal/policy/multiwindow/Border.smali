.class public Lcom/android/internal/policy/multiwindow/Border;
.super Ljava/lang/Object;
.source "Border.java"


# static fields
.field public static final DRAW_ALL:I = 0xf

.field public static final DRAW_BOTTOM:I = 0x8

.field public static final DRAW_LEFT:I = 0x1

.field public static final DRAW_RIGHT:I = 0x2

.field public static final DRAW_TOP:I = 0x4


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDefaultPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

.field private mDefaultPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field public mDeskTopFocusColor:I

.field public mDeskTopUnfocusColor:I

.field private mDesktopPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

.field private mDesktopPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mDrawOption:I

.field private mInnerLineColor:I

.field private mIsDesktop:Z

.field private final mIsSupportDrawableFrame:Z

.field private final mIsSupportUnfocusedLine:Z

.field private final mIsSupportUnfocusedShadow:Z

.field private mLastDrawnOption:I

.field private mLastFocus:Z

.field private mOutLineColor:I

.field private mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

.field private mPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mPopupWindowClippingBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private mPopupWindowCocktailOverlapSize:I

.field private mPopupWindowFocusColor:I

.field private mPopupWindowFocusOutlineColor:I

.field private mPopupWindowUnfocusColor:I

.field private mPopupWindowUnfocusOutlineColor:I

.field private mSplitUnfocusColor:I

.field private mSplitUnfocusFrameBottom:Landroid/graphics/NinePatch;

.field private mSplitUnfocusFrameLeft:Landroid/graphics/NinePatch;

.field private mSplitUnfocusFrameRight:Landroid/graphics/NinePatch;

.field private mSplitUnfocusFrameTop:Landroid/graphics/NinePatch;

.field private mSplitUnfocusOutlineColor:I

.field private mSplitUnfocusThickness:I

.field private mThicknessBorderPaintInner:F

.field private mThicknessBorderPaintOuter:F

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wm"    # Landroid/view/WindowManager;

    .prologue
    const/16 v5, 0xf

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v5, p0, Lcom/android/internal/policy/multiwindow/Border;->mDrawOption:I

    iput v5, p0, Lcom/android/internal/policy/multiwindow/Border;->mLastDrawnOption:I

    iput-boolean v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mLastFocus:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mIsDesktop:Z

    iput-object p1, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/policy/multiwindow/Border;->mWindowManager:Landroid/view/WindowManager;

    iput-boolean v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mIsSupportUnfocusedShadow:Z

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mIsSupportUnfocusedLine:Z

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mIsSupportDrawableFrame:Z

    iget-boolean v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mIsSupportUnfocusedShadow:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10805c3

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "leftUnfocus":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10805c4

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "rightUnfocus":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10805c5

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .local v3, "topUnfocus":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10805c2

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bottomUnfocus":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/NinePatch;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    invoke-direct {v4, v1, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    iput-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusFrameLeft:Landroid/graphics/NinePatch;

    new-instance v4, Landroid/graphics/NinePatch;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    invoke-direct {v4, v2, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    iput-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusFrameRight:Landroid/graphics/NinePatch;

    new-instance v4, Landroid/graphics/NinePatch;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    iput-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusFrameTop:Landroid/graphics/NinePatch;

    new-instance v4, Landroid/graphics/NinePatch;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    iput-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusFrameBottom:Landroid/graphics/NinePatch;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    .end local v0    # "bottomUnfocus":Landroid/graphics/Bitmap;
    .end local v1    # "leftUnfocus":Landroid/graphics/Bitmap;
    .end local v2    # "rightUnfocus":Landroid/graphics/Bitmap;
    .end local v3    # "topUnfocus":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060198

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowFocusColor:I

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060199

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowUnfocusColor:I

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106019a

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowFocusOutlineColor:I

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x106019b

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowUnfocusOutlineColor:I

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10601ad

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mDeskTopFocusColor:I

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10601ae

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mDeskTopUnfocusColor:I

    iget-boolean v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mIsSupportDrawableFrame:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10805d1

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mDefaultPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Landroid/graphics/NinePatch;

    iget-object v7, p0, Lcom/android/internal/policy/multiwindow/Border;->mDefaultPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/android/internal/policy/multiwindow/Border;->mDefaultPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V

    iput-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mDefaultPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mDefaultPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mDefaultPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowUnfocusColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10802c6

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mDesktopPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-instance v6, Landroid/graphics/NinePatch;

    iget-object v7, p0, Lcom/android/internal/policy/multiwindow/Border;->mDesktopPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/android/internal/policy/multiwindow/Border;->mDesktopPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    invoke-direct {v4, v5, v6}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V

    iput-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mDesktopPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mDesktopPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mDesktopPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowUnfocusColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mDefaultPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mDefaultPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowUnfocusColor:I

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowClippingBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10502f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowCocktailOverlapSize:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mIsSupportUnfocusedLine:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10502f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060196

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusColor:I

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1060197

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusOutlineColor:I

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105031c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10601a6

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    iput v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusColor:I

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10502ff

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mThicknessBorderPaintInner:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1050300

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mThicknessBorderPaintOuter:F

    iget-boolean v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mLastFocus:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowUnfocusColor:I

    iput v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mInnerLineColor:I

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowUnfocusOutlineColor:I

    iput v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mOutLineColor:I

    goto/16 :goto_1
.end method

.method private drawBorderBitmap(Landroid/graphics/Canvas;II)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v7, 0x0

    iget v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mLastDrawnOption:I

    iget v3, p0, Lcom/android/internal/policy/multiwindow/Border;->mDrawOption:I

    if-eq v2, v3, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    .local v0, "clippingBorder":Landroid/graphics/Bitmap;
    iget v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mDrawOption:I

    xor-int/lit8 v2, v2, -0x1

    and-int/lit8 v1, v2, 0xf

    .local v1, "removeSide":I
    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v4, Landroid/graphics/NinePatch;

    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v5

    invoke-direct {v4, v0, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[B)V

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/NinePatch;)V

    iput-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowClippingBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget-boolean v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mLastFocus:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/policy/multiwindow/Border;->setFocus(ZZ)V

    .end local v0    # "clippingBorder":Landroid/graphics/Bitmap;
    .end local v1    # "removeSide":I
    :cond_0
    invoke-virtual {p1, v7, v7, p2, p3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowClippingBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, v7, v7, p2, p3}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowClippingBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    .restart local v0    # "clippingBorder":Landroid/graphics/Bitmap;
    .restart local v1    # "removeSide":I
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowCocktailOverlapSize:I

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowCocktailOverlapSize:I

    sub-int/2addr v5, v6

    invoke-static {v2, v7, v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowCocktailOverlapSize:I

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowCocktailOverlapSize:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-static {v2, v3, v7, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowCocktailOverlapSize:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v2, v7, v7, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowCocktailOverlapSize:I

    sub-int/2addr v4, v5

    invoke-static {v2, v7, v7, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private drawBorderLine(Landroid/graphics/Canvas;IIFI)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "thickness"    # F
    .param p5, "color"    # I

    .prologue
    const/4 v8, 0x0

    .local v8, "rotationAdjX":F
    const/4 v9, 0x0

    .local v9, "rotationAdjY":F
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .local v7, "display":Landroid/view/Display;
    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v6

    .local v6, "degrees":I
    packed-switch v6, :pswitch_data_0

    :goto_0
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    int-to-float v3, p2

    int-to-float v4, p3

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    int-to-float v0, p2

    sub-float v3, v0, p4

    int-to-float v0, p3

    sub-float v4, v0, p4

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v1, p4

    move v2, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    iget v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mDrawOption:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    const/4 v2, 0x0

    int-to-float v0, p2

    sub-float v3, v0, v8

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v1, v8

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    :cond_0
    iget v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mDrawOption:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    int-to-float v0, p3

    sub-float v2, v0, p4

    int-to-float v0, p2

    sub-float v3, v0, v8

    int-to-float v4, p3

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v1, v8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    :cond_1
    iget v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mDrawOption:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_2

    const/4 v1, 0x0

    int-to-float v0, p3

    sub-float v4, v0, v9

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v2, v9

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    :cond_2
    iget v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mDrawOption:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    int-to-float v0, p2

    sub-float v1, v0, p4

    int-to-float v3, p2

    int-to-float v0, p3

    sub-float v4, v0, v9

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    :cond_3
    invoke-virtual {p1, p5}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_4
    return-void

    :pswitch_0
    move v9, p4

    goto :goto_0

    :pswitch_1
    move v8, p4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mTmpDrawFloatRect"    # Landroid/graphics/RectF;

    .prologue
    sget-object v0, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    iget v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    return-void
.end method


# virtual methods
.method public destory()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusFrameLeft:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusFrameRight:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusFrameTop:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusFrameBottom:Landroid/graphics/NinePatch;

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowClippingBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mDefaultPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mDefaultPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mDesktopPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mDesktopPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    return-void
.end method

.method public drawFocusBorder(Landroid/graphics/Canvas;II)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mIsSupportDrawableFrame:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/multiwindow/Border;->drawBorderBitmap(Landroid/graphics/Canvas;II)V

    :goto_0
    return-void

    :cond_0
    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mThicknessBorderPaintInner:F

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Border;->mInnerLineColor:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/multiwindow/Border;->drawBorderLine(Landroid/graphics/Canvas;IIFI)V

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mThicknessBorderPaintOuter:F

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Border;->mOutLineColor:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/multiwindow/Border;->drawBorderLine(Landroid/graphics/Canvas;IIFI)V

    goto :goto_0
.end method

.method public drawUnfocusBorder(Landroid/graphics/Canvas;III)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "zone"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v6, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v7, 0x0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .local v3, "mTmpDrawRect":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .local v1, "conf":Landroid/content/res/Configuration;
    iget-boolean v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mIsSupportUnfocusedShadow:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    invoke-virtual {v3, v5, v5, v4, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusFrameLeft:Landroid/graphics/NinePatch;

    invoke-virtual {p1, v4, v3, v6}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    invoke-virtual {v3, v5, v5, p2, v4}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusFrameTop:Landroid/graphics/NinePatch;

    invoke-virtual {p1, v4, v3, v6}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    sub-int v4, p2, v4

    invoke-virtual {v3, v4, v5, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusFrameRight:Landroid/graphics/NinePatch;

    invoke-virtual {p1, v4, v3, v6}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    sub-int v4, p3, v4

    invoke-virtual {v3, v5, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusFrameBottom:Landroid/graphics/NinePatch;

    invoke-virtual {p1, v4, v3, v6}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v4, 0x3

    if-ne p4, v4, :cond_3

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_2

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    sub-int v4, p2, v4

    invoke-virtual {v3, v4, v5, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusFrameLeft:Landroid/graphics/NinePatch;

    invoke-virtual {p1, v4, v3, v6}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    sub-int v4, p3, v4

    invoke-virtual {v3, v5, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusFrameTop:Landroid/graphics/NinePatch;

    invoke-virtual {p1, v4, v3, v6}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_3
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_4

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    invoke-virtual {v3, v5, v5, v4, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusFrameRight:Landroid/graphics/NinePatch;

    invoke-virtual {p1, v4, v3, v6}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_4
    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    invoke-virtual {v3, v5, v5, p2, v4}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusFrameBottom:Landroid/graphics/NinePatch;

    invoke-virtual {p1, v4, v3, v6}, Landroid/graphics/Canvas;->drawPatch(Landroid/graphics/NinePatch;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_5
    iget-boolean v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mIsSupportUnfocusedLine:Z

    if-eqz v4, :cond_b

    const/4 v4, 0x3

    if-ne p4, v4, :cond_8

    iget-boolean v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mIsDesktop:Z

    if-eqz v4, :cond_6

    iget v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mDeskTopUnfocusColor:I

    .local v0, "color":I
    :goto_1
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_7

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    sub-int v4, p2, v4

    invoke-virtual {v3, v4, v5, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_2
    sget-object v4, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .end local v0    # "color":I
    :cond_6
    iget v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusColor:I

    .restart local v0    # "color":I
    goto :goto_1

    :cond_7
    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    sub-int v4, p3, v4

    invoke-virtual {v3, v5, v4, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .end local v0    # "color":I
    :cond_8
    iget-boolean v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mIsDesktop:Z

    if-eqz v4, :cond_9

    iget v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mDeskTopUnfocusColor:I

    .restart local v0    # "color":I
    :goto_3
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_a

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    invoke-virtual {v3, v5, v5, v4, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .end local v0    # "color":I
    :cond_9
    iget v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusOutlineColor:I

    .restart local v0    # "color":I
    goto :goto_3

    :cond_a
    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    invoke-virtual {v3, v5, v5, p2, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_2

    .end local v0    # "color":I
    :cond_b
    iget-object v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .local v2, "mTmpDrawFloatRect":Landroid/graphics/RectF;
    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v9, :cond_11

    const/4 v4, 0x1

    if-ne p4, v4, :cond_c

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    int-to-float v4, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v2, v4, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/multiwindow/Border;->drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p3, v4

    int-to-float v4, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/multiwindow/Border;->drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :cond_c
    if-ne p4, v9, :cond_d

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    int-to-float v4, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v2, v4, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/multiwindow/Border;->drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    int-to-float v4, p2

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/multiwindow/Border;->drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :cond_d
    const/4 v4, 0x4

    if-ne p4, v4, :cond_e

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    int-to-float v5, p3

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/multiwindow/Border;->drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p3, v4

    int-to-float v4, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/multiwindow/Border;->drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :cond_e
    const/16 v4, 0x8

    if-ne p4, v4, :cond_f

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    int-to-float v5, p3

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/multiwindow/Border;->drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    int-to-float v4, p2

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/multiwindow/Border;->drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :cond_f
    const/4 v4, 0x3

    if-ne p4, v4, :cond_10

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    int-to-float v4, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v2, v4, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/multiwindow/Border;->drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :cond_10
    const/16 v4, 0xc

    if-ne p4, v4, :cond_0

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    int-to-float v5, p3

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/multiwindow/Border;->drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :cond_11
    const/4 v4, 0x1

    if-ne p4, v4, :cond_12

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    int-to-float v4, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v2, v4, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/multiwindow/Border;->drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p3, v4

    int-to-float v4, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/multiwindow/Border;->drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :cond_12
    if-ne p4, v9, :cond_13

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    int-to-float v5, p3

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/multiwindow/Border;->drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p3, v4

    int-to-float v4, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/multiwindow/Border;->drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :cond_13
    const/4 v4, 0x4

    if-ne p4, v4, :cond_14

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p2, v4

    int-to-float v4, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v2, v4, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/multiwindow/Border;->drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    int-to-float v4, p2

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/multiwindow/Border;->drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :cond_14
    const/16 v4, 0x8

    if-ne p4, v4, :cond_15

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    int-to-float v5, p3

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/multiwindow/Border;->drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    int-to-float v4, p2

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/multiwindow/Border;->drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :cond_15
    const/4 v4, 0x3

    if-ne p4, v4, :cond_16

    iget v4, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, p3, v4

    int-to-float v4, v4

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v2, v7, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/multiwindow/Border;->drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_0

    :cond_16
    const/16 v4, 0xc

    if-ne p4, v4, :cond_0

    int-to-float v4, p2

    iget v5, p0, Lcom/android/internal/policy/multiwindow/Border;->mSplitUnfocusThickness:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    invoke-virtual {v2, v7, v7, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0, p1, v2}, Lcom/android/internal/policy/multiwindow/Border;->drawZoneBasedUnfocusBorder(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    goto/16 :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDesktopMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mIsDesktop:Z

    return v0
.end method

.method public setDesktopMode(Z)V
    .locals 0
    .param p1, "isDesktop"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/multiwindow/Border;->mIsDesktop:Z

    return-void
.end method

.method public setDrawOption(I)V
    .locals 0
    .param p1, "option"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/policy/multiwindow/Border;->mDrawOption:I

    return-void
.end method

.method public setFocus(Z)V
    .locals 1
    .param p1, "focus"    # Z

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/multiwindow/Border;->setFocus(ZZ)V

    return-void
.end method

.method public setFocus(ZZ)V
    .locals 4
    .param p1, "focus"    # Z
    .param p2, "force"    # Z

    .prologue
    iget-boolean v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mLastFocus:Z

    if-ne v2, p1, :cond_0

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mIsSupportDrawableFrame:Z

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    .local v0, "focusColor":I
    const/4 v1, 0x0

    .local v1, "unfocusColor":I
    iget-boolean v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mIsDesktop:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mDesktopPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mDesktopPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mDeskTopFocusColor:I

    iget v1, p0, Lcom/android/internal/policy/multiwindow/Border;->mDeskTopUnfocusColor:I

    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowClippingBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowClippingBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowClippingBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    .end local v0    # "focusColor":I
    .end local v1    # "unfocusColor":I
    :goto_2
    iput-boolean p1, p0, Lcom/android/internal/policy/multiwindow/Border;->mLastFocus:Z

    goto :goto_0

    .restart local v0    # "focusColor":I
    .restart local v1    # "unfocusColor":I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mDefaultPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mDefaultPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iput-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    iget v0, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowFocusColor:I

    iget v1, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowUnfocusColor:I

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowClippingBorderDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setTint(I)V

    goto :goto_2

    .end local v0    # "focusColor":I
    .end local v1    # "unfocusColor":I
    :cond_3
    if-eqz p1, :cond_4

    iget v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowFocusColor:I

    iput v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mInnerLineColor:I

    iget v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowFocusOutlineColor:I

    iput v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mOutLineColor:I

    goto :goto_2

    :cond_4
    iget v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowUnfocusColor:I

    iput v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mInnerLineColor:I

    iget v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mPopupWindowUnfocusOutlineColor:I

    iput v2, p0, Lcom/android/internal/policy/multiwindow/Border;->mOutLineColor:I

    goto :goto_2
.end method
