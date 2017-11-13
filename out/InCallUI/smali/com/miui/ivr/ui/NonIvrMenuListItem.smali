.class public Lcom/miui/ivr/ui/NonIvrMenuListItem;
.super Landroid/widget/LinearLayout;
.source "NonIvrMenuListItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/ivr/ui/NonIvrMenuListItem$1;,
        Lcom/miui/ivr/ui/NonIvrMenuListItem$RoundImageProcessor;
    }
.end annotation


# static fields
.field private static sIconCornerRadius:I

.field private static sIconHeight:I

.field private static sIconWidth:I

.field private static sRoundImageProcessor:Lcom/miui/ivr/ui/NonIvrMenuListItem$RoundImageProcessor;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImage:Landroid/widget/ImageView;

.field private mName:Landroid/widget/TextView;

.field private mPrice:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    iput-object p1, p0, Lcom/miui/ivr/ui/NonIvrMenuListItem;->mContext:Landroid/content/Context;

    .line 34
    sget v0, Lcom/miui/ivr/ui/NonIvrMenuListItem;->sIconWidth:I

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/miui/ivr/ui/NonIvrMenuListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08005f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/ivr/ui/NonIvrMenuListItem;->sIconWidth:I

    .line 36
    invoke-virtual {p0}, Lcom/miui/ivr/ui/NonIvrMenuListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/ivr/ui/NonIvrMenuListItem;->sIconHeight:I

    .line 39
    :cond_0
    sget v0, Lcom/miui/ivr/ui/NonIvrMenuListItem;->sIconCornerRadius:I

    if-nez v0, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/miui/ivr/ui/NonIvrMenuListItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/miui/ivr/ui/NonIvrMenuListItem;->sIconCornerRadius:I

    .line 44
    :cond_1
    sget-object v0, Lcom/miui/ivr/ui/NonIvrMenuListItem;->sRoundImageProcessor:Lcom/miui/ivr/ui/NonIvrMenuListItem$RoundImageProcessor;

    if-nez v0, :cond_2

    .line 45
    new-instance v0, Lcom/miui/ivr/ui/NonIvrMenuListItem$RoundImageProcessor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/ivr/ui/NonIvrMenuListItem$RoundImageProcessor;-><init>(Lcom/miui/ivr/ui/NonIvrMenuListItem;Lcom/miui/ivr/ui/NonIvrMenuListItem$1;)V

    sput-object v0, Lcom/miui/ivr/ui/NonIvrMenuListItem;->sRoundImageProcessor:Lcom/miui/ivr/ui/NonIvrMenuListItem$RoundImageProcessor;

    .line 47
    :cond_2
    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/miui/ivr/ui/NonIvrMenuListItem;->sIconCornerRadius:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/miui/ivr/ui/NonIvrMenuListItem;->sIconWidth:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 20
    sget v0, Lcom/miui/ivr/ui/NonIvrMenuListItem;->sIconHeight:I

    return v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 52
    const v0, 0x7f0900cf

    invoke-virtual {p0, v0}, Lcom/miui/ivr/ui/NonIvrMenuListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/ivr/ui/NonIvrMenuListItem;->mImage:Landroid/widget/ImageView;

    .line 53
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/miui/ivr/ui/NonIvrMenuListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/ivr/ui/NonIvrMenuListItem;->mName:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f0900d0

    invoke-virtual {p0, v0}, Lcom/miui/ivr/ui/NonIvrMenuListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/ivr/ui/NonIvrMenuListItem;->mPrice:Landroid/widget/TextView;

    .line 55
    return-void
.end method
