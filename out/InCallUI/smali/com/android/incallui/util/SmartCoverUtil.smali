.class public Lcom/android/incallui/util/SmartCoverUtil;
.super Ljava/lang/Object;
.source "SmartCoverUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/util/SmartCoverUtil$1;
    }
.end annotation


# static fields
.field private static mSupportSmartCover:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 20
    sput-boolean v1, Lcom/android/incallui/util/SmartCoverUtil;->mSupportSmartCover:Z

    .line 24
    const-string v0, "support_small_win_cover"

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/incallui/util/SmartCoverUtil;->mSupportSmartCover:Z

    .line 25
    return-void
.end method

.method public static getDisplayWindowSizeInSmartCover()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Landroid/provider/MiuiSettings$System;->getDisplayWindowSizeInSmartCover()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public static getSmallWindowMode()Landroid/provider/MiuiSettings$System$SmallWindowType;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Landroid/provider/MiuiSettings$System;->getSmallWindowMode()Landroid/provider/MiuiSettings$System$SmallWindowType;

    move-result-object v0

    return-object v0
.end method

.method public static isSmartCoverClosed(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-static {p0}, Landroid/provider/MiuiSettings$System;->isInSmallWindowMode(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static removeTargetSmartCover(Landroid/app/FragmentManager;)Z
    .locals 5
    .param p0, "fm"    # Landroid/app/FragmentManager;

    .prologue
    const/4 v2, 0x0

    .line 92
    const-string v3, "Smart_Cover"

    invoke-virtual {p0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 93
    .local v1, "targetCoverFragment":Landroid/app/Fragment;
    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v2

    .line 96
    :cond_1
    invoke-static {}, Lcom/android/incallui/util/SmartCoverUtil;->getSmallWindowMode()Landroid/provider/MiuiSettings$System$SmallWindowType;

    move-result-object v0

    .line 97
    .local v0, "smallWindowType":Landroid/provider/MiuiSettings$System$SmallWindowType;
    if-eqz v0, :cond_0

    .line 100
    sget-object v2, Lcom/android/incallui/util/SmartCoverUtil$1;->$SwitchMap$android$provider$MiuiSettings$System$SmallWindowType:[I

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$System$SmallWindowType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 117
    :goto_1
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 118
    const/4 v2, 0x1

    goto :goto_0

    .line 102
    :pswitch_0
    const-string v2, "Smart_Cover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeTargetSmartCover : a1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :pswitch_1
    const-string v2, "Smart_Cover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeTargetSmartCover : x7_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 108
    :pswitch_2
    const-string v2, "Smart_Cover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeTargetSmartCover : A7_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :pswitch_3
    const-string v2, "Smart_Cover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeTargetSmartCover : B7_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static showTargetSmartCover(Landroid/app/FragmentManager;)Z
    .locals 7
    .param p0, "fm"    # Landroid/app/FragmentManager;

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0900a8

    .line 48
    invoke-static {}, Lcom/android/incallui/util/SmartCoverUtil;->getSmallWindowMode()Landroid/provider/MiuiSettings$System$SmallWindowType;

    move-result-object v0

    .line 49
    .local v0, "smallWindowType":Landroid/provider/MiuiSettings$System$SmallWindowType;
    if-nez v0, :cond_0

    .line 50
    const/4 v2, 0x0

    .line 88
    :goto_0
    return v2

    .line 52
    :cond_0
    sget-object v2, Lcom/android/incallui/util/SmartCoverUtil$1;->$SwitchMap$android$provider$MiuiSettings$System$SmallWindowType:[I

    invoke-virtual {v0}, Landroid/provider/MiuiSettings$System$SmallWindowType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 88
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 54
    :pswitch_0
    new-instance v1, Lcom/android/incallui/smartcover/a1/A1CoverFragment;

    invoke-direct {v1}, Lcom/android/incallui/smartcover/a1/A1CoverFragment;-><init>()V

    .line 55
    .local v1, "targetCoverFragment":Landroid/app/Fragment;
    const-string v2, "Smart_Cover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showTargetSmartCover : a1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "Smart_Cover"

    invoke-virtual {v2, v5, v1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    .line 62
    .end local v1    # "targetCoverFragment":Landroid/app/Fragment;
    :pswitch_1
    new-instance v1, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;

    invoke-direct {v1}, Lcom/android/incallui/smartcover/x7/SmartCoverAnswerFragment;-><init>()V

    .line 63
    .restart local v1    # "targetCoverFragment":Landroid/app/Fragment;
    const-string v2, "Smart_Cover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showTargetSmartCover : x7_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "Smart_Cover"

    invoke-virtual {v2, v5, v1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_1

    .line 70
    .end local v1    # "targetCoverFragment":Landroid/app/Fragment;
    :pswitch_2
    new-instance v1, Lcom/android/incallui/smartcover/a7/A7CoverFragment;

    invoke-direct {v1}, Lcom/android/incallui/smartcover/a7/A7CoverFragment;-><init>()V

    .line 71
    .restart local v1    # "targetCoverFragment":Landroid/app/Fragment;
    const-string v2, "Smart_Cover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showTargetSmartCover : a7_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "Smart_Cover"

    invoke-virtual {v2, v5, v1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_1

    .line 78
    .end local v1    # "targetCoverFragment":Landroid/app/Fragment;
    :pswitch_3
    new-instance v1, Lcom/android/incallui/smartcover/b7/B7CoverFragment;

    invoke-direct {v1}, Lcom/android/incallui/smartcover/b7/B7CoverFragment;-><init>()V

    .line 79
    .restart local v1    # "targetCoverFragment":Landroid/app/Fragment;
    const-string v2, "Smart_Cover"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showTargetSmartCover : b7_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    const-string v3, "Smart_Cover"

    invoke-virtual {v2, v5, v1, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_1

    .line 52
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static supportSmartCover()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/incallui/util/SmartCoverUtil;->mSupportSmartCover:Z

    return v0
.end method
