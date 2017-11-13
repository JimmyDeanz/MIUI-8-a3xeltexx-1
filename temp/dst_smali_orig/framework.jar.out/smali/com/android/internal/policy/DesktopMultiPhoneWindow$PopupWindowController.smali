.class public Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;
.super Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;
.source "DesktopMultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DesktopMultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PopupWindowController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;-><init>(Lcom/android/internal/policy/MultiPhoneWindow;)V

    return-void
.end method

.method private performUpdateDesktopHeaderVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DesktopMultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performUpdateDesktopHeaderVisibility(), mDesktopPopupWindowHeader is null, r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->updateIsFullScreen()V

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-boolean v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mIsFullScreen:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DesktopMultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performUpdateDesktopHeaderVisibility(), the activity isn\'t fullscreen, r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v2, v2, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->getWindowHeaderAlpha()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->setWindowHeaderAlpha(F)V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->isAttached()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeaderView:Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->addWindow(Landroid/view/View;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeaderView:Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->updatePosition(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v1, v1, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeaderView:Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->removeWindow(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method protected performUpdateVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DesktopMultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performUpdateVisibility(), add desktop menu update visibility, visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->performUpdateVisibility(Z)V

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;->performUpdateDesktopHeaderVisibility(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->performUpdateVisibility(Z)V

    invoke-direct {p0, v3}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;->performUpdateDesktopHeaderVisibility(Z)V

    goto :goto_0
.end method

.method protected updatePosition()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$PopupWindowController;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->updatePosition()V

    goto :goto_0
.end method
