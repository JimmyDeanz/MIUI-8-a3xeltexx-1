.class public Lcom/android/internal/policy/SubPhoneWindow;
.super Lcom/android/internal/policy/PhoneWindow;
.source "SubPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/SubPhoneWindow$ResizeHelper;,
        Lcom/android/internal/policy/SubPhoneWindow$SubPhoneDecorView;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final SAFE_DEBUG:Z = true

.field static final TAG:Ljava/lang/String; = "SubPhoneWindow"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBorder:Lcom/android/internal/policy/multiwindow/Border;

.field private mContext:Landroid/content/Context;

.field private mHasStackFocus:Z

.field private mIsBorder:Z

.field private mMinStackBoundForLand:Landroid/graphics/Rect;

.field private mMinStackBoundForPort:Landroid/graphics/Rect;

.field private final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    const/4 v9, 0x1

    const/high16 v8, 0x447a0000    # 1000.0f

    const/4 v7, 0x0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 63
    iput-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mActivity:Landroid/app/Activity;

    .line 66
    iput-boolean v7, p0, Lcom/android/internal/policy/SubPhoneWindow;->mHasStackFocus:Z

    .line 67
    iput-boolean v7, p0, Lcom/android/internal/policy/SubPhoneWindow;->mIsBorder:Z

    .line 69
    iput-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mToken:Landroid/os/IBinder;

    .line 71
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    .line 72
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    .line 76
    iput-object p1, p0, Lcom/android/internal/policy/SubPhoneWindow;->mContext:Landroid/content/Context;

    .line 77
    iget-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mContext:Landroid/content/Context;

    instance-of v5, v5, Landroid/app/Activity;

    if-eqz v5, :cond_0

    .line 78
    iget-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mContext:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    iput-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mActivity:Landroid/app/Activity;

    .line 80
    :cond_0
    iget-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "multiwindow_facade"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 83
    iget-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v5, :cond_3

    .line 84
    iget-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v4

    .line 85
    .local v4, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    new-instance v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v5, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iput-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 86
    iget-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mToken:Landroid/os/IBinder;

    .line 90
    .end local v4    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :goto_0
    iget-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v6, 0x800

    invoke-virtual {v5, v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    iput-boolean v9, p0, Lcom/android/internal/policy/SubPhoneWindow;->mIsBorder:Z

    .line 95
    :cond_1
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 96
    .local v1, "displaySize":Landroid/graphics/Point;
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 97
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 98
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e00f6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 100
    .local v2, "floatingMinimumSizeRatioPercentage":I
    new-instance v3, Landroid/graphics/Rect;

    iget v5, v1, Landroid/graphics/Point;->x:I

    mul-int/2addr v5, v2

    int-to-float v5, v5

    div-float/2addr v5, v8

    float-to-int v5, v5

    iget v6, v1, Landroid/graphics/Point;->y:I

    mul-int/2addr v6, v2

    int-to-float v6, v6

    div-float/2addr v6, v8

    float-to-int v6, v6

    invoke-direct {v3, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 102
    .local v3, "minSize":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v5, v9, :cond_4

    .line 103
    iget-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 104
    iget-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 111
    :goto_1
    return-void

    .line 88
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "displaySize":Landroid/graphics/Point;
    .end local v2    # "floatingMinimumSizeRatioPercentage":I
    .end local v3    # "minSize":Landroid/graphics/Rect;
    :cond_3
    new-instance v5, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    goto :goto_0

    .line 107
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v1    # "displaySize":Landroid/graphics/Point;
    .restart local v2    # "floatingMinimumSizeRatioPercentage":I
    .restart local v3    # "minSize":Landroid/graphics/Rect;
    :cond_4
    iget-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    iget v6, v3, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    iget v8, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 109
    iget-object v5, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    invoke-virtual {v5, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/SubPhoneWindow;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/SubPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/SubPhoneWindow;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/SubPhoneWindow;->forceHideInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/SubPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/SubPhoneWindow;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/internal/policy/SubPhoneWindow;->mIsBorder:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/SubPhoneWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/SubPhoneWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/internal/policy/SubPhoneWindow;->mIsBorder:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/SubPhoneWindow;)Lcom/android/internal/policy/multiwindow/Border;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/SubPhoneWindow;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/SubPhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/SubPhoneWindow;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/internal/policy/SubPhoneWindow;->getStackBoxBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/policy/SubPhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/SubPhoneWindow;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMinStackBoundForPort:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/SubPhoneWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/SubPhoneWindow;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMinStackBoundForLand:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/SubPhoneWindow;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/SubPhoneWindow;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/SubPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/SubPhoneWindow;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    return-object v0
.end method

.method private forceHideInputMethod()Z
    .locals 2

    .prologue
    .line 341
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 342
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v1

    .line 345
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getStackBoxBounds()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v1, p0, Lcom/android/internal/policy/SubPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private isCascadeScaledWindow()Z
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setStackFocus(Z)V
    .locals 2
    .param p1, "focus"    # Z

    .prologue
    .line 327
    iget-boolean v0, p0, Lcom/android/internal/policy/SubPhoneWindow;->mHasStackFocus:Z

    if-ne v0, p1, :cond_1

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/policy/SubPhoneWindow;->mHasStackFocus:Z

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/android/internal/policy/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    iget-boolean v1, p0, Lcom/android/internal/policy/SubPhoneWindow;->mHasStackFocus:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/multiwindow/Border;->setFocus(Z)V

    .line 333
    invoke-virtual {p0}, Lcom/android/internal/policy/SubPhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/android/internal/policy/SubPhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 335
    invoke-virtual {p0}, Lcom/android/internal/policy/SubPhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method public changeStackFocus(Z)V
    .locals 0
    .param p1, "focus"    # Z

    .prologue
    .line 319
    invoke-direct {p0, p1}, Lcom/android/internal/policy/SubPhoneWindow;->setStackFocus(Z)V

    .line 320
    return-void
.end method

.method protected generateDecor()Lcom/android/internal/policy/PhoneWindow$DecorView;
    .locals 4

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/internal/policy/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/internal/policy/SubPhoneWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 118
    .local v0, "wm":Landroid/view/WindowManager;
    if-eqz v0, :cond_0

    .line 119
    new-instance v1, Lcom/android/internal/policy/multiwindow/Border;

    iget-object v2, p0, Lcom/android/internal/policy/SubPhoneWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/android/internal/policy/multiwindow/Border;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/SubPhoneWindow;->mBorder:Lcom/android/internal/policy/multiwindow/Border;

    .line 123
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_0
    new-instance v1, Lcom/android/internal/policy/SubPhoneWindow$SubPhoneDecorView;

    iget-object v2, p0, Lcom/android/internal/policy/SubPhoneWindow;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/SubPhoneWindow$SubPhoneDecorView;-><init>(Lcom/android/internal/policy/SubPhoneWindow;Landroid/content/Context;I)V

    return-object v1
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 3
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "notifyReason"    # I

    .prologue
    .line 301
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/PhoneWindow;->onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V

    .line 302
    const/4 v0, 0x0

    .line 303
    .local v0, "doInvalidate":Z
    iget-object v1, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v1

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 304
    const/4 v0, 0x1

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/SubPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setTo(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 307
    invoke-direct {p0}, Lcom/android/internal/policy/SubPhoneWindow;->isCascadeScaledWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 308
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/SubPhoneWindow;->mIsBorder:Z

    .line 312
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/SubPhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/policy/SubPhoneWindow;->peekDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 315
    :cond_1
    return-void

    .line 310
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/SubPhoneWindow;->mIsBorder:Z

    goto :goto_0
.end method
