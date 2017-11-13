.class Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;
.super Ljava/lang/Object;
.source "DesktopPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DesktopPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DesktopWindowHeader"
.end annotation


# instance fields
.field protected mBtnExit:Landroid/view/View;

.field protected mBtnMinimize:Landroid/view/View;

.field protected mBtnPopup:Landroid/view/View;

.field mIsFullScreen:Z

.field protected mMenuContainer:Landroid/view/View;

.field protected mWindowHeaderView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/internal/policy/DesktopPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/DesktopPhoneWindow;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mIsFullScreen:Z

    # invokes: Lcom/android/internal/policy/DesktopPhoneWindow;->getProperContextDT()Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$400(Lcom/android/internal/policy/DesktopPhoneWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10601ad

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    # setter for: Lcom/android/internal/policy/DesktopPhoneWindow;->mWindowHeaderFocusedColor:I
    invoke-static {p1, v0}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$002(Lcom/android/internal/policy/DesktopPhoneWindow;I)I

    # invokes: Lcom/android/internal/policy/DesktopPhoneWindow;->getProperContextDT()Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$400(Lcom/android/internal/policy/DesktopPhoneWindow;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10601ae

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    # setter for: Lcom/android/internal/policy/DesktopPhoneWindow;->mWindowHeaderUnFocusedColor:I
    invoke-static {p1, v0}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$102(Lcom/android/internal/policy/DesktopPhoneWindow;I)I

    # getter for: Lcom/android/internal/policy/DesktopPhoneWindow;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DesktopPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DesktopPhoneWindow::DesktopWindowHeader() Constructor, r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/android/internal/policy/DesktopPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {p1}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$600(Lcom/android/internal/policy/DesktopPhoneWindow;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    # getter for: Lcom/android/internal/policy/DesktopPhoneWindow;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$500()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "DesktopPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DesktopPhoneWindow::DesktopWindowHeader() , Callers="

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

    :cond_1
    return-void
.end method

.method private getViewName(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    if-nez p1, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "Unknown"

    goto :goto_0

    :pswitch_1
    const-string v0, "mBtnMinimize"

    goto :goto_0

    :pswitch_2
    const-string v0, "mBtnPoup"

    goto :goto_0

    :pswitch_3
    const-string v0, "mBtnExit"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102039f
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public generateWindowHeaderView()Landroid/view/View;
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    # invokes: Lcom/android/internal/policy/DesktopPhoneWindow;->getProperContextDT()Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$400(Lcom/android/internal/policy/DesktopPhoneWindow;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x103012b

    invoke-direct {v1, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x1090050

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    # getter for: Lcom/android/internal/policy/DesktopPhoneWindow;->mWindowHeaderFocusedColor:I
    invoke-static {v4}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$000(Lcom/android/internal/policy/DesktopPhoneWindow;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    const v4, 0x102039e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mMenuContainer:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mMenuContainer:Landroid/view/View;

    const v4, 0x102039f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mBtnMinimize:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mMenuContainer:Landroid/view/View;

    const v4, 0x10203a1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mBtnPopup:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mMenuContainer:Landroid/view/View;

    const v4, 0x10203a2

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mBtnExit:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mBtnPopup:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mBtnExit:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mBtnPopup:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mBtnExit:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mMenuContainer:Landroid/view/View;

    const v4, 0x10203a0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .local v0, "btnMaximize":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    # getter for: Lcom/android/internal/policy/DesktopPhoneWindow;->mIsMultiWindowBlocked:Z
    invoke-static {v3}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$700(Lcom/android/internal/policy/DesktopPhoneWindow;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mBtnPopup:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    return-object v3
.end method

.method public getWindowHeaderView()Landroid/view/View;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    # getter for: Lcom/android/internal/policy/DesktopPhoneWindow;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$500()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "DesktopPhoneWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick(), v="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->getViewName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", r="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    # getter for: Lcom/android/internal/policy/DesktopPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v6}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$600(Lcom/android/internal/policy/DesktopPhoneWindow;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    # getter for: Lcom/android/internal/policy/DesktopPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$600(Lcom/android/internal/policy/DesktopPhoneWindow;)Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    # getter for: Lcom/android/internal/policy/DesktopPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$600(Lcom/android/internal/policy/DesktopPhoneWindow;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mBtnPopup:Landroid/view/View;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    # invokes: Lcom/android/internal/policy/DesktopPhoneWindow;->requestMultiWindowState(I)V
    invoke-static {v4, v7}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$800(Lcom/android/internal/policy/DesktopPhoneWindow;I)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mBtnExit:Landroid/view/View;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .local v0, "a":Landroid/app/Activity;
    iget-object v4, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    # getter for: Lcom/android/internal/policy/DesktopPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$600(Lcom/android/internal/policy/DesktopPhoneWindow;)Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    # getter for: Lcom/android/internal/policy/DesktopPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$600(Lcom/android/internal/policy/DesktopPhoneWindow;)Landroid/app/Activity;

    move-result-object v0

    :cond_5
    :goto_1
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    # invokes: Lcom/android/internal/policy/DesktopPhoneWindow;->hideInputMethod()Z
    invoke-static {v4}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$1000(Lcom/android/internal/policy/DesktopPhoneWindow;)Z

    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mBtnExit:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mBtnExit:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow;->dismiss()V

    :cond_7
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->finishAffinity()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .end local v2    # "e":Ljava/lang/IllegalStateException;
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_8
    iget-object v4, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    # getter for: Lcom/android/internal/policy/DesktopPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v4}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$900(Lcom/android/internal/policy/DesktopPhoneWindow;)Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .local v1, "am":Landroid/app/ActivityThread;
    if-eqz v1, :cond_5

    iget-object v4, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    # getter for: Lcom/android/internal/policy/DesktopPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v4}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$900(Lcom/android/internal/policy/DesktopPhoneWindow;)Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/ActivityThread;->getActivity(Landroid/os/IBinder;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_1
.end method

.method public updateWindowHeaderViewVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/DesktopPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/DesktopPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/DesktopPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/DesktopPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    invoke-virtual {v0}, Lcom/android/internal/policy/DesktopPhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    and-int/lit16 v0, v0, 0x100

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mIsFullScreen:Z

    iget-boolean v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mIsFullScreen:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_1

    # getter for: Lcom/android/internal/policy/DesktopPhoneWindow;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DesktopPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWindowHeaderViewVisibility() a activity isn\'t fullscreen, r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    # getter for: Lcom/android/internal/policy/DesktopPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$600(Lcom/android/internal/policy/DesktopPhoneWindow;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1

    # getter for: Lcom/android/internal/policy/DesktopPhoneWindow;->DEBUG:Z
    invoke-static {}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$500()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "DesktopPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWindowHeaderViewVisibility(), visibility="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->this$0:Lcom/android/internal/policy/DesktopPhoneWindow;

    # getter for: Lcom/android/internal/policy/DesktopPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/internal/policy/DesktopPhoneWindow;->access$600(Lcom/android/internal/policy/DesktopPhoneWindow;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/DesktopPhoneWindow$DesktopWindowHeader;->mWindowHeaderView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
