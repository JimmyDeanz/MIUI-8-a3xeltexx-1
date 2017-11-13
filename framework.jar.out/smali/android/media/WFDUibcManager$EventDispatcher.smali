.class Landroid/media/WFDUibcManager$EventDispatcher;
.super Landroid/media/WFDUibcManager$EventQueue;
.source "WFDUibcManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final CAMERA_0:I

.field private final CAMERA_180:I

.field private final CAMERA_270:I

.field private final CAMERA_90:I

.field private Me_X:F

.field private Me_Y:F

.field private Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

.field private aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

.field private aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private activityManager:Landroid/app/ActivityManager;

.field private bCap:Z

.field private bNum:Z

.field private bScroll:Z

.field private bSim:Z

.field private configuration:Landroid/content/res/Configuration;

.field private displayMetrics:Landroid/util/DisplayMetrics;

.field private ev:Landroid/view/InputEvent;

.field private foregroundCamera:Z

.field private kH:F

.field private kW:F

.field private kX:F

.field private kY:F

.field private ke:Landroid/view/KeyEvent;

.field private last_Ke:Landroid/view/KeyEvent;

.field private mBroadTime:J

.field private mFlag:I

.field private mKeyDownTime:J

.field private mKeyEvnt_Arr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/WFDUibcManager$Keyevnt_arrC;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyUpTime:J

.field private mMetaFlag:I

.field private mRepeatCnt:I

.field private mTouchDownTime:J

.field private me:Landroid/view/MotionEvent;

.field private rEv:Ljava/lang/Integer;

.field public volatile running:Z

.field private screenRatio:F

.field final synthetic this$0:Landroid/media/WFDUibcManager;

.field private wfdRatio:F

.field private wm:Landroid/view/WindowManager;


# direct methods
.method constructor <init>(Landroid/media/WFDUibcManager;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 251
    iput-object p1, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    invoke-direct {p0, p1, v2}, Landroid/media/WFDUibcManager$EventQueue;-><init>(Landroid/media/WFDUibcManager;Landroid/media/WFDUibcManager$1;)V

    .line 252
    iput-boolean v6, p0, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    .line 254
    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 255
    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    .line 265
    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    .line 266
    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    .line 268
    iput-boolean v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->foregroundCamera:Z

    .line 269
    sget-object v0, Landroid/media/WFDUibcManager$UIBC_Mode;->NORMAL:Landroid/media/WFDUibcManager$UIBC_Mode;

    iput-object v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 270
    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    .line 271
    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    .line 272
    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    .line 273
    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 274
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    .line 275
    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    .line 277
    iput v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_0:I

    .line 278
    iput v6, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_90:I

    .line 279
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_180:I

    .line 280
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->CAMERA_270:I

    .line 283
    iput v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 284
    iput-boolean v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    .line 285
    iput-boolean v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bSim:Z

    .line 286
    iput-boolean v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bNum:Z

    .line 287
    iput-boolean v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bScroll:Z

    .line 288
    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mBroadTime:J

    .line 289
    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    .line 290
    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 291
    iput-wide v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyUpTime:J

    .line 292
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    .line 293
    iput v3, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 294
    iput-object v2, p0, Landroid/media/WFDUibcManager$EventDispatcher;->last_Ke:Landroid/view/KeyEvent;

    return-void
.end method

.method private getMetaFlag(IZ)V
    .locals 6
    .param p1, "keycode"    # I
    .param p2, "isDown"    # Z

    .prologue
    const/16 v5, 0x71

    const/16 v4, 0x3c

    const/16 v3, 0x3b

    const/16 v2, 0x3a

    const/16 v1, 0x39

    .line 671
    if-eqz p2, :cond_a

    .line 672
    if-eq p1, v3, :cond_0

    if-ne p1, v4, :cond_2

    .line 673
    :cond_0
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 674
    if-ne p1, v3, :cond_1

    .line 675
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 676
    :cond_1
    if-ne p1, v4, :cond_2

    .line 677
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 679
    :cond_2
    if-eq p1, v1, :cond_3

    if-ne p1, v2, :cond_5

    .line 680
    :cond_3
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 681
    if-ne p1, v1, :cond_4

    .line 682
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 683
    :cond_4
    if-ne p1, v2, :cond_5

    .line 684
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 686
    :cond_5
    if-eq p1, v5, :cond_6

    const/16 v0, 0x72

    if-ne p1, v0, :cond_8

    .line 687
    :cond_6
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 688
    if-ne p1, v5, :cond_7

    .line 689
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 690
    :cond_7
    const/16 v0, 0x72

    if-ne p1, v0, :cond_8

    .line 691
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 693
    :cond_8
    const/16 v0, 0x77

    if-ne p1, v0, :cond_9

    .line 694
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 733
    :cond_9
    :goto_0
    return-void

    .line 697
    :cond_a
    if-eq p1, v3, :cond_b

    if-ne p1, v4, :cond_d

    .line 698
    :cond_b
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 699
    if-ne p1, v3, :cond_c

    .line 700
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 701
    :cond_c
    if-ne p1, v4, :cond_d

    .line 702
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 704
    :cond_d
    if-eq p1, v1, :cond_e

    if-ne p1, v2, :cond_10

    .line 705
    :cond_e
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 706
    if-ne p1, v1, :cond_f

    .line 707
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 708
    :cond_f
    if-ne p1, v2, :cond_10

    .line 709
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 711
    :cond_10
    if-eq p1, v5, :cond_11

    const/16 v0, 0x72

    if-ne p1, v0, :cond_13

    .line 712
    :cond_11
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 713
    if-ne p1, v5, :cond_12

    .line 714
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 715
    :cond_12
    const/16 v0, 0x72

    if-ne p1, v0, :cond_13

    .line 716
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 718
    :cond_13
    const/16 v0, 0x77

    if-ne p1, v0, :cond_14

    .line 719
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 721
    :cond_14
    const/16 v0, 0x73

    if-ne p1, v0, :cond_9

    .line 722
    iget-boolean v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    if-nez v0, :cond_15

    .line 724
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const/high16 v1, 0x100000

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 725
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    goto :goto_0

    .line 727
    :cond_15
    iget v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    const v1, -0x100001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 729
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/WFDUibcManager$EventDispatcher;->bCap:Z

    goto :goto_0
.end method

.method private handleCameraTouch(I)V
    .locals 10
    .param p1, "i"    # I

    .prologue
    .line 310
    const/4 v0, -0x1

    .line 311
    .local v0, "mCameraOrientation":I
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v6

    .line 312
    .local v6, "rotation":I
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "WFDUibcManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "rotation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mOrientation: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v9}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)I

    move-result v7

    if-lez v7, :cond_1

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x2d

    if-lt v7, v8, :cond_2

    :cond_1
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x13b

    if-le v7, v8, :cond_7

    .line 316
    :cond_2
    const/4 v0, 0x0

    .line 330
    :goto_0
    add-int/2addr v0, v6

    .line 331
    rem-int/lit8 v0, v0, 0x4

    .line 332
    if-eqz v0, :cond_3

    const/4 v7, 0x2

    if-ne v0, v7, :cond_d

    .line 334
    :cond_3
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    .line 335
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v7

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)F

    move-result v8

    div-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    .line 336
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "WFDUibcManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "screenRatio: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " wfdRatio: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_4
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_a

    .line 340
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    div-float v2, v7, v8

    .line 341
    .local v2, "newWidth":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float v5, v7, v8

    .line 342
    .local v5, "pad":F
    const v7, 0x38d1b717    # 1.0E-4f

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v3, v7, v8

    .line 343
    .local v3, "normX":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    sub-float v8, v3, v5

    div-float/2addr v8, v2

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 344
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 357
    .end local v2    # "newWidth":F
    .end local v3    # "normX":F
    .end local v5    # "pad":F
    :goto_1
    if-nez v0, :cond_c

    .line 358
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    const/4 v8, 0x0

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 359
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    const/4 v8, 0x1

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 360
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "WFDUibcManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Orientation is 0~45 or more than 315, X: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Y: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_5
    :goto_2
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "WFDUibcManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Executing Camera App mode is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :cond_6
    return-void

    .line 318
    :cond_7
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x2d

    if-lt v7, v8, :cond_8

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x73

    if-ge v7, v8, :cond_8

    .line 320
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 322
    :cond_8
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0x73

    if-lt v7, v8, :cond_9

    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mOrientation:I
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$200(Landroid/media/WFDUibcManager;)I

    move-result v7

    const/16 v8, 0xe1

    if-ge v7, v8, :cond_9

    .line 324
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 328
    :cond_9
    const/4 v0, 0x3

    goto/16 :goto_0

    .line 346
    :cond_a
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    cmpl-float v7, v7, v8

    if-lez v7, :cond_b

    .line 347
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    div-float v1, v7, v8

    .line 348
    .local v1, "newHeight":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v1

    const/high16 v8, 0x40000000    # 2.0f

    div-float v5, v7, v8

    .line 349
    .restart local v5    # "pad":F
    const v7, 0x38d1b717    # 1.0E-4f

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v4, v7, v8

    .line 350
    .local v4, "normY":F
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 351
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    sub-float v8, v4, v5

    div-float/2addr v8, v1

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_1

    .line 354
    .end local v1    # "newHeight":F
    .end local v4    # "normY":F
    .end local v5    # "pad":F
    :cond_b
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 355
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_1

    .line 363
    :cond_c
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 364
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 365
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    const/4 v8, 0x0

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 366
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    const/4 v8, 0x1

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 367
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "WFDUibcManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Orientation is 225 ~ 315, X: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Y: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 370
    :cond_d
    const/4 v7, 0x1

    if-eq v0, v7, :cond_e

    const/4 v7, 0x3

    if-ne v0, v7, :cond_5

    .line 373
    :cond_e
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    div-float v2, v7, v8

    .line 374
    .restart local v2    # "newWidth":F
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v7}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v7

    sub-float/2addr v7, v2

    const/high16 v8, 0x40000000    # 2.0f

    div-float v5, v7, v8

    .line 375
    .restart local v5    # "pad":F
    const v7, 0x38d1b717    # 1.0E-4f

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v8}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v3, v7, v8

    .line 376
    .restart local v3    # "normX":F
    const/4 v7, 0x1

    if-ne v0, v7, :cond_10

    .line 377
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    sub-float v9, v3, v5

    div-float/2addr v9, v2

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 378
    iget v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v8, v8, p1

    iget v8, v8, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 379
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v7, "WFDUibcManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Orientation is 45 ~ 114, X: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Y: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_f
    :goto_3
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    const/4 v8, 0x0

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 387
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v7, v7, p1

    const/4 v8, 0x1

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v7, v8, v9}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_2

    .line 382
    :cond_10
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    sub-float v8, v3, v5

    div-float/2addr v8, v2

    mul-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 383
    iget-object v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget v8, p0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    iget-object v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v9, v9, p1

    iget v9, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    iput v7, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 384
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v7, "WFDUibcManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Orientation is 115 ~ 224, X: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Y: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private handleKeyEvent()V
    .locals 26

    .prologue
    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    move-object/from16 v16, v0

    check-cast v16, Landroid/view/KeyEvent;

    .line 753
    .local v16, "NewKE":Landroid/view/KeyEvent;
    const/16 v20, -0x1

    .local v20, "fndKyIndex":I
    const/16 v19, -0x1

    .line 754
    .local v19, "empKyIndex":I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 755
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 756
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    .line 758
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Key Device id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    invoke-virtual {v4}, Landroid/view/InputEvent;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_0
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v13

    .line 761
    .local v13, "displayId":I
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Before Key display id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_1
    if-gez v13, :cond_2

    .line 764
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v18

    .line 765
    .local v18, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual/range {v18 .. v18}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v17

    .local v17, "arr$":[I
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v21, 0x0

    .local v21, "i$":I
    :goto_0
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_2

    aget v22, v17, v21

    .line 766
    .local v22, "id":I
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v2

    iget v2, v2, Landroid/view/DisplayInfo;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 767
    move/from16 v13, v22

    .line 772
    .end local v17    # "arr$":[I
    .end local v18    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v21    # "i$":I
    .end local v22    # "id":I
    .end local v24    # "len$":I
    :cond_2
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "After Key Display id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCoupleShot:Z
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$700(Landroid/media/WFDUibcManager;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    .line 778
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "WFDUibcManager"

    const-string v3, "Ignore Back key event"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    :cond_4
    :goto_1
    return-void

    .line 765
    .restart local v17    # "arr$":[I
    .restart local v18    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local v21    # "i$":I
    .restart local v22    # "id":I
    .restart local v24    # "len$":I
    :cond_5
    add-int/lit8 v21, v21, 0x1

    goto :goto_0

    .line 782
    .end local v17    # "arr$":[I
    .end local v18    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v21    # "i$":I
    .end local v22    # "id":I
    .end local v24    # "len$":I
    :cond_6
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_15

    .line 784
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "WFDUibcManager"

    const-string v3, "KeyEvent ACTION_DOWN"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/16 v3, 0xf

    if-ge v2, v3, :cond_8

    .line 790
    new-instance v23, Landroid/media/WFDUibcManager$Keyevnt_arrC;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-direct {v0, v2, v3}, Landroid/media/WFDUibcManager$Keyevnt_arrC;-><init>(Landroid/media/WFDUibcManager;Landroid/media/WFDUibcManager$1;)V

    .line 791
    .local v23, "kev":Landroid/media/WFDUibcManager$Keyevnt_arrC;
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, v23

    iput-wide v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J

    .line 792
    const/4 v2, 0x0

    move-object/from16 v0, v23

    iput v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    .line 793
    const/4 v2, 0x0

    move-object/from16 v0, v23

    iput v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    .end local v23    # "kev":Landroid/media/WFDUibcManager$Keyevnt_arrC;
    :cond_8
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 797
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 798
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    .line 814
    :cond_9
    :goto_2
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/media/WFDUibcManager$EventDispatcher;->getMetaFlag(IZ)V

    .line 835
    :cond_a
    :goto_3
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KeyCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DownTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Flag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " RepeatCnt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "mMetaFlag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_b
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v9

    .line 839
    .local v9, "metakey":I
    if-nez v9, :cond_c

    move-object/from16 v0, p0

    iget v9, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mMetaFlag:I

    .line 840
    :cond_c
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v7

    move-object/from16 v0, p0

    iget v8, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v10

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v11

    move-object/from16 v0, p0

    iget v12, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getSource()I

    move-result v14

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v15

    invoke-static/range {v2 .. v15}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    .line 847
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_d

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->last_Ke:Landroid/view/KeyEvent;

    .line 850
    :cond_d
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 852
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "WFDUibcManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InjectKeyEvent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 855
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_12

    .line 857
    :cond_f
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "WFDUibcManager"

    const-string/jumbo v3, "send broadcast : Terminate External Display"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    :cond_10
    new-instance v25, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.PRESENTATION_FOCUS_CHANGED"

    move-object/from16 v0, v25

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 859
    .local v25, "mintent":Landroid/content/Intent;
    const-string v2, "app_name"

    const-string v3, "finish"

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_18

    .line 861
    const-string/jumbo v2, "launch_home"

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 869
    :cond_11
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 872
    .end local v25    # "mintent":Landroid/content/Intent;
    :cond_12
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    goto/16 :goto_1

    .line 801
    .end local v9    # "metakey":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/media/WFDUibcManager$Keyevnt_arrC;

    .line 802
    .restart local v23    # "kev":Landroid/media/WFDUibcManager$Keyevnt_arrC;
    move-object/from16 v0, v23

    iget v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, v23

    iput v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    .line 803
    move-object/from16 v0, v23

    iget v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, v23

    iput v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    .line 804
    move-object/from16 v0, v23

    iget v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    const/4 v3, 0x1

    if-lt v2, v3, :cond_14

    .line 806
    move-object/from16 v0, v23

    iget v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    or-int/lit16 v2, v2, 0x80

    move-object/from16 v0, v23

    iput v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    .line 808
    :cond_14
    move-object/from16 v0, v23

    iget-wide v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 809
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 810
    move-object/from16 v0, v23

    iget v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mRepCnt:I

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    .line 811
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "WFDUibcManager"

    const-string v3, "Long press detected"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 817
    .end local v23    # "kev":Landroid/media/WFDUibcManager$Keyevnt_arrC;
    :cond_15
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 818
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "WFDUibcManager"

    const-string v3, "KeyEvent ACTION_UP"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 821
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/media/WFDUibcManager$Keyevnt_arrC;

    .line 822
    .restart local v23    # "kev":Landroid/media/WFDUibcManager$Keyevnt_arrC;
    move-object/from16 v0, v23

    iget-wide v2, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyDwnTime:J

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 823
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    move-object/from16 v0, v23

    iget v3, v0, Landroid/media/WFDUibcManager$Keyevnt_arrC;->mKyFlag:I

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 824
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    .line 825
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyEvnt_Arr:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    .end local v23    # "kev":Landroid/media/WFDUibcManager$Keyevnt_arrC;
    :goto_5
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/media/WFDUibcManager$EventDispatcher;->getMetaFlag(IZ)V

    goto/16 :goto_3

    .line 828
    :cond_17
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mKeyDownTime:J

    .line 829
    move-object/from16 v0, p0

    iget v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getFlags()I

    move-result v3

    or-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mFlag:I

    .line 830
    invoke-virtual/range {v16 .. v16}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mRepeatCnt:I

    goto :goto_5

    .line 863
    .restart local v9    # "metakey":I
    .restart local v25    # "mintent":Landroid/content/Intent;
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ke:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_19

    .line 864
    const-string/jumbo v2, "launch_home"

    const/4 v3, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_4

    .line 867
    :cond_19
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v2, "WFDUibcManager"

    const-string/jumbo v3, "putExtra : no parameter"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private handleMotionEvent()V
    .locals 45

    .prologue
    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    move-object/from16 v35, v0

    check-cast v35, Landroid/view/MotionEvent;

    .line 415
    .local v35, "newEv":Landroid/view/MotionEvent;
    sget-object v4, Landroid/media/WFDUibcManager$UIBC_Mode;->NORMAL:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 418
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v4, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 419
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayMetrics widthPixels: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " heightPixels: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_0
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mNegRs_X: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v6}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mNegRs_Y: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v6}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_1
    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v14

    .line 425
    .local v14, "displayId":I
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "before motion displayId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_2
    if-gez v14, :cond_3

    .line 427
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v25

    .line 428
    .local v25, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual/range {v25 .. v25}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayIds()[I

    move-result-object v22

    .local v22, "arr$":[I
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v30, v0

    .local v30, "len$":I
    const/16 v27, 0x0

    .local v27, "i$":I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_3

    aget v28, v22, v27

    .line 429
    .local v28, "id":I
    move-object/from16 v0, v25

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v4

    iget v4, v4, Landroid/view/DisplayInfo;->type:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 430
    move/from16 v14, v28

    .line 435
    .end local v22    # "arr$":[I
    .end local v25    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v27    # "i$":I
    .end local v28    # "id":I
    .end local v30    # "len$":I
    :cond_3
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "after motion displayId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_4
    if-gez v14, :cond_7

    .line 437
    const-string v4, "WFDUibcManager"

    const-string v5, "displayId not found"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_5
    :goto_1
    return-void

    .line 428
    .restart local v22    # "arr$":[I
    .restart local v25    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .restart local v27    # "i$":I
    .restart local v28    # "id":I
    .restart local v30    # "len$":I
    :cond_6
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 443
    .end local v22    # "arr$":[I
    .end local v25    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v27    # "i$":I
    .end local v28    # "id":I
    .end local v30    # "len$":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->activityManager:Landroid/app/ActivityManager;

    .line 444
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->activityManager:Landroid/app/ActivityManager;

    const/16 v5, 0x14

    invoke-virtual {v4, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v29

    .line 445
    .local v29, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 446
    const/4 v4, 0x0

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 447
    .local v43, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    move-object/from16 v0, v43

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.camera"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->foregroundCamera:Z

    .line 448
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is camera running: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->foregroundCamera:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->foregroundCamera:Z

    if-eqz v4, :cond_9

    sget-object v4, Landroid/media/WFDUibcManager$UIBC_Mode;->CAMERA:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 453
    .end local v43    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Landroid/hardware/display/DisplayManager;

    .line 454
    .local v31, "mDm":Landroid/hardware/display/DisplayManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sidesync_source_connect"

    const/4 v6, 0x0

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mCoupleShot:Z
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$700(Landroid/media/WFDUibcManager;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 457
    :cond_a
    sget-object v4, Landroid/media/WFDUibcManager$UIBC_Mode;->FORCE_VALUE:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 458
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "WFDUibcManager"

    const-string v5, "FORCE_VALUE will be set!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_b
    :goto_2
    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_16

    .line 490
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    .line 491
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_c

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION SCROLL TIME : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 496
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 497
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    iput v5, v4, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 500
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x3

    iput v5, v4, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 502
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 503
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 504
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 505
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 507
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    const-wide/16 v6, 0xa

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    const-wide/16 v8, 0xa

    sub-long/2addr v6, v8

    const/16 v8, 0x8

    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    const/16 v17, 0xa

    const/16 v18, 0x0

    const/16 v19, 0x2002

    const/16 v20, 0x0

    invoke-static/range {v4 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    .line 509
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/16 v5, 0x2002

    invoke-virtual {v4, v5}, Landroid/view/MotionEvent;->setSource(I)V

    .line 510
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Scroll Inject: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_d
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 512
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    goto/16 :goto_1

    .line 459
    :cond_e
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/DisplayManager;->isAuSLServiceRunning()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 460
    sget-object v4, Landroid/media/WFDUibcManager$UIBC_Mode;->FULL_SCREEN:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    .line 461
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "WFDUibcManager"

    const-string v5, "AuSLService Running setting FULL_SCREEN Mode!"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 465
    :cond_f
    const-string v4, "android.hardware.display.category.PRESENTATION"

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v41

    .line 466
    .local v41, "presentationDisplays":[Landroid/view/Display;
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_10

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received presentationDisplays amount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v41

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_10
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v21

    .line 468
    .local v21, "allDisplays":[Landroid/view/Display;
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received alldisplays amount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_11
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_3
    move-object/from16 v0, v41

    array-length v4, v0

    move/from16 v0, v26

    if-ge v0, v4, :cond_b

    .line 471
    aget-object v24, v41, v26

    .line 472
    .local v24, "display":Landroid/view/Display;
    invoke-virtual/range {v24 .. v24}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    if-ne v14, v4, :cond_15

    .line 473
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "presentation display ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mPresentDisplayID:I
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v4

    move-object/from16 v0, v31

    invoke-virtual {v0, v4}, Landroid/hardware/display/DisplayManager;->hasContent(I)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mPresentDisplayID:I
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v4

    if-ne v14, v4, :cond_14

    .line 476
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "presentation( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mPresentDisplayID:I
    invoke-static {v6}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) has content"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 478
    sget-object v4, Landroid/media/WFDUibcManager$UIBC_Mode;->PRESENTATION:Landroid/media/WFDUibcManager$UIBC_Mode;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    goto/16 :goto_2

    .line 481
    :cond_14
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "presentation( "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mPresentDisplayID:I
    invoke-static {v6}, Landroid/media/WFDUibcManager;->access$100(Landroid/media/WFDUibcManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ) doesn\'t have content"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 470
    :cond_15
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_3

    .line 516
    .end local v21    # "allDisplays":[Landroid/view/Display;
    .end local v24    # "display":Landroid/view/Display;
    .end local v26    # "i":I
    .end local v41    # "presentationDisplays":[Landroid/view/Display;
    :cond_16
    const v4, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    .line 517
    const v4, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    .line 518
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    .line 519
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    .line 520
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 521
    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 523
    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v23

    .line 525
    .local v23, "count":I
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_17

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UIBC mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_17
    const/16 v26, 0x0

    .restart local v26    # "i":I
    :goto_4
    move/from16 v0, v26

    move/from16 v1, v23

    if-ge v0, v1, :cond_27

    .line 527
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v26

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerProperties;->clear()V

    .line 528
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    invoke-virtual {v4}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 529
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v4, v4, v26

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    move-object/from16 v0, v35

    move/from16 v1, v26

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 531
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_18

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "aPtrCoords["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "].x: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v26

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " aPtrCoords["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "].y: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v26

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_18
    sget-object v4, Landroid/media/WFDUibcManager$3;->$SwitchMap$android$media$WFDUibcManager$UIBC_Mode:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    invoke-virtual {v5}, Landroid/media/WFDUibcManager$UIBC_Mode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 579
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    .line 580
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    .line 581
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)F

    move-result v5

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    .line 582
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_19

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UIBC Mode is default configuration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_19
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1a

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "screenRatio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " wfdRatio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->configuration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_24

    .line 585
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_22

    .line 587
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    div-float v37, v4, v5

    .line 588
    .local v37, "newWidth":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v4

    sub-float v4, v4, v37

    const/high16 v5, 0x40000000    # 2.0f

    div-float v40, v4, v5

    .line 589
    .local v40, "pad":F
    const v4, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v38, v4, v5

    .line 590
    .local v38, "normX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v5, v38, v40

    div-float v5, v5, v37

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 591
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 592
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 593
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 633
    .end local v37    # "newWidth":F
    .end local v38    # "normX":F
    .end local v40    # "pad":F
    :goto_5
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1b

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Value Me_X="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Me_Y="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_1b
    add-int/lit8 v26, v26, 0x1

    goto/16 :goto_4

    .line 536
    :pswitch_0
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/media/WFDUibcManager$EventDispatcher;->handleCameraTouch(I)V

    goto :goto_5

    .line 541
    :pswitch_1
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1c

    const-string v4, "WFDUibcManager"

    const-string v5, "UIBC Mode is PRESENTATION"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    :cond_1c
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 543
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 544
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 545
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_5

    .line 549
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v42

    .line 550
    .local v42, "rotation":I
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_1d

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UIBC Mode is Full Screen: rotation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v42

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    :cond_1d
    if-nez v42, :cond_1e

    .line 552
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v26

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 553
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 566
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 567
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_5

    .line 554
    :cond_1e
    const/4 v4, 0x3

    move/from16 v0, v42

    if-ne v0, v4, :cond_1f

    .line 555
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v26

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 556
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v26

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto :goto_6

    .line 558
    :cond_1f
    const/4 v4, 0x2

    move/from16 v0, v42

    if-ne v0, v4, :cond_20

    .line 559
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 560
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v6, v6, v26

    iget v6, v6, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_6

    .line 562
    :cond_20
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 563
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    goto/16 :goto_6

    .line 571
    .end local v42    # "rotation":I
    :pswitch_3
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_21

    const-string v4, "WFDUibcManager"

    const-string v5, "UIBC Mode is foreceValue"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_21
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 573
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 574
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 575
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_5

    .line 595
    :cond_22
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_23

    .line 597
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    div-float v36, v4, v5

    .line 598
    .local v36, "newHeight":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)F

    move-result v4

    sub-float v4, v4, v36

    const/high16 v5, 0x40000000    # 2.0f

    div-float v40, v4, v5

    .line 599
    .restart local v40    # "pad":F
    const v4, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float v39, v4, v5

    .line 600
    .local v39, "normY":F
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 601
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    sub-float v5, v39, v40

    div-float v5, v5, v36

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 602
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 603
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_5

    .line 606
    .end local v36    # "newHeight":F
    .end local v39    # "normY":F
    .end local v40    # "pad":F
    :cond_23
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 607
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 608
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 609
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_5

    .line 613
    :cond_24
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_25

    .line 615
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kW:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_Y:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$500(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kH:F

    div-float v37, v4, v5

    .line 616
    .restart local v37    # "newWidth":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v4

    sub-float v4, v4, v37

    const/high16 v5, 0x40000000    # 2.0f

    div-float v40, v4, v5

    .line 617
    .restart local v40    # "pad":F
    const v4, 0x38d1b717    # 1.0E-4f

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mNegRs_X:F
    invoke-static {v5}, Landroid/media/WFDUibcManager;->access$400(Landroid/media/WFDUibcManager;)F

    move-result v5

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float v38, v4, v5

    .line 618
    .restart local v38    # "normX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    sub-float v5, v38, v40

    mul-float/2addr v4, v5

    div-float v4, v4, v37

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 619
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 620
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 621
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_5

    .line 622
    .end local v37    # "newWidth":F
    .end local v38    # "normX":F
    .end local v40    # "pad":F
    :cond_25
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->screenRatio:F

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->wfdRatio:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_26

    .line 623
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kX:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    .line 624
    move-object/from16 v0, p0

    iget v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->kY:F

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v5, v5, v26

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    .line 625
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    .line 626
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v4, v4, v26

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    invoke-virtual {v4, v5, v6}, Landroid/view/MotionEvent$PointerCoords;->setAxisValue(IF)V

    goto/16 :goto_5

    .line 628
    :cond_26
    const-string v4, "WFDUibcManager"

    const-string v5, "Skip event, ratio wrong"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 636
    :cond_27
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_28

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Device id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_28
    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_29

    .line 640
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    .line 643
    :cond_29
    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v23, -0x1

    shl-int/lit8 v5, v5, 0x8

    or-int v34, v4, v5

    .line 645
    .local v34, "motionAction":I
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2a

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "motionAction id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    :cond_2a
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mTouchDownTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    and-int/lit16 v8, v8, 0xff

    add-int/lit8 v9, v23, -0x1

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v8, v9

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    const/high16 v16, 0x3f800000    # 1.0f

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    const/16 v18, 0x0

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->getSource()I

    move-result v19

    const/16 v20, 0x0

    invoke-static/range {v4 .. v20}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIIFFIIII)Landroid/view/MotionEvent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    .line 648
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2b

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "InjectTouchEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_2b
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 652
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->me:Landroid/view/MotionEvent;

    .line 654
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    sget-object v5, Landroid/media/WFDUibcManager$UIBC_Mode;->FORCE_VALUE:Landroid/media/WFDUibcManager$UIBC_Mode;

    if-eq v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Mode:Landroid/media/WFDUibcManager$UIBC_Mode;

    sget-object v5, Landroid/media/WFDUibcManager$UIBC_Mode;->PRESENTATION:Landroid/media/WFDUibcManager$UIBC_Mode;

    if-eq v4, v5, :cond_5

    .line 655
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v32

    .line 656
    .local v32, "mlTempTime":J
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2c

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TimeGap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mBroadTime:J

    sub-long v6, v32, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_2c
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->mBroadTime:J

    sub-long v4, v32, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-lez v4, :cond_5

    .line 658
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v4, "WFDUibcManager"

    const-string v5, "Send intent (android.intent.action.SEC_UIBC_GET_FOCUS)"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    :cond_2d
    new-instance v44, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEC_UIBC_GET_FOCUS"

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 660
    .local v44, "virtualKey_Intent":Landroid/content/Intent;
    const-string v4, "UIBC_X"

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_X:F

    float-to-int v5, v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 661
    const-string v4, "UIBC_Y"

    move-object/from16 v0, p0

    iget v5, v0, Landroid/media/WFDUibcManager$EventDispatcher;->Me_Y:F

    float-to-int v5, v5

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 662
    const-string v4, "DISPLAY_ID"

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 663
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 664
    move-wide/from16 v0, v32

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/media/WFDUibcManager$EventDispatcher;->mBroadTime:J

    goto/16 :goto_1

    .line 534
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/16 v10, 0xe1

    const/16 v9, 0x87

    const/16 v8, 0x2d

    const/16 v6, 0xa

    const/4 v7, 0x0

    .line 886
    new-array v4, v6, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    .line 887
    new-array v4, v6, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 889
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 890
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPointerProp:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v5, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v5, v4, v1

    .line 891
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->aPtrCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v4, v1

    .line 889
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 893
    :cond_0
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->displayMetrics:Landroid/util/DisplayMetrics;

    .line 894
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->wm:Landroid/view/WindowManager;

    .line 896
    :cond_1
    :goto_1
    iget-boolean v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->running:Z

    if-eqz v4, :cond_12

    .line 897
    invoke-virtual {p0}, Landroid/media/WFDUibcManager$EventDispatcher;->getNextEvent()Landroid/view/InputEvent;

    move-result-object v4

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    .line 898
    invoke-virtual {p0}, Landroid/media/WFDUibcManager$EventDispatcher;->getRotateEvent()Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    .line 899
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    if-nez v4, :cond_2

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 904
    :cond_2
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RecvdEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_3
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RecvdEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_4
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    instance-of v4, v4, Landroid/view/MotionEvent;

    if-eqz v4, :cond_10

    .line 908
    invoke-direct {p0}, Landroid/media/WFDUibcManager$EventDispatcher;->handleMotionEvent()V

    .line 913
    :cond_5
    :goto_2
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    if-eqz v4, :cond_1

    .line 914
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 915
    .local v0, "accel":I
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 916
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user_rotation"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 917
    .local v3, "rotation":I
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current rotation "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :cond_6
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "display"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 919
    .local v2, "mDm":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v2}, Landroid/hardware/display/DisplayManager;->isAuSLServiceRunning()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 920
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "WFDUibcManager"

    const-string v5, "Setting SPECIAL rotation!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_7
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    .line 925
    :goto_3
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    rem-int/lit16 v4, v4, 0x168

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    .line 926
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_8

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit16 v4, v4, 0x168

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    .line 928
    :cond_8
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x13b

    if-le v4, v5, :cond_9

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x168

    if-le v4, v5, :cond_a

    :cond_9
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ltz v4, :cond_b

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v8, :cond_b

    :cond_a
    const/4 v3, 0x0

    .line 929
    :cond_b
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v8, :cond_c

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v9, :cond_c

    const/4 v3, 0x1

    .line 930
    :cond_c
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v9, :cond_d

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt v4, v10, :cond_d

    const/4 v3, 0x2

    .line 931
    :cond_d
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v10, :cond_e

    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x13b

    if-gt v4, v5, :cond_e

    const/4 v3, 0x3

    .line 932
    :cond_e
    # getter for: Landroid/media/WFDUibcManager;->DEBUG:Z
    invoke-static {}, Landroid/media/WFDUibcManager;->access$000()Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "WFDUibcManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rotation set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    :cond_f
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "user_rotation"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 934
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->this$0:Landroid/media/WFDUibcManager;

    # getter for: Landroid/media/WFDUibcManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/WFDUibcManager;->access$600(Landroid/media/WFDUibcManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 910
    .end local v0    # "accel":I
    .end local v2    # "mDm":Landroid/hardware/display/DisplayManager;
    .end local v3    # "rotation":I
    :cond_10
    iget-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->ev:Landroid/view/InputEvent;

    instance-of v4, v4, Landroid/view/KeyEvent;

    if-eqz v4, :cond_5

    .line 911
    invoke-direct {p0}, Landroid/media/WFDUibcManager$EventDispatcher;->handleKeyEvent()V

    goto/16 :goto_2

    .line 923
    .restart local v0    # "accel":I
    .restart local v2    # "mDm":Landroid/hardware/display/DisplayManager;
    .restart local v3    # "rotation":I
    :cond_11
    mul-int/lit8 v4, v3, 0x5a

    iget-object v5, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, p0, Landroid/media/WFDUibcManager$EventDispatcher;->rEv:Ljava/lang/Integer;

    goto/16 :goto_3

    .line 937
    .end local v0    # "accel":I
    .end local v2    # "mDm":Landroid/hardware/display/DisplayManager;
    .end local v3    # "rotation":I
    :cond_12
    return-void
.end method
