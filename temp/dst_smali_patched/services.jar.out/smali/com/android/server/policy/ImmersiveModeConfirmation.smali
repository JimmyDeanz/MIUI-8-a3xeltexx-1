.class public Lcom/android/server/policy/ImmersiveModeConfirmation;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/ImmersiveModeConfirmation$H;,
        Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;
    }
.end annotation


# static fields
.field private static final CONFIRMED:Ljava/lang/String; = "confirmed"

.field private static final DEBUG:Z = false

.field private static final DEBUG_SHOW_EVERY_TIME:Z = false

.field private static final TAG:Ljava/lang/String; = "ImmersiveModeConfirmation"


# instance fields
.field private mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

.field private final mConfirm:Ljava/lang/Runnable;

.field private mConfirmed:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

.field private final mPanicThresholdMs:J

.field private mPanicTime:J

.field private final mShowDelayMs:J

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/ImmersiveModeConfirmation$1;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation;)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation;Lcom/android/server/policy/ImmersiveModeConfirmation$1;)V

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getNavBarExitDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mShowDelayMs:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e008b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->handleHide()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->handleShow()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/policy/ImmersiveModeConfirmation;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/policy/ImmersiveModeConfirmation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/policy/ImmersiveModeConfirmation;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/policy/ImmersiveModeConfirmation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/ImmersiveModeConfirmation;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->saveSetting()V

    return-void
.end method

.method private getNavBarExitDuration()J
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    const v2, 0x10a0021

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, "exit":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method private handleHide()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    :cond_0
    return-void
.end method

.method private handleShow()V
    .locals 4

    .prologue
    new-instance v1, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;-><init>(Lcom/android/server/policy/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    const/16 v2, 0x300

    invoke-virtual {v1, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/android/server/policy/ImmersiveModeConfirmation;->getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private saveSetting()V
    .locals 5

    .prologue
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    if-eqz v2, :cond_0

    const-string v1, "confirmed"

    .local v1, "value":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "immersive_mode_confirmations"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "value":Ljava/lang/String;
    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "ImmersiveModeConfirmation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error saving confirmations, mConfirmed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public confirmCurrentPrompt()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirm:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    .prologue
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7de

    const v4, 0x1000108

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v1, "ImmersiveModeConfirmation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const v1, 0x10302ef

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    return-object v0
.end method

.method public immersiveModeChanged(Ljava/lang/String;ZZ)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isImmersiveMode"    # Z
    .param p3, "userSetupComplete"    # Z

    .prologue
    const/4 v4, 0x1

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    invoke-virtual {v1, v4}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->removeMessages(I)V

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/android/server/policy/PolicyControl;->disableImmersiveConfirmation(Ljava/lang/String;)Z

    move-result v0

    .local v0, "disabled":Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    if-nez v1, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    iget-wide v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mShowDelayMs:J

    invoke-virtual {v1, v4, v2, v3}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->sendEmptyMessageDelayed(IJ)Z

    .end local v0    # "disabled":Z
    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mHandler:Lcom/android/server/policy/ImmersiveModeConfirmation$H;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/policy/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public loadSetting(I)V
    .locals 5
    .param p1, "currentUserId"    # I

    .prologue
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z

    iput p1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mCurrentUserId:I

    const/4 v1, 0x0

    .local v1, "value":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "immersive_mode_confirmations"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "confirmed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mConfirmed:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "t":Ljava/lang/Throwable;
    const-string v2, "ImmersiveModeConfirmation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading confirmations, value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPowerKeyDown(ZJZ)Z
    .locals 6
    .param p1, "isScreenOn"    # Z
    .param p2, "time"    # J
    .param p4, "inImmersiveMode"    # Z

    .prologue
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-wide v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mPanicTime:J

    sub-long v2, p2, v2

    iget-wide v4, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/server/policy/ImmersiveModeConfirmation$ClingWindowView;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    if-eqz p4, :cond_2

    iput-wide p2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mPanicTime:J

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/policy/ImmersiveModeConfirmation;->mPanicTime:J

    goto :goto_0
.end method
