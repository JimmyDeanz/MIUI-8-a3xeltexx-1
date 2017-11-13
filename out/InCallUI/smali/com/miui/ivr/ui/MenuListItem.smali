.class public Lcom/miui/ivr/ui/MenuListItem;
.super Landroid/widget/LinearLayout;
.source "MenuListItem.java"


# instance fields
.field private mExpandIcon:Landroid/view/View;

.field private mText:Landroid/widget/TextView;

.field private mTextCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 33
    const v0, 0x7f09004f

    invoke-virtual {p0, v0}, Lcom/miui/ivr/ui/MenuListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/ivr/ui/MenuListItem;->mText:Landroid/widget/TextView;

    .line 34
    const v0, 0x7f0900a9

    invoke-virtual {p0, v0}, Lcom/miui/ivr/ui/MenuListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/ivr/ui/MenuListItem;->mTextCount:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f090050

    invoke-virtual {p0, v0}, Lcom/miui/ivr/ui/MenuListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/ivr/ui/MenuListItem;->mExpandIcon:Landroid/view/View;

    .line 36
    return-void
.end method
