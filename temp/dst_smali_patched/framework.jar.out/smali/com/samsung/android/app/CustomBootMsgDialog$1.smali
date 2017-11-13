.class Lcom/samsung/android/app/CustomBootMsgDialog$1;
.super Ljava/lang/Object;
.source "CustomBootMsgDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/CustomBootMsgDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/CustomBootMsgDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/CustomBootMsgDialog;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/samsung/android/app/CustomBootMsgDialog$1;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/high16 v9, 0x447a0000    # 1000.0f

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/samsung/android/app/CustomBootMsgDialog$1;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$000(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/app/CustomBootMsgDialog$1;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mSmallGear:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$100(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    .local v2, "currentTime":J
    iget-object v6, p0, Lcom/samsung/android/app/CustomBootMsgDialog$1;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mPreviousTime:J
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$200(Lcom/samsung/android/app/CustomBootMsgDialog;)J

    move-result-wide v6

    sub-long v4, v2, v6

    .local v4, "timeGap":J
    iget-object v6, p0, Lcom/samsung/android/app/CustomBootMsgDialog$1;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # setter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mPreviousTime:J
    invoke-static {v6, v2, v3}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$202(Lcom/samsung/android/app/CustomBootMsgDialog;J)J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/app/CustomBootMsgDialog$1;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$000(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRotation()F

    move-result v0

    .local v0, "bigGearRotation":F
    iget-object v6, p0, Lcom/samsung/android/app/CustomBootMsgDialog$1;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mSmallGear:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$100(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRotation()F

    move-result v1

    .local v1, "smallGearRotation":F
    const/high16 v6, 0x44610000    # 900.0f

    cmpl-float v6, v0, v6

    if-ltz v6, :cond_3

    iget-object v6, p0, Lcom/samsung/android/app/CustomBootMsgDialog$1;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$000(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setRotation(F)V

    iget-object v6, p0, Lcom/samsung/android/app/CustomBootMsgDialog$1;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mSmallGear:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$100(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/view/View;->setRotation(F)V

    .end local v0    # "bigGearRotation":F
    .end local v1    # "smallGearRotation":F
    :cond_2
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/app/CustomBootMsgDialog$1;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mAnimationRunning:Z
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$300(Lcom/samsung/android/app/CustomBootMsgDialog;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/android/app/CustomBootMsgDialog$1;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$000(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v6

    const-wide/16 v8, 0x20

    invoke-virtual {v6, p0, v8, v9}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .restart local v0    # "bigGearRotation":F
    .restart local v1    # "smallGearRotation":F
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/app/CustomBootMsgDialog$1;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mBigGear:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$000(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v6

    long-to-float v7, v4

    const/high16 v8, 0x41f00000    # 30.0f

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v7, v0

    invoke-virtual {v6, v7}, Landroid/view/View;->setRotation(F)V

    iget-object v6, p0, Lcom/samsung/android/app/CustomBootMsgDialog$1;->this$0:Lcom/samsung/android/app/CustomBootMsgDialog;

    # getter for: Lcom/samsung/android/app/CustomBootMsgDialog;->mSmallGear:Landroid/view/View;
    invoke-static {v6}, Lcom/samsung/android/app/CustomBootMsgDialog;->access$100(Lcom/samsung/android/app/CustomBootMsgDialog;)Landroid/view/View;

    move-result-object v6

    long-to-float v7, v4

    const/high16 v8, -0x3dcc0000    # -45.0f

    mul-float/2addr v7, v8

    div-float/2addr v7, v9

    add-float/2addr v7, v1

    invoke-virtual {v6, v7}, Landroid/view/View;->setRotation(F)V

    goto :goto_1
.end method
