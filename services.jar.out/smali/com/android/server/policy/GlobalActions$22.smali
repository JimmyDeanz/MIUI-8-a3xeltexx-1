.class Lcom/android/server/policy/GlobalActions$22;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createLandscapeGlobalActionsDialog()V
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
    .line 2336
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2339
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 2340
    .local v0, "action":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 2341
    .local v1, "eventX":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    .line 2342
    .local v2, "eventY":I
    const v4, 0x102000b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    .line 2343
    .local v3, "itemMessageHeight":I
    if-nez v0, :cond_4

    .line 2344
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4500()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    invoke-virtual {v4, v7}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v4

    sub-int/2addr v4, v3

    if-lt v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    invoke-virtual {v4, v7}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v4

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    add-int/2addr v4, v7

    sub-int/2addr v4, v3

    if-gt v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    invoke-virtual {v4, v7}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v4

    if-lt v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    invoke-virtual {v4, v7}, Lcom/android/server/policy/GlobalActions;->item_yposition(I)I

    move-result v4

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mItemWidth:I

    add-int/2addr v4, v7

    if-gt v1, v4, :cond_0

    move v4, v5

    .line 2376
    :goto_0
    return v4

    .line 2350
    :cond_0
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4500()Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    invoke-virtual {v4, v7}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v4

    sub-int/2addr v4, v3

    if-lt v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    invoke-virtual {v4, v7}, Lcom/android/server/policy/GlobalActions;->item_xposition(I)I

    move-result v4

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    iget v7, v7, Lcom/android/server/policy/GlobalActions;->mItemHeight:I

    add-int/2addr v4, v7

    sub-int/2addr v4, v3

    if-gt v2, v4, :cond_1

    move v4, v5

    .line 2353
    goto :goto_0

    .line 2354
    :cond_1
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-eqz v4, :cond_2

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4500()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v6

    .line 2355
    goto :goto_0

    .line 2357
    :cond_2
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4500()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2358
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    # invokes: Lcom/android/server/policy/GlobalActions;->onClickForHideLandscapeConfirmDialog(Z)V
    invoke-static {v4, v6}, Lcom/android/server/policy/GlobalActions;->access$7000(Lcom/android/server/policy/GlobalActions;Z)V

    :goto_1
    move v4, v6

    .line 2362
    goto :goto_0

    .line 2360
    :cond_3
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->access$400(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 2366
    :cond_4
    if-ne v0, v6, :cond_5

    .line 2367
    sget-boolean v4, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    if-eqz v4, :cond_5

    .line 2368
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$4500()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2369
    # setter for: Lcom/android/server/policy/GlobalActions;->mIsConfirmLandDlg:Z
    invoke-static {v5}, Lcom/android/server/policy/GlobalActions;->access$4502(Z)Z

    :cond_5
    :goto_2
    move v4, v5

    .line 2376
    goto :goto_0

    .line 2371
    :cond_6
    sput-boolean v5, Lcom/android/server/policy/GlobalActions;->mAccessibiltyShortcutEnabled:Z

    .line 2372
    iget-object v4, p0, Lcom/android/server/policy/GlobalActions$22;->this$0:Lcom/android/server/policy/GlobalActions;

    # getter for: Lcom/android/server/policy/GlobalActions;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/policy/GlobalActions;->access$400(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2
.end method
