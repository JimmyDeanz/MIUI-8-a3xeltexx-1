.class Landroid/preference/PreferenceScreen$TouchListener;
.super Ljava/lang/Object;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceScreen;


# direct methods
.method private constructor <init>(Landroid/preference/PreferenceScreen;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/PreferenceScreen;Landroid/preference/PreferenceScreen$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/preference/PreferenceScreen;
    .param p2, "x1"    # Landroid/preference/PreferenceScreen$1;

    .prologue
    .line 369
    invoke-direct {p0, p1}, Landroid/preference/PreferenceScreen$TouchListener;-><init>(Landroid/preference/PreferenceScreen;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 373
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 374
    .local v0, "action":I
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # setter for: Landroid/preference/PreferenceScreen;->mIsUsingTouchListener:Z
    invoke-static {v5, v6}, Landroid/preference/PreferenceScreen;->access$202(Landroid/preference/PreferenceScreen;Z)Z

    .line 376
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mListViewForTouch:Landroid/widget/ListView;
    invoke-static {v5}, Landroid/preference/PreferenceScreen;->access$300(Landroid/preference/PreferenceScreen;)Landroid/widget/ListView;

    move-result-object v5

    if-nez v5, :cond_1

    .line 430
    :cond_0
    :goto_0
    return v7

    .line 379
    :cond_1
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 381
    :pswitch_0
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # setter for: Landroid/preference/PreferenceScreen;->mIsPassedActionMove:Z
    invoke-static {v5, v7}, Landroid/preference/PreferenceScreen;->access$402(Landroid/preference/PreferenceScreen;Z)Z

    .line 382
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    # setter for: Landroid/preference/PreferenceScreen;->mLocationTouchDownX:F
    invoke-static {v5, v6}, Landroid/preference/PreferenceScreen;->access$502(Landroid/preference/PreferenceScreen;F)F

    goto :goto_0

    .line 385
    :pswitch_1
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # setter for: Landroid/preference/PreferenceScreen;->mIsPassedActionMove:Z
    invoke-static {v5, v6}, Landroid/preference/PreferenceScreen;->access$402(Landroid/preference/PreferenceScreen;Z)Z

    .line 386
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget-object v9, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mLocationTouchDownX:F
    invoke-static {v9}, Landroid/preference/PreferenceScreen;->access$500(Landroid/preference/PreferenceScreen;)F

    move-result v9

    sub-float/2addr v8, v9

    # setter for: Landroid/preference/PreferenceScreen;->mMovedDeltaX:F
    invoke-static {v5, v8}, Landroid/preference/PreferenceScreen;->access$602(Landroid/preference/PreferenceScreen;F)F

    .line 388
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mMovedDeltaX:F
    invoke-static {v5}, Landroid/preference/PreferenceScreen;->access$600(Landroid/preference/PreferenceScreen;)F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget-object v8, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mScaledTouchSlop:I
    invoke-static {v8}, Landroid/preference/PreferenceScreen;->access$700(Landroid/preference/PreferenceScreen;)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v5, v5, v8

    if-gez v5, :cond_2

    .line 389
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # setter for: Landroid/preference/PreferenceScreen;->mIsNeedClick:Z
    invoke-static {v5, v6}, Landroid/preference/PreferenceScreen;->access$802(Landroid/preference/PreferenceScreen;Z)Z

    .line 390
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mListViewForTouch:Landroid/widget/ListView;
    invoke-static {v5}, Landroid/preference/PreferenceScreen;->access$300(Landroid/preference/PreferenceScreen;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->hasFocus()Z

    move-result v5

    if-nez v5, :cond_0

    .line 391
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mListViewForTouch:Landroid/widget/ListView;
    invoke-static {v5}, Landroid/preference/PreferenceScreen;->access$300(Landroid/preference/PreferenceScreen;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->requestFocus()Z

    goto :goto_0

    .line 395
    :cond_2
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mIsRTL:Z
    invoke-static {v5}, Landroid/preference/PreferenceScreen;->access$900(Landroid/preference/PreferenceScreen;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v8, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mMovedDeltaX:F
    invoke-static {v5}, Landroid/preference/PreferenceScreen;->access$600(Landroid/preference/PreferenceScreen;)F

    move-result v5

    cmpg-float v5, v5, v11

    if-gez v5, :cond_4

    move v5, v6

    :goto_1
    # setter for: Landroid/preference/PreferenceScreen;->mIsCheckedSwitch:Z
    invoke-static {v8, v5}, Landroid/preference/PreferenceScreen;->access$1002(Landroid/preference/PreferenceScreen;Z)Z

    .line 397
    :goto_2
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # setter for: Landroid/preference/PreferenceScreen;->mIsNeedClick:Z
    invoke-static {v5, v7}, Landroid/preference/PreferenceScreen;->access$802(Landroid/preference/PreferenceScreen;Z)Z

    .line 399
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mListViewForTouch:Landroid/widget/ListView;
    invoke-static {v5}, Landroid/preference/PreferenceScreen;->access$300(Landroid/preference/PreferenceScreen;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    .line 400
    .local v2, "lastVisibleListItem":I
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mListViewForTouch:Landroid/widget/ListView;
    invoke-static {v5}, Landroid/preference/PreferenceScreen;->access$300(Landroid/preference/PreferenceScreen;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .local v1, "i":I
    :goto_3
    if-gt v1, v2, :cond_0

    .line 401
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mListViewForTouch:Landroid/widget/ListView;
    invoke-static {v5}, Landroid/preference/PreferenceScreen;->access$300(Landroid/preference/PreferenceScreen;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    .line 402
    .local v3, "tmpSwitchPreference":Ljava/lang/Object;
    instance-of v5, v3, Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_3

    .line 403
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mListViewForTouch:Landroid/widget/ListView;
    invoke-static {v5}, Landroid/preference/PreferenceScreen;->access$300(Landroid/preference/PreferenceScreen;)Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 405
    .local v4, "tmpView":Landroid/view/View;
    if-nez v4, :cond_7

    .line 400
    .end local v4    # "tmpView":Landroid/view/View;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v1    # "i":I
    .end local v2    # "lastVisibleListItem":I
    .end local v3    # "tmpSwitchPreference":Ljava/lang/Object;
    :cond_4
    move v5, v7

    .line 395
    goto :goto_1

    .line 396
    :cond_5
    iget-object v8, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mMovedDeltaX:F
    invoke-static {v5}, Landroid/preference/PreferenceScreen;->access$600(Landroid/preference/PreferenceScreen;)F

    move-result v5

    cmpl-float v5, v5, v11

    if-lez v5, :cond_6

    move v5, v6

    :goto_4
    # setter for: Landroid/preference/PreferenceScreen;->mIsCheckedSwitch:Z
    invoke-static {v8, v5}, Landroid/preference/PreferenceScreen;->access$1002(Landroid/preference/PreferenceScreen;Z)Z

    goto :goto_2

    :cond_6
    move v5, v7

    goto :goto_4

    .line 408
    .restart local v1    # "i":I
    .restart local v2    # "lastVisibleListItem":I
    .restart local v3    # "tmpSwitchPreference":Ljava/lang/Object;
    .restart local v4    # "tmpView":Landroid/view/View;
    :cond_7
    invoke-virtual {v4}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 409
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->pressedPostion:I
    invoke-static {v5}, Landroid/preference/PreferenceScreen;->access$1100(Landroid/preference/PreferenceScreen;)I

    move-result v5

    if-eq v5, v10, :cond_8

    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->pressedPostion:I
    invoke-static {v5}, Landroid/preference/PreferenceScreen;->access$1100(Landroid/preference/PreferenceScreen;)I

    move-result v5

    if-eq v5, v1, :cond_8

    .line 410
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # setter for: Landroid/preference/PreferenceScreen;->mIsChangedPressedItem:Z
    invoke-static {v5, v6}, Landroid/preference/PreferenceScreen;->access$1202(Landroid/preference/PreferenceScreen;Z)Z

    .line 412
    :cond_8
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # setter for: Landroid/preference/PreferenceScreen;->pressedPostion:I
    invoke-static {v5, v1}, Landroid/preference/PreferenceScreen;->access$1102(Landroid/preference/PreferenceScreen;I)I

    goto/16 :goto_0

    .line 420
    .end local v1    # "i":I
    .end local v2    # "lastVisibleListItem":I
    .end local v3    # "tmpSwitchPreference":Ljava/lang/Object;
    .end local v4    # "tmpView":Landroid/view/View;
    :pswitch_2
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # setter for: Landroid/preference/PreferenceScreen;->pressedPostion:I
    invoke-static {v5, v10}, Landroid/preference/PreferenceScreen;->access$1102(Landroid/preference/PreferenceScreen;I)I

    .line 421
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # getter for: Landroid/preference/PreferenceScreen;->mIsPassedActionMove:Z
    invoke-static {v5}, Landroid/preference/PreferenceScreen;->access$400(Landroid/preference/PreferenceScreen;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 422
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # setter for: Landroid/preference/PreferenceScreen;->mIsNeedClick:Z
    invoke-static {v5, v6}, Landroid/preference/PreferenceScreen;->access$802(Landroid/preference/PreferenceScreen;Z)Z

    goto/16 :goto_0

    .line 427
    :pswitch_3
    iget-object v5, p0, Landroid/preference/PreferenceScreen$TouchListener;->this$0:Landroid/preference/PreferenceScreen;

    # setter for: Landroid/preference/PreferenceScreen;->pressedPostion:I
    invoke-static {v5, v10}, Landroid/preference/PreferenceScreen;->access$1102(Landroid/preference/PreferenceScreen;I)I

    goto/16 :goto_0

    .line 379
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
