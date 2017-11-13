.class public Lcom/android/internal/widget/ScrollingTabContainerView;
.super Landroid/widget/HorizontalScrollView;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;,
        Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    }
.end annotation


# static fields
.field private static final FADE_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "ScrollingTabContainerView"

.field private static final mIsUpgradedTablet:Z

.field private static final sAlphaInterpolator:Landroid/animation/TimeInterpolator;


# instance fields
.field private mAllowCollapse:Z

.field private mContentHeight:I

.field private mDropDownResId:I

.field private mIsThemeDeviceDefaultFamily:Z

.field mMaxTabWidth:I

.field private mMinTabWidth:I

.field private mSelectedTabIndex:I

.field mStackedTabMaxWidth:I

.field private mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

.field private mTabLayout:Landroid/widget/LinearLayout;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabSpinner:Landroid/widget/Spinner;

.field protected final mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

.field protected mVisibilityAnim:Landroid/animation/Animator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mocha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsUpgradedTablet:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-direct {v4, p0}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    iput-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    iput v6, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMinTabWidth:I

    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->setHorizontalScrollBarEnabled(Z)V

    invoke-static {p1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v1

    .local v1, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    invoke-virtual {v1}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x1

    invoke-direct {v7, v8, v9}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v4, v7}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .local v3, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v7, 0x11600bd

    invoke-virtual {v4, v7, v3, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsThemeDeviceDefaultFamily:Z

    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .local v2, "dropDownSpinnerText":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v7, 0x10102f5

    invoke-virtual {v4, v7, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    iget v7, v2, Landroid/util/TypedValue;->data:I

    new-array v5, v5, [I

    const v8, 0x1010087

    aput v8, v5, v6

    invoke-virtual {v4, v7, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mDropDownResId:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "dropDownSpinnerText":Landroid/util/TypedValue;
    :cond_0
    move v4, v6

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ScrollingTabContainerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    iget v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMinTabWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ScrollingTabContainerView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsThemeDeviceDefaultFamily:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ScrollingTabContainerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    iget v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mDropDownResId:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;ZZ)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ScrollingTabContainerView;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/app/ActionBar$Tab;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/content/Context;Landroid/app/ActionBar$Tab;ZZ)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    return-object v0
.end method

.method private createSpinner()Landroid/widget/Spinner;
    .locals 4

    .prologue
    new-instance v0, Landroid/widget/Spinner;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102d7

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .local v0, "spinner":Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemClickListenerInt(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-object v0
.end method

.method private createTabLayout()Landroid/widget/LinearLayout;
    .locals 4

    .prologue
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102f4

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .local v0, "tabLayout":Landroid/widget/LinearLayout;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setMeasureWithLargestChildEnabled(Z)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private createTabView(Landroid/content/Context;Landroid/app/ActionBar$Tab;ZZ)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "tab"    # Landroid/app/ActionBar$Tab;
    .param p3, "forAdapter"    # Z
    .param p4, "forDropDownView"    # Z

    .prologue
    const/4 v6, 0x0

    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;ZZ)V

    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz p3, :cond_0

    invoke-virtual {v0, v6}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    iget v3, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setFocusable(Z)V

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-direct {v1, p0, v6}, Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Lcom/android/internal/widget/ScrollingTabContainerView$1;)V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabClickListener:Lcom/android/internal/widget/ScrollingTabContainerView$TabClickListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private isCollapsed()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performCollapse()V
    .locals 5

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->createSpinner()Landroid/widget/Spinner;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;)V

    .local v0, "adapter":Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getPopupContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->setDropDownViewContext(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .end local v0    # "adapter":Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    iget v2, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0
.end method

.method private performExpand()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return v4

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    goto :goto_0
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v5, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/content/Context;Landroid/app/ActionBar$Tab;ZZ)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1, p1, v5, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->createTabView(Landroid/content/Context;Landroid/app/ActionBar$Tab;ZZ)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    move-result-object v0

    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->setSelected(Z)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public animateToTab(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "tabView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    new-instance v1, Lcom/android/internal/widget/ScrollingTabContainerView$1;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView$1;-><init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public animateToVisibility(I)V
    .locals 8
    .param p1, "visibility"    # I

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAlpha(F)V

    :cond_1
    const-string v1, "alpha"

    new-array v2, v2, [F

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void

    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_2
    const-string v1, "alpha"

    new-array v2, v2, [F

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .restart local v0    # "anim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/android/internal/widget/ScrollingTabContainerView;->sAlphaInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mVisAnimListener:Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->withFinalVisibility(I)Lcom/android/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/KeyEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .local v0, "keyCode":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getTabContainerHeight()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setContentHeight(I)V

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->getStackedTabMaxWidth()I

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object v0, p2

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .local v0, "tabView":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActionBar$Tab;->select()V

    return-void
.end method

.method public onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .local v10, "widthMode":I
    const/high16 v11, 0x40000000    # 2.0f

    if-ne v10, v11, :cond_6

    const/4 v5, 0x1

    .local v5, "lockedExpanded":Z
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/ScrollingTabContainerView;->setFillViewport(Z)V

    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    .local v2, "childCount":I
    const/4 v11, 0x1

    if-le v2, v11, :cond_9

    const/high16 v11, 0x40000000    # 2.0f

    if-eq v10, v11, :cond_0

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_9

    :cond_0
    const/4 v11, 0x2

    if-le v2, v11, :cond_7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3ecccccd    # 0.4f

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iput v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    :goto_1
    iget-boolean v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v11, :cond_1

    sget-boolean v11, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsUpgradedTablet:Z

    if-nez v11, :cond_2

    :cond_1
    iget v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v12, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mStackedTabMaxWidth:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    iput v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    :cond_2
    iget-boolean v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mIsThemeDeviceDefaultFamily:Z

    if-eqz v11, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .local v8, "parent":Landroid/view/View;
    if-eqz v8, :cond_3

    instance-of v11, v8, Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v11, :cond_3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .local v9, "width":I
    iget v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    mul-int/2addr v11, v2

    if-ge v11, v9, :cond_8

    div-int v11, v9, v2

    iput v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iget v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    iput v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMinTabWidth:I

    .end local v8    # "parent":Landroid/view/View;
    .end local v9    # "width":I
    :cond_3
    :goto_2
    iget v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    const/4 v3, 0x0

    .local v3, "hasCustomView":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v2, :cond_4

    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .local v1, "child":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v11

    if-eqz v11, :cond_a

    const/4 v11, 0x1

    :goto_4
    invoke-virtual {v1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v12

    if-eqz v12, :cond_b

    const/4 v12, 0x1

    :goto_5
    and-int/2addr v11, v12

    if-eqz v11, :cond_c

    const/4 v3, 0x1

    .end local v1    # "child":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    :cond_4
    if-nez v5, :cond_d

    iget-boolean v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v11, :cond_d

    if-nez v3, :cond_d

    const/4 v0, 0x1

    .local v0, "canCollapse":Z
    :goto_6
    if-eqz v0, :cond_f

    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, p2}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v11

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    if-le v11, v12, :cond_e

    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performCollapse()V

    :goto_7
    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v7

    .local v7, "oldWidth":I
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->getMeasuredWidth()I

    move-result v6

    .local v6, "newWidth":I
    if-eqz v5, :cond_5

    if-eq v7, v6, :cond_5

    iget v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    invoke-virtual {p0, v11}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    :cond_5
    return-void

    .end local v0    # "canCollapse":Z
    .end local v2    # "childCount":I
    .end local v3    # "hasCustomView":Z
    .end local v4    # "i":I
    .end local v5    # "lockedExpanded":Z
    .end local v6    # "newWidth":I
    .end local v7    # "oldWidth":I
    :cond_6
    const/4 v5, 0x0

    goto/16 :goto_0

    .restart local v2    # "childCount":I
    .restart local v5    # "lockedExpanded":Z
    :cond_7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    iput v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto/16 :goto_1

    .restart local v8    # "parent":Landroid/view/View;
    .restart local v9    # "width":I
    :cond_8
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMinTabWidth:I

    goto :goto_2

    .end local v8    # "parent":Landroid/view/View;
    .end local v9    # "width":I
    :cond_9
    const/4 v11, -0x1

    iput v11, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mMaxTabWidth:I

    goto :goto_2

    .restart local v1    # "child":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    .restart local v3    # "hasCustomView":Z
    .restart local v4    # "i":I
    :cond_a
    const/4 v11, 0x0

    goto :goto_4

    :cond_b
    const/4 v12, 0x0

    goto :goto_5

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .end local v1    # "child":Lcom/android/internal/widget/ScrollingTabContainerView$TabView;
    :cond_d
    const/4 v0, 0x0

    goto :goto_6

    .restart local v0    # "canCollapse":Z
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_7

    :cond_f
    invoke-direct {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->performExpand()Z

    goto :goto_7
.end method

.method public removeAllTabs()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public removeTabAt(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setAllowCollapse(Z)V
    .locals 0
    .param p1, "allowCollapse"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0
    .param p1, "contentHeight"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mContentHeight:I

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    return-void
.end method

.method public setTabSelected(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    iput p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mSelectedTabIndex:I

    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    .local v3, "tabCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_1

    const/4 v2, 0x1

    .local v2, "isSelected":Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2    # "isSelected":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v4, :cond_3

    if-ltz p1, :cond_3

    iget-object v4, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4, p1}, Landroid/widget/Spinner;->setSelection(I)V

    :cond_3
    return-void
.end method

.method public updateTab(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->update()V

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mTabSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->notifyDataSetChanged()V

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView;->mAllowCollapse:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/widget/ScrollingTabContainerView;->requestLayout()V

    :cond_1
    return-void
.end method
