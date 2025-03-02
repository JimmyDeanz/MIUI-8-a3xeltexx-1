.class final Lcom/android/internal/widget/FloatingToolbar$ViewFader;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/FloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewFader"
.end annotation


# static fields
.field private static final FADE_IN_DURATION:I = 0x96

.field private static final FADE_OUT_DURATION:I = 0xfa


# instance fields
.field private final mFadeInAnimation:Landroid/animation/ObjectAnimator;

.field private final mFadeOutAnimation:Landroid/animation/ObjectAnimator;

.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x2

    .line 1958
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1959
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mView:Landroid/view/View;

    .line 1960
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mFadeOutAnimation:Landroid/animation/ObjectAnimator;

    .line 1962
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v4, [F

    fill-array-data v1, :array_1

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mFadeInAnimation:Landroid/animation/ObjectAnimator;

    .line 1964
    return-void

    .line 1960
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1962
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method synthetic constructor <init>(Landroid/view/View;Lcom/android/internal/widget/FloatingToolbar$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Lcom/android/internal/widget/FloatingToolbar$1;

    .prologue
    .line 1949
    invoke-direct {p0, p1}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;-><init>(Landroid/view/View;)V

    return-void
.end method

.method private cancelFadeAnimations()V
    .locals 1

    .prologue
    .line 1985
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1986
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1987
    return-void
.end method


# virtual methods
.method public fadeIn(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 1967
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->cancelFadeAnimations()V

    .line 1968
    if-eqz p1, :cond_0

    .line 1969
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1973
    :goto_0
    return-void

    .line 1971
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public fadeOut(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .prologue
    .line 1976
    invoke-direct {p0}, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->cancelFadeAnimations()V

    .line 1977
    if-eqz p1, :cond_0

    .line 1978
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1982
    :goto_0
    return-void

    .line 1980
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/FloatingToolbar$ViewFader;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
