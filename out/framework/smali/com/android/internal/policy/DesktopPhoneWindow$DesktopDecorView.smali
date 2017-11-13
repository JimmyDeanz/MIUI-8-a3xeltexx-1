.class public Lcom/android/internal/policy/DesktopPhoneWindow$DesktopDecorView;
.super Lcom/android/internal/policy/PhoneWindow$DecorView;
.source "DesktopPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DesktopPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DesktopDecorView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/DesktopPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/DesktopPhoneWindow;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "featureId"    # I

    .prologue
    .line 221
    iput-object p1, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopDecorView;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    .line 222
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/PhoneWindow$DecorView;-><init>(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;I)V

    .line 223
    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 266
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "fromDesktop"    # Z

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopDecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 243
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopDecorView;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopPhoneWindow;->mDesktopWindowHeaderView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopDecorView;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    # getter for: Lcom/android/internal/policy/DesktopPhoneWindow;->mIsDesktopViewBlocked:Z
    invoke-static {v0}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$200(Lcom/android/internal/policy/DesktopPhoneWindow;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopDecorView;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    # invokes: Lcom/android/internal/policy/DesktopPhoneWindow;->isDesktopModeDT()Z
    invoke-static {v0}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$300(Lcom/android/internal/policy/DesktopPhoneWindow;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopDecorView;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopPhoneWindow;->mDesktopWindowHeader:Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->updateWindowHeaderViewVisibility(I)V

    .line 249
    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 227
    invoke-super {p0, p1}, Lcom/android/internal/policy/PhoneWindow$DecorView;->onWindowFocusChanged(Z)V

    .line 228
    iget-object v1, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopDecorView;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/DesktopPhoneWindow;->mDesktopWindowHeader:Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;

    if-eqz v1, :cond_0

    .line 229
    iget-object v1, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopDecorView;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/DesktopPhoneWindow;->mDesktopWindowHeader:Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v1}, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->getWindowHeaderView()Landroid/view/View;

    move-result-object v0

    .line 230
    .local v0, "header":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 231
    if-eqz p1, :cond_1

    .line 232
    iget-object v1, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopDecorView;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    # getter for: Lcom/android/internal/policy/DesktopPhoneWindow;->mWindowHeaderFocusedColor:I
    invoke-static {v1}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$000(Lcom/android/internal/policy/DesktopPhoneWindow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 238
    .end local v0    # "header":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 234
    .restart local v0    # "header":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopDecorView;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    # getter for: Lcom/android/internal/policy/DesktopPhoneWindow;->mWindowHeaderUnFocusedColor:I
    invoke-static {v1}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$100(Lcom/android/internal/policy/DesktopPhoneWindow;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
