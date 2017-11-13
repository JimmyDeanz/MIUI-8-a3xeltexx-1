.class Lcom/android/server/policy/GlobalActions$41;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v11, p1, Landroid/os/Message;->what:I

    packed-switch v11, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v11

    if-eqz v11, :cond_a

    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$7700(Lcom/android/server/policy/GlobalActions;)Z

    move-result v11

    if-nez v11, :cond_a

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    if-eqz v11, :cond_0

    const/4 v6, 0x0

    .local v6, "view":Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "ll":Landroid/widget/LinearLayout;
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v11

    if-nez v11, :cond_3

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6500()Z

    move-result v11

    if-nez v11, :cond_3

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayoutSViewCover:Landroid/app/GlobalActionsFrameLayoutSViewCover;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6600(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayoutSViewCover;

    move-result-object v11

    const v12, 0x10203a6

    invoke-virtual {v11, v12}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "ll":Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .restart local v3    # "ll":Landroid/widget/LinearLayout;
    :goto_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v11

    if-ge v0, v11, :cond_5

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5400(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5400(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :cond_1
    :goto_3
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0x12c

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_3
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6700(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayout;

    move-result-object v11

    const v12, 0x10203a6

    invoke-virtual {v11, v12}, Landroid/app/GlobalActionsFrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "ll":Landroid/widget/LinearLayout;
    check-cast v3, Landroid/widget/LinearLayout;

    .restart local v3    # "ll":Landroid/widget/LinearLayout;
    goto :goto_1

    .restart local v0    # "i":I
    :cond_4
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5500(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5500(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_3

    :cond_5
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/server/policy/GlobalActions;->requestUpdateWindowBlur(F)V

    if-eqz v3, :cond_8

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8700(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8700(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8800(Lcom/android/server/policy/GlobalActions;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8700(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->dismiss()V

    :cond_6
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8900(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8900(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_7

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8800(Lcom/android/server/policy/GlobalActions;)Z

    move-result v11

    if-nez v11, :cond_7

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8900(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/GlobalActionsSViewCoverDialog;->dismiss()V

    :cond_7
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0x12c

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    new-instance v12, Lcom/android/server/policy/GlobalActions$41$1;

    invoke-direct {v12, p0}, Lcom/android/server/policy/GlobalActions$41$1;-><init>(Lcom/android/server/policy/GlobalActions$41;)V

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_8
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9100(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9100(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mBottomlayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9100(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0x12c

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_9
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6800(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6800(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v11

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDescriptionlayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6800(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    const-wide/16 v12, 0x12c

    invoke-virtual {v11, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    .end local v0    # "i":I
    .end local v3    # "ll":Landroid/widget/LinearLayout;
    .end local v6    # "view":Landroid/view/View;
    :cond_a
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8700(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8700(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_c

    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v11

    if-eqz v11, :cond_b

    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8800(Lcom/android/server/policy/GlobalActions;)Z

    move-result v11

    if-nez v11, :cond_c

    :cond_b
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialog:Landroid/app/AlertDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8700(Lcom/android/server/policy/GlobalActions;)Landroid/app/AlertDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/AlertDialog;->dismiss()V

    :cond_c
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v11

    if-nez v11, :cond_e

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8900(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v11

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8900(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/GlobalActionsSViewCoverDialog;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_e

    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v11

    if-eqz v11, :cond_d

    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->isGlobalActionConfirming()Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8800(Lcom/android/server/policy/GlobalActions;)Z

    move-result v11

    if-nez v11, :cond_e

    :cond_d
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mConfirmDialogSViewCoverDialog:Landroid/app/GlobalActionsSViewCoverDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$8900(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsSViewCoverDialog;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/GlobalActionsSViewCoverDialog;->dismiss()V

    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->sIsConfirming:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$202(Z)Z

    :cond_e
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    if-eqz v11, :cond_f

    const-string v11, "GlobalActions"

    const-string v12, "handleMessage : MESSAGE_DISMISS : Call mDialog.dismiss()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;->dismiss()V

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11, v12}, Lcom/android/server/policy/GlobalActions;->access$4602(Lcom/android/server/policy/GlobalActions;Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4402(Z)Z

    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4502(Z)Z

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsScreenOFF:Z
    invoke-static {v11, v12}, Lcom/android/server/policy/GlobalActions;->access$7702(Lcom/android/server/policy/GlobalActions;Z)Z

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$300()Z

    move-result v11

    if-nez v11, :cond_f

    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4702(Z)Z

    :cond_f
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4700()Z

    move-result v11

    if-eqz v11, :cond_0

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$300()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "GlobalActions"

    const-string v12, "showing dialog because mIsMiniDialogMode and mIsMiniCoverOpened are true."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsMiniDialogMode:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4702(Z)Z

    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsMiniCoverOpened:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$302(Z)Z

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    if-eqz v11, :cond_10

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    :cond_10
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->handleShow()V
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9000(Lcom/android/server/policy/GlobalActions;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    if-eqz v11, :cond_11

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    :cond_11
    sget-object v11, Lcom/android/server/policy/GlobalActions;->mSilentModeView:Landroid/view/View;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mSilentModeAction:Lcom/android/server/policy/GlobalActions$SilentModeAction;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9200(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$SilentModeAction;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$SilentModeAction;->updateRingerMode()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->handleShow()V
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9000(Lcom/android/server/policy/GlobalActions;)V

    goto/16 :goto_0

    :pswitch_4
    const-string v11, "GlobalActions"

    const-string v12, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v11

    if-eqz v11, :cond_12

    const-string v11, "GlobalActions"

    const-string v12, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE : call mAirplaneModeOn.updateState"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAirplaneModeOn:Lcom/android/server/policy/GlobalActions$ToggleAction;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9300(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    invoke-static {v12}, Lcom/android/server/policy/GlobalActions;->access$2500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/policy/GlobalActions$ToggleAction;->updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v12, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v12, v12, Lcom/android/server/policy/GlobalActions;->mAirplaneStringId:I

    iget-object v13, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAirplaneState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    invoke-static {v13}, Lcom/android/server/policy/GlobalActions;->access$2500(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    move-result-object v13

    # invokes: Lcom/android/server/policy/GlobalActions;->updateActions(ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    invoke-static {v11, v12, v13}, Lcom/android/server/policy/GlobalActions;->access$8200(Lcom/android/server/policy/GlobalActions;ILcom/android/server/policy/GlobalActions$ToggleAction$State;)V

    :cond_12
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    if-eqz v11, :cond_0

    const-string v11, "GlobalActions"

    const-string v12, "handleMessage : MESSAGE_REFRESH_AIRPLANEMODE : call mAdapter.notifyDataSetChanged"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .local v2, "intent":Landroid/content/Intent;
    const-string v11, "com.samsung.cover.STATE_CHANGE"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v11, "suppressCoverUI"

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v11, "miniModeUI"

    const/4 v12, 0x1

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v12, "sender"

    iget-object v11, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v2, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$500(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v2    # "intent":Landroid/content/Intent;
    :pswitch_6
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    if-eqz v11, :cond_0

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_4
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v11

    if-ge v0, v11, :cond_14

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5500(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .local v7, "viewLand1":Landroid/view/View;
    sget-object v11, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v11, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5400(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .local v9, "viewPort1":Landroid/view/View;
    const v11, 0x10203b7

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .local v1, "imageFrameLayout":Landroid/widget/FrameLayout;
    const v11, 0x102000b

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .local v4, "messageView":Landroid/widget/TextView;
    const v11, 0x10203b5

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .local v5, "statusView":Landroid/widget/TextView;
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v11, v1, v12}, Lcom/android/server/policy/GlobalActions;->calculateDescritionViewHeight(Landroid/view/View;I)V

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x0

    # invokes: Lcom/android/server/policy/GlobalActions;->onClickForPortraitConfirmDialog(Landroid/view/View;Z)V
    invoke-static {v11, v9, v12}, Lcom/android/server/policy/GlobalActions;->access$6200(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V

    .end local v1    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v4    # "messageView":Landroid/widget/TextView;
    .end local v5    # "statusView":Landroid/widget/TextView;
    .end local v9    # "viewPort1":Landroid/view/View;
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v7    # "viewLand1":Landroid/view/View;
    :cond_14
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4500()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6700(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayout;

    move-result-object v11

    const-string v12, "HideConfirmLandscape"

    invoke-virtual {v11, v12}, Landroid/app/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5500(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->initLandscapeAddView()V
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9400(Lcom/android/server/policy/GlobalActions;)V

    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4502(Z)Z

    goto/16 :goto_0

    .end local v0    # "i":I
    :pswitch_7
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    if-eqz v11, :cond_0

    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_5
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mAdapter:Lcom/android/server/policy/GlobalActions$MyAdapter;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5000(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getCount()I

    move-result v11

    if-ge v0, v11, :cond_16

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5400(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .local v10, "viewPort2":Landroid/view/View;
    sget-object v11, Lcom/android/server/policy/GlobalActions;->SelectedItem:Landroid/view/View;

    invoke-virtual {v11, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLandscapeLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5500(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .local v8, "viewLand2":Landroid/view/View;
    const v11, 0x10203b7

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .restart local v1    # "imageFrameLayout":Landroid/widget/FrameLayout;
    const v11, 0x102000b

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .restart local v4    # "messageView":Landroid/widget/TextView;
    const v11, 0x10203b5

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .restart local v5    # "statusView":Landroid/widget/TextView;
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v12

    invoke-virtual {v5}, Landroid/widget/TextView;->getHeight()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v11, v1, v12}, Lcom/android/server/policy/GlobalActions;->calculateDescritionViewHeight(Landroid/view/View;I)V

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x0

    # invokes: Lcom/android/server/policy/GlobalActions;->onClickForLandscapeConfirmDialog(Landroid/view/View;Z)V
    invoke-static {v11, v8, v12}, Lcom/android/server/policy/GlobalActions;->access$6300(Lcom/android/server/policy/GlobalActions;Landroid/view/View;Z)V

    .end local v1    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v4    # "messageView":Landroid/widget/TextView;
    .end local v5    # "statusView":Landroid/widget/TextView;
    .end local v8    # "viewLand2":Landroid/view/View;
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .end local v10    # "viewPort2":Landroid/view/View;
    :cond_16
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4400()Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mGlobalActionsFrameLayout:Landroid/app/GlobalActionsFrameLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$6700(Lcom/android/server/policy/GlobalActions;)Landroid/app/GlobalActionsFrameLayout;

    move-result-object v11

    const-string v12, "HideConfirmPortrait"

    invoke-virtual {v11, v12}, Landroid/app/GlobalActionsFrameLayout;->checkOrientation(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mLinearLayout:Landroid/widget/LinearLayout;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$5400(Lcom/android/server/policy/GlobalActions;)Landroid/widget/LinearLayout;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->initPortraitAddView()V
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$9500(Lcom/android/server/policy/GlobalActions;)V

    const/4 v11, 0x0

    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmDlg:Z
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4402(Z)Z

    goto/16 :goto_0

    .end local v0    # "i":I
    :pswitch_8
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x1

    # invokes: Lcom/android/server/policy/GlobalActions;->onClickForHidePortraitConfirmDialog(Z)V
    invoke-static {v11, v12}, Lcom/android/server/policy/GlobalActions;->access$5800(Lcom/android/server/policy/GlobalActions;Z)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mDialog:Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
    invoke-static {v11}, Lcom/android/server/policy/GlobalActions;->access$4600(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/policy/GlobalActions$41;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v12, 0x1

    # invokes: Lcom/android/server/policy/GlobalActions;->onClickForHideLandscapeConfirmDialog(Z)V
    invoke-static {v11, v12}, Lcom/android/server/policy/GlobalActions;->access$7000(Lcom/android/server/policy/GlobalActions;Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
