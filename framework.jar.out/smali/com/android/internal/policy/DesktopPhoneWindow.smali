.class public Lcom/android/internal/policy/DesktopPhoneWindow;
.super Lcom/android/internal/policy/PhoneWindow;
.source "DesktopPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;,
        Lcom/android/internal/policy/DesktopPhoneWindow$DesktopDecorView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final STATE_MINIMIZED_WINDOW:I = 0x2

.field private static final STATE_POPUP_WINDOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DesktopPhoneWindow"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field private mDesktopViewHeight:I

.field mDesktopWindowHeader:Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;

.field mDesktopWindowHeaderView:Landroid/view/View;

.field private mIsDesktopViewBlocked:Z

.field private mIsMultiWindowBlocked:Z

.field private final mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

.field private mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

.field private mScreenContext:Landroid/content/Context;

.field private mToken:Landroid/os/IBinder;

.field private mUsderId:I

.field private mWindowHeaderFocusedColor:I

.field private mWindowHeaderUnFocusedColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 56
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/internal/policy/DesktopPhoneWindow;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mDesktopViewHeight:I

    .line 76
    iput-boolean v1, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mIsDesktopViewBlocked:Z

    .line 77
    iput-boolean v1, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mIsMultiWindowBlocked:Z

    .line 82
    iput-object p1, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mUsderId:I

    .line 84
    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "multiwindow_facade"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iput-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 86
    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mActivity:Landroid/app/Activity;

    .line 88
    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mToken:Landroid/os/IBinder;

    .line 92
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/DesktopPhoneWindow;->updateDesktopViewBlocked(Landroid/content/Context;)V

    .line 94
    invoke-direct {p0}, Lcom/android/internal/policy/DesktopPhoneWindow;->getProperContextDT()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105032c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mDesktopViewHeight:I

    .line 96
    sget-boolean v0, Lcom/android/internal/policy/DesktopPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DesktopPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DesktopPhoneWindow() Constructor, r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_0
    sget-boolean v0, Lcom/android/internal/policy/DesktopPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "DesktopPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DesktopPhoneWindow() Constructor, Callers="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_1
    return-void

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mToken:Landroid/os/IBinder;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/DesktopPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopPhoneWindow;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mWindowHeaderFocusedColor:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/DesktopPhoneWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mWindowHeaderFocusedColor:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/DesktopPhoneWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopPhoneWindow;

    .prologue
    .line 54
    iget v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mWindowHeaderUnFocusedColor:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/DesktopPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopPhoneWindow;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/policy/DesktopPhoneWindow;->hideInputMethod()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/DesktopPhoneWindow;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mWindowHeaderUnFocusedColor:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/DesktopPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopPhoneWindow;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mIsDesktopViewBlocked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/DesktopPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopPhoneWindow;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/policy/DesktopPhoneWindow;->isDesktopModeDT()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/DesktopPhoneWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopPhoneWindow;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/internal/policy/DesktopPhoneWindow;->getProperContextDT()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/android/internal/policy/DesktopPhoneWindow;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/DesktopPhoneWindow;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopPhoneWindow;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/DesktopPhoneWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopPhoneWindow;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mIsMultiWindowBlocked:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/DesktopPhoneWindow;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopPhoneWindow;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/policy/DesktopPhoneWindow;->requestMultiWindowState(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/DesktopPhoneWindow;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/DesktopPhoneWindow;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method private getMultiWindowStyleDT()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 2

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    .line 172
    .local v0, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    new-instance v1, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {v1, v0}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    iput-object v1, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .line 174
    .end local v0    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    return-object v1
.end method

.method private getProperContextDT()Landroid/content/Context;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private hideInputMethod()Z
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 132
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    move-result v1

    .line 135
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isDesktopModeDT()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method private requestMultiWindowState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x0

    .line 198
    sget-boolean v1, Lcom/android/internal/policy/DesktopPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "DesktopPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestMultiWindowState(), state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mIsMultiWindowBlocked:Z

    if-eqz v1, :cond_1

    .line 201
    const-string v1, "DesktopPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignore requestState! multiwindow blocked, state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    return-void

    .line 205
    :cond_1
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct {p0}, Lcom/android/internal/policy/DesktopPhoneWindow;->getMultiWindowStyleDT()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>(Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    .line 206
    .local v0, "requestStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 208
    :pswitch_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(IZ)V

    .line 209
    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 210
    const/16 v1, 0x10

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 211
    const/16 v1, 0x800

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 212
    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 213
    iget-object v1, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;

    iget-object v2, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    goto :goto_0

    .line 206
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private setupDesktopWindowHeader()V
    .locals 4

    .prologue
    .line 139
    new-instance v2, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;-><init>(Lcom/android/internal/policy/DesktopPhoneWindow;)V

    iput-object v2, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mDesktopWindowHeader:Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;

    .line 140
    iget-object v2, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mDesktopWindowHeader:Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v2}, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->generateWindowHeaderView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mDesktopWindowHeaderView:Landroid/view/View;

    .line 141
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 144
    .local v1, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v2, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mDesktopWindowHeader:Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->updateWindowHeaderViewVisibility(I)V

    .line 146
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .line 147
    .local v0, "decorView":Lcom/android/internal/policy/PhoneWindow$DecorView;
    iget-object v2, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mDesktopWindowHeaderView:Landroid/view/View;

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v2, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mDesktopWindowHeaderView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 149
    return-void
.end method

.method private updateDesktopViewBlocked(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mIsDesktopViewBlocked:Z

    .line 114
    sget-boolean v1, Lcom/android/internal/policy/DesktopPhoneWindow;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DesktopPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DesktopView is blocked, pacakge="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1
    return-void
.end method


# virtual methods
.method protected generateDecor()Lcom/android/internal/policy/PhoneWindow$DecorView;
    .locals 3

    .prologue
    .line 120
    new-instance v0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopDecorView;

    iget-object v1, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopDecorView;-><init>(Lcom/android/internal/policy/DesktopPhoneWindow;Landroid/content/Context;I)V

    return-object v0
.end method

.method protected generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;
    .locals 1
    .param p1, "decor"    # Lcom/android/internal/policy/PhoneWindow$DecorView;

    .prologue
    .line 125
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow;->generateLayout(Lcom/android/internal/policy/PhoneWindow$DecorView;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 126
    .local v0, "ret":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/android/internal/policy/DesktopPhoneWindow;->setupDesktopWindowHeader()V

    .line 127
    return-object v0
.end method

.method public onMultiWindowStyleChanged(Lcom/samsung/android/multiwindow/MultiWindowStyle;I)V
    .locals 2
    .param p1, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .param p2, "notifyReason"    # I

    .prologue
    .line 153
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mDesktopWindowHeader:Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->updateWindowHeaderViewVisibility(I)V

    .line 158
    :cond_0
    return-void
.end method

.method public setMultiWindowBlocked(Z)V
    .locals 3
    .param p1, "blocked"    # Z

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mIsMultiWindowBlocked:Z

    if-eq v0, p1, :cond_1

    .line 104
    sget-boolean v0, Lcom/android/internal/policy/DesktopPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v1, "DesktopPhoneWindow"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiWindow, "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    const-string v0, "Not-Support"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", r="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/policy/DesktopPhoneWindow;->mIsMultiWindowBlocked:Z

    .line 107
    :cond_1
    return-void

    .line 104
    :cond_2
    const-string v0, "Support"

    goto :goto_0
.end method
