.class public Landroid/webkit/WebView;
.super Landroid/widget/AbsoluteLayout;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Landroid/view/ViewDebug$HierarchyHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$1;,
        Landroid/webkit/WebView$SmartClipHandler;,
        Landroid/webkit/WebView$FindListenerDistributor;,
        Landroid/webkit/WebView$PrivateAccess;,
        Landroid/webkit/WebView$HitTestResult;,
        Landroid/webkit/WebView$PictureListener;,
        Landroid/webkit/WebView$VisualStateCallback;,
        Landroid/webkit/WebView$FindListener;,
        Landroid/webkit/WebView$WebViewTransport;
    }
.end annotation


# static fields
.field public static final DATA_REDUCTION_PROXY_SETTING_CHANGED:Ljava/lang/String; = "android.webkit.DATA_REDUCTION_PROXY_SETTING_CHANGED"

.field private static final LOGTAG:Ljava/lang/String; = "WebView"

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field private static volatile sEnforceThreadChecking:Z


# instance fields
.field private mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

.field private mProvider:Landroid/webkit/WebViewProvider;

.field private mSmartClipDataElement:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

.field private mUserSetupComplete:Z

.field private final mWebViewThread:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebView;->sEnforceThreadChecking:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/Map;Z)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/Map;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .param p6, "privateBrowsing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "II",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p5, "javaScriptInterfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v1, p0, Landroid/webkit/WebView;->mUserSetupComplete:Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mSmartClipDataElement:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid context argument"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0x12

    if-lt v0, v3, :cond_1

    move v0, v1

    :goto_0
    sput-boolean v0, Landroid/webkit/WebView;->sEnforceThreadChecking:Z

    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    invoke-direct {p0}, Landroid/webkit/WebView;->ensureProviderCreated()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p5, p6}, Landroid/webkit/WebViewProvider;->init(Ljava/util/Map;Z)V

    invoke-static {}, Landroid/webkit/CookieSyncManager;->setGetInstanceIsAllowed()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "user_setup_complete"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    iput-boolean v1, p0, Landroid/webkit/WebView;->mUserSetupComplete:Z

    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p5, "privateBrowsing"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p4, "javaScriptInterfaces":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "privateBrowsing"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILjava/util/Map;Z)V

    return-void
.end method

.method static synthetic access$1001(Landroid/webkit/WebView;ILandroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/graphics/Rect;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$101(Landroid/webkit/WebView;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;

    .prologue
    invoke-super {p0}, Landroid/view/View;->getScrollBarStyle()I

    move-result v0

    return v0
.end method

.method static synthetic access$1101(Landroid/webkit/WebView;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkit/WebView;IIIIIIIIZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I
    .param p7, "x7"    # I
    .param p8, "x8"    # I
    .param p9, "x9"    # Z

    .prologue
    invoke-virtual/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/webkit/WebView;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # I

    .prologue
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/webkit/WebView;IZ)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/webkit/WebView;)F
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;

    .prologue
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollFactor()F

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Landroid/webkit/WebView;)F
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;

    .prologue
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollFactor()F

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/webkit/WebView;II)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$1800(Landroid/webkit/WebView;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;

    .prologue
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1901(Landroid/webkit/WebView;Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # Landroid/graphics/drawable/Drawable;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    invoke-super/range {p0 .. p6}, Landroid/view/View;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method static synthetic access$2002(Landroid/webkit/WebView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/webkit/WebView;->mScrollX:I

    return p1
.end method

.method static synthetic access$201(Landroid/webkit/WebView;II)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method static synthetic access$2102(Landroid/webkit/WebView;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Landroid/webkit/WebView;->mScrollY:I

    return p1
.end method

.method static synthetic access$301(Landroid/webkit/WebView;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkit/WebView;

    .prologue
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    return-void
.end method

.method static synthetic access$401(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$501(Landroid/webkit/WebView;ILandroid/os/Bundle;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$601(Landroid/webkit/WebView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;

    .prologue
    invoke-super {p0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    return v0
.end method

.method static synthetic access$701(Landroid/webkit/WebView;IIII)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$801(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # Landroid/view/KeyEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$901(Landroid/webkit/WebView;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkit/WebView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method private checkThread()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A WebView method was called on thread \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "All WebView methods must be called on the same thread. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(Expected Looper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewThread:Landroid/os/Looper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " called on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FYI main Looper is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .local v0, "throwable":Ljava/lang/Throwable;
    const-string v1, "WebView"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/os/StrictMode;->onWebViewMethodCalledOnWrongThread(Ljava/lang/Throwable;)V

    sget-boolean v1, Landroid/webkit/WebView;->sEnforceThreadChecking:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .end local v0    # "throwable":Ljava/lang/Throwable;
    :cond_0
    return-void
.end method

.method public static clearClientCertPreferences(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "onCleared"    # Ljava/lang/Runnable;

    .prologue
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/webkit/WebViewFactoryProvider$Statics;->clearClientCertPreferences(Ljava/lang/Runnable;)V

    return-void
.end method

.method private convertClipRectToPixel(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 14
    .param p1, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v6, v11, Landroid/util/DisplayMetrics;->density:F

    .local v6, "mDeviceScaleFactor":F
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScreenRectOfView()Landroid/graphics/Rect;

    move-result-object v7

    .local v7, "screenRectOfView":Landroid/graphics/Rect;
    iget v11, p1, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    mul-float/2addr v11, v6

    iget v12, v7, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    add-float v9, v11, v12

    .local v9, "x":F
    iget v11, p1, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    mul-float/2addr v11, v6

    iget v12, v7, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    add-float v10, v11, v12

    .local v10, "y":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    mul-float v8, v11, v6

    .local v8, "w":F
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    mul-float v1, v11, v6

    .local v1, "h":F
    iget v11, v7, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    cmpg-float v11, v9, v11

    if-gez v11, :cond_0

    iget v11, p1, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    mul-float/2addr v11, v6

    add-float/2addr v8, v11

    iget v11, v7, Landroid/graphics/Rect;->left:I

    int-to-float v9, v11

    :cond_0
    add-float v11, v9, v8

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v12

    iget v13, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v11

    iget v12, v7, Landroid/graphics/Rect;->left:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    sub-float v8, v11, v9

    :cond_1
    iget v11, v7, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    cmpg-float v11, v10, v11

    if-gez v11, :cond_2

    iget v11, p1, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    mul-float/2addr v11, v6

    add-float/2addr v1, v11

    iget v11, v7, Landroid/graphics/Rect;->top:I

    int-to-float v10, v11

    :cond_2
    add-float v11, v10, v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v12

    iget v13, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v11

    iget v12, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v11, v12

    int-to-float v11, v11

    sub-float v1, v11, v10

    :cond_3
    float-to-int v4, v9

    .local v4, "ix":I
    float-to-int v5, v10

    .local v5, "iy":I
    float-to-int v3, v8

    .local v3, "iw":I
    float-to-int v2, v1

    .local v2, "ih":I
    new-instance v0, Landroid/graphics/Rect;

    add-int v11, v4, v3

    add-int v12, v5, v2

    invoke-direct {v0, v4, v5, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v0, "clipRectToPixel":Landroid/graphics/Rect;
    return-object v0
.end method

.method public static disablePlatformNotifications()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method public static enablePlatformNotifications()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method public static enableSlowWholeDocumentDraw()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider$Statics;->enableSlowWholeDocumentDraw()V

    return-void
.end method

.method private ensureProviderCreated()V
    .locals 2

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    new-instance v1, Landroid/webkit/WebView$PrivateAccess;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$PrivateAccess;-><init>(Landroid/webkit/WebView;)V

    invoke-interface {v0, p0, v1}, Landroid/webkit/WebViewFactoryProvider;->createWebView(Landroid/webkit/WebView;Landroid/webkit/WebView$PrivateAccess;)Landroid/webkit/WebViewProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    :cond_0
    return-void
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "addr"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/webkit/WebViewFactoryProvider$Statics;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static freeMemoryForTests()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider$Statics;->freeMemoryForTests()V

    return-void
.end method

.method private static declared-synchronized getFactory()Landroid/webkit/WebViewFactoryProvider;
    .locals 2

    .prologue
    const-class v0, Landroid/webkit/WebView;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/webkit/WebViewFactory;->getProvider()Landroid/webkit/WebViewFactoryProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getPluginList()Landroid/webkit/PluginList;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const-class v1, Landroid/webkit/WebView;

    monitor-enter v1

    :try_start_0
    new-instance v0, Landroid/webkit/PluginList;

    invoke-direct {v0}, Landroid/webkit/PluginList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setWebContentsDebuggingEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    invoke-static {}, Landroid/webkit/WebView;->getFactory()Landroid/webkit/WebViewFactoryProvider;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewFactoryProvider;->getStatics()Landroid/webkit/WebViewFactoryProvider$Statics;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/webkit/WebViewFactoryProvider$Statics;->setWebContentsDebuggingEnabled(Z)V

    return-void
.end method

.method private setupFindListenerIfNeeded()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    if-nez v0, :cond_0

    new-instance v0, Landroid/webkit/WebView$FindListenerDistributor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/WebView$FindListenerDistributor;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    iget-object v1, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    invoke-interface {v0, v1}, Landroid/webkit/WebViewProvider;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .locals 1
    .param p1, "steps"    # I

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->canGoBackOrForward(I)Z

    move-result v0

    return v0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public canZoomIn()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canZoomIn()Z

    move-result v0

    return v0
.end method

.method public canZoomOut()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->canZoomOut()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public clearCache(Z)V
    .locals 1
    .param p1, "includeDiskFiles"    # Z

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->clearCache(Z)V

    return-void
.end method

.method public clearFormData()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearFormData()V

    return-void
.end method

.method public clearHistory()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearHistory()V

    return-void
.end method

.method public clearMatches()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearMatches()V

    return-void
.end method

.method public clearSslPreferences()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearSslPreferences()V

    return-void
.end method

.method public clearView()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->clearView()V

    return-void
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeHorizontalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeScroll()V

    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollOffset()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScrollDelegate()Landroid/webkit/WebViewProvider$ScrollDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ScrollDelegate;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public createPrintDocumentAdapter()Landroid/print/PrintDocumentAdapter;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    const-string v1, "default"

    invoke-interface {v0, v1}, Landroid/webkit/WebViewProvider;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object v0

    return-object v0
.end method

.method public createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;
    .locals 1
    .param p1, "documentName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object v0

    return-object v0
.end method

.method public createWebMessageChannel()[Landroid/webkit/WebMessagePort;
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->createWebMessageChannel()[Landroid/webkit/WebMessagePort;

    move-result-object v0

    return-object v0
.end method

.method public debugDump()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->destroy()V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->preDispatchDraw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->documentHasImages(Landroid/os/Message;)V

    return-void
.end method

.method public dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/BufferedWriter;
    .param p2, "level"    # I

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    return-void
.end method

.method public emulateShiftHeld()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    return-void
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    const-string v0, "webview:contentHeight"

    iget-object v1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v1}, Landroid/webkit/WebViewProvider;->getContentHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "webview:contentWidth"

    iget-object v1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v1}, Landroid/webkit/WebViewProvider;->getContentWidth()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    const-string v0, "webview:scale"

    iget-object v1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v1}, Landroid/webkit/WebViewProvider;->getScale()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;F)V

    const-string v0, "webview:title"

    iget-object v1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v1}, Landroid/webkit/WebViewProvider;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "webview:url"

    iget-object v1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v1}, Landroid/webkit/WebViewProvider;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "webview:originalUrl"

    iget-object v1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v1}, Landroid/webkit/WebViewProvider;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "script"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "resultCallback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->evaluateJavaScript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public extractSmartClipData(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;)I
    .locals 11
    .param p1, "resultElement"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    .param p2, "croppedArea"    # Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;

    .prologue
    const/4 v10, 0x2

    const-string v5, "WebView"

    const-string v6, "extractSmartClipData is called"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/webkit/WebView;->mSmartClipDataElement:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    new-instance v4, Landroid/graphics/Rect;

    invoke-interface {p2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipCroppedArea;->getRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v4, "viewCropRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScreenPointOfView()Landroid/graphics/Point;

    move-result-object v2

    .local v2, "screenPosOfView":Landroid/graphics/Point;
    iget v5, v2, Landroid/graphics/Point;->x:I

    neg-int v5, v5

    iget v6, v2, Landroid/graphics/Point;->y:I

    neg-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    const/4 v5, 0x4

    :try_start_0
    new-array v3, v5, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v5, 0x2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v3, v5

    .local v3, "types":[Ljava/lang/Class;
    const/4 v5, 0x4

    new-array v1, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x1

    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x2

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x3

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    .local v1, "rectParameters":[Ljava/lang/Object;
    iget-object v5, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "extractSmartClipData"

    invoke-virtual {v5, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iget-object v6, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-virtual {v5, v6, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "setSmartClipResultHandler"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/os/Handler;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    iget-object v6, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Landroid/webkit/WebView$SmartClipHandler;

    invoke-direct {v9, p0}, Landroid/webkit/WebView$SmartClipHandler;-><init>(Landroid/webkit/WebView;)V

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v1    # "rectParameters":[Ljava/lang/Object;
    .end local v3    # "types":[Ljava/lang/Class;
    :goto_0
    return v10

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "WebView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NoSuchMethodException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "WebView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 1
    .param p1, "find"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    const-string v0, "findAll blocks UI: prefer findAllAsync"

    invoke-static {v0}, Landroid/os/StrictMode;->noteSlowCall(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->findAll(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .locals 1
    .param p1, "find"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->findAllAsync(Ljava/lang/String;)V

    return-void
.end method

.method public findHierarchyView(Ljava/lang/String;I)Landroid/view/View;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "hashCode"    # I

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public findNext(Z)V
    .locals 1
    .param p1, "forward"    # Z

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->findNext(Z)V

    return-void
.end method

.method public flingScroll(II)V
    .locals 1
    .param p1, "vx"    # I
    .param p2, "vy"    # I

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->flingScroll(II)V

    return-void
.end method

.method public freeMemory()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->freeMemory()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    const-class v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2

    .prologue
    iget-object v1, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v1}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v1

    invoke-interface {v1}, Landroid/webkit/WebViewProvider$ViewDelegate;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .local v0, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .end local v0    # "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    :cond_0
    return-object v0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getProgress()I

    move-result v0

    return v0
.end method

.method public getScale()F
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getScale()F

    move-result v0

    return v0
.end method

.method protected getScreenPointOfView()Landroid/graphics/Point;
    .locals 3

    .prologue
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .local v1, "screenPointOfView":Landroid/graphics/Point;
    const/4 v2, 0x2

    new-array v0, v2, [I

    .local v0, "screenOffsetOfView":[I
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    const/4 v2, 0x1

    aget v2, v0, v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    return-object v1
.end method

.method protected getScreenRectOfView()Landroid/graphics/Rect;
    .locals 4

    .prologue
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .local v1, "screenRectOfView":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getScreenPointOfView()Landroid/graphics/Point;

    move-result-object v0

    .local v0, "screenPointOfView":Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    return-object v1
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "webview"
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleTitleHeight()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getVisibleTitleHeight()I

    move-result v0

    return v0
.end method

.method public getWebViewProvider()Landroid/webkit/WebViewProvider;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    return-object v0
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getZoomControls()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->goBack()V

    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1
    .param p1, "steps"    # I

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->goBackOrForward(I)V

    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->goForward()V

    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->invokeZoomPicker()V

    return-void
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->isPrivateBrowsingEnabled()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "encoding"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "encoding"    # Ljava/lang/String;
    .param p5, "historyUrl"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/webkit/WebViewProvider;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "additionalHttpHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method notifyFindDialogDismissed()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->notifyFindDialogDismissed()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onAttachedToWindow()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onAttachedToWindow()V

    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "p"    # Landroid/view/View;
    .param p2, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1
    .param p1, "outAttrs"    # Landroid/view/inputmethod/EditorInfo;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDetachedFromWindow()V

    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onDetachedFromWindowInternal()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "scrollBar"    # Landroid/graphics/drawable/Drawable;
    .param p3, "l"    # I
    .param p4, "t"    # I
    .param p5, "r"    # I
    .param p6, "b"    # I

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/webkit/WebViewProvider$ViewDelegate;->onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onFinishTemporaryDetach()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onFinishTemporaryDetach()V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "oldFocus"    # Landroid/view/View;
    .param p2, "newFocus"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onInitializeAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onMeasure(II)V

    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 1
    .param p1, "scrollX"    # I
    .param p2, "scrollY"    # I
    .param p3, "clampedX"    # Z
    .param p4, "clampedY"    # Z

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onOverScrolled(IIZZ)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->onPause()V

    return-void
.end method

.method public onProvideVirtualStructure(Landroid/view/ViewStructure;)V
    .locals 1
    .param p1, "structure"    # Landroid/view/ViewStructure;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onProvideVirtualStructure(Landroid/view/ViewStructure;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->onResume()V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onScrollChanged(IIII)V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onScrollChanged(IIII)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->onSizeChanged(IIII)V

    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onStartTemporaryDetach()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->onStartTemporaryDetach()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Landroid/webkit/WebView;->mUserSetupComplete:Z

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0xd3

    if-ne v1, v2, :cond_2

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0xd5

    if-ne v1, v2, :cond_3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/16 v2, 0xd4

    if-ne v1, v2, :cond_4

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0xd6

    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onVisibilityChanged(Landroid/view/View;I)V

    invoke-direct {p0}, Landroid/webkit/WebView;->ensureProviderCreated()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onWindowFocusChanged(Z)V

    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowFocusChanged(Z)V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowVisibilityChanged(I)V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public pageDown(Z)Z
    .locals 1
    .param p1, "bottom"    # Z

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->pageDown(Z)Z

    move-result v0

    return v0
.end method

.method public pageUp(Z)Z
    .locals 1
    .param p1, "top"    # Z

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->pageUp(Z)Z

    move-result v0

    return v0
.end method

.method public pauseTimers()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->pauseTimers()V

    return-void
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public performLongClick()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->performLongClick()Z

    move-result v0

    return v0
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "postData"    # [B

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->postUrl(Ljava/lang/String;[B)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public postVisualStateCallback(JLandroid/webkit/WebView$VisualStateCallback;)V
    .locals 1
    .param p1, "requestId"    # J
    .param p3, "callback"    # Landroid/webkit/WebView$VisualStateCallback;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->insertVisualStateCallback(JLandroid/webkit/WebView$VisualStateCallback;)V

    return-void
.end method

.method public postWebMessage(Landroid/webkit/WebMessage;Landroid/net/Uri;)V
    .locals 1
    .param p1, "message"    # Landroid/webkit/WebMessage;
    .param p2, "targetOrigin"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->postMessageToMainFrame(Landroid/webkit/WebMessage;Landroid/net/Uri;)V

    return-void
.end method

.method public refreshPlugins(Z)V
    .locals 0
    .param p1, "reloadOpenPages"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->reload()V

    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->removeJavascriptInterface(Ljava/lang/String;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider$ViewDelegate;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 1
    .param p1, "hrefMsg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->requestFocusNodeHref(Landroid/os/Message;)V

    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->requestImageRef(Landroid/os/Message;)V

    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "src"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .param p1, "inState"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public resumeTimers()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->resumeTimers()V

    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;
    .param p2, "dest"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->saveWebArchive(Ljava/lang/String;)V

    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V
    .locals 1
    .param p1, "basename"    # Ljava/lang/String;
    .param p2, "autoname"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkit/WebViewProvider;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    return-void
.end method

.method public sendResultOfSmartClip(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "contentText"    # Ljava/lang/String;
    .param p2, "innerHtml"    # Ljava/lang/String;
    .param p3, "clipRect"    # Landroid/graphics/Rect;

    .prologue
    iget-object v1, p0, Landroid/webkit/WebView;->mSmartClipDataElement:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    check-cast v1, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;

    .local v1, "elementImpl":Lcom/samsung/android/smartclip/SmartClipDataElementImpl;
    if-eqz v1, :cond_0

    new-instance v2, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string v3, "url"

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    new-instance v2, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string v3, "title"

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    new-instance v2, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string v3, "plain_text"

    invoke-direct {v2, v3, p1}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    new-instance v2, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;

    const-string v3, "html"

    invoke-direct {v2, v3, p2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addTag(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipMetaTag;)V

    invoke-virtual {v1}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->newInstance()Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    move-result-object v0

    .local v0, "childToAdd":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    invoke-direct {p0, p3}, Landroid/webkit/WebView;->convertClipRectToPixel(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;->setMetaAreaRect(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v0}, Lcom/samsung/android/smartclip/SmartClipDataElementImpl;->addChild(Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    iget-object v2, p0, Landroid/webkit/WebView;->mSmartClipDataElement:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    invoke-static {p0, v2}, Lcom/samsung/android/smartclip/SmartClipMetaUtils;->setPendingExtractionResult(Landroid/view/View;Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;)Z

    .end local v0    # "childToAdd":Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebView;->mSmartClipDataElement:Lcom/samsung/android/sdk/look/smartclip/SlookSmartClipDataElement;

    return-void

    :cond_0
    const-string v2, "WebView"

    const-string v3, "SmartClip element is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setBackgroundColor(I)V

    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .param p1, "certificate"    # Landroid/net/http/SslCertificate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setCertificate(Landroid/net/http/SslCertificate;)V

    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkit/DownloadListener;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method setFindDialogFindListener(Landroid/webkit/WebView$FindListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkit/WebView$FindListener;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    invoke-direct {p0}, Landroid/webkit/WebView;->setupFindListenerIfNeeded()V

    iget-object v0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    # setter for: Landroid/webkit/WebView$FindListenerDistributor;->mFindDialogFindListener:Landroid/webkit/WebView$FindListener;
    invoke-static {v0, p1}, Landroid/webkit/WebView$FindListenerDistributor;->access$2202(Landroid/webkit/WebView$FindListenerDistributor;Landroid/webkit/WebView$FindListener;)Landroid/webkit/WebView$FindListener;

    return-void
.end method

.method public setFindListener(Landroid/webkit/WebView$FindListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkit/WebView$FindListener;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    invoke-direct {p0}, Landroid/webkit/WebView;->setupFindListenerIfNeeded()V

    iget-object v0, p0, Landroid/webkit/WebView;->mFindListener:Landroid/webkit/WebView$FindListenerDistributor;

    # setter for: Landroid/webkit/WebView$FindListenerDistributor;->mUserFindListener:Landroid/webkit/WebView$FindListener;
    invoke-static {v0, p1}, Landroid/webkit/WebView$FindListenerDistributor;->access$002(Landroid/webkit/WebView$FindListenerDistributor;Landroid/webkit/WebView$FindListener;)Landroid/webkit/WebView$FindListener;

    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider$ViewDelegate;->setFrame(IIII)Z

    move-result v0

    return v0
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0
    .param p1, "overlay"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "realm"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewProvider;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInitialScale(I)V
    .locals 1
    .param p1, "scaleInPercent"    # I

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setInitialScale(I)V

    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider$ViewDelegate;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 1
    .param p1, "setMap"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setMapTrackballToArrowKeys(Z)V

    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 1
    .param p1, "networkUp"    # Z

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setNetworkAvailable(Z)V

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setOverScrollMode(I)V

    invoke-direct {p0}, Landroid/webkit/WebView;->ensureProviderCreated()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setOverScrollMode(I)V

    return-void
.end method

.method public setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkit/WebView$PictureListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    return-void
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider$ViewDelegate;->setScrollBarStyle(I)V

    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setScrollBarStyle(I)V

    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 0
    .param p1, "overlay"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebChromeClient;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .param p1, "client"    # Landroid/webkit/WebViewClient;

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->getViewDelegate()Landroid/webkit/WebViewProvider$ViewDelegate;

    move-result-object v0

    invoke-interface {v0}, Landroid/webkit/WebViewProvider$ViewDelegate;->shouldDelayChildPressedState()Z

    move-result v0

    return v0
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "showIme"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1, p2}, Landroid/webkit/WebViewProvider;->showFindDialog(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->stopLoading()V

    return-void
.end method

.method public zoomBy(F)V
    .locals 4
    .param p1, "zoomFactor"    # F

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    float-to-double v0, p1

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "zoomFactor must be greater than 0.01."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    float-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "zoomFactor must be less than 100."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0, p1}, Landroid/webkit/WebViewProvider;->zoomBy(F)Z

    return-void
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/webkit/WebView;->checkThread()V

    iget-object v0, p0, Landroid/webkit/WebView;->mProvider:Landroid/webkit/WebViewProvider;

    invoke-interface {v0}, Landroid/webkit/WebViewProvider;->zoomOut()Z

    move-result v0

    return v0
.end method
