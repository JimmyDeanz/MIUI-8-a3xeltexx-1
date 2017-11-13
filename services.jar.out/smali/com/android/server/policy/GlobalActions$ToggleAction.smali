.class abstract Lcom/android/server/policy/GlobalActions$ToggleAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ToggleAction"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/GlobalActions$ToggleAction$State;
    }
.end annotation


# instance fields
.field protected mDisabledIconResid:I

.field protected mDisabledStatusMessageResId:I

.field protected mEnabledIconResId:I

.field protected mEnabledStatusMessageResId:I

.field mLayoutId:I

.field protected mMessageResId:I

.field protected mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;


# direct methods
.method public constructor <init>(IIIII)V
    .locals 1
    .param p1, "enabledIconResId"    # I
    .param p2, "disabledIconResid"    # I
    .param p3, "message"    # I
    .param p4, "enabledStatusMessageResId"    # I
    .param p5, "disabledStatusMessageResId"    # I

    .prologue
    .line 3924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3904
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 3925
    iput p1, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledIconResId:I

    .line 3926
    iput p2, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledIconResid:I

    .line 3927
    iput p3, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mMessageResId:I

    .line 3928
    iput p4, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    .line 3929
    iput p5, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    .line 3931
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3932
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v0

    if-nez v0, :cond_0

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6500()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3933
    const v0, 0x109006e

    iput v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mLayoutId:I

    .line 3945
    :goto_0
    return-void

    .line 3935
    :cond_0
    const v0, 0x109006c

    iput v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mLayoutId:I

    goto :goto_0

    .line 3938
    :cond_1
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v0

    if-nez v0, :cond_2

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6500()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3939
    const v0, 0x109006f

    iput v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mLayoutId:I

    goto :goto_0

    .line 3941
    :cond_2
    const v0, 0x109006d

    iput v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mLayoutId:I

    goto :goto_0
.end method


# virtual methods
.method protected changeStateFromPress(Z)V
    .locals 3
    .param p1, "buttonOn"    # Z

    .prologue
    .line 4075
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    :goto_0
    iput-object v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 4076
    const-string v0, "GlobalActions"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeStateFromPress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4077
    return-void

    .line 4075
    :cond_0
    sget-object v0, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->Off:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    goto :goto_0
.end method

.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 3962
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->willCreate()V

    .line 3965
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v7

    if-nez v7, :cond_8

    .line 3966
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v7

    if-nez v7, :cond_7

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6500()Z

    move-result v7

    if-nez v7, :cond_7

    .line 3967
    const v7, 0x109006e

    const/4 v8, 0x0

    invoke-virtual {p4, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 3979
    .local v6, "v":Landroid/view/View;
    :goto_0
    const v7, 0x1020006

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 3980
    .local v1, "icon":Landroid/widget/ImageView;
    const v7, 0x102000b

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 3981
    .local v3, "messageView":Landroid/widget/TextView;
    const v7, 0x10203b5

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 3982
    .local v5, "statusView":Landroid/widget/TextView;
    const v7, 0x10203b7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 3983
    .local v2, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->isEnabled()Z

    move-result v0

    .line 3985
    .local v0, "enabled":Z
    if-eqz v3, :cond_0

    .line 3986
    iget v7, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mMessageResId:I

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    .line 3987
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3988
    if-nez v0, :cond_0

    .line 3989
    const v7, -0x777778

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3992
    :cond_0
    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq v7, v8, :cond_1

    iget-object v7, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v8, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->TurningOn:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-ne v7, v8, :cond_a

    :cond_1
    const/4 v4, 0x1

    .line 3993
    .local v4, "on":Z
    :goto_1
    if-eqz v1, :cond_2

    .line 3994
    if-eqz v4, :cond_b

    iget v7, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledIconResId:I

    :goto_2
    invoke-virtual {p1, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3996
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 3997
    if-eqz v4, :cond_c

    iget v7, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledIconResId:I

    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 4000
    :cond_2
    if-eqz v5, :cond_3

    .line 4001
    if-eqz v4, :cond_d

    iget v7, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mEnabledStatusMessageResId:I

    :goto_4
    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 4002
    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4003
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 4004
    if-nez v0, :cond_3

    .line 4005
    const v7, -0x777778

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4008
    :cond_3
    invoke-virtual {v6, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 4010
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v2, :cond_4

    .line 4011
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 4012
    if-eqz v0, :cond_e

    .line 4013
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 4014
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 4021
    :cond_4
    :goto_5
    # getter for: Lcom/android/server/policy/GlobalActions;->mNewFeatureForM:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$700()Z

    move-result v7

    if-nez v7, :cond_6

    .line 4022
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v7

    if-nez v7, :cond_6

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6500()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4023
    if-eqz v3, :cond_5

    .line 4024
    const-string v7, "#FF000000"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4026
    :cond_5
    if-eqz v5, :cond_6

    .line 4027
    const-string v7, "#6B6F72"

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4032
    :cond_6
    return-object v6

    .line 3969
    .end local v0    # "enabled":Z
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v3    # "messageView":Landroid/widget/TextView;
    .end local v4    # "on":Z
    .end local v5    # "statusView":Landroid/widget/TextView;
    .end local v6    # "v":Landroid/view/View;
    :cond_7
    const v7, 0x109006c

    const/4 v8, 0x0

    invoke-virtual {p4, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 3972
    .end local v6    # "v":Landroid/view/View;
    :cond_8
    # getter for: Lcom/android/server/policy/GlobalActions;->mIsCoverOpen:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6400()Z

    move-result v7

    if-nez v7, :cond_9

    # getter for: Lcom/android/server/policy/GlobalActions;->mIsClearCover:Z
    invoke-static {}, Lcom/android/server/policy/GlobalActions;->access$6500()Z

    move-result v7

    if-nez v7, :cond_9

    .line 3973
    const v7, 0x109006f

    const/4 v8, 0x0

    invoke-virtual {p4, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 3975
    .end local v6    # "v":Landroid/view/View;
    :cond_9
    const v7, 0x109006d

    const/4 v8, 0x0

    invoke-virtual {p4, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "v":Landroid/view/View;
    goto/16 :goto_0

    .line 3992
    .restart local v0    # "enabled":Z
    .restart local v1    # "icon":Landroid/widget/ImageView;
    .restart local v2    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .restart local v3    # "messageView":Landroid/widget/TextView;
    .restart local v5    # "statusView":Landroid/widget/TextView;
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 3994
    .restart local v4    # "on":Z
    :cond_b
    iget v7, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledIconResid:I

    goto/16 :goto_2

    .line 3997
    :cond_c
    iget v7, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledIconResid:I

    goto/16 :goto_3

    .line 4001
    :cond_d
    iget v7, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mDisabledStatusMessageResId:I

    goto/16 :goto_4

    .line 4016
    :cond_e
    const/4 v7, 0x0

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 4017
    const v7, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_5
.end method

.method public getLabelForAccessibility(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 3957
    iget v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mMessageResId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 4065
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPress()V
    .locals 4

    .prologue
    .line 4037
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToggleAction onPress  mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4038
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4039
    const-string v1, "GlobalActions"

    const-string/jumbo v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4047
    :goto_0
    return-void

    .line 4043
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 4044
    .local v0, "nowOn":Z
    :goto_1
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPress nowOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->onToggle(Z)V

    .line 4046
    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->changeStateFromPress(Z)V

    goto :goto_0

    .line 4043
    .end local v0    # "nowOn":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPressAction()V
    .locals 4

    .prologue
    .line 4051
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToggleAction onPress  mState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4052
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    invoke-virtual {v1}, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->inTransition()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4053
    const-string v1, "GlobalActions"

    const-string/jumbo v2, "shouldn\'t be able to toggle when in transition"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4061
    :goto_0
    return-void

    .line 4057
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    sget-object v2, Lcom/android/server/policy/GlobalActions$ToggleAction$State;->On:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    if-eq v1, v2, :cond_1

    const/4 v0, 0x1

    .line 4058
    .local v0, "nowOn":Z
    :goto_1
    const-string v1, "GlobalActions"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPressAction nowOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4059
    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->onToggle(Z)V

    .line 4060
    invoke-virtual {p0, v0}, Lcom/android/server/policy/GlobalActions$ToggleAction;->changeStateFromPress(Z)V

    goto :goto_0

    .line 4057
    .end local v0    # "nowOn":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method abstract onToggle(Z)V
.end method

.method public updateState(Lcom/android/server/policy/GlobalActions$ToggleAction$State;)V
    .locals 0
    .param p1, "state"    # Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .prologue
    .line 4082
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$ToggleAction;->mState:Lcom/android/server/policy/GlobalActions$ToggleAction$State;

    .line 4083
    return-void
.end method

.method willCreate()V
    .locals 0

    .prologue
    .line 3953
    return-void
.end method
