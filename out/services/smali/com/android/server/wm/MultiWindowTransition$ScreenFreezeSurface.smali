.class Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;
.super Ljava/lang/Object;
.source "MultiWindowTransition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiWindowTransition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScreenFreezeSurface"
.end annotation


# static fields
.field static final BACKGROUND_LAYER:I = 0x2af7

.field static final FREEZE_LAYER:I = 0x1e8481


# instance fields
.field mBGSurface:Landroid/view/SurfaceControl;

.field mRect:Landroid/graphics/Rect;

.field mRotation:I

.field mSurface:Landroid/view/SurfaceControl;

.field mTmpFloats:[F

.field mTmpMatrix:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;IIIIIIZII)V
    .locals 12
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "layerStack"    # I
    .param p7, "rotation"    # I
    .param p8, "needBG"    # Z
    .param p9, "minLayer"    # I
    .param p10, "maxLayer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 675
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;-><init>(Landroid/view/SurfaceSession;IIIIIIZIII)V

    .line 676
    return-void
.end method

.method constructor <init>(Landroid/view/SurfaceSession;IIIIIIZIII)V
    .locals 17
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "layerStack"    # I
    .param p7, "rotation"    # I
    .param p8, "needBG"    # Z
    .param p9, "minLayer"    # I
    .param p10, "maxLayer"    # I
    .param p11, "displayId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 680
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 664
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    .line 665
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 666
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    .line 668
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 669
    const/16 v4, 0x9

    new-array v4, v4, [F

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    .line 682
    sub-int v7, p4, p2

    .line 683
    .local v7, "w":I
    sub-int v8, p5, p3

    .line 685
    .local v8, "h":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 686
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    .line 688
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v4, :cond_3

    .line 689
    new-instance v4, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ScreenFreezeSurface("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, -0x1

    const/4 v10, 0x4

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 697
    :goto_0
    if-eqz p8, :cond_0

    .line 698
    sget-boolean v4, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v4, :cond_4

    .line 699
    new-instance v4, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ScreenFreezeBGSurface("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, -0x1

    const/4 v10, 0x4

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/wm/WindowStateAnimator$SurfaceTrace;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    .line 709
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_1

    .line 710
    new-instance v10, Landroid/view/Surface;

    invoke-direct {v10}, Landroid/view/Surface;-><init>()V

    .line 711
    .local v10, "sur":Landroid/view/Surface;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v10, v4}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 716
    invoke-static/range {p11 .. p11}, Lcom/android/server/wm/MultiWindowTransition;->convertDisplayIdToBuiltInDisplayId(I)I

    move-result v4

    invoke-static {v4}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-static/range {v9 .. v15}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;IIIIZ)V

    .line 718
    invoke-virtual {v10}, Landroid/view/Surface;->destroy()V

    .line 720
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const v5, 0x1e8481

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 723
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    packed-switch v4, :pswitch_data_0

    .line 743
    .end local v10    # "sur":Landroid/view/Surface;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v4, :cond_2

    .line 744
    new-instance v16, Landroid/view/Surface;

    invoke-direct/range {v16 .. v16}, Landroid/view/Surface;-><init>()V

    .line 745
    .local v16, "bgSur":Landroid/view/Surface;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 749
    invoke-static/range {p11 .. p11}, Lcom/android/server/wm/MultiWindowTransition;->convertDisplayIdToBuiltInDisplayId(I)I

    move-result v4

    invoke-static {v4}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 751
    invoke-virtual/range {v16 .. v16}, Landroid/view/Surface;->destroy()V

    .line 753
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 754
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/16 v5, 0x2af7

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 756
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    packed-switch v4, :pswitch_data_1

    .line 775
    .end local v16    # "bgSur":Landroid/view/Surface;
    :cond_2
    :goto_3
    return-void

    .line 693
    :cond_3
    new-instance v4, Landroid/view/SurfaceControl;

    const-string v6, "ScreenFreezeSurface"

    const/4 v9, 0x4

    const/4 v10, 0x4

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    goto/16 :goto_0

    .line 703
    :cond_4
    new-instance v4, Landroid/view/SurfaceControl;

    const-string v6, "ScreenFreezeBGSurface"

    const/4 v9, 0x4

    const/4 v10, 0x4

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    goto/16 :goto_1

    .line 725
    .restart local v10    # "sur":Landroid/view/Surface;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 726
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_2

    .line 729
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    int-to-float v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 730
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_2

    .line 733
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v7

    int-to-float v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 734
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_2

    .line 737
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v8

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 738
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_2

    .line 758
    .end local v10    # "sur":Landroid/view/Surface;
    .restart local v16    # "bgSur":Landroid/view/Surface;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 759
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_3

    .line 762
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    int-to-float v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 763
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_3

    .line 766
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v7

    int-to-float v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 767
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v11, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_3

    .line 770
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    int-to-float v5, v8

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 771
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v9, -0x40800000    # -1.0f

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v9, v11}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto/16 :goto_3

    .line 723
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 756
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method hideBG()V
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 838
    :cond_0
    return-void
.end method

.method kill()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 823
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 825
    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 829
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 830
    iput-object v1, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    .line 832
    :cond_1
    return-void
.end method

.method setAnimationTransform(Landroid/view/animation/Transformation;)V
    .locals 10
    .param p1, "transformation"    # Landroid/view/animation/Transformation;

    .prologue
    .line 778
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 779
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v4

    .line 780
    .local v1, "left":F
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v4

    .line 781
    .local v2, "top":F
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v3, v4

    .line 782
    .local v3, "width":F
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v0, v4

    .line 785
    .local v0, "height":F
    iget v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mRotation:I

    packed-switch v4, :pswitch_data_0

    .line 803
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 804
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v7, 0x5

    aget v6, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 806
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    iget-object v5, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v7, 0x3

    aget v6, v6, v7

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    iget-object v8, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpFloats:[F

    const/4 v9, 0x4

    aget v8, v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 809
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 811
    return-void

    .line 787
    :pswitch_0
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 790
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 791
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v3, v2

    invoke-virtual {v4, v1, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 794
    :pswitch_2
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 795
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v3, v1

    sub-float v6, v0, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 798
    :pswitch_3
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 799
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mTmpMatrix:Landroid/graphics/Matrix;

    sub-float v5, v0, v1

    invoke-virtual {v4, v5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 785
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method setLayerForSurface(I)V
    .locals 1
    .param p1, "maxLayer"    # I

    .prologue
    .line 841
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 842
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 844
    :cond_0
    return-void
.end method

.method show()V
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 818
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mBGSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 820
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowTransition$ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
