.class public Lcom/android/server/wm/MultiWindowTransition;
.super Ljava/lang/Object;
.source "MultiWindowTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final MW_TRANSIT_CASCADE_TO_NORMAL:I = 0x4

.field public static final MW_TRANSIT_CASCADE_TO_SPLIT:I = 0x5

.field public static final MW_TRANSIT_MAXIMIZE:I = 0x15

.field public static final MW_TRANSIT_MINIMIZE:I = 0x14

.field public static final MW_TRANSIT_MINIMIZED_TO_NORMAL:I = 0xa

.field public static final MW_TRANSIT_NONE:I = 0x0

.field public static final MW_TRANSIT_NORMAL_TO_CASCADE:I = 0x7

.field public static final MW_TRANSIT_NORMAL_TO_MINIMIZED:I = 0x9

.field public static final MW_TRANSIT_NORMAL_TO_SPLIT:I = 0x8

.field public static final MW_TRANSIT_RESIZE:I = 0x1

.field public static final MW_TRANSIT_ROTATION:I = 0xb

.field public static final MW_TRANSIT_SPLIT_FINISHED:I = 0x2

.field public static final MW_TRANSIT_SPLIT_SWITCHED:I = 0x3

.field public static final MW_TRANSIT_SPLIT_TO_CASCADE:I = 0x6

.field public static final MW_TRANSIT_UNSET:I = -0x1

.field static final NOTIFY_MULTIWINDOW_MINIMIZED_TIMEOUT_DURATION:I = 0x7d0

.field private static final STATE_FREEZING_SCREEN:I = 0x0

.field private static final STATE_INITIALIZING:I = -0x1

.field private static final STATE_TRANSITION_TIMEOUT:I = 0x3

.field private static final STATE_TRANSIT_READY:I = 0x1

.field private static final STATE_TRANSIT_RUNNING:I = 0x2

.field static final TAG:Ljava/lang/String; = "MultiWindowTransition"


# instance fields
.field mAnimRunning:Z

.field mAnimation:Landroid/view/animation/Animation;

.field final mContext:Landroid/content/Context;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

.field mHasDefferedRot:Z

.field mMaximizeAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mMinimizeAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiWindowTransitionState:I

.field mNextAppTransition:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Landroid/view/SurfaceSession;

.field mStartTime:J

.field mTargetAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;Landroid/view/SurfaceSession;Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "session"    # Landroid/view/SurfaceSession;
    .param p4, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mNextAppTransition:I

    iput v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mMultiWindowTransitionState:I

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowTransition;->mAnimRunning:Z

    iput-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mTransformation:Landroid/view/animation/Transformation;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mMaximizeAppList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mMinimizeAppList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowTransition;->mHasDefferedRot:Z

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowTransition;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/wm/MultiWindowTransition;->mSession:Landroid/view/SurfaceSession;

    iput-object p2, p0, Lcom/android/server/wm/MultiWindowTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-object p4, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/MultiWindowTransition;)Lcom/android/server/wm/WindowManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/MultiWindowTransition;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method public static convertDisplayIdToBuiltInDisplayId(I)I
    .locals 1
    .param p0, "displayId"    # I

    .prologue
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    sget v0, Landroid/view/SurfaceControl;->BUILT_IN_DISPLAY_ID_SUB:I

    goto :goto_0

    :pswitch_3
    sget v0, Landroid/view/SurfaceControl;->BUILT_IN_DISPLAY_ID_EXPANDED:I

    goto :goto_0

    :pswitch_4
    sget v0, Landroid/view/SurfaceControl;->BUILT_IN_DISPLAY_ID_HDMI:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private setDrawFinishedAnimation(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 6
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v0, 0x0

    .local v0, "a":Landroid/view/animation/Animation;
    if-eqz p1, :cond_1

    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .local v1, "stackBounds":Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mContext:Landroid/content/Context;

    const v3, 0x10a005a

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/server/wm/AppWindowAnimator;->setAnimation(Landroid/view/animation/Animation;IIZ)V

    const/4 v2, 0x1

    .end local v1    # "stackBounds":Landroid/graphics/Rect;
    :goto_0
    return v2

    .restart local v1    # "stackBounds":Landroid/graphics/Rect;
    :cond_0
    const-string v2, "MultiWindowTransition"

    const-string v3, "StackBounds is null"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "stackBounds":Landroid/graphics/Rect;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setMaximizeAnimation(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 10
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v7, 0x1

    if-eqz p1, :cond_2

    iget-object v8, p1, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v8, :cond_0

    iget-object v8, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v8, v8, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    sget-object v9, Lcom/android/server/wm/AppWindowAnimator;->sDummyAnimation:Landroid/view/animation/Animation;

    if-ne v8, v9, :cond_2

    :cond_0
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v8}, Landroid/view/WindowManagerPolicy;->getMinimizeSize()I

    move-result v3

    .local v3, "minimizedIconSize":I
    iget-object v8, p1, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v8}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .local v4, "stackBounds":Landroid/graphics/Rect;
    iget v8, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v5, v8, v9

    .local v5, "width":I
    iget v1, v4, Landroid/graphics/Rect;->top:I

    .local v1, "height":I
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowTransition;->mContext:Landroid/content/Context;

    const v9, 0x10a0057

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, "a":Landroid/view/animation/Animation;
    new-instance v8, Lcom/android/server/wm/MultiWindowTransition$2;

    invoke-direct {v8, p0, p1}, Lcom/android/server/wm/MultiWindowTransition$2;-><init>(Lcom/android/server/wm/MultiWindowTransition;Lcom/android/server/wm/AppWindowToken;)V

    invoke-virtual {v0, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v8, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v9}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v9

    invoke-virtual {v8, v0, v5, v1, v9}, Lcom/android/server/wm/AppWindowAnimator;->setAnimation(Landroid/view/animation/Animation;IIZ)V

    iget-object v8, p1, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    .local v6, "win":Lcom/android/server/wm/WindowState;
    iget-object v8, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit16 v8, v8, 0x400

    if-eqz v8, :cond_1

    iput-boolean v7, v6, Lcom/android/server/wm/WindowState;->mWillRemoveMinimizedAnimator:Z

    goto :goto_0

    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "height":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "minimizedIconSize":I
    .end local v4    # "stackBounds":Landroid/graphics/Rect;
    .end local v5    # "width":I
    .end local v6    # "win":Lcom/android/server/wm/WindowState;
    :cond_2
    const/4 v7, 0x0

    :cond_3
    return v7
.end method

.method private setMinimizeAnimation(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 10
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v7, 0x67

    iget-object v8, p1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .local v2, "m":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v8, 0x7d0

    invoke-virtual {v6, v2, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v6, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v6, v6, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition;->mContext:Landroid/content/Context;

    const v7, 0x10a0051

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, "a":Landroid/view/animation/Animation;
    new-instance v6, Lcom/android/server/wm/MultiWindowTransition$1;

    invoke-direct {v6, p0, p1}, Lcom/android/server/wm/MultiWindowTransition$1;-><init>(Lcom/android/server/wm/MultiWindowTransition;Lcom/android/server/wm/AppWindowToken;)V

    invoke-virtual {v0, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v6}, Landroid/view/WindowManagerPolicy;->getMinimizeSize()I

    move-result v3

    .local v3, "minimizedIconSize":I
    iget-object v6, p1, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .local v4, "stackBounds":Landroid/graphics/Rect;
    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .local v5, "width":I
    iget v1, v4, Landroid/graphics/Rect;->top:I

    .local v1, "height":I
    iget-object v6, p1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v7, v7, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->canSkipFirstFrame()Z

    move-result v7

    invoke-virtual {v6, v0, v5, v1, v7}, Lcom/android/server/wm/AppWindowAnimator;->setAnimation(Landroid/view/animation/Animation;IIZ)V

    const/4 v6, 0x1

    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "height":I
    .end local v3    # "minimizedIconSize":I
    .end local v4    # "stackBounds":Landroid/graphics/Rect;
    .end local v5    # "width":I
    :goto_0
    return v6

    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private setMultiWindowTransitionAnimation(I)Z
    .locals 12
    .param p1, "transit"    # I

    .prologue
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    if-nez v7, :cond_0

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_0
    const/16 v7, 0x9

    if-ne p1, v7, :cond_3

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowTransition;->mContext:Landroid/content/Context;

    const v8, 0x10a0051

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wm/MultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowTransition;->mMinimizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/AppWindowToken;

    .local v6, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    new-instance v8, Lcom/android/server/wm/MultiWindowTransition$3;

    invoke-direct {v8, p0, v6}, Lcom/android/server/wm/MultiWindowTransition$3;-><init>(Lcom/android/server/wm/MultiWindowTransition;Lcom/android/server/wm/AppWindowToken;)V

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v7, v6, Lcom/android/server/wm/AppWindowToken;->appMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .local v3, "stackBounds":Landroid/graphics/Rect;
    iget v7, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    add-int v4, v7, v8

    .local v4, "targetX":I
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .local v5, "targetY":I
    const/4 v1, 0x0

    .local v1, "animWidth":I
    const/4 v0, 0x0

    .local v0, "animHeight":I
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    iget v7, v7, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    packed-switch v7, :pswitch_data_0

    :goto_2
    sget-boolean v7, Lcom/android/server/wm/WindowManagerService;->SAFE_DEBUG:Z

    if-eqz v7, :cond_1

    const-string v7, "MultiWindowTransition"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MW_TRANSIT_NORMAL_TO_MINIMIZED, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\nstackBounds="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", rot="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    iget v9, v9, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", target=("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "), animWidth="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", animHeight="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v1, v0, v1, v0}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto/16 :goto_1

    :pswitch_0
    move v1, v4

    move v0, v5

    goto :goto_2

    :pswitch_1
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    iget-object v7, v7, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v1, v7, v5

    move v0, v4

    goto :goto_2

    :pswitch_2
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    iget-object v7, v7, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    sub-int v1, v7, v4

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    iget-object v7, v7, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int v0, v7, v5

    goto/16 :goto_2

    :pswitch_3
    move v1, v5

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    iget-object v7, v7, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int v0, v7, v4

    goto/16 :goto_2

    .end local v0    # "animHeight":I
    .end local v1    # "animWidth":I
    .end local v3    # "stackBounds":Landroid/graphics/Rect;
    .end local v4    # "targetX":I
    .end local v5    # "targetY":I
    .end local v6    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowTransition;->mMinimizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .end local v2    # "i$":Ljava/util/Iterator;
    :goto_3
    const/4 v7, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowTransition;->mContext:Landroid/content/Context;

    const v8, 0x10a005b

    invoke-static {v7, v8}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wm/MultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    iget-object v8, v8, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v8

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    iget-object v9, v9, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    iget-object v10, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    iget-object v10, v10, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    iget-object v11, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    iget-object v11, v11, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public addMultiWindowTransitionTarget(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearMultiWindowTransitionAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_0

    const-string v2, "MultiWindowTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear multi window transition animation : mAnimation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mFreezeSurface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "here"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v3, "MultiWindowTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "target remain >>> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "null"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iput-boolean v6, v1, Lcom/android/server/wm/AppWindowToken;->mWaitingForMaximizeAnim:Z

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    goto :goto_0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mMaximizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .restart local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    iput-boolean v6, v1, Lcom/android/server/wm/AppWindowToken;->mWaitingForMaximizeAnim:Z

    goto :goto_2

    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mMaximizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mMinimizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .restart local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x67

    iget-object v4, v1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    goto :goto_3

    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mMinimizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2}, Landroid/view/animation/Animation;->cancel()V

    iput-object v8, p0, Lcom/android/server/wm/MultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->kill()V

    iput-object v8, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    iget-boolean v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mHasDefferedRot:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->resumeRotationLocked()V

    iput-boolean v6, p0, Lcom/android/server/wm/MultiWindowTransition;->mHasDefferedRot:Z

    :cond_6
    iput-boolean v6, p0, Lcom/android/server/wm/MultiWindowTransition;->mAnimRunning:Z

    iput v7, p0, Lcom/android/server/wm/MultiWindowTransition;->mNextAppTransition:I

    iput v7, p0, Lcom/android/server/wm/MultiWindowTransition;->mMultiWindowTransitionState:I

    return-void
.end method

.method public createFreezeSurface(Z)V
    .locals 1
    .param p1, "needBGSurface"    # Z

    .prologue
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiWindowTransition;->createFreezeSurface(ZI)V

    return-void
.end method

.method public createFreezeSurface(ZI)V
    .locals 19
    .param p1, "needBGSurface"    # Z
    .param p2, "maxLayer"    # I

    .prologue
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_0

    const-string v2, "MultiWindowTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create a freeze surface for a multi window transition animation (mFreezeSurface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "here"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v15

    .local v15, "displayInfo":Landroid/view/DisplayInfo;
    iget v2, v15, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    iget v2, v15, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    :cond_1
    iget v6, v15, Landroid/view/DisplayInfo;->logicalHeight:I

    .local v6, "width":I
    iget v7, v15, Landroid/view/DisplayInfo;->logicalWidth:I

    .local v7, "height":I
    :goto_0
    const/16 v18, 0x0

    .local v18, "screenShotMaxLayer":I
    if-lez p2, :cond_6

    add-int/lit8 v18, p2, 0x1

    :goto_1
    :try_start_0
    new-instance v2, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/MultiWindowTransition;->mSession:Landroid/view/SurfaceSession;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v8, v15, Landroid/view/DisplayInfo;->layerStack:I

    iget v9, v15, Landroid/view/DisplayInfo;->rotation:I

    const/4 v11, 0x0

    add-int/lit8 v12, v18, -0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/wm/MultiWindowTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v13

    move/from16 v10, p1

    invoke-direct/range {v2 .. v13}, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;-><init>(Landroid/view/SurfaceSession;IIIIIIZIII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/MultiWindowTransition;->mNextAppTransition:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->pauseRotationLocked()V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/MultiWindowTransition;->mHasDefferedRot:Z

    :cond_2
    if-lez p2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->setLayerForSurface(I)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->show()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v14

    .local v14, "displayId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x65

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    .local v17, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v3, 0x65

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v4, 0x7d0

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v4, v5}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v6    # "width":I
    .end local v7    # "height":I
    .end local v14    # "displayId":I
    .end local v15    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v17    # "msg":Landroid/os/Message;
    .end local v18    # "screenShotMaxLayer":I
    :cond_4
    return-void

    .restart local v15    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_5
    iget v6, v15, Landroid/view/DisplayInfo;->logicalWidth:I

    .restart local v6    # "width":I
    iget v7, v15, Landroid/view/DisplayInfo;->logicalHeight:I

    .restart local v7    # "height":I
    goto/16 :goto_0

    .restart local v18    # "screenShotMaxLayer":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    const/16 v3, 0x8b6

    invoke-interface {v2, v3}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v2

    mul-int/lit16 v2, v2, 0x2710

    add-int/lit16 v0, v2, 0x3e8

    move/from16 v18, v0

    goto/16 :goto_1

    :catch_0
    move-exception v16

    .local v16, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v2, "MultiWindowTransition"

    const-string v3, "Unable to allocate screen freeze surface"

    move-object/from16 v0, v16

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2
.end method

.method public executeMultiWindowTransition()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiWindowTransition"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Execute multi window transition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (mNextAppTransition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mNextAppTransition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowTransition;->isTransitionSet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowTransition;->setTransitReady()V

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    :cond_1
    return-void
.end method

.method getMultiWindowTransition()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mNextAppTransition:I

    return v0
.end method

.method goodToGo()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mNextAppTransition:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mMultiWindowTransitionState:I

    return-void
.end method

.method public handleMultiWindowTransitionReady()I
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v1, 0x0

    .local v1, "changes":I
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "NN":I
    const/4 v2, 0x1

    .local v2, "goodToGo":Z
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v6, :cond_0

    const-string v8, "MultiWindowTransition"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Checking "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " multi window transition target apps (frozen="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    if-eqz v6, :cond_3

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " timeout="

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowTransition;->isTimeout()Z

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ")..."

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowTransition;->isTimeout()Z

    move-result v6

    if-nez v6, :cond_4

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_4

    if-eqz v2, :cond_4

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    .local v5, "wtoken":Lcom/android/server/wm/AppWindowToken;
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v6, :cond_1

    const-string v6, "MultiWindowTransition"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Check multi window transition target apps="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": allDrawn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " startingDisplayed="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v5, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " startingMoved="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, v5, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v6, :cond_2

    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-nez v6, :cond_2

    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v6, :cond_2

    const/4 v2, 0x0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    .end local v5    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_4
    if-eqz v2, :cond_7

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v6, :cond_5

    const-string v6, "MultiWindowTransition"

    const-string v8, "**** GOOD TO GO"

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowTransition;->getMultiWindowTransition()I

    move-result v4

    .local v4, "transit":I
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowTransition;->goodToGo()V

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v8, 0x65

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    const/4 v6, -0x1

    if-eq v4, v6, :cond_8

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/server/wm/WindowManagerService;->okToDisplay(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v6, :cond_6

    const-string v6, "MultiWindowTransition"

    const-string v8, "set an animation for multi window transition"

    invoke-static {v6, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct {p0, v4}, Lcom/android/server/wm/MultiWindowTransition;->setMultiWindowTransitionAnimation(I)Z

    :goto_2
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    or-int/lit8 v1, v1, 0x3

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    iput-boolean v7, v6, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .end local v4    # "transit":I
    :cond_7
    return v1

    .restart local v4    # "transit":I
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowTransition;->clearMultiWindowTransitionAnimation()V

    goto :goto_2
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFreezingScreen()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mMultiWindowTransitionState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTimeout()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mMultiWindowTransitionState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTranitRunning()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mMultiWindowTransitionState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitReady()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wm/MultiWindowTransition;->mMultiWindowTransitionState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/MultiWindowTransition;->mMultiWindowTransitionState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionNone()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mNextAppTransition:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTransitionSet()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mNextAppTransition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method prepare()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowTransition;->isTranitRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mMultiWindowTransitionState:I

    :cond_0
    return-void
.end method

.method setApplicationDrawn(Lcom/android/server/wm/AppWindowToken;)V
    .locals 6
    .param p1, "wtoken"    # Lcom/android/server/wm/AppWindowToken;

    .prologue
    const/4 v5, 0x2

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v2, :cond_0

    const-string v2, "MultiWindowTransition"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setApplicationDrawn (transit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/MultiWindowTransition;->mNextAppTransition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "MultiWindowTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "target remain >>> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "no more target.."

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mNextAppTransition:I

    const/16 v3, 0x15

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mNextAppTransition:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_5

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mMaximizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mMaximizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .local v1, "token":Lcom/android/server/wm/AppWindowToken;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/AppWindowToken;->mWaitingForMaximizeAnim:Z

    invoke-direct {p0, v1}, Lcom/android/server/wm/MultiWindowTransition;->setMaximizeAnimation(Lcom/android/server/wm/AppWindowToken;)Z

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    goto :goto_0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mMaximizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mNextAppTransition:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_6

    iget v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mNextAppTransition:I

    if-ne v2, v5, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->hideBG()V

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowTransition;->executeMultiWindowTransition()V

    goto :goto_2

    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mNextAppTransition:I

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->hideBG()V

    goto :goto_2
.end method

.method public setMultiWindowTransition(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 12
    .param p2, "transit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "wtokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_1
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    sget-boolean v9, Lcom/android/server/wm/WindowManagerService;->DEBUG_APP_TRANSITIONS:Z

    if-eqz v9, :cond_2

    const-string v9, "MultiWindowTransition"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "set multi window transition : transit="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "MultiWindowTransition"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "targets >>> "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "null"

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "targetTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    packed-switch p2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iput p2, p0, Lcom/android/server/wm/MultiWindowTransition;->mNextAppTransition:I

    goto :goto_0

    .end local v6    # "targetTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    :cond_3
    move-object v9, p1

    goto :goto_1

    .restart local v6    # "targetTokens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/AppWindowToken;>;"
    :pswitch_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .local v8, "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-direct {p0, v8}, Lcom/android/server/wm/MultiWindowTransition;->setMinimizeAnimation(Lcom/android/server/wm/AppWindowToken;)Z

    goto :goto_2

    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_4
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    :pswitch_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .restart local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p0, v8}, Lcom/android/server/wm/MultiWindowTransition;->addMultiWindowTransitionTarget(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_6
    iput p2, p0, Lcom/android/server/wm/MultiWindowTransition;->mNextAppTransition:I

    const/16 v9, 0x15

    if-eq p2, v9, :cond_7

    const/16 v9, 0xa

    if-ne p2, v9, :cond_8

    :cond_7
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowTransition;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .local v0, "displayId":I
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v10, 0x65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .local v5, "msg":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v10, 0x65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/WindowManagerService$H;->removeMessages(ILjava/lang/Object;)V

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v9, v5, v10, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v0    # "displayId":I
    .end local v5    # "msg":Landroid/os/Message;
    :cond_8
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/server/wm/MultiWindowTransition;->createFreezeSurface(Z)V

    goto/16 :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    :pswitch_4
    const/4 v4, 0x0

    .local v4, "maxLayer":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/AppWindowToken;

    .restart local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p0, v8}, Lcom/android/server/wm/MultiWindowTransition;->addMultiWindowTransitionTarget(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowTransition;->mMinimizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const/16 v10, 0x67

    iget-object v11, v8, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v9, v10, v11}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .local v3, "m":Landroid/os/Message;
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowTransition;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v9, v9, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    const-wide/16 v10, 0x7d0

    invoke-virtual {v9, v3, v10, v11}, Lcom/android/server/wm/WindowManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v3    # "m":Landroid/os/Message;
    :cond_a
    iget-object v9, v8, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/WindowState;

    .local v7, "win":Lcom/android/server/wm/WindowState;
    iget v9, v7, Lcom/android/server/wm/WindowState;->mLayer:I

    if-gt v4, v9, :cond_b

    iget v4, v7, Lcom/android/server/wm/WindowState;->mLayer:I

    goto :goto_4

    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v7    # "win":Lcom/android/server/wm/WindowState;
    .end local v8    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_c
    iput p2, p0, Lcom/android/server/wm/MultiWindowTransition;->mNextAppTransition:I

    const/4 v9, 0x1

    invoke-virtual {p0, v9, v4}, Lcom/android/server/wm/MultiWindowTransition;->createFreezeSurface(ZI)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setTimeout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x3

    iput v3, p0, Lcom/android/server/wm/MultiWindowTransition;->mMultiWindowTransitionState:I

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    .local v2, "token":Lcom/android/server/wm/AppWindowToken;
    iput-boolean v4, v2, Lcom/android/server/wm/AppWindowToken;->mWaitingForMaximizeAnim:Z

    goto :goto_0

    .end local v2    # "token":Lcom/android/server/wm/AppWindowToken;
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowTransition;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowTransition;->mMaximizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    .local v1, "mtoken":Lcom/android/server/wm/AppWindowToken;
    iput-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->mWaitingForMaximizeAnim:Z

    goto :goto_1

    .end local v1    # "mtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowTransition;->mMaximizeAppList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method setTransitReady()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/MultiWindowTransition;->mMultiWindowTransitionState:I

    return-void
.end method

.method public stepAnimationLocked(J)Z
    .locals 5
    .param p1, "now"    # J

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/MultiWindowTransition;->mAnimRunning:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_3

    const-string v1, "MultiWindowTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting multi window transition animation @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/MultiWindowTransition;->mAnimRunning:Z

    iput-wide p1, p0, Lcom/android/server/wm/MultiWindowTransition;->mStartTime:J

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    .local v0, "moreAnim":Z
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowTransition;->mFreezeSurface:Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowTransition;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->setAnimationTransform(Landroid/view/animation/Transformation;)V

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_ANIM:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    const-string v1, "MultiWindowTransition"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Multi window transition animation done @"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "ScreenFreezeSurface"

    return-object v0
.end method
