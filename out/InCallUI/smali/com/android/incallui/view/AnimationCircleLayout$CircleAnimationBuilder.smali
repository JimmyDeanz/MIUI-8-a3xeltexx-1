.class public Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;
.super Ljava/lang/Object;
.source "AnimationCircleLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/view/AnimationCircleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CircleAnimationBuilder"
.end annotation


# instance fields
.field private duration:J

.field private listener:Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;

.field private needTranslateY:Z

.field private originR:F

.field private originX:F

.field private originY:F

.field private targetR:F

.field private targetX:F

.field private targetY:F

.field final synthetic this$0:Lcom/android/incallui/view/AnimationCircleLayout;


# direct methods
.method public constructor <init>(Lcom/android/incallui/view/AnimationCircleLayout;)V
    .locals 6

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x0

    .line 303
    iput-object p1, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput v2, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->originX:F

    .line 294
    iput v2, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->originY:F

    .line 295
    iput v2, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->originR:F

    .line 296
    iput v2, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->targetX:F

    .line 297
    iput v2, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->targetY:F

    .line 298
    iput v2, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->targetR:F

    .line 300
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->needTranslateY:Z

    .line 305
    invoke-virtual {p1}, Lcom/android/incallui/view/AnimationCircleLayout;->getMeasuredWidth()I

    move-result v1

    .line 306
    .local v1, "screenWidth":I
    invoke-virtual {p1}, Lcom/android/incallui/view/AnimationCircleLayout;->getMeasuredHeight()I

    move-result v0

    .line 307
    .local v0, "screenHeight":I
    int-to-float v2, v1

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->originX:F

    .line 308
    int-to-float v2, v0

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->originY:F

    .line 309
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    iput v2, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->originR:F

    .line 310
    const-wide/16 v2, 0x12c

    iput-wide v2, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->duration:J

    .line 311
    return-void
.end method


# virtual methods
.method public configAnimationParam()V
    .locals 7

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    iget v1, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->originX:F

    iget v2, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->originY:F

    iget v3, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->originR:F

    iget v4, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->targetX:F

    iget v5, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->targetY:F

    iget v6, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->targetR:F

    # invokes: Lcom/android/incallui/view/AnimationCircleLayout;->setValues(FFFFFF)V
    invoke-static/range {v0 .. v6}, Lcom/android/incallui/view/AnimationCircleLayout;->access$1100(Lcom/android/incallui/view/AnimationCircleLayout;FFFFFF)V

    .line 365
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    iget-wide v2, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->duration:J

    # setter for: Lcom/android/incallui/view/AnimationCircleLayout;->mDurationCircleShrink:J
    invoke-static {v0, v2, v3}, Lcom/android/incallui/view/AnimationCircleLayout;->access$1202(Lcom/android/incallui/view/AnimationCircleLayout;J)J

    .line 366
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    iget-boolean v1, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->needTranslateY:Z

    # setter for: Lcom/android/incallui/view/AnimationCircleLayout;->mIsNeedTranslateY:Z
    invoke-static {v0, v1}, Lcom/android/incallui/view/AnimationCircleLayout;->access$1002(Lcom/android/incallui/view/AnimationCircleLayout;Z)Z

    .line 367
    iget-object v0, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->this$0:Lcom/android/incallui/view/AnimationCircleLayout;

    iget-object v1, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->listener:Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;

    # setter for: Lcom/android/incallui/view/AnimationCircleLayout;->mOnAnimationListener:Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;
    invoke-static {v0, v1}, Lcom/android/incallui/view/AnimationCircleLayout;->access$1302(Lcom/android/incallui/view/AnimationCircleLayout;Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;)Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;

    .line 368
    return-void
.end method

.method public setCircleChangeDuration(I)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;
    .locals 2
    .param p1, "duration"    # I

    .prologue
    .line 344
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->duration:J

    .line 345
    return-object p0
.end method

.method public setNeedTranslateY()Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;
    .locals 1

    .prologue
    .line 354
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->needTranslateY:Z

    .line 355
    return-object p0
.end method

.method public setNoNeedTranslateY()Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->needTranslateY:Z

    .line 360
    return-object p0
.end method

.method public setOnAnimationListener(Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;
    .locals 0
    .param p1, "listener"    # Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->listener:Lcom/android/incallui/view/AnimationCircleLayout$OnAnimationListener;

    .line 350
    return-object p0
.end method

.method public setOriginR(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;
    .locals 0
    .param p1, "originR"    # F

    .prologue
    .line 324
    iput p1, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->originR:F

    .line 325
    return-object p0
.end method

.method public setOriginX(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;
    .locals 0
    .param p1, "originX"    # F

    .prologue
    .line 314
    iput p1, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->originX:F

    .line 315
    return-object p0
.end method

.method public setOriginY(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;
    .locals 0
    .param p1, "originY"    # F

    .prologue
    .line 319
    iput p1, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->originY:F

    .line 320
    return-object p0
.end method

.method public setTargetR(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;
    .locals 0
    .param p1, "targetR"    # F

    .prologue
    .line 339
    iput p1, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->targetR:F

    .line 340
    return-object p0
.end method

.method public setTargetX(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;
    .locals 0
    .param p1, "targetX"    # F

    .prologue
    .line 329
    iput p1, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->targetX:F

    .line 330
    return-object p0
.end method

.method public setTargetY(F)Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;
    .locals 0
    .param p1, "targetY"    # F

    .prologue
    .line 334
    iput p1, p0, Lcom/android/incallui/view/AnimationCircleLayout$CircleAnimationBuilder;->targetY:F

    .line 335
    return-object p0
.end method
