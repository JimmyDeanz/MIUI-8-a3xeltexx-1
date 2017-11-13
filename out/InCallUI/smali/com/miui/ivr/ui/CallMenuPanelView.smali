.class public Lcom/miui/ivr/ui/CallMenuPanelView;
.super Landroid/widget/LinearLayout;
.source "CallMenuPanelView.java"


# instance fields
.field private mDialer:Lcom/miui/ivr/ui/KeyDialer;

.field private mDialingText:Landroid/widget/TextView;

.field private mExpandIcon:Landroid/widget/ImageView;

.field private mExpandText:Landroid/widget/TextView;

.field private mExpandView:Landroid/view/View;

.field private mIsVoiceMutable:Z

.field private mMenuList:Landroid/widget/ListView;

.field private mNonIvrMenuDivider:Landroid/view/View;

.field private mNonIvrMenuList:Landroid/widget/GridView;

.field private mTitleBar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Lcom/miui/ivr/ui/KeyDialer;

    invoke-direct {v0}, Lcom/miui/ivr/ui/KeyDialer;-><init>()V

    iput-object v0, p0, Lcom/miui/ivr/ui/CallMenuPanelView;->mDialer:Lcom/miui/ivr/ui/KeyDialer;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v0, Lcom/miui/ivr/ui/KeyDialer;

    invoke-direct {v0}, Lcom/miui/ivr/ui/KeyDialer;-><init>()V

    iput-object v0, p0, Lcom/miui/ivr/ui/CallMenuPanelView;->mDialer:Lcom/miui/ivr/ui/KeyDialer;

    .line 79
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 85
    const v0, 0x7f090051

    invoke-virtual {p0, v0}, Lcom/miui/ivr/ui/CallMenuPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/ivr/ui/CallMenuPanelView;->mExpandView:Landroid/view/View;

    .line 86
    const v0, 0x7f090052

    invoke-virtual {p0, v0}, Lcom/miui/ivr/ui/CallMenuPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/miui/ivr/ui/CallMenuPanelView;->mMenuList:Landroid/widget/ListView;

    .line 87
    const v0, 0x7f090053

    invoke-virtual {p0, v0}, Lcom/miui/ivr/ui/CallMenuPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/miui/ivr/ui/CallMenuPanelView;->mNonIvrMenuList:Landroid/widget/GridView;

    .line 88
    const v0, 0x7f090054

    invoke-virtual {p0, v0}, Lcom/miui/ivr/ui/CallMenuPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/ivr/ui/CallMenuPanelView;->mNonIvrMenuDivider:Landroid/view/View;

    .line 90
    const v0, 0x7f09004e

    invoke-virtual {p0, v0}, Lcom/miui/ivr/ui/CallMenuPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/ivr/ui/CallMenuPanelView;->mTitleBar:Landroid/view/View;

    .line 91
    const v0, 0x7f090050

    invoke-virtual {p0, v0}, Lcom/miui/ivr/ui/CallMenuPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/ivr/ui/CallMenuPanelView;->mExpandIcon:Landroid/widget/ImageView;

    .line 92
    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/miui/ivr/ui/CallMenuPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/ivr/ui/CallMenuPanelView;->mExpandText:Landroid/widget/TextView;

    .line 94
    const v0, 0x7f09004d

    invoke-virtual {p0, v0}, Lcom/miui/ivr/ui/CallMenuPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/ivr/ui/CallMenuPanelView;->mDialingText:Landroid/widget/TextView;

    .line 95
    iget-object v0, p0, Lcom/miui/ivr/ui/CallMenuPanelView;->mDialer:Lcom/miui/ivr/ui/KeyDialer;

    new-instance v1, Lcom/miui/ivr/ui/CallMenuPanelView$1;

    invoke-direct {v1, p0}, Lcom/miui/ivr/ui/CallMenuPanelView$1;-><init>(Lcom/miui/ivr/ui/CallMenuPanelView;)V

    invoke-virtual {v0, v1}, Lcom/miui/ivr/ui/KeyDialer;->setListener(Lcom/miui/ivr/ui/KeyDialer$Listener;)V

    .line 100
    invoke-virtual {p0}, Lcom/miui/ivr/ui/CallMenuPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/ivr/ui/CallMenuPanelView;->mIsVoiceMutable:Z

    .line 101
    iget-object v1, p0, Lcom/miui/ivr/ui/CallMenuPanelView;->mDialingText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/miui/ivr/ui/CallMenuPanelView;->mIsVoiceMutable:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0c00a2

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 102
    iget-object v0, p0, Lcom/miui/ivr/ui/CallMenuPanelView;->mTitleBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 103
    return-void

    .line 101
    :cond_0
    const v0, 0x7f0c00a3

    goto :goto_0
.end method
