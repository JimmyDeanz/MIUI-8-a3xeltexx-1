.class Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;
.super Landroid/widget/FrameLayout;
.source "DesktopMultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/DesktopMultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WindowHeaderView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/DesktopMultiPhoneWindow;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    iget-object v1, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .local v0, "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    check-cast v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;

    .end local v0    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x6

    const/4 v11, 0x3

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x5

    const/4 v8, 0x1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .local v3, "result":Z
    invoke-virtual {p0}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v5

    if-nez v5, :cond_1

    sget-boolean v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "DesktopMultiPhoneWindow"

    const-string v6, "WindowHeaderView :: dispatchTouchEvent() it isn\'t cascade type"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v4, v3

    .end local v3    # "result":Z
    .local v4, "result":Z
    :goto_0
    return v4

    .end local v4    # "result":Z
    .restart local v3    # "result":Z
    :cond_1
    sget-boolean v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string v5, "DesktopMultiPhoneWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WindowHeaderView :: dispatchTouchEvent() event="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", view="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", caller="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v9}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v1, 0x1

    .local v1, "dispatchEventToHeader":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v5, v5, 0xff

    const/4 v6, 0x4

    if-eq v5, v6, :cond_4

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v5, p0, p1}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v3

    :cond_4
    move v4, v3

    .end local v3    # "result":Z
    .restart local v4    # "result":Z
    goto :goto_0

    .end local v4    # "result":Z
    .restart local v3    # "result":Z
    :pswitch_0
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->isShowing()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .local v0, "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    check-cast v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;

    .end local v0    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    invoke-virtual {v0, p1, v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v3

    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_1
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->getGuideState()I

    move-result v2

    .local v2, "guideViewType":I
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eq v2, v11, :cond_3

    if-eq v2, v9, :cond_3

    if-eq v2, v12, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .restart local v0    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    check-cast v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;

    .end local v0    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    invoke-virtual {v0, p1, v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v3

    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    .end local v2    # "guideViewType":I
    :pswitch_2
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->getGuideState()I

    move-result v2

    .restart local v2    # "guideViewType":I
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_5

    if-eq v2, v11, :cond_5

    if-eq v2, v9, :cond_5

    if-eq v2, v12, :cond_5

    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/PhoneWindow$DecorView;

    .restart local v0    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    check-cast v0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;

    .end local v0    # "decor":Lcom/android/internal/policy/PhoneWindow$DecorView;
    invoke-virtual {v0, p1, v8}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopMultiDecorView;->dispatchTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v3

    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->isShowing()Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mGuideView:Lcom/samsung/android/multiwindow/ui/GuideView;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/ui/GuideView;->isShowing()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v5}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->getWindowHeaderAlpha()F

    move-result v5

    cmpg-float v5, v5, v10

    if-gez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/policy/DesktopMultiPhoneWindow$WindowHeaderView;->this$0:Lcom/android/internal/policy/DesktopMultiPhoneWindow;

    iget-object v5, v5, Lcom/android/internal/policy/DesktopMultiPhoneWindow;->mDesktopPopupWindowHeader:Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;

    invoke-virtual {v5, v10}, Lcom/android/internal/policy/DesktopMultiPhoneWindow$DesktopWindowHeader;->setWindowHeaderAlpha(F)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
