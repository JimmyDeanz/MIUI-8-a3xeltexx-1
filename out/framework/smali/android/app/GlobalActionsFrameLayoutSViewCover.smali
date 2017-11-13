.class public Landroid/app/GlobalActionsFrameLayoutSViewCover;
.super Landroid/widget/LinearLayout;
.source "GlobalActionsFrameLayoutSViewCover.java"


# instance fields
.field bg:Landroid/widget/LinearLayout;

.field childcnt:I

.field childindex:[I

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field sv:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    .line 46
    iput-object v1, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    .line 47
    iput-object v1, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    .line 48
    iput-object v1, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "childcount"    # I

    .prologue
    const/4 v3, 0x0

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v2, 0x0

    iput v2, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    .line 46
    iput-object v3, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    .line 47
    iput-object v3, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    .line 48
    iput-object v3, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    .line 57
    iput-object p1, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->mContext:Landroid/content/Context;

    .line 58
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 59
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090069

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 60
    .local v1, "view":Landroid/view/View;
    iput p2, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    .line 61
    iget v2, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    .line 62
    const v2, 0x10203a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    .line 63
    const v2, 0x10203a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    .line 64
    invoke-virtual {p0, v1}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->addView(Landroid/view/View;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/os/Handler;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "childcount"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 45
    const/4 v2, 0x0

    iput v2, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    .line 46
    iput-object v3, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    .line 47
    iput-object v3, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    .line 48
    iput-object v3, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    .line 69
    iput-object p1, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->mContext:Landroid/content/Context;

    .line 70
    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 71
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x1090069

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 72
    .local v1, "view":Landroid/view/View;
    iput p2, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    .line 73
    iget v2, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    .line 74
    const v2, 0x10203a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    iput-object v2, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    .line 75
    const v2, 0x10203a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    .line 76
    iput-object p3, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->mHandler:Landroid/os/Handler;

    .line 77
    invoke-virtual {p0, v1}, Landroid/app/GlobalActionsFrameLayoutSViewCover;->addView(Landroid/view/View;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    .line 46
    iput-object v1, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    .line 47
    iput-object v1, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    .line 48
    iput-object v1, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    .line 46
    iput-object v1, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    .line 47
    iput-object v1, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    .line 48
    iput-object v1, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    .line 46
    iput-object v1, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->childindex:[I

    .line 47
    iput-object v1, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    .line 48
    iput-object v1, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->sv:Landroid/widget/ScrollView;

    .line 90
    return-void
.end method


# virtual methods
.method public getChildIndex()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->childcnt:I

    return v0
.end method

.method public hideAllView(Landroid/view/View;)V
    .locals 9
    .param p1, "selectedView"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 93
    const/4 v3, 0x0

    .line 94
    .local v3, "view":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 95
    iget-object v4, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 96
    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    move-object v2, v3

    .line 98
    .local v2, "tempView":Landroid/view/View;
    const v4, 0x10203b7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 99
    .local v1, "imageFrameLayout":Landroid/widget/FrameLayout;
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 100
    invoke-virtual {v1, v8}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 101
    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    new-instance v5, Landroid/app/GlobalActionsFrameLayoutSViewCover$1;

    invoke-direct {v5, p0, v2}, Landroid/app/GlobalActionsFrameLayoutSViewCover$1;-><init>(Landroid/app/GlobalActionsFrameLayoutSViewCover;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 113
    .end local v1    # "imageFrameLayout":Landroid/widget/FrameLayout;
    .end local v2    # "tempView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public showAllView(Landroid/view/View;)V
    .locals 6
    .param p1, "selectedView"    # Landroid/view/View;

    .prologue
    .line 116
    const/4 v2, 0x0

    .line 117
    .local v2, "view":Landroid/view/View;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 118
    iget-object v3, p0, Landroid/app/GlobalActionsFrameLayoutSViewCover;->bg:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 119
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    move-object v1, v2

    .line 121
    .local v1, "tempView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/app/GlobalActionsFrameLayoutSViewCover$2;

    invoke-direct {v4, p0, v1}, Landroid/app/GlobalActionsFrameLayoutSViewCover$2;-><init>(Landroid/app/GlobalActionsFrameLayoutSViewCover;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    .line 132
    .end local v1    # "tempView":Landroid/view/View;
    :cond_1
    return-void
.end method
