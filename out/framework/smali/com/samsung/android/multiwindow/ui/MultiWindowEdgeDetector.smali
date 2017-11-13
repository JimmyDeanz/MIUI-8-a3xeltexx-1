.class public Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;
.super Ljava/lang/Object;
.source "MultiWindowEdgeDetector.java"


# static fields
.field private static final DEBUG:Z

.field public static final EDGE_LEFT_TOP:I = 0x5

.field public static final EDGE_RIGHT_TOP:I = 0x9

.field private static final TAG:Ljava/lang/String; = "MultiWindowEdgeDetector"

.field private static mHeight:F

.field private static mHeightForPen:F

.field private static mIsSupportCocktailBar:Z

.field private static mWidth:F


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdge:I

.field private mRotation:I

.field private mScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 27
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    .line 45
    iput-object p1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    .line 46
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050306

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mWidth:F

    .line 47
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050308

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mHeight:F

    .line 48
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050309

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sput v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mHeightForPen:F

    .line 49
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mIsSupportCocktailBar:Z

    .line 50
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailPanel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mWidth:F

    iget-object v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050307

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    sput v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mWidth:F

    .line 53
    :cond_0
    return-void
.end method

.method private checkCocktailBar(I)I
    .locals 3
    .param p1, "flag"    # I

    .prologue
    const/4 v2, 0x1

    .line 127
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mRotation:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mRotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 129
    :cond_0
    const/4 p1, 0x0

    .line 134
    :cond_1
    :goto_0
    return p1

    .line 130
    :cond_2
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mRotation:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mRotation:I

    if-ne v0, v2, :cond_1

    .line 132
    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static getEdgeFlag(ILandroid/view/MotionEvent;)I
    .locals 8
    .param p0, "screenWidth"    # I
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 105
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    .line 106
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 107
    .local v3, "y":F
    const/4 v0, 0x0

    .line 108
    .local v0, "flag":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 109
    sget v4, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mHeightForPen:F

    sput v4, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mHeight:F

    .line 111
    :cond_0
    sget v4, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mHeight:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    move v1, v0

    .line 123
    .end local v0    # "flag":I
    .local v1, "flag":I
    :goto_0
    return v1

    .line 114
    .end local v1    # "flag":I
    .restart local v0    # "flag":I
    :cond_1
    const/4 v0, 0x1

    .line 116
    sget v4, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mWidth:F

    cmpg-float v4, v2, v4

    if-gez v4, :cond_5

    .line 117
    or-int/lit8 v0, v0, 0x4

    .line 121
    :cond_2
    :goto_1
    sget-boolean v4, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v5, "MultiWindowEdgeDetector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEdgeFlag:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/16 v4, 0x9

    if-eq v0, v4, :cond_3

    const/4 v4, 0x5

    if-ne v0, v4, :cond_6

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " screenWidth="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " x="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " y="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " width="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v7, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mWidth:F

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move v1, v0

    .line 123
    .end local v0    # "flag":I
    .restart local v1    # "flag":I
    goto :goto_0

    .line 118
    .end local v1    # "flag":I
    .restart local v0    # "flag":I
    :cond_5
    int-to-float v4, p0

    sget v5, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mWidth:F

    sub-float/2addr v4, v5

    cmpl-float v4, v2, v4

    if-lez v4, :cond_2

    .line 119
    or-int/lit8 v0, v0, 0x8

    goto :goto_1

    .line 121
    :cond_6
    const-string v4, ""

    goto :goto_2
.end method

.method private notMultiWindowEdgeSupport(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v4, -0x2

    const/4 v1, 0x1

    .line 96
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "multi_window_enabled"

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "db_popup_view_shortcut"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_1

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "car_mode_on"

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mScreenWidth:I

    .line 57
    sget-boolean v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mIsSupportCocktailBar:Z

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mRotation:I

    .line 60
    :cond_0
    return-void
.end method

.method public isEdge()Z
    .locals 2

    .prologue
    .line 87
    iget v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->isEdge()Z

    move-result v0

    .line 64
    .local v0, "lastResizing":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_4

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->init()V

    .line 66
    iget v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mScreenWidth:I

    invoke-static {v1, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->getEdgeFlag(ILandroid/view/MotionEvent;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    .line 67
    sget-boolean v1, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mIsSupportCocktailBar:Z

    if-eqz v1, :cond_0

    .line 68
    iget v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    invoke-direct {p0, v1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->checkCocktailBar(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    .line 70
    :cond_0
    iget v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    .line 71
    :cond_1
    const/4 v0, 0x1

    .line 75
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->notMultiWindowEdgeSupport(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    iput v3, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    .line 77
    const/4 v0, 0x0

    .line 83
    :cond_2
    :goto_1
    return v0

    .line 73
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 79
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 81
    :cond_5
    iput v3, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 91
    sget-boolean v0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiWindowEdgeDetector"

    const-string/jumbo v1, "reset last edge detect inform by force"

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mEdge:I

    .line 93
    return-void
.end method

.method public showMultiWindowGestureHelp()V
    .locals 4

    .prologue
    .line 138
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->notMultiWindowEdgeSupport(Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 140
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, "multiWindowUIIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 142
    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.multiwindow.centerbarwindow.CenterBarWindowService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    :goto_0
    const-string v2, "com.sec.android.multiwindow.gesture.overlayHelp"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget-object v2, p0, Lcom/samsung/android/multiwindow/ui/MultiWindowEdgeDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 152
    .end local v1    # "multiWindowUIIntent":Landroid/content/Intent;
    :cond_0
    :goto_1
    return-void

    .line 144
    .restart local v1    # "multiWindowUIIntent":Landroid/content/Intent;
    :cond_1
    const-string v2, "com.sec.android.app.FlashBarService"

    const-string v3, "com.sec.android.app.FlashBarService.MultiWindowTrayService"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v1    # "multiWindowUIIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
