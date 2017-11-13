.class public Lcom/android/incallui/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/AnimationUtils$CrossFadeDrawable;,
        Lcom/android/incallui/AnimationUtils$Translation;,
        Lcom/android/incallui/AnimationUtils$Fade;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/android/incallui/AnimationUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/AnimationUtils;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static startRotationAnimator(Landroid/view/View;II)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/16 v1, 0x10e

    .line 361
    if-eqz p0, :cond_0

    if-ne p1, p2, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    if-ne p1, v1, :cond_2

    if-nez p2, :cond_2

    .line 366
    const/16 p2, 0x168

    .line 368
    :cond_2
    if-nez p1, :cond_3

    if-ne p2, v1, :cond_3

    .line 370
    const/16 p1, 0x168

    .line 373
    :cond_3
    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    int-to-float v4, p1

    aput v4, v2, v3

    const/4 v3, 0x1

    int-to-float v4, p2

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 374
    .local v0, "animator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method
