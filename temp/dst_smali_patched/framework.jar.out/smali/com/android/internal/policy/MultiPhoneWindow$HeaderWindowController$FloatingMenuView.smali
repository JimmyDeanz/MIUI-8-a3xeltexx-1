.class Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
.super Landroid/widget/FrameLayout;
.source "MultiPhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatingMenuView"
.end annotation


# instance fields
.field private mAvailableButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFloatingMenu:Landroid/view/View;

.field private mFloatingMenuBg:Landroid/view/View;

.field private mFloatingMenuCloseAnimating:Z

.field private mFloatingMenuContainer:Landroid/widget/LinearLayout;

.field private mFloatingMenuOpenAnimating:Z

.field private mIsAttached:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;Landroid/content/Context;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    iput-object p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    iput-boolean v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    iput-boolean v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x1090099

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v4, 0x102040c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutDirection(I)V

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v4, 0x1020410

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/RippleDrawable;

    .local v2, "ripple":Landroid/graphics/drawable/RippleDrawable;
    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x106019f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .local v0, "color":I
    const v3, 0xffffff

    and-int/2addr v3, v0

    const/high16 v4, 0x66000000

    or-int v0, v3, v4

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .end local v0    # "color":I
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getFitsSystemWindows()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic access$1500(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->setFloatingButtonHoverListener()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->animateFloatingMenuClose()V

    return-void
.end method

.method static synthetic access$3002(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->removeSelf()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mIsAttached:Z

    return v0
.end method

.method private animateFloatingMenuClose()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-boolean v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean v11, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    iput-boolean v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v9, 0x102040d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .local v4, "leftBackground":Landroid/view/View;
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v9, 0x102040f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .local v7, "rightBackground":Landroid/view/View;
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v9, 0x102040e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .local v2, "centerBackground":Landroid/view/View;
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x10a0055

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .local v1, "centerAnim":Landroid/view/animation/Animation;
    new-instance v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$2;

    invoke-direct {v8, p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$2;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;)V

    invoke-virtual {v1, v8}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-direct {p0, v10, v11}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-direct {p0, v10, v10}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v3, 0x0

    .local v3, "left":I
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v6, v8, -0x1

    .local v6, "right":I
    const/4 v5, 0x0

    .local v5, "offset":I
    :goto_0
    if-gt v3, v6, :cond_0

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v8}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x10a0054

    invoke-static {v8, v9}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, "a":Landroid/view/animation/Animation;
    mul-int/lit8 v8, v5, 0x64

    int-to-long v8, v8

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    if-eq v3, v6, :cond_2

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private animateFloatingMenuOpen(Z)V
    .locals 13
    .param p1, "autoclose"    # Z

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    iget-boolean v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gtz v9, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-boolean v12, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    iput-boolean v11, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v10, 0x102040d

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .local v5, "leftBackground":Landroid/view/View;
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v10, 0x102040f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .local v8, "rightBackground":Landroid/view/View;
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v10, 0x102040e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .local v2, "centerBackground":Landroid/view/View;
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v9, v9, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10a0056

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .local v1, "centerAnim":Landroid/view/animation/Animation;
    new-instance v9, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;

    invoke-direct {v9, p0, p1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView$1;-><init>(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;Z)V

    invoke-virtual {v1, v9}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-direct {p0, v11, v11}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    invoke-direct {p0, v11, v12}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v4, 0x0

    .local v4, "left":I
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v7, v9, -0x1

    .local v7, "right":I
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    iget-object v10, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    add-int/lit8 v3, v9, -0x1

    .local v3, "closer":I
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_3

    add-int/lit8 v6, v3, 0x1

    .local v6, "offset":I
    :goto_0
    if-gt v4, v7, :cond_0

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v9, v9, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v9}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10a0053

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .local v0, "a":Landroid/view/animation/Animation;
    mul-int/lit8 v9, v6, 0x64

    int-to-long v10, v9

    invoke-virtual {v0, v10, v11}, Landroid/view/animation/Animation;->setStartOffset(J)V

    if-eq v4, v7, :cond_2

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v6    # "offset":I
    :cond_3
    move v6, v3

    goto :goto_0
.end method

.method private generateLayoutParam()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/16 v1, 0x3ef

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const-string v1, "PenWindow Titlebar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const v1, 0x40208

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    return-object v0
.end method

.method private getButtonAnimation(ZZ)Landroid/view/animation/TranslateAnimation;
    .locals 15
    .param p1, "open"    # Z
    .param p2, "left"    # Z

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v2, 0x102040d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .local v11, "leftBackground":Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v2, 0x102040f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .local v13, "rightBackground":Landroid/view/View;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .local v0, "t":Landroid/view/animation/TranslateAnimation;
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mTargetSdkVersion:I
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow;->access$3200(Lcom/android/internal/policy/MultiPhoneWindow;)I

    move-result v1

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->access$2400(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;)Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingMenuRightMargin:I
    invoke-static {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2500(Lcom/android/internal/policy/MultiPhoneWindow;)I

    move-result v2

    add-int v12, v1, v2

    .local v12, "measureWidth":I
    :goto_0
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    add-int v10, v1, v2

    .local v10, "buttonsSideBgWidth":I
    div-int/lit8 v9, v12, 0x2

    .local v9, "buttonPopupHalfWidth":I
    div-int/lit8 v1, v10, 0x2

    sub-int v14, v9, v1

    .local v14, "showposition":I
    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x0

    int-to-float v2, v14

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mContext:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/content/Context;I)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0100

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    return-object v0

    .end local v9    # "buttonPopupHalfWidth":I
    .end local v10    # "buttonsSideBgWidth":I
    .end local v12    # "measureWidth":I
    .end local v14    # "showposition":I
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    invoke-static {v1}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->access$2400(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;)Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .restart local v12    # "measureWidth":I
    goto :goto_0

    .restart local v9    # "buttonPopupHalfWidth":I
    .restart local v10    # "buttonsSideBgWidth":I
    .restart local v14    # "showposition":I
    :cond_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x0

    neg-int v2, v14

    int-to-float v2, v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    :goto_2
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "t":Landroid/view/animation/TranslateAnimation;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    neg-int v4, v14

    int-to-float v4, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v0    # "t":Landroid/view/animation/TranslateAnimation;
    goto :goto_2
.end method

.method private removeSelf()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v3, 0x102040d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v3, 0x102040f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuBg:Landroid/view/View;

    const v3, 0x102040e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    goto :goto_0

    .end local v0    # "button":Landroid/view/View;
    :cond_1
    iput-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuCloseAnimating:Z

    iput-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuOpenAnimating:Z

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-boolean v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mIsAttached:Z

    return-void
.end method

.method private setFloatingButtonHoverListener()V
    .locals 7

    .prologue
    const/16 v6, 0x3035

    const/4 v5, 0x1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050326

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .local v0, "hoverPopupTopMargin":I
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v2}, Lcom/android/internal/policy/MultiPhoneWindow;->getStackBound()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .local v1, "stackBound":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    iget-object v4, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v4, v4, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int v4, v0, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    iget-object v2, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v2, v2, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public checkAvailableButtonsForAnim()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_0

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v9, v9, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v9, v9, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_2

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v9, v9, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v11, :cond_3

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v9, v9, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v9, 0x102040d

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .local v5, "leftImageView":Landroid/view/View;
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v9, 0x102040f

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .local v6, "rightImageView":Landroid/view/View;
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    const v9, 0x102040e

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .local v2, "centerImageView":Landroid/view/View;
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenu:Landroid/view/View;

    invoke-virtual {v8, v10, v10}, Landroid/view/View;->measure(II)V

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    # getter for: Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mLocalMenuContainer:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;
    invoke-static {v8}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->access$2400(Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;)Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .local v7, "vlp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v8, v8, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    iget v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {v9, v10}, Landroid/view/View;->resolveSize(II)I

    move-result v9

    # setter for: Lcom/android/internal/policy/MultiPhoneWindow;->mFloatingMenuRightMargin:I
    invoke-static {v8, v9}, Lcom/android/internal/policy/MultiPhoneWindow;->access$2502(Lcom/android/internal/policy/MultiPhoneWindow;I)I

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, "centerImageParams":Landroid/view/ViewGroup$LayoutParams;
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .local v3, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v8

    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    add-int/2addr v8, v9

    iget v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int/2addr v8, v9

    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v8, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mAvailableButtons:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .local v0, "button":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v0, v10}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_4
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .end local v0    # "button":Landroid/view/View;
    :cond_5
    return-void
.end method

.method public dismiss(Z)V
    .locals 3
    .param p1, "anim"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mIsAttached:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismiss menu with anim="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->animateFloatingMenuClose()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->removeSelf()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->dismiss(Z)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .local v2, "result":Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/RippleDrawable;

    .local v3, "ripple":Landroid/graphics/drawable/RippleDrawable;
    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v5, v5, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/MultiPhoneWindow;

    invoke-virtual {v5}, Lcom/android/internal/policy/MultiPhoneWindow;->getProperContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x105030d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .local v4, "rippleSize":I
    const/4 v0, 0x0

    .local v0, "layoutLeft":I
    const/4 v1, 0x0

    .local v1, "layoutRight":I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    if-le v4, v5, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int v6, v4, v6

    div-int/lit8 v6, v6, 0x2

    sub-int v0, v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int v6, v4, v6

    div-int/lit8 v6, v6, 0x2

    add-int v1, v5, v6

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v3, v0, v5, v1, v6}, Landroid/graphics/drawable/RippleDrawable;->setHotspotBounds(IIII)V

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    add-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    add-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/widget/LinearLayout;->drawableHotspotChanged(FF)V

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .end local v0    # "layoutLeft":I
    .end local v1    # "layoutRight":I
    .end local v3    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    .end local v4    # "rippleSize":I
    :cond_0
    :goto_1
    return v2

    .restart local v0    # "layoutLeft":I
    .restart local v1    # "layoutRight":I
    .restart local v3    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    .restart local v4    # "rippleSize":I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    add-int v0, v5, v6

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v6, v4

    div-int/lit8 v6, v6, 0x2

    sub-int v1, v5, v6

    goto :goto_0

    .end local v0    # "layoutLeft":I
    .end local v1    # "layoutRight":I
    .end local v3    # "ripple":Landroid/graphics/drawable/RippleDrawable;
    .end local v4    # "rippleSize":I
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mFloatingMenuContainer:Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setPressed(Z)V

    goto :goto_1
.end method

.method public show(IIZ)V
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "autoclose"    # Z

    .prologue
    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mIsAttached:Z

    if-nez v1, :cond_0

    const-string v1, "MultiPhoneWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show menu at ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->generateLayoutParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnDragAndDrop:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMinimize:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnMaximize:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->this$1:Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;

    iget-object v1, v1, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController;->mBtnExit:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, p0, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0, p3}, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->animateFloatingMenuOpen(Z)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/MultiPhoneWindow$HeaderWindowController$FloatingMenuView;->mIsAttached:Z

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method
