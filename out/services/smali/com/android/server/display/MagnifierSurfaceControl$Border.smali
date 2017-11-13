.class Lcom/android/server/display/MagnifierSurfaceControl$Border;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/MagnifierSurfaceControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Border"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierTouchGestureListener;,
        Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;
    }
.end annotation


# static fields
.field private static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x1b58

.field private static final TAG:Ljava/lang/String; = "Magnifier.Border"

.field private static final TIMEOUT:I = 0x5

.field private static isPadVisible:Z = false

.field private static layoutParamsClose:Landroid/view/WindowManager$LayoutParams; = null

.field private static layoutParamsHandle:Landroid/view/WindowManager$LayoutParams; = null

.field private static layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams; = null

.field private static layoutParamsScreenChange:Landroid/view/WindowManager$LayoutParams; = null

.field private static layoutParamsTouchArea:Landroid/view/WindowManager$LayoutParams; = null

.field private static mImageViewClose:Landroid/widget/ImageView; = null

.field private static mImageViewHandle:Landroid/widget/ImageView; = null

.field private static mImageViewMagnifierPad:Landroid/widget/ImageView; = null

.field private static mImageViewScreenChange:Landroid/widget/ImageView; = null

.field private static mImageViewTouchArea:Landroid/widget/ImageView; = null

.field private static final windowType:I = 0x830


# instance fields
.field private final DEBUG:Z

.field private fingerMagnifierState:I

.field initialTouchX:F

.field initialTouchY:F

.field private mBorderFxSession:Landroid/view/SurfaceSession;

.field final mBorderLock:Ljava/lang/Object;

.field private mBorderSurface:Landroid/view/Surface;

.field private mBorderSurfaceControl:Landroid/view/SurfaceControl;

.field private mContext:Landroid/content/Context;

.field mCurrentScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableClose:Landroid/graphics/drawable/Drawable;

.field private mDrawableCloseMarginRight:I

.field private mDrawableCloseMarginTop:I

.field private mDrawableCloseSize:I

.field private mDrawableHandler:Landroid/graphics/drawable/Drawable;

.field private mDrawableHandlerSize:I

.field private mDrawableHandlerSize_h:I

.field private mDrawableHandlerSize_w:I

.field private mDrawableScreenChange:Landroid/graphics/drawable/Drawable;

.field private mDrawableScreenChangeMarginRight:I

.field private mDrawableScreenChangeMarginTop:I

.field private mDrawableScreenChangeSize:I

.field private mDrawableTouchArea:Landroid/graphics/drawable/Drawable;

.field private mDrawableTouchAreaSize_h:I

.field private mDrawableTouchAreaSize_w:I

.field mHandler:Landroid/os/Handler;

.field private mMagnifierDisplayPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

.field private mPM:Landroid/os/PowerManager;

.field private mPadding:Landroid/graphics/Rect;

.field private mShowing:Z

.field mTouchDownX:F

.field mTouchDownY:F

.field private mTouchGestureDetector:Landroid/view/GestureDetector;

.field mTouchUpX:F

.field mTouchUpY:F

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWindowManager:Landroid/view/WindowManager;

.field onClick:Landroid/view/View$OnClickListener;

.field onTouch:Landroid/view/View$OnTouchListener;

.field xPosition:F

.field yPosition:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILcom/android/server/display/MagnifierDisplayPolicy;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layerStack"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "policy"    # Lcom/android/server/display/MagnifierDisplayPolicy;

    .prologue
    const/4 v2, 0x0

    const v8, 0x1080578

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    iput-boolean v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->DEBUG:Z

    .line 580
    iput-boolean v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mShowing:Z

    .line 584
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    .line 585
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    .line 602
    iput v7, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->fingerMagnifierState:I

    .line 615
    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchGestureDetector:Landroid/view/GestureDetector;

    .line 618
    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->initialTouchX:F

    .line 619
    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->initialTouchY:F

    .line 620
    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchDownX:F

    .line 621
    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchDownY:F

    .line 622
    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchUpX:F

    .line 623
    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchUpY:F

    .line 624
    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->xPosition:F

    .line 625
    iput v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->yPosition:F

    .line 629
    sget-object v0, Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;->MAIN:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mCurrentScreen:Lcom/samsung/android/sdk/dualscreen/SDualScreenActivity$DualScreen;

    .line 630
    iput-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWindowManager:Landroid/view/WindowManager;

    .line 636
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    .line 637
    new-instance v0, Landroid/view/SurfaceSession;

    invoke-direct {v0}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderFxSession:Landroid/view/SurfaceSession;

    .line 638
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    .line 640
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105033f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    .line 641
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105033d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    .line 642
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105033e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    .line 645
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050341

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandlerSize_h:I

    .line 646
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050342

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandlerSize_w:I

    .line 648
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050343

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableTouchAreaSize_h:I

    .line 649
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050344

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableTouchAreaSize_w:I

    .line 653
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "finger_magnifier"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->fingerMagnifierState:I

    .line 656
    if-lt p3, v3, :cond_0

    if-ge p4, v3, :cond_2

    .line 657
    :cond_0
    :try_start_0
    const-string v0, "Magnifier.Border"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "invalid width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 658
    if-ge p3, v3, :cond_1

    const/4 p3, 0x1

    .line 659
    :cond_1
    if-ge p4, v3, :cond_2

    const/4 p4, 0x1

    .line 661
    :cond_2
    new-instance v0, Landroid/view/SurfaceControl;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderFxSession:Landroid/view/SurfaceSession;

    const-string v2, "OverlayMagnifierBorder"

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->isOldMagnifier:Z
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1700()Z

    move-result v3

    if-eqz v3, :cond_4

    move v4, p4

    :goto_0
    const/4 v5, -0x2

    const v6, -0x7ffffffc

    move v3, p3

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    .line 664
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 665
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 666
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 667
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const v1, 0x1e847f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setLayer(I)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 675
    :goto_1
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->isOldMagnifier:Z
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 676
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 677
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    .line 683
    :goto_2
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 684
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v7, v7, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 686
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandler:Landroid/graphics/drawable/Drawable;

    .line 687
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandler:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 688
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandler:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v1, p3, 0x2

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandlerSize_w:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandlerSize_h:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p4, v2

    div-int/lit8 v3, p3, 0x2

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandlerSize_w:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int v3, p3, v3

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandlerSize_h:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 690
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableTouchArea:Landroid/graphics/drawable/Drawable;

    .line 691
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableTouchArea:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 692
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableTouchArea:Landroid/graphics/drawable/Drawable;

    div-int/lit8 v1, p3, 0x2

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableTouchAreaSize_w:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableTouchAreaSize_h:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, p4, v2

    div-int/lit8 v3, p3, 0x2

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableTouchAreaSize_w:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    sub-int v3, p3, v3

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableTouchAreaSize_h:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 694
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 695
    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    .line 696
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 697
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 707
    :goto_3
    iput-object p5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mMagnifierDisplayPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    .line 708
    iget v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->fingerMagnifierState:I

    if-lez v0, :cond_3

    .line 709
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandler:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandler:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableTouchArea:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableTouchArea:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v8

    move-object v1, p0

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;-><init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;IIIIIII)V

    invoke-direct {p0, v0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->initMagnifierWindow(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)V

    .line 711
    :cond_3
    return-void

    .line 661
    :cond_4
    :try_start_1
    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableTouchAreaSize_h:I

    div-int/lit8 v3, v3, 0x2
    :try_end_1
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int v4, p4, v3

    goto/16 :goto_0

    .line 668
    :catch_0
    move-exception v9

    .line 669
    .local v9, "e":Landroid/view/Surface$OutOfResourcesException;
    :try_start_2
    invoke-virtual {v9}, Landroid/view/Surface$OutOfResourcesException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 671
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    goto/16 :goto_1

    .end local v9    # "e":Landroid/view/Surface$OutOfResourcesException;
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 680
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 681
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10800c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_2

    .line 699
    :cond_6
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    add-int/2addr v1, v2

    sub-int v1, p3, v1

    iget v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    iget v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    sub-int v3, p3, v3

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginTop:I

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/16 :goto_3
.end method

.method static synthetic access$1300()Z
    .locals 1

    .prologue
    .line 577
    sget-boolean v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->isPadVisible:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->addMagnifierView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->setEventListener()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->updateViewLayout()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$2800()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2900()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$3000()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewClose:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3100()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$3200()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewHandle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3300()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsHandle:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$3400()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewTouchArea:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3500()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsTouchArea:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$3600()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 577
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewScreenChange:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/view/GestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/server/display/MagnifierSurfaceControl$Border;Landroid/view/GestureDetector;)Landroid/view/GestureDetector;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;
    .param p1, "x1"    # Landroid/view/GestureDetector;

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchGestureDetector:Landroid/view/GestureDetector;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->handleTimeout()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/server/display/MagnifierSurfaceControl$Border;)Lcom/android/server/display/MagnifierDisplayPolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mMagnifierDisplayPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;

    .prologue
    .line 577
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->saveInSharedPreference()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/display/MagnifierSurfaceControl$Border;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/MagnifierSurfaceControl$Border;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 577
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->injectAccessibilityMotionEvent(IZ)V

    return-void
.end method

.method private addMagnifierView()V
    .locals 2

    .prologue
    .line 1089
    const-string v0, "Magnifier.Border"

    const-string v1, "addMagnifierView"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1094
    :goto_0
    return-void

    .line 1092
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->isPadVisible:Z

    .line 1093
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private handleTimeout()V
    .locals 1

    .prologue
    .line 1138
    monitor-enter p0

    .line 1139
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1141
    :cond_0
    monitor-exit p0

    .line 1142
    return-void

    .line 1141
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 925
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$1;-><init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    .line 981
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;

    invoke-direct {v0, p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border$2;-><init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->onTouch:Landroid/view/View$OnTouchListener;

    .line 1059
    new-instance v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border$3;-><init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->onClick:Landroid/view/View$OnClickListener;

    .line 1087
    return-void
.end method

.method private initMagnifierUIParams(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)V
    .locals 7
    .param p1, "mWindow"    # Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;

    .prologue
    const/16 v3, 0x830

    const/16 v6, 0x33

    const/16 v4, 0x8

    const/4 v5, -0x3

    .line 851
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 852
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mPadWidth:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$1900(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mPadHeight:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2000(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    sput-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    .line 859
    :goto_0
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 861
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 862
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mCloseWidth:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2100(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mCloseHeight:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2200(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    sput-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    .line 869
    :goto_1
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 871
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsHandle:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_2

    .line 872
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mHandleWidth:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2300(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mHandleHeight:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2400(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    sput-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsHandle:Landroid/view/WindowManager$LayoutParams;

    .line 879
    :goto_2
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsHandle:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 881
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsTouchArea:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_3

    .line 882
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mTouchAreaWidth:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2500(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mTouchAreaHeight:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2600(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v2

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    sput-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsTouchArea:Landroid/view/WindowManager$LayoutParams;

    .line 889
    :goto_3
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsTouchArea:Landroid/view/WindowManager$LayoutParams;

    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 902
    return-void

    .line 856
    :cond_0
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mPadWidth:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$1900(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 857
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mPadHeight:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2000(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    .line 866
    :cond_1
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mCloseWidth:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2100(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 867
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mCloseHeight:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2200(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_1

    .line 876
    :cond_2
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsHandle:Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mHandleWidth:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2300(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 877
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsHandle:Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mHandleHeight:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2400(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_2

    .line 886
    :cond_3
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsTouchArea:Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mTouchAreaWidth:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2500(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 887
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsTouchArea:Landroid/view/WindowManager$LayoutParams;

    # getter for: Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->mTouchAreaHeight:I
    invoke-static {p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;->access$2600(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_3
.end method

.method private initMagnifierWindow(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)V
    .locals 3
    .param p1, "mWindow"    # Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWindowManager:Landroid/view/WindowManager;

    .line 823
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 824
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewMagnifierPad:Landroid/widget/ImageView;

    .line 825
    :cond_0
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewClose:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 826
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewClose:Landroid/widget/ImageView;

    .line 827
    :cond_1
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewHandle:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    .line 828
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewHandle:Landroid/widget/ImageView;

    .line 829
    :cond_2
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewTouchArea:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    .line 830
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewTouchArea:Landroid/widget/ImageView;

    .line 831
    :cond_3
    sget-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewScreenChange:Landroid/widget/ImageView;

    if-nez v0, :cond_4

    .line 832
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mImageViewScreenChange:Landroid/widget/ImageView;

    .line 842
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->initMagnifierUIParams(Lcom/android/server/display/MagnifierSurfaceControl$Border$MagnifierWindow;)V

    .line 843
    invoke-virtual {p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->updateMagnifierLayoutParams()V

    .line 844
    invoke-direct {p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->initEvent()V

    .line 845
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 846
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPM:Landroid/os/PowerManager;

    .line 847
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPM:Landroid/os/PowerManager;

    const v1, 0x1000001a

    const-string v2, "Magnifier Window"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 849
    return-void
.end method

.method private injectAccessibilityMotionEvent(IZ)V
    .locals 2
    .param p1, "eventAction"    # I
    .param p2, "isDouble"    # Z

    .prologue
    .line 1184
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/display/MagnifierSurfaceControl$Border$4;

    invoke-direct {v1, p0}, Lcom/android/server/display/MagnifierSurfaceControl$Border$4;-><init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1242
    return-void
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 818
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v1, 0xc0

    .line 819
    .local v0, "layout_dir":I
    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private saveInSharedPreference()V
    .locals 3

    .prologue
    .line 724
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1800()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pos_x"

    sget v2, Lcom/android/server/display/MagnifierSurfaceControl;->mCursorX:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 725
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->mSharedPref:Landroid/content/SharedPreferences;
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1800()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pos_y"

    sget v2, Lcom/android/server/display/MagnifierSurfaceControl;->mCursorY:F

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 733
    return-void
.end method

.method private setEventListener()V
    .locals 2

    .prologue
    .line 1109
    const-string v0, "Magnifier.Border"

    const-string/jumbo v1, "setEventListener"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1113
    :goto_0
    return-void

    .line 1112
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private updateViewLayout()V
    .locals 2

    .prologue
    .line 1103
    const-string v0, "Magnifier.Border"

    const-string/jumbo v1, "updateViewLayout"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1107
    :goto_0
    return-void

    .line 1106
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .prologue
    .line 793
    const-string v0, "Magnifier.Border"

    const-string/jumbo v1, "dismiss"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 796
    :try_start_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 798
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->destroy()V

    .line 800
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    .line 802
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 803
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 804
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 807
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 809
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    .line 810
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 811
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 812
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 814
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPM:Landroid/os/PowerManager;

    .line 815
    monitor-exit v1

    .line 816
    return-void

    .line 807
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 815
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public getPadding()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPadding:Landroid/graphics/Rect;

    return-object v0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 771
    const-string v0, "Magnifier.Border"

    const-string/jumbo v1, "hide"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 774
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mShowing:Z

    .line 775
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 777
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 778
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 780
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 782
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 785
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 787
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPM:Landroid/os/PowerManager;

    .line 788
    monitor-exit v1

    .line 789
    return-void

    .line 780
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v0

    .line 788
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public pokeWakelock()V
    .locals 2

    .prologue
    .line 1122
    monitor-enter p0

    .line 1123
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 1124
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1127
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1129
    :cond_1
    monitor-exit p0

    .line 1130
    return-void

    .line 1129
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeMagnifierView()V
    .locals 2

    .prologue
    .line 1096
    const-string v0, "Magnifier.Border"

    const-string/jumbo v1, "removeMagnifierView"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1101
    :goto_0
    return-void

    .line 1099
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->isPadVisible:Z

    .line 1100
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setPosition(Landroid/graphics/Point;)V
    .locals 4
    .param p1, "pt"    # Landroid/graphics/Point;

    .prologue
    .line 718
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v1

    .line 719
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p1, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 720
    monitor-exit v1

    .line 721
    return-void

    .line 720
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 737
    const-string v1, "Magnifier.Border"

    const-string/jumbo v2, "show"

    invoke-static {v1, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-object v2, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderLock:Ljava/lang/Object;

    monitor-enter v2

    .line 740
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mShowing:Z

    .line 741
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 742
    .local v0, "c":Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 743
    iget v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->fingerMagnifierState:I

    if-ne v1, v4, :cond_0

    .line 744
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableClose:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 745
    # getter for: Lcom/android/server/display/MagnifierSurfaceControl;->isOldMagnifier:Z
    invoke-static {}, Lcom/android/server/display/MagnifierSurfaceControl;->access$1700()Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableHandler:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 753
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurface:Landroid/view/Surface;

    invoke-virtual {v1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 754
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 756
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 757
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mBorderSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 759
    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    .line 761
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPM:Landroid/os/PowerManager;

    if-nez v1, :cond_1

    .line 762
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPM:Landroid/os/PowerManager;

    .line 763
    iget-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mPM:Landroid/os/PowerManager;

    const v3, 0x1000001a

    const-string v4, "Magnifier Window"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 766
    :cond_1
    monitor-exit v2

    .line 767
    return-void

    .line 759
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw v1

    .line 766
    .end local v0    # "c":Landroid/graphics/Canvas;
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public updateMagnifierLayoutParams()V
    .locals 6

    .prologue
    .line 904
    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mMagnifierDisplayPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/display/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getAbsOffset()Landroid/graphics/Point;

    move-result-object v3

    iget v0, v3, Landroid/graphics/Point;->x:I

    .line 905
    .local v0, "left":I
    sget-object v3, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int v1, v0, v3

    .line 906
    .local v1, "right":I
    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mMagnifierDisplayPolicy:Lcom/android/server/display/MagnifierDisplayPolicy;

    invoke-virtual {v3}, Lcom/android/server/display/MagnifierDisplayPolicy;->getmLastDisplayInfo()Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/display/MagnifierDisplayPolicy$DisplayInfo;->getAbsOffset()Landroid/graphics/Point;

    move-result-object v3

    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 908
    .local v2, "top":I
    sget-object v3, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 909
    sget-object v3, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsMagnifierPad:Landroid/view/WindowManager$LayoutParams;

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 910
    iget-object v3, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/display/MagnifierSurfaceControl$Border;->isRTL(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 911
    sget-object v3, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 914
    :goto_0
    sget-object v3, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    add-int/2addr v4, v2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 922
    return-void

    .line 913
    :cond_0
    sget-object v3, Lcom/android/server/display/MagnifierSurfaceControl$Border;->layoutParamsClose:Landroid/view/WindowManager$LayoutParams;

    iget v4, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseMarginRight:I

    iget v5, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mDrawableCloseSize:I

    add-int/2addr v4, v5

    sub-int v4, v1, v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0
.end method
