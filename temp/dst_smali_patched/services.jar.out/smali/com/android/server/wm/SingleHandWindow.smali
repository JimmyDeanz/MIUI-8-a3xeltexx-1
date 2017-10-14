.class final Lcom/android/server/wm/SingleHandWindow;
.super Ljava/lang/Object;
.source "SingleHandWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SingleHandWindow$1;,
        Lcom/android/server/wm/SingleHandWindow$2;,
        Lcom/android/server/wm/SingleHandWindow$3;,
        Lcom/android/server/wm/SingleHandWindow$4;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final HINT_INFO_TAG:Ljava/lang/String; = "hint_info"

.field private static final INITIAL_SCALE:F = 0.75f

.field private static final MAX_SCALE:F = 1.0f

.field private static final MIN_SCALE:F = 0.3f

.field private static final SINGLE_HAND_MODE_HINT_SHOWN:Ljava/lang/String; = "single_hand_mode_hint_shown"

.field private static final TAG:Ljava/lang/String; = "SingleHandWindow"

.field private static final WINDOW_ALPHA:F = 1.0f

.field private static final WINDOW_BG_TAG:Ljava/lang/String; = "other_area"

.field private static final YES:Ljava/lang/String; = "yes"


# instance fields
.field private mActionClickListener:Landroid/view/View$OnClickListener;

.field private mAttachedToWindow:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultDisplay:Landroid/view/Display;

.field private mDefaultDisplayInfo:Landroid/view/DisplayInfo;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mHeightScale:F

.field private mImageView:Landroid/widget/ImageView;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsBlurTopWindow:Z

.field private mIsNeedRelayout:Z

.field private mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

.field private final mLeft:Z

.field private final mName:Ljava/lang/String;

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mPointDownOuter:Z

.field private mPreDisplayInfo:Landroid/view/DisplayInfo;

.field private mRelateViewbottom:Landroid/widget/RelativeLayout;

.field private mRelateViewtop:Landroid/widget/RelativeLayout;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mWidth:I

.field private mWidthScale:F

.field private mWindowContent:Landroid/view/View;

.field private final mWindowManager:Landroid/view/WindowManager;

.field private mWindowParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowVisible:Z

.field private overlay_display_window:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/server/wm/SingleHandWindow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wm/SingleHandWindow;)Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/SingleHandWindow;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/SingleHandWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mIsNeedRelayout:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/SingleHandWindow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mPointDownOuter:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/SingleHandWindow;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mService:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wm/SingleHandWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/SingleHandWindow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/SingleHandWindow;->mPointDownOuter:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/SingleHandWindow;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/SingleHandWindow;->updateDefaultDisplayInfo()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wm/SingleHandWindow;Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wm/SingleHandWindow;->showHint(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;IILcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "left"    # Z
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "service"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mPreDisplayInfo:Landroid/view/DisplayInfo;

    iput-boolean v1, p0, Lcom/android/server/wm/SingleHandWindow;->mPointDownOuter:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->overlay_display_window:Landroid/widget/TextView;

    iput-boolean v1, p0, Lcom/android/server/wm/SingleHandWindow;->mAttachedToWindow:Z

    iput-boolean v1, p0, Lcom/android/server/wm/SingleHandWindow;->mIsNeedRelayout:Z

    iput-boolean v1, p0, Lcom/android/server/wm/SingleHandWindow;->mIsBlurTopWindow:Z

    new-instance v0, Lcom/android/server/wm/SingleHandWindow$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SingleHandWindow$1;-><init>(Lcom/android/server/wm/SingleHandWindow;)V

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/wm/SingleHandWindow$2;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SingleHandWindow$2;-><init>(Lcom/android/server/wm/SingleHandWindow;)V

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v0, Lcom/android/server/wm/SingleHandWindow$3;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SingleHandWindow$3;-><init>(Lcom/android/server/wm/SingleHandWindow;)V

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/server/wm/SingleHandWindow$4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/SingleHandWindow$4;-><init>(Lcom/android/server/wm/SingleHandWindow;)V

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mActionClickListener:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/android/server/wm/SingleHandWindow;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/wm/SingleHandWindow;->mName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/wm/SingleHandWindow;->mWidth:I

    iput p5, p0, Lcom/android/server/wm/SingleHandWindow;->mHeight:I

    iput-boolean p2, p0, Lcom/android/server/wm/SingleHandWindow;->mLeft:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mHandler:Landroid/os/Handler;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowManager:Landroid/view/WindowManager;

    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object p6, p0, Lcom/android/server/wm/SingleHandWindow;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mPreDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mName:Ljava/lang/String;

    const-string v1, "blurpaper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mIsBlurTopWindow:Z

    invoke-direct {p0}, Lcom/android/server/wm/SingleHandWindow;->createWindow()V

    :cond_0
    return-void
.end method

.method private createWindow()V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x10900e6

    invoke-virtual {v4, v7, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/server/wm/SingleHandWindow;->isSingleHandModeHintShown()Z

    move-result v3

    .local v3, "hintShown":Z
    iget-boolean v7, p0, Lcom/android/server/wm/SingleHandWindow;->mAttachedToWindow:Z

    if-nez v7, :cond_0

    iput-boolean v9, p0, Lcom/android/server/wm/SingleHandWindow;->mAttachedToWindow:Z

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v7, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/wm/SingleHandWindow;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v11, p0, Lcom/android/server/wm/SingleHandWindow;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10, v2, v12, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .end local v2    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-boolean v7, p0, Lcom/android/server/wm/SingleHandWindow;->mIsBlurTopWindow:Z

    if-eqz v7, :cond_3

    sget-object v10, Lcom/android/server/wm/SingleHandAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    const v11, 0x102040a

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewtop:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewtop:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v11, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v11, v11, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int/lit8 v11, v11, 0x4

    iput v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewtop:Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/server/wm/SingleHandWindow;->cropwallpaper(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bg":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewtop:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v5, v7, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v5, "mDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewtop:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v5}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .end local v5    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    const v11, 0x102040f

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    iput-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewbottom:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewbottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v11, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v11, v11, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v11, v11, 0x3

    div-int/lit8 v11, v11, 0x4

    iput v11, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v11, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v11, v11, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int/lit8 v11, v11, 0x4

    iput v11, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-boolean v7, p0, Lcom/android/server/wm/SingleHandWindow;->mLeft:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v11, 0xb

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v11, 0xc

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewbottom:Landroid/widget/RelativeLayout;

    iget-object v11, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/server/wm/SingleHandWindow;->cropwallpaper(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bg1":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewbottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v6, "mDrawable1":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewbottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v7, v6}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v6    # "mDrawable1":Landroid/graphics/drawable/Drawable;
    :cond_2
    monitor-exit v10

    .end local v0    # "bg":Landroid/graphics/Bitmap;
    .end local v1    # "bg1":Landroid/graphics/Bitmap;
    :cond_3
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/16 v10, 0x7ea

    invoke-direct {v7, v10}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v11, 0x1000328

    or-int/2addr v10, v11

    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v13, v7, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v10, 0x33

    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, -0x3

    iput v10, v7, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-boolean v7, p0, Lcom/android/server/wm/SingleHandWindow;->mIsBlurTopWindow:Z

    if-eqz v7, :cond_4

    if-eqz v3, :cond_6

    move v7, v8

    :goto_1
    invoke-direct {p0, v7}, Lcom/android/server/wm/SingleHandWindow;->showHint(Z)V

    iput v13, p0, Lcom/android/server/wm/SingleHandWindow;->mWidthScale:F

    iput v13, p0, Lcom/android/server/wm/SingleHandWindow;->mHeightScale:F

    :cond_4
    return-void

    .restart local v0    # "bg":Landroid/graphics/Bitmap;
    :cond_5
    :try_start_1
    iget-object v7, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    check-cast v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v11, 0x9

    invoke-virtual {v7, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "bg":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v7

    monitor-exit v10

    throw v7

    :cond_6
    move v7, v9

    goto :goto_1
.end method

.method private cropwallpaper(Z)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "isTop"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/high16 v6, 0x3e800000    # 0.25f

    const/high16 v8, 0x3f400000    # 0.75f

    sget-object v3, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    sget-object v3, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .local v2, "w":I
    sget-object v3, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .local v1, "h":I
    if-eqz p1, :cond_1

    sget-object v3, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    int-to-float v4, v1

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-static {v3, v7, v7, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "crop":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .end local v0    # "crop":Landroid/graphics/Bitmap;
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/wm/SingleHandWindow;->mLeft:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    int-to-float v4, v2

    mul-float/2addr v4, v8

    float-to-int v4, v4

    int-to-float v5, v1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v6, v2

    int-to-float v7, v2

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v6, v6

    int-to-float v7, v1

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-static {v3, v4, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "crop":Landroid/graphics/Bitmap;
    goto :goto_0

    .end local v0    # "crop":Landroid/graphics/Bitmap;
    :cond_2
    sget-object v3, Lcom/android/server/wm/SingleHandAdapter;->scaleWallpaper:Landroid/graphics/Bitmap;

    int-to-float v4, v1

    mul-float/2addr v4, v6

    float-to-int v4, v4

    int-to-float v5, v2

    int-to-float v6, v2

    mul-float/2addr v6, v8

    sub-float/2addr v5, v6

    float-to-int v5, v5

    int-to-float v6, v1

    mul-float/2addr v6, v8

    float-to-int v6, v6

    invoke-static {v3, v7, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "crop":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private show(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visible"    # Z

    .prologue
    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showHint(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    const v4, 0x102040c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    const v4, 0x102040b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .local v1, "layout":Landroid/widget/FrameLayout;
    new-instance v2, Lcom/android/server/wm/SingleHandWindow$6;

    invoke-direct {v2, p0}, Lcom/android/server/wm/SingleHandWindow$6;-><init>(Lcom/android/server/wm/SingleHandWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mActionClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v2, v3

    :goto_0
    invoke-direct {p0, v4, v2}, Lcom/android/server/wm/SingleHandWindow;->show(Landroid/view/View;Z)V

    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    const v3, 0x102040d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->overlay_display_window:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->overlay_display_window:Landroid/widget/TextView;

    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/SingleHandWindow;->show(Landroid/view/View;Z)V

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    const v3, 0x102040e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/SingleHandWindow;->show(Landroid/view/View;Z)V

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string v3, "SingleMode_windowbg_hint"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    :goto_2
    iget-boolean v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowVisible:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    .end local v0    # "imageView":Landroid/widget/ImageView;
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    const/high16 v3, -0x67000000

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .restart local v0    # "imageView":Landroid/widget/ImageView;
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/wm/SingleHandWindow;->mLeft:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string v3, "SingleMode_windowbg_left"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const-string v3, "SingleMode_windowbg_right"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateDefaultDisplayInfo()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "value":Z
    iput-boolean v3, p0, Lcom/android/server/wm/SingleHandWindow;->mIsNeedRelayout:Z

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    move-result v0

    .local v0, "value":Z
    if-nez v0, :cond_0

    const-string v1, "SingleHandWindow"

    const-string v2, "Cannot show overlay display because there is no default display upon which to show it."

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mPreDisplayInfo:Landroid/view/DisplayInfo;

    if-nez v1, :cond_1

    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mPreDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/DisplayInfo;->equals(Landroid/view/DisplayInfo;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mPreDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWidthScale:F

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mPreDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/server/wm/SingleHandWindow;->mHeightScale:F

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mPreDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mPreDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    if-eq v1, v2, :cond_5

    :cond_2
    :goto_0
    iput-boolean v4, p0, Lcom/android/server/wm/SingleHandWindow;->mIsNeedRelayout:Z

    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mPreDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/DisplayInfo;->copyFrom(Landroid/view/DisplayInfo;)V

    :cond_4
    return v4

    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mPreDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-eq v1, v2, :cond_3

    goto :goto_0
.end method

.method private updateWindowParams()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWidthScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWidth:I

    iget v0, p0, Lcom/android/server/wm/SingleHandWindow;->mHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/wm/SingleHandWindow;->mHeightScale:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/wm/SingleHandWindow;->mHeight:I

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mAttachedToWindow:Z

    if-eqz v0, :cond_0

    iput-boolean v4, p0, Lcom/android/server/wm/SingleHandWindow;->mAttachedToWindow:Z

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowVisible:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/SingleHandWindow;->updateDefaultDisplayInfo()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mIsBlurTopWindow:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/SingleHandWindow$5;

    invoke-direct {v1, p0}, Lcom/android/server/wm/SingleHandWindow$5;-><init>(Lcom/android/server/wm/SingleHandWindow;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/WindowManagerService;->setSingleHandMode(I)V

    :goto_0
    iput-boolean v4, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowVisible:Z

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method isSingleHandModeHintShown()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "single_hand_mode_hint_shown"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onBlurWallpaperChanged()V
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    const v5, 0x102040a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewtop:Landroid/widget/RelativeLayout;

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/server/wm/SingleHandWindow;->cropwallpaper(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bg":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewtop:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v2, "mDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewtop:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .end local v2    # "mDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    const v5, 0x102040f

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    iput-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewbottom:Landroid/widget/RelativeLayout;

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/wm/SingleHandWindow;->cropwallpaper(Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, "bg1":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewbottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v3, "mDrawable1":Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewbottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .end local v3    # "mDrawable1":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void
.end method

.method public relayout()V
    .locals 3

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mIsBlurTopWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowVisible:Z

    invoke-direct {p0}, Lcom/android/server/wm/SingleHandWindow;->createWindow()V

    invoke-direct {p0}, Lcom/android/server/wm/SingleHandWindow;->updateWindowParams()V

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowVisible:Z

    :cond_0
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowVisible:Z

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/wm/SingleHandWindow;->mIsBlurTopWindow:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v0

    .local v0, "currentRotation":I
    iget-object v5, p0, Lcom/android/server/wm/SingleHandWindow;->mService:Lcom/android/server/wm/WindowManagerService;

    if-ne v0, v2, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Lcom/android/server/wm/WindowManagerService;->freezeOrThawRotation(I)V

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v5, p0, Lcom/android/server/wm/SingleHandWindow;->mLeft:Z

    if-eqz v5, :cond_0

    move v2, v4

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setSingleHandMode(I)V

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    .end local v0    # "currentRotation":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v5}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/android/server/wm/SingleHandWindow;->updateDefaultDisplayInfo()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void

    .restart local v0    # "currentRotation":I
    :cond_2
    move v1, v3

    goto :goto_0

    .end local v0    # "currentRotation":I
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/wm/SingleHandWindow;->mIsBlurTopWindow:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWidth:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/server/wm/SingleHandWindow;->mHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowContent:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iput-boolean v4, p0, Lcom/android/server/wm/SingleHandWindow;->mWindowVisible:Z

    :cond_5
    return-void
.end method

.method singlehandRegionContainsPoint(II)Z
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/high16 v5, 0x3e800000    # 0.25f

    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v3, v4

    .local v3, "top":I
    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .local v0, "bottom":I
    iget-boolean v4, p0, Lcom/android/server/wm/SingleHandWindow;->mLeft:Z

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    .local v1, "left":I
    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .local v2, "right":I
    :goto_0
    if-lt p2, v3, :cond_1

    if-ge p2, v0, :cond_1

    if-lt p1, v1, :cond_1

    if-ge p1, v2, :cond_1

    const/4 v4, 0x1

    return v4

    .end local v1    # "left":I
    .end local v2    # "right":I
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v4, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v1, v4

    .restart local v1    # "left":I
    iget-object v4, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .restart local v2    # "right":I
    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    return v4
.end method

.method updateConfiguration()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .local v1, "newConfiguration":Landroid/content/res/Configuration;
    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .local v0, "diff":I
    iput-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mConfiguration:Landroid/content/res/Configuration;

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/SingleHandWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "single_hand_mode"

    const-string v4, ""

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void

    :cond_0
    return-void
.end method

.method public updateLayoutParams()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewtop:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewtop:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewbottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalHeight:I

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mDefaultDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->logicalWidth:I

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-boolean v0, p0, Lcom/android/server/wm/SingleHandWindow;->mLeft:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mRelateViewbottom:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method updateLocale()V
    .locals 3

    .prologue
    const-string v0, "SingleHandWindow"

    const-string v1, "updateLocale ."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->overlay_display_window:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SingleHandWindow;->overlay_display_window:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/wm/SingleHandWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
