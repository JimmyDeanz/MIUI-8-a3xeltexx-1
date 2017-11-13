.class Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/multiwindow/MinimizeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrashAnimationEffect"
.end annotation


# instance fields
.field private final TRASH_DIRECTION_LEFT:I

.field private final TRASH_DIRECTION_NONE:I

.field private final TRASH_DIRECTION_RIGHT:I

.field private coveredTrash:Landroid/widget/ImageView;

.field private mFrameTrashBodyAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private mIsShowingTrash:Z

.field private mIsTrashOpen:Z

.field private mNeedAnimation:Z

.field private mRedCircleHeight:I

.field private mRemoveLayoutWidth:I

.field private mRemoveRangeRect:Landroid/graphics/Rect;

.field private mRemoveRangeRectMargin:I

.field private mShowTrashDirection:I

.field private mTopBgFocusEffectMargin:I

.field private mTopMargin:I

.field private mTrashMargin:I

.field private removeBackGroundBlackColor:I

.field private removeBackGroundRedColor:I

.field private removeLayout:Landroid/view/View;

.field final synthetic this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

.field private topBgFocusEffect:Landroid/widget/ImageView;

.field private topBgFocusEffectDrawable:Landroid/graphics/drawable/LayerDrawable;

.field private topBgFocusEffectDrawableItem:Landroid/graphics/drawable/GradientDrawable;

.field private topBgFocusEffectOuter:Landroid/widget/LinearLayout;

.field private trash:Landroid/view/View;

.field private trashBody:Landroid/widget/ImageView;

.field private trashBodyForRemoveAnimation:Landroid/widget/ImageView;

.field private trashCover:Landroid/widget/ImageView;

.field private trashText:Landroid/widget/TextView;

.field private trashWithText:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1065
    iput-object p1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1047
    iput-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashBodyForRemoveAnimation:Landroid/widget/ImageView;

    .line 1050
    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mRemoveLayoutWidth:I

    .line 1051
    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mTopBgFocusEffectMargin:I

    .line 1052
    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mTrashMargin:I

    .line 1053
    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mRedCircleHeight:I

    .line 1054
    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mTopMargin:I

    .line 1056
    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->TRASH_DIRECTION_NONE:I

    .line 1057
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->TRASH_DIRECTION_LEFT:I

    .line 1058
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->TRASH_DIRECTION_RIGHT:I

    .line 1061
    iput-boolean v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mIsShowingTrash:Z

    .line 1062
    iput-boolean v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mNeedAnimation:Z

    .line 1063
    iput-boolean v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mIsTrashOpen:Z

    .line 1066
    iput v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mShowTrashDirection:I

    .line 1067
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    # setter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMoveInterval:I
    invoke-static {p1, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3202(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;I)I

    .line 1069
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050322

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mTopBgFocusEffectMargin:I

    .line 1071
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050321

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mTrashMargin:I

    .line 1073
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050324

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mRedCircleHeight:I

    .line 1075
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050323

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mRemoveRangeRectMargin:I

    .line 1077
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10601ac

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeBackGroundBlackColor:I

    .line 1079
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10601ab

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeBackGroundRedColor:I

    .line 1081
    return-void
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;
    .param p1, "x1"    # Z

    .prologue
    .line 1028
    invoke-direct {p0, p1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->bounceShowRedCircleAnimation(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)Landroid/graphics/drawable/GradientDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->topBgFocusEffectDrawableItem:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)Landroid/graphics/drawable/LayerDrawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->topBgFocusEffectDrawable:Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->topBgFocusEffect:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1028
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeTrashAnimation()V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1028
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeTrashTextAnimation()V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1028
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeRedCircleAnimation()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1028
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeTrashCoverCloseAnimation()V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trash:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashCover:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashBodyForRemoveAnimation:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1028
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeTrashBodyFrameAnimation()V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1028
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->openTrashCoverAnimation()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1028
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->shakeTrashCoverAnimation()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;

    .prologue
    .line 1028
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->closeTrashCoverAnimation()V

    return-void
.end method

.method private bounceShowRedCircleAnimation(Z)V
    .locals 11
    .param p1, "open"    # Z

    .prologue
    .line 1288
    move v9, p1

    .line 1290
    .local v9, "openTrash":Z
    if-eqz v9, :cond_0

    .line 1291
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v10, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1292
    .local v10, "topEffectAlphaAnim":Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f400000    # 0.75f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f400000    # 0.75f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1300
    .local v0, "topEffectScaleAnim":Landroid/view/animation/ScaleAnimation;
    :goto_0
    const-wide/16 v2, 0xe9

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1301
    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v10, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1302
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 1303
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1304
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$4;

    invoke-direct {v1, p0, v9}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$4;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;Z)V

    invoke-virtual {v10, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1326
    const-wide/16 v2, 0xdf

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1327
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    .line 1328
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1329
    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1330
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$5;

    invoke-direct {v1, p0, v9}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$5;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1345
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->topBgFocusEffect:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1346
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->topBgFocusEffectOuter:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1347
    return-void

    .line 1295
    .end local v0    # "topEffectScaleAnim":Landroid/view/animation/ScaleAnimation;
    .end local v10    # "topEffectAlphaAnim":Landroid/view/animation/AlphaAnimation;
    :cond_0
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v10, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1296
    .restart local v10    # "topEffectAlphaAnim":Landroid/view/animation/AlphaAnimation;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .restart local v0    # "topEffectScaleAnim":Landroid/view/animation/ScaleAnimation;
    goto :goto_0
.end method

.method private changeRedCircleColor(Z)V
    .locals 1
    .param p1, "open"    # Z

    .prologue
    .line 1241
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->changeRedCircleColor(ZZ)V

    .line 1242
    return-void
.end method

.method private changeRedCircleColor(ZZ)V
    .locals 5
    .param p1, "open"    # Z
    .param p2, "anim"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1245
    if-eqz p1, :cond_1

    .line 1246
    iget-boolean v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mIsTrashOpen:Z

    if-eqz v2, :cond_2

    .line 1283
    :cond_0
    :goto_0
    return-void

    .line 1250
    :cond_1
    iget-boolean v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mIsTrashOpen:Z

    if-eqz v2, :cond_0

    .line 1255
    :cond_2
    if-eqz p2, :cond_4

    .line 1256
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 1258
    .local v0, "circleColors":[I
    if-eqz p1, :cond_3

    .line 1259
    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeBackGroundBlackColor:I

    aput v2, v0, v3

    .line 1260
    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeBackGroundRedColor:I

    aput v2, v0, v4

    .line 1265
    :goto_1
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofArgb([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1266
    .local v1, "transAnim":Landroid/animation/ValueAnimator;
    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$3;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1273
    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1274
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 1262
    .end local v1    # "transAnim":Landroid/animation/ValueAnimator;
    :cond_3
    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeBackGroundRedColor:I

    aput v2, v0, v3

    .line 1263
    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeBackGroundBlackColor:I

    aput v2, v0, v4

    goto :goto_1

    .line 1276
    .end local v0    # "circleColors":[I
    :cond_4
    if-eqz p1, :cond_5

    .line 1277
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->topBgFocusEffectDrawableItem:Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeBackGroundRedColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1281
    :goto_2
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->topBgFocusEffect:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->topBgFocusEffectDrawable:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1279
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->topBgFocusEffectDrawableItem:Landroid/graphics/drawable/GradientDrawable;

    iget v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeBackGroundBlackColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_2
.end method

.method private closeRedCircleTrashCoverAnimation(I)V
    .locals 2
    .param p1, "direction"    # I

    .prologue
    const/4 v1, 0x0

    .line 1581
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->changeRedCircleColor(ZZ)V

    .line 1582
    invoke-direct {p0, p1, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->shakeRedCircleTrashCoverAnimation(IZ)V

    .line 1583
    invoke-direct {p0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->scaleRedCircleTrashCoverAnimation(Z)V

    .line 1584
    return-void
.end method

.method private closeTrashCoverAnimation()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2077
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v6, -0x42b33333    # -0.05f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2080
    .local v0, "transAnim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2081
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2082
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$27;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$27;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2093
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2094
    return-void
.end method

.method private openRedCircleTrashCoverAnimation(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 1575
    invoke-direct {p0, v0, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->changeRedCircleColor(ZZ)V

    .line 1576
    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->shakeRedCircleTrashCoverAnimation(IZ)V

    .line 1577
    invoke-direct {p0, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->scaleRedCircleTrashCoverAnimation(Z)V

    .line 1578
    return-void
.end method

.method private openTrashCoverAnimation()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2034
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const v8, -0x42b33333    # -0.05f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 2037
    .local v0, "transAnim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 2038
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 2039
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 2040
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$25;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$25;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2051
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2052
    return-void
.end method

.method private removeMinimizedIconAnimation()V
    .locals 28

    .prologue
    .line 1709
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v22

    .line 1711
    .local v22, "minimizeIconWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashCover:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v27

    .line 1713
    .local v27, "trashHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getX()F

    move-result v23

    .line 1714
    .local v23, "originalX":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v24

    .line 1716
    .local v24, "originalY":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v3

    move/from16 v0, v23

    float-to-int v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setLeft(I)V

    .line 1717
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v3

    move/from16 v0, v23

    float-to-int v4, v0

    add-int v4, v4, v22

    invoke-virtual {v3, v4}, Landroid/view/View;->setRight(I)V

    .line 1718
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v3

    move/from16 v0, v24

    float-to-int v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setTop(I)V

    .line 1719
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v3

    move/from16 v0, v24

    float-to-int v4, v0

    add-int v4, v4, v22

    invoke-virtual {v3, v4}, Landroid/view/View;->setBottom(I)V

    .line 1720
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/view/View;->setX(F)V

    .line 1721
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v3

    move/from16 v0, v24

    invoke-virtual {v3, v0}, Landroid/view/View;->setY(F)V

    .line 1723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int v3, v3, v22

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v25, v3, v4

    .line 1724
    .local v25, "trashDestinationX":F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mTrashMargin:I

    int-to-float v3, v3

    move/from16 v0, v27

    int-to-float v4, v0

    const v5, 0x3eb33333    # 0.35f

    mul-float/2addr v4, v5

    sub-float v26, v3, v4

    .line 1726
    .local v26, "trashDestinationY":F
    sub-float v3, v25, v23

    move/from16 v0, v22

    int-to-float v4, v0

    div-float v6, v3, v4

    .line 1727
    .local v6, "distanceX":F
    sub-float v3, v26, v24

    move/from16 v0, v22

    int-to-float v4, v0

    div-float v10, v3, v4

    .line 1729
    .local v10, "distanceY":F
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1732
    .local v2, "minimizeIconRemoveTransAnim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x10a

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1733
    new-instance v3, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1734
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 1735
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1736
    new-instance v3, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$14;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$14;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1750
    new-instance v11, Landroid/view/animation/ScaleAnimation;

    const/high16 v12, 0x3f800000    # 1.0f

    const v13, 0x3ee66666    # 0.45f

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3ee66666    # 0.45f

    const/16 v16, 0x1

    const/high16 v17, 0x3f000000    # 0.5f

    const/16 v18, 0x1

    const/high16 v19, 0x3f000000    # 0.5f

    invoke-direct/range {v11 .. v19}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1752
    .local v11, "minimizeIconRemoveScaleAnim":Landroid/view/animation/ScaleAnimation;
    new-instance v3, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v11, v3}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1753
    const-wide/16 v4, 0x10a

    invoke-virtual {v11, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1754
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    .line 1755
    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1756
    new-instance v3, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$15;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$15;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v11, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1774
    new-instance v21, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1775
    .local v21, "minimizeIconRemoveAlphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v4, 0x10a

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1776
    new-instance v3, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1777
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 1778
    const/4 v3, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1779
    new-instance v3, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$16;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$16;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1799
    new-instance v20, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1800
    .local v20, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual/range {v20 .. v21}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1801
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1802
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1803
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1804
    return-void
.end method

.method private removeRedCircleAnimation()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x14d

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f400000    # 0.75f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    .line 1891
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const v3, 0x3ecccccd    # 0.4f

    const/4 v4, 0x0

    invoke-direct {v10, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1892
    .local v10, "topEffectRemoveAlphaAnim":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v10, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1893
    new-instance v3, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v10, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1894
    invoke-virtual {v10, v5}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 1895
    invoke-virtual {v10, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1896
    new-instance v3, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$20;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$20;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v10, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1914
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1916
    .local v0, "topEffectRemoveScaleAnim":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1917
    new-instance v1, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1918
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1919
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$21;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$21;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1934
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1935
    .local v9, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1936
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1937
    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1938
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->topBgFocusEffect:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1939
    return-void
.end method

.method private removeTrashAnimation()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v2, 0x0

    const v9, 0x3f8ccccd    # 1.1f

    const/4 v1, 0x1

    .line 1807
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3e800000    # 0.25f

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1810
    .local v0, "removeTrashTransAnim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v4, 0x10a

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1811
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillEnabled(Z)V

    .line 1812
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1813
    new-instance v3, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$17;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$17;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1828
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v9

    move v7, v1

    move v8, v12

    move v9, v1

    move v10, v12

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1830
    .local v2, "removeTrashScaleMaintainAnim":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v4, 0x14d

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1831
    invoke-virtual {v2, v1}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    .line 1832
    invoke-virtual {v2, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1833
    new-instance v3, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$18;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$18;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1857
    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v3, 0x0

    invoke-direct {v11, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1858
    .local v11, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v11, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1859
    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1860
    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1861
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trash:Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1862
    return-void
.end method

.method private removeTrashBodyFrameAnimation()V
    .locals 2

    .prologue
    .line 1942
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG_MINIMIZE_REMOVE_ANIM:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1943
    const-string v0, "MinimizeAnimator"

    const-string v1, "MinimizeAnimator::removeTrashBodyFrameAnimation() Start of FrameAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mFrameTrashBodyAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 1946
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashBodyForRemoveAnimation:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mFrameTrashBodyAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 1947
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mFrameTrashBodyAnim:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 1948
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mFrameTrashBodyAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 1949
    return-void
.end method

.method private removeTrashCoverCloseAnimation()V
    .locals 12

    .prologue
    .line 1952
    const/16 v11, 0xf

    .line 1953
    .local v11, "degreeByDirection":I
    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mShowTrashDirection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 1954
    mul-int/lit8 v11, v11, -0x1

    .line 1957
    :cond_0
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v1, v11

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1960
    .local v0, "removeTrashRotateAnim":Landroid/view/animation/RotateAnimation;
    new-instance v2, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1961
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1962
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setFillEnabled(Z)V

    .line 1963
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 1964
    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$22;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$22;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1982
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, -0x42b33333    # -0.05f

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1984
    .local v1, "removeTrashTransAnim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1985
    new-instance v2, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1986
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1987
    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$23;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$23;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2000
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2001
    .local v10, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2002
    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2003
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 2004
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashCover:Landroid/widget/ImageView;

    invoke-virtual {v2, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2005
    return-void
.end method

.method private removeTrashTextAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1865
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1866
    .local v0, "trashTextAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0xe9

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1867
    new-instance v1, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1868
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V

    .line 1869
    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1870
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$19;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$19;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1887
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1888
    return-void
.end method

.method private scaleRedCircleTrashCoverAnimation(Z)V
    .locals 10
    .param p1, "open"    # Z

    .prologue
    .line 1658
    move v9, p1

    .line 1660
    .local v9, "openTrash":Z
    if-eqz p1, :cond_1

    .line 1661
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f8ccccd    # 1.1f

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f8ccccd    # 1.1f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1668
    .local v0, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    :goto_0
    new-instance v1, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1669
    const-wide/16 v2, 0x85

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1670
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillEnabled(Z)V

    .line 1671
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1672
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$12;

    invoke-direct {v1, p0, v9}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$12;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;Z)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1689
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1690
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$13;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$13;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;Landroid/view/animation/ScaleAnimation;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1697
    :cond_0
    return-void

    .line 1664
    .end local v0    # "scaleAnim":Landroid/view/animation/ScaleAnimation;
    :cond_1
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f8ccccd    # 1.1f

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f8ccccd    # 1.1f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .restart local v0    # "scaleAnim":Landroid/view/animation/ScaleAnimation;
    goto :goto_0
.end method

.method private scaleTrashAnimation()V
    .locals 9

    .prologue
    const v2, 0x3f8ccccd    # 1.1f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    .line 2015
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 2017
    .local v0, "scaleAnim":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 2018
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 2019
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$24;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$24;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2030
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trash:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2031
    return-void
.end method

.method private shakeRedCircleTrashCoverAnimation(IZ)V
    .locals 13
    .param p1, "direction"    # I
    .param p2, "open"    # Z

    .prologue
    .line 1587
    const/16 v11, 0xf

    .line 1588
    .local v11, "degreeByDirection":I
    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 1589
    mul-int/lit8 v11, v11, -0x1

    .line 1592
    :cond_0
    move v12, p2

    .line 1594
    .local v12, "openTrash":Z
    const/4 v1, 0x0

    .line 1595
    .local v1, "transAnim":Landroid/view/animation/TranslateAnimation;
    if-eqz p2, :cond_2

    .line 1596
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    int-to-float v2, v11

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1598
    .end local v1    # "transAnim":Landroid/view/animation/TranslateAnimation;
    .local v0, "rotateAnim":Landroid/view/animation/RotateAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v9, -0x42b33333    # -0.05f

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1607
    .restart local v1    # "transAnim":Landroid/view/animation/TranslateAnimation;
    :goto_0
    new-instance v2, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1608
    const-wide/16 v2, 0x10a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 1609
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 1610
    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$9;

    invoke-direct {v2, p0, v12}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$9;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1628
    const-wide/16 v2, 0x10a

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1629
    new-instance v2, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1630
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1631
    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$10;

    invoke-direct {v2, p0, v12}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$10;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;Z)V

    invoke-virtual {v1, v2}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1642
    new-instance v10, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    invoke-direct {v10, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1643
    .local v10, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1644
    invoke-virtual {v10, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1645
    const/4 v2, 0x1

    invoke-virtual {v10, v2}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1647
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1648
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$11;

    invoke-direct {v3, p0, v10}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$11;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;Landroid/view/animation/AnimationSet;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1655
    :cond_1
    return-void

    .line 1601
    .end local v0    # "rotateAnim":Landroid/view/animation/RotateAnimation;
    .end local v10    # "animSet":Landroid/view/animation/AnimationSet;
    :cond_2
    new-instance v0, Landroid/view/animation/RotateAnimation;

    int-to-float v3, v11

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1603
    .restart local v0    # "rotateAnim":Landroid/view/animation/RotateAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1    # "transAnim":Landroid/view/animation/TranslateAnimation;
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const v7, -0x42b33333    # -0.05f

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1    # "transAnim":Landroid/view/animation/TranslateAnimation;
    goto :goto_0
.end method

.method private shakeTrashCoverAnimation()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x1

    .line 2055
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3f600000    # -5.0f

    const/high16 v2, 0x40a00000    # 5.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const v6, 0x3f4ccccd    # 0.8f

    move v5, v3

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 2058
    .local v0, "rotateAnim":Landroid/view/animation/RotateAnimation;
    const-wide/16 v4, 0x3c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    .line 2059
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    .line 2060
    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    .line 2061
    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    .line 2062
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$26;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$26;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2073
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashCover:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2074
    return-void
.end method


# virtual methods
.method cancelhideTrashForRemoveAnimation(Z)V
    .locals 3
    .param p1, "hideTrash"    # Z

    .prologue
    .line 1548
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsSupportSimplificationUI:Z
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1565
    :cond_0
    :goto_0
    return-void

    .line 1552
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1553
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG_MINIMIZE_REMOVE_ANIM:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1554
    const-string v0, "MinimizeAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MinimizeAnimator::cancelhideTrashForRemoveAnimation() animationCancelByMaximize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimationCancelByMaximize:Z
    invoke-static {v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    :cond_2
    if-eqz p1, :cond_3

    .line 1559
    invoke-virtual {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->hideTrash()V

    goto :goto_0

    .line 1563
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mAnimationCancelByMaximize:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3002(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Z

    goto :goto_0
.end method

.method closeTrash()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 1440
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mIsTrashOpen:Z

    if-nez v0, :cond_1

    .line 1441
    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->DEBUG_MINIMIZE_REMOVE_ANIM:Z
    invoke-static {}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1442
    const-string v0, "MinimizeAnimator"

    const-string v1, "MinimizeAnimator::closeTrash() trash is already closed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    :cond_0
    :goto_0
    return-void

    .line 1446
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsSupportSimplificationUI:Z
    invoke-static {v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1447
    iget v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mShowTrashDirection:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->closeRedCircleTrashCoverAnimation(I)V

    .line 1459
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mNeedAnimation:Z

    .line 1460
    iput-boolean v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mIsTrashOpen:Z

    goto :goto_0

    .line 1449
    :cond_2
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->coveredTrash:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1450
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashCover:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1451
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->topBgFocusEffect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1453
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashBody:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1455
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trash:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1456
    iget-object v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashCover:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_1
.end method

.method hideTrash()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1391
    iget-boolean v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mIsShowingTrash:Z

    if-eqz v3, :cond_0

    .line 1392
    iput-boolean v5, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mIsShowingTrash:Z

    .line 1393
    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1395
    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3, v5}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 1396
    .local v2, "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/Window;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1397
    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 1398
    .local v0, "decor":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1400
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v3}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1407
    .end local v0    # "decor":Landroid/view/View;
    .end local v2    # "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    :goto_0
    return-void

    .line 1401
    .restart local v0    # "decor":Landroid/view/View;
    .restart local v2    # "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v1

    .line 1402
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method hideTrashScaleAlphaAnimation(Z)V
    .locals 1
    .param p1, "removeTask"    # Z

    .prologue
    .line 1492
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->hideTrashScaleAlphaAnimation(ZLandroid/graphics/Rect;)V

    .line 1493
    return-void
.end method

.method hideTrashScaleAlphaAnimation(ZLandroid/graphics/Rect;)V
    .locals 11
    .param p1, "removeTask"    # Z
    .param p2, "touchableRegion"    # Landroid/graphics/Rect;

    .prologue
    .line 1496
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v10, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1497
    .local v10, "hideTrashAlphaAnim":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x14d

    invoke-virtual {v10, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1498
    new-instance v1, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v10, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1499
    const/4 v1, 0x1

    invoke-virtual {v10, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1501
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1503
    .local v0, "hideTrashScaleAnim":Landroid/view/animation/ScaleAnimation;
    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1504
    new-instance v1, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1505
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1506
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$8;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;ZLandroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1540
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1541
    .local v9, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1542
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1543
    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1544
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashWithText:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1545
    return-void
.end method

.method isShowingTrash()Z
    .locals 1

    .prologue
    .line 1084
    iget-boolean v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mIsShowingTrash:Z

    return v0
.end method

.method openTrash(FF)V
    .locals 5
    .param p1, "touchedX"    # F
    .param p2, "touchedY"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 1411
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsSupportSimplificationUI:Z
    invoke-static {v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1412
    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mRemoveLayoutWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    move v0, v1

    .line 1414
    .local v0, "currentDirection":I
    :goto_0
    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mShowTrashDirection:I

    if-eq v2, v0, :cond_0

    .line 1415
    iput-boolean v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mNeedAnimation:Z

    .line 1416
    iput v0, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mShowTrashDirection:I

    .line 1425
    .end local v0    # "currentDirection":I
    :cond_0
    :goto_1
    iget-boolean v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mNeedAnimation:Z

    if-eqz v2, :cond_1

    .line 1426
    iput-boolean v4, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mNeedAnimation:Z

    .line 1427
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsSupportSimplificationUI:Z
    invoke-static {v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1428
    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mShowTrashDirection:I

    if-eqz v2, :cond_1

    .line 1429
    iget v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mShowTrashDirection:I

    invoke-direct {p0, v2}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->openRedCircleTrashCoverAnimation(I)V

    .line 1436
    :cond_1
    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mIsTrashOpen:Z

    .line 1437
    return-void

    .line 1412
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 1419
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->topBgFocusEffect:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1420
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->coveredTrash:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1421
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashCover:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1422
    iget-object v2, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashBody:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 1432
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->scaleTrashAnimation()V

    goto :goto_2
.end method

.method rangeCheck()Z
    .locals 14

    .prologue
    .line 1350
    iget-object v12, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v12}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getX()F

    move-result v12

    iget-object v13, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float v6, v12, v13

    .line 1351
    .local v6, "minimizedIconCenterX":F
    iget-object v12, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v12}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getY()F

    move-result v12

    iget-object v13, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float v7, v12, v13

    .line 1353
    .local v7, "minimizedIconCenterY":F
    iget-object v12, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v12}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getX()F

    move-result v5

    .line 1354
    .local v5, "left":F
    iget-object v12, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I
    invoke-static {v12}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v12

    int-to-float v12, v12

    add-float v10, v5, v12

    .line 1355
    .local v10, "right":F
    iget-object v12, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v12}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getY()F

    move-result v11

    .line 1356
    .local v11, "top":F
    iget-object v12, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I
    invoke-static {v12}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v12

    int-to-float v12, v12

    add-float v0, v11, v12

    .line 1358
    .local v0, "bottom":F
    iget-object v12, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mRemoveRangeRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->top:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mRemoveRangeRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float v9, v12, v13

    .line 1359
    .local v9, "removeRectCenterY":F
    iget-object v12, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mRemoveRangeRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->left:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mRemoveRangeRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    add-float v8, v12, v13

    .line 1361
    .local v8, "removeRectCenterX":F
    iget-object v12, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I
    invoke-static {v12}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v12

    iget-object v13, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mRemoveRangeRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    add-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    int-to-float v1, v12

    .line 1362
    .local v1, "compareDistanceHeight":F
    iget-object v12, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIconDefaultSize:I
    invoke-static {v12}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v12

    iget-object v13, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mRemoveRangeRect:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v13

    add-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    int-to-float v2, v12

    .line 1364
    .local v2, "compareDistanceWidth":F
    sub-float v3, v6, v8

    .line 1365
    .local v3, "distanceX":F
    sub-float v4, v7, v9

    .line 1367
    .local v4, "distanceY":F
    const/4 v12, 0x0

    cmpl-float v12, v3, v12

    if-ltz v12, :cond_0

    .line 1368
    :goto_0
    const/4 v12, 0x0

    cmpl-float v12, v4, v12

    if-ltz v12, :cond_1

    .line 1370
    :goto_1
    cmpg-float v12, v3, v2

    if-gtz v12, :cond_2

    cmpg-float v12, v4, v1

    if-gtz v12, :cond_2

    .line 1371
    const/4 v12, 0x1

    .line 1373
    :goto_2
    return v12

    .line 1367
    :cond_0
    const/high16 v12, -0x40800000    # -1.0f

    mul-float/2addr v3, v12

    goto :goto_0

    .line 1368
    :cond_1
    const/high16 v12, -0x40800000    # -1.0f

    mul-float/2addr v4, v12

    goto :goto_1

    .line 1373
    :cond_2
    const/4 v12, 0x0

    goto :goto_2
.end method

.method showTrash()V
    .locals 18

    .prologue
    .line 1088
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    .line 1089
    .local v5, "layoutInflater":Landroid/view/LayoutInflater;
    const v13, 0x109009d

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    .line 1090
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    const v14, 0x102041c

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashWithText:Landroid/view/View;

    .line 1091
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    const v14, 0x102041d

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trash:Landroid/view/View;

    .line 1092
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    const v14, 0x102041e

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->coveredTrash:Landroid/widget/ImageView;

    .line 1093
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    const v14, 0x102041f

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashCover:Landroid/widget/ImageView;

    .line 1094
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    const v14, 0x1020421

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashBody:Landroid/widget/ImageView;

    .line 1095
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    const v14, 0x1020422

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashText:Landroid/widget/TextView;

    .line 1097
    const/4 v9, 0x0

    .line 1098
    .local v9, "rootView":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/Window;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 1099
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v13

    const v14, 0x1020002

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "rootView":Landroid/widget/FrameLayout;
    check-cast v9, Landroid/widget/FrameLayout;

    .line 1102
    .restart local v9    # "rootView":Landroid/widget/FrameLayout;
    :cond_0
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 1103
    .local v4, "fullscreen":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->getDisplaySize(Landroid/graphics/Point;)Z
    invoke-static {v13, v4}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Landroid/graphics/Point;)Z

    .line 1105
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mIsSupportSimplificationUI:Z
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2000(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1106
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    const v14, 0x1020420

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashBodyForRemoveAnimation:Landroid/widget/ImageView;

    .line 1107
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashBodyForRemoveAnimation:Landroid/widget/ImageView;

    const v14, 0x10a0059

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashBodyForRemoveAnimation:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1110
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashCover:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->coveredTrash:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1113
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    const v14, 0x102041b

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->topBgFocusEffect:Landroid/widget/ImageView;

    .line 1114
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    const v14, 0x102041a

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->topBgFocusEffectOuter:Landroid/widget/LinearLayout;

    .line 1116
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mContext:Landroid/content/Context;
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10808a1

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/LayerDrawable;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->topBgFocusEffectDrawable:Landroid/graphics/drawable/LayerDrawable;

    .line 1117
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->topBgFocusEffectDrawable:Landroid/graphics/drawable/LayerDrawable;

    const v14, 0x102050c

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/GradientDrawable;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->topBgFocusEffectDrawableItem:Landroid/graphics/drawable/GradientDrawable;

    .line 1119
    iget v13, v4, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mRemoveLayoutWidth:I

    .line 1121
    iget v13, v4, Landroid/graphics/Point;->x:I

    div-int/lit8 v6, v13, 0x8

    .line 1122
    .local v6, "left":I
    iget v13, v4, Landroid/graphics/Point;->x:I

    sub-int v8, v13, v6

    .line 1123
    .local v8, "right":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mTrashMargin:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mRemoveRangeRectMargin:I

    sub-int v10, v13, v14

    .line 1124
    .local v10, "top":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mTrashMargin:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mRedCircleHeight:I

    add-int/2addr v13, v14

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mRemoveRangeRectMargin:I

    mul-int/lit8 v14, v14, 0x2

    add-int v1, v13, v14

    .line 1125
    .local v1, "bottom":I
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13, v6, v10, v8, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mRemoveRangeRect:Landroid/graphics/Rect;

    .line 1127
    if-eqz v9, :cond_1

    .line 1128
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    const/4 v14, 0x0

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v17, v0

    invoke-direct/range {v15 .. v17}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v13, v14, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1132
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->topBgFocusEffect:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1134
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->showTrashScaleAlphaAnimation()V

    .line 1135
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->changeRedCircleColor(Z)V

    .line 1136
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->bounceShowRedCircleAnimation(Z)V

    .line 1165
    .end local v1    # "bottom":I
    .end local v6    # "left":I
    .end local v8    # "right":I
    .end local v10    # "top":I
    :goto_0
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mIsShowingTrash:Z

    .line 1166
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mNeedAnimation:Z

    .line 1168
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    const/4 v14, 0x1

    # invokes: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->createLayoutParams(Z)Landroid/view/WindowManager$LayoutParams;
    invoke-static {v13, v14}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4100(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;Z)Landroid/view/WindowManager$LayoutParams;

    move-result-object v11

    .line 1169
    .local v11, "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/Window;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 1170
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindow:Landroid/view/Window;
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$700(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/Window;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 1171
    .local v2, "decor":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 1173
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$4200(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/WindowManager;

    move-result-object v13

    invoke-interface {v13, v2, v11}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1179
    .end local v2    # "decor":Landroid/view/View;
    :cond_2
    :goto_1
    return-void

    .line 1139
    .end local v11    # "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    const v14, 0x1020423

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->topBgFocusEffect:Landroid/widget/ImageView;

    .line 1141
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->coveredTrash:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1142
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeBackGroundBlackColor:I

    invoke-virtual {v13, v14}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1144
    if-eqz v9, :cond_4

    .line 1145
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    const/4 v14, 0x0

    new-instance v15, Landroid/view/ViewGroup$LayoutParams;

    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    move-object/from16 v17, v0

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mRemoveLayoutHeight:I
    invoke-static/range {v17 .. v17}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v17

    invoke-direct/range {v15 .. v17}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v13, v14, v15}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1150
    :cond_4
    :try_start_1
    const-string/jumbo v13, "window"

    invoke-static {v13}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v12

    .line 1152
    .local v12, "wm":Landroid/view/IWindowManager;
    invoke-interface {v12}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1153
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mStatusBarHeight:I
    invoke-static {v13}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$2300(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mTopMargin:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1158
    .end local v12    # "wm":Landroid/view/IWindowManager;
    :cond_5
    :goto_2
    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    invoke-direct {v7, v13}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1159
    .local v7, "removeLayoutParam":Landroid/view/ViewGroup$MarginLayoutParams;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->mTopMargin:I

    iput v13, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1160
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v14, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v13, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1162
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->showTrashTranslateAnimation()V

    goto/16 :goto_0

    .line 1174
    .end local v7    # "removeLayoutParam":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v2    # "decor":Landroid/view/View;
    .restart local v11    # "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v3

    .line 1175
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_1

    .line 1155
    .end local v2    # "decor":Landroid/view/View;
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v11    # "windowAttributes":Landroid/view/WindowManager$LayoutParams;
    :catch_1
    move-exception v13

    goto :goto_2
.end method

.method showTrashScaleAlphaAnimation()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x14d

    const/high16 v6, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 1188
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1189
    .local v10, "showTrashAlphaAnim":Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v10, v12, v13}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1190
    new-instance v3, Landroid/view/animation/interpolator/SineInOut33;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    invoke-virtual {v10, v3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1191
    invoke-virtual {v10, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 1192
    new-instance v3, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$1;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$1;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v10, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1212
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1214
    .local v0, "showTrashScaleUpAnim":Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, v12, v13}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1215
    new-instance v1, Landroid/view/animation/interpolator/SineInOut90;

    invoke-direct {v1}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1216
    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1217
    new-instance v1, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$2;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1233
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1234
    .local v9, "animSet":Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1235
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1236
    invoke-virtual {v9, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 1237
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->trashWithText:Landroid/view/View;

    invoke-virtual {v1, v9}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1238
    return-void
.end method

.method showTrashTranslateAnimation()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1382
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, -0x40800000    # -1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1385
    .local v0, "anim":Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1386
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1387
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1388
    return-void
.end method

.method throwAway()V
    .locals 6

    .prologue
    .line 1465
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mMinimizedIcon:Landroid/view/View;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1500(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1489
    :cond_0
    :goto_0
    return-void

    .line 1469
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->removeMinimizedIconAnimation()V

    .line 1470
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1471
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$6;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1479
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$3800(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$7;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect$7;-><init>(Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;)V

    const-wide/16 v4, 0x85

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1486
    :catch_0
    move-exception v0

    .line 1487
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lcom/android/internal/policy/multiwindow/MinimizeAnimator$TrashAnimationEffect;->this$0:Lcom/android/internal/policy/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->mActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/internal/policy/multiwindow/MinimizeAnimator;->access$1400(Lcom/android/internal/policy/multiwindow/MinimizeAnimator;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
