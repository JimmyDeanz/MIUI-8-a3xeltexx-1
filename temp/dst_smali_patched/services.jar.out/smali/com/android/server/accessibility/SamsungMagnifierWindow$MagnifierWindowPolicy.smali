.class final Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
.super Ljava/lang/Object;
.source "SamsungMagnifierWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MagnifierWindowPolicy"
.end annotation


# static fields
.field private static BORDER_SIZE_DP:F

.field public static mDeviceType:Ljava/lang/String;


# instance fields
.field private WINDOW_SIZE_TABLE_HEIGHT:[I

.field private WINDOW_SIZE_TABLE_WIDTH:[I

.field private mBorderSize:I

.field private mCloseBoundOnScreen:Landroid/graphics/Rect;

.field private mCloseSize:Landroid/graphics/Rect;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHandleBoundOnScreen:Landroid/graphics/Rect;

.field private mHandleSize:Landroid/graphics/Rect;

.field private mIsCloseMode:Z

.field private mIsMovingMode:Z

.field private mMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mMovingStarted_X:F

.field private mMovingStarted_Y:F

.field private mOrientation:I

.field private mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

.field private mScale:I

.field private mTouchAreaBoundOnScreen:Landroid/graphics/Rect;

.field private mTouchAreaSize:Landroid/graphics/Rect;

.field private mWindowBoundOnScreen:Landroid/graphics/Rect;

.field private mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

.field private mWindowSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, 0x40800000    # 4.0f

    sput v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->BORDER_SIZE_DP:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x5

    const/4 v11, -0x1

    const/high16 v10, -0x40800000    # -1.0f

    const/4 v12, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v9, v13, [I

    fill-array-data v9, :array_0

    iput-object v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    new-array v9, v13, [I

    fill-array-data v9, :array_1

    iput-object v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    iput v11, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    iput v11, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:I

    iput-boolean v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsMovingMode:Z

    iput v10, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_X:F

    iput v10, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_Y:F

    iput-boolean v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsCloseMode:Z

    iput v11, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    iput v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    new-instance v9, Landroid/util/DisplayMetrics;

    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v12, v12, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v12, v12, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v12, v12, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v10, v9, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v10, v9, Landroid/view/MagnificationSpec;->offsetY:F

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v12, v12, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v12, v12, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleBoundOnScreen:Landroid/graphics/Rect;

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v12, v12, v12, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mTouchAreaBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105033f

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .local v1, "closeMarginTop":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105033d

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .local v0, "closeMarginRight":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x105033e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .local v2, "closeSize":I
    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v0, v2

    add-int v11, v1, v2

    invoke-direct {v9, v12, v12, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseSize:Landroid/graphics/Rect;

    const-string v9, "window"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    .local v8, "windowmanager":Landroid/view/WindowManager;
    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v9, v10}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v5, "screenWidth":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050342

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .local v4, "handleWidth":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050341

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .local v3, "handleHeight":I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v12, v12, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleSize:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050344

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .local v7, "touchAreaWidth":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050343

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .local v6, "touchAreaHeight":I
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v12, v12, v7, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mTouchAreaSize:Landroid/graphics/Rect;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->init(Landroid/content/Context;)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static isTablet()Z
    .locals 2

    .prologue
    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getMagnificationSpec()Landroid/view/MagnificationSpec;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public getMovingStartedX()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_X:F

    return v0
.end method

.method public getMovingStartedY()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_Y:F

    return v0
.end method

.method public getOriginalScreenBoundOnScreen()Landroid/graphics/Rect;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScale()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:I

    return v0
.end method

.method public getWindowBoundOnScreen()Landroid/graphics/Rect;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getWindowSizeHeight()I
    .locals 4

    .prologue
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WINDOW_SIZE_TABLE_HEIGHT[mWindowSize] ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    iget v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    iget v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getWindowSizeWidth()I
    .locals 4

    .prologue
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WINDOW_SIZE_TABLE_WIDTH[mWindowSize] ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    iget v3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    iget v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    aget v0, v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)Z
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, "config":Landroid/content/res/Configuration;
    iget v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    iget v5, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_0

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "init : But orientation is not changed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init orientation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v0, Landroid/content/res/Configuration;->orientation:I

    iput v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    const-string v4, "window"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .local v3, "windowmanager":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mDisplayMetrics : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v6}, Landroid/util/DisplayMetrics;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    sget v5, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->BORDER_SIZE_DP:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v4

    .local v2, "widthPixels":F
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v4

    .local v1, "heightPixels":F
    iget v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v2, v4

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v4

    :cond_1
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v5, 0x0

    float-to-double v6, v2

    const-wide v8, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v5, 0x1

    float-to-double v6, v2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v5, 0x2

    float-to-double v6, v2

    const-wide v8, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v5, 0x3

    float-to-double v6, v2

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v5, 0x4

    float-to-int v6, v2

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v5, 0x0

    float-to-double v6, v1

    const-wide v8, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v5, 0x1

    float-to-double v6, v1

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v5, 0x2

    float-to-double v6, v1

    const-wide v8, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v5, 0x3

    float-to-double v6, v1

    const-wide v8, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v5, 0x4

    float-to-double v6, v1

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    :goto_1
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetX:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetY:F

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    :cond_2
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateMagnificationSpec(FF)V

    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isTablet()Z

    move-result v4

    if-nez v4, :cond_4

    iget v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v5, 0x0

    float-to-double v6, v2

    const-wide v8, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v5, 0x1

    float-to-double v6, v2

    const-wide v8, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v5, 0x2

    float-to-double v6, v2

    const-wide v8, 0x3fee666666666666L    # 0.95

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v5, 0x0

    float-to-double v6, v1

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v5, 0x1

    float-to-double v6, v1

    const-wide v8, 0x3fe199999999999aL    # 0.55

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v5, 0x2

    float-to-double v6, v1

    const-wide v8, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v5, 0x0

    float-to-double v6, v2

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v5, 0x1

    float-to-double v6, v2

    const-wide v8, 0x3feb333333333333L    # 0.85

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    const/4 v5, 0x2

    float-to-int v6, v2

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v5, 0x0

    float-to-double v6, v1

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v5, 0x1

    float-to-double v6, v1

    const-wide v8, 0x3fd3d70a3d70a3d7L    # 0.31

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    const/4 v5, 0x2

    float-to-double v6, v1

    const-wide v8, 0x3fd70a3d70a3d70aL    # 0.36

    mul-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v4, v5

    goto/16 :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v5, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v5, v5, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {p0, v4, v5}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateMagnificationSpec(FF)V

    goto/16 :goto_2
.end method

.method public isCloseMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsCloseMode:Z

    return v0
.end method

.method public isMovingMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsMovingMode:Z

    return v0
.end method

.method public isOnCloseBtn(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnHandle(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnMagnifierWindow(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnMagnifierWindowWithoutBorder(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnTouchArea(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mTouchAreaBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public setCloseMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsCloseMode:Z

    return-void
.end method

.method public setMovingMode(ZFF)V
    .locals 0
    .param p1, "mode"    # Z
    .param p2, "start_x"    # F
    .param p3, "start_y"    # F

    .prologue
    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsMovingMode:Z

    iput p2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_X:F

    iput p3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_Y:F

    return-void
.end method

.method public setScale(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWindowSize(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateBoundOnScreen()V
    .locals 15

    .prologue
    const/4 v6, 0x0

    .local v6, "left":I
    const/4 v10, 0x0

    .local v10, "top":I
    const/4 v8, 0x0

    .local v8, "right":I
    const/4 v0, 0x0

    .local v0, "bottom":I
    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    .local v3, "display_width":I
    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    .local v2, "display_height":I
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeWidth()I

    move-result v12

    div-int/lit8 v5, v12, 0x2

    .local v5, "half_width":I
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeHeight()I

    move-result v12

    div-int/lit8 v4, v12, 0x2

    .local v4, "half_height":I
    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v12, v12, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v12, v12

    sub-int v7, v12, v5

    .local v7, "left_via_spec":I
    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v12, v12, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v12, v12

    add-int v9, v12, v5

    .local v9, "right_via_spec":I
    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v12, v12, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v12, v12

    sub-int v11, v12, v4

    .local v11, "top_via_spec":I
    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v12, v12, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v12, v12

    add-int v1, v12, v4

    .local v1, "bottom_via_spec":I
    if-gez v7, :cond_0

    const/4 v6, 0x0

    sub-int v8, v9, v7

    :goto_0
    if-gez v11, :cond_2

    const/4 v10, 0x0

    sub-int v0, v1, v11

    :goto_1
    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    iput v6, v12, Landroid/graphics/Rect;->left:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    iput v10, v12, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    iput v8, v12, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    iget v13, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    mul-int/lit8 v13, v13, 0x3

    add-int/2addr v13, v6

    iput v13, v12, Landroid/graphics/Rect;->left:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    iget v13, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    mul-int/lit8 v13, v13, 0x3

    add-int/2addr v13, v10

    iput v13, v12, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    iget v13, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    mul-int/lit8 v13, v13, 0x3

    sub-int v13, v8, v13

    iput v13, v12, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    iget v13, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    mul-int/lit8 v13, v13, 0x3

    sub-int v13, v0, v13

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget-object v13, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseSize:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    sub-int v13, v8, v13

    iput v13, v12, Landroid/graphics/Rect;->left:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iput v10, v12, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iput v8, v12, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    iget-object v13, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseSize:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v10

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleBoundOnScreen:Landroid/graphics/Rect;

    div-int/lit8 v13, v6, 0x2

    iget-object v14, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleSize:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->left:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleBoundOnScreen:Landroid/graphics/Rect;

    iget-object v13, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->top:I

    div-int/lit8 v13, v13, 0x2

    iget-object v14, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleSize:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleBoundOnScreen:Landroid/graphics/Rect;

    div-int/lit8 v13, v8, 0x2

    iget-object v14, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleSize:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleBoundOnScreen:Landroid/graphics/Rect;

    iget-object v13, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v13, v13, 0x2

    iget-object v14, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleSize:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mTouchAreaBoundOnScreen:Landroid/graphics/Rect;

    div-int/lit8 v13, v6, 0x2

    iget-object v14, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mTouchAreaSize:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    div-int/lit8 v14, v14, 0x2

    sub-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->left:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mTouchAreaBoundOnScreen:Landroid/graphics/Rect;

    iget-object v13, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mTouchAreaSize:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v13, v13, 0x2

    sub-int v13, v0, v13

    iput v13, v12, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mTouchAreaBoundOnScreen:Landroid/graphics/Rect;

    div-int/lit8 v13, v8, 0x2

    iget-object v14, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mTouchAreaSize:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    div-int/lit8 v14, v14, 0x2

    add-int/2addr v13, v14

    iput v13, v12, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mTouchAreaBoundOnScreen:Landroid/graphics/Rect;

    iget-object v13, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mTouchAreaSize:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v0

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeWidth()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    iget v13, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:I

    div-int v5, v12, v13

    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    iget v13, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:I

    div-int v4, v12, v13

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v12, v12, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v12, v12

    sub-int v7, v12, v5

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v12, v12, Landroid/view/MagnificationSpec;->offsetX:F

    float-to-int v12, v12

    add-int v9, v12, v5

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v12, v12, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v12, v12

    sub-int v11, v12, v4

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v12, v12, Landroid/view/MagnificationSpec;->offsetY:F

    float-to-int v12, v12

    add-int v1, v12, v4

    if-gez v7, :cond_4

    const/4 v6, 0x0

    sub-int v8, v9, v7

    :goto_2
    if-gez v11, :cond_6

    const/4 v10, 0x0

    sub-int v0, v1, v11

    :goto_3
    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    iput v6, v12, Landroid/graphics/Rect;->left:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    iput v10, v12, Landroid/graphics/Rect;->top:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    iput v8, v12, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    iput v0, v12, Landroid/graphics/Rect;->bottom:I

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateBoundOnScreen mWindowBoundOnScreen ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateBoundOnScreen mWindowBoundOnScreenWithoutBorder="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateBoundOnScreen mCloseBoundOnScreen="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateBoundOnScreen mHandleBoundOnScreen="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateBoundOnScreen mTouchAreaBoundOnScreen="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mTouchAreaBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/accessibility/SamsungMagnifierWindow;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$000()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateBoundOnScreen mOriginalScreenBoundOnScreen="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-le v9, v3, :cond_1

    move v8, v3

    sub-int v12, v9, v3

    sub-int v6, v7, v12

    goto/16 :goto_0

    :cond_1
    move v6, v7

    move v8, v9

    goto/16 :goto_0

    :cond_2
    if-le v1, v2, :cond_3

    move v0, v2

    sub-int v12, v1, v2

    sub-int v10, v11, v12

    goto/16 :goto_1

    :cond_3
    move v10, v11

    move v0, v1

    goto/16 :goto_1

    :cond_4
    if-le v9, v3, :cond_5

    move v8, v3

    sub-int v12, v9, v3

    sub-int v6, v7, v12

    goto/16 :goto_2

    :cond_5
    move v6, v7

    move v8, v9

    goto/16 :goto_2

    :cond_6
    if-le v1, v2, :cond_7

    move v0, v2

    sub-int v12, v1, v2

    sub-int v10, v11, v12

    goto/16 :goto_3

    :cond_7
    move v10, v11

    move v0, v1

    goto/16 :goto_3
.end method

.method public updateMagnificationSpec(FF)V
    .locals 2
    .param p1, "offset_x"    # F
    .param p2, "offset_y"    # F

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateBoundOnScreen()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    goto :goto_1
.end method
