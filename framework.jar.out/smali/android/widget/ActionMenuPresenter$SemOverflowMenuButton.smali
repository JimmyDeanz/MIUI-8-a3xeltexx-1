.class public Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;
.super Landroid/widget/FrameLayout;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/widget/ActionMenuView$ActionMenuChildView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SemOverflowMenuButton"
.end annotation


# instance fields
.field private mBadgeText:Landroid/widget/TextView;

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V
    .locals 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x2

    .line 1128
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 1129
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1131
    const/4 v1, 0x0

    .line 1132
    .local v1, "innerView":Landroid/view/View;
    # getter for: Landroid/widget/ActionMenuPresenter;->mUseTextItemMode:Z
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$1200(Landroid/widget/ActionMenuPresenter;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1133
    new-instance v1, Landroid/widget/ActionMenuPresenter$SemOverflowText;

    .end local v1    # "innerView":Landroid/view/View;
    invoke-direct {v1, p1, p2}, Landroid/widget/ActionMenuPresenter$SemOverflowText;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    .line 1137
    .restart local v1    # "innerView":Landroid/view/View;
    :goto_0
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1140
    const-string v2, "layout_inflater"

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1141
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090101

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    .line 1142
    iget-object v2, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->addView(Landroid/view/View;)V

    .line 1143
    return-void

    .line 1135
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    new-instance v1, Landroid/widget/ActionMenuPresenter$SemOverflowImage;

    .end local v1    # "innerView":Landroid/view/View;
    invoke-direct {v1, p1, p2}, Landroid/widget/ActionMenuPresenter$SemOverflowImage;-><init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;)V

    .restart local v1    # "innerView":Landroid/view/View;
    goto :goto_0
.end method


# virtual methods
.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 1152
    const/4 v0, 0x0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 1147
    const/4 v0, 0x0

    return v0
.end method

.method public semSetBadgeNumber(I)V
    .locals 2
    .param p1, "number"    # I

    .prologue
    .line 1156
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->this$0:Landroid/widget/ActionMenuPresenter;

    # getter for: Landroid/widget/ActionMenuPresenter;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v0}, Landroid/widget/ActionMenuPresenter;->access$1100(Landroid/widget/ActionMenuPresenter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1157
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1158
    iget-object v1, p0, Landroid/widget/ActionMenuPresenter$SemOverflowMenuButton;->mBadgeText:Landroid/widget/TextView;

    if-lez p1, :cond_2

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1160
    :cond_0
    return-void

    .line 1157
    :cond_1
    const-string v0, "N"

    goto :goto_0

    .line 1158
    :cond_2
    const/16 v0, 0x8

    goto :goto_1
.end method
