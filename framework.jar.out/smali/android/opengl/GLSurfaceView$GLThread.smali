.class Landroid/opengl/GLSurfaceView$GLThread;
.super Ljava/lang/Thread;
.source "GLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/GLSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GLThread"
.end annotation


# instance fields
.field private mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

.field private mEventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExited:Z

.field private mFinishedCreatingEglSurface:Z

.field private mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;"
        }
    .end annotation
.end field

.field private mHasSurface:Z

.field private mHaveEglContext:Z

.field private mHaveEglSurface:Z

.field private mHeight:I

.field private mPaused:Z

.field private mRenderComplete:Z

.field private mRenderMode:I

.field private mRequestPaused:Z

.field private mRequestRender:Z

.field private mShouldExit:Z

.field private mShouldReleaseEglContext:Z

.field private mSizeChanged:Z

.field private mSurfaceIsBad:Z

.field private mWaitingForSurface:Z

.field private mWidth:I


# direct methods
.method constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/opengl/GLSurfaceView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "glSurfaceViewWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/opengl/GLSurfaceView;>;"
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1338
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1884
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    .line 1885
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1339
    iput v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1340
    iput v2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1341
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1342
    iput v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1343
    iput-object p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    .line 1344
    return-void
.end method

.method static synthetic access$1202(Landroid/opengl/GLSurfaceView$GLThread;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/opengl/GLSurfaceView$GLThread;
    .param p1, "x1"    # Z

    .prologue
    .line 1336
    iput-boolean p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    return p1
.end method

.method private guardedRun()V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 1385
    new-instance v21, Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/opengl/GLSurfaceView$EglHelper;-><init>(Ljava/lang/ref/WeakReference;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    .line 1386
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1387
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1389
    const/4 v10, 0x0

    .line 1390
    .local v10, "gl":Ljavax/microedition/khronos/opengles/GL10;
    const/4 v5, 0x0

    .line 1391
    .local v5, "createEglContext":Z
    const/4 v6, 0x0

    .line 1392
    .local v6, "createEglSurface":Z
    const/4 v7, 0x0

    .line 1393
    .local v7, "createGlInterface":Z
    const/4 v12, 0x0

    .line 1394
    .local v12, "lostEglContext":Z
    const/4 v15, 0x0

    .line 1395
    .local v15, "sizeChanged":Z
    const/16 v20, 0x0

    .line 1396
    .local v20, "wantRenderNotification":Z
    const/4 v8, 0x0

    .line 1397
    .local v8, "doRenderNotification":Z
    const/4 v4, 0x0

    .line 1398
    .local v4, "askedToReleaseEglContext":Z
    const/16 v19, 0x0

    .line 1399
    .local v19, "w":I
    const/4 v11, 0x0

    .line 1400
    .local v11, "h":I
    const/4 v9, 0x0

    .line 1403
    .local v9, "event":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    :try_start_0
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    monitor-enter v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1405
    :goto_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 1406
    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1688
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    monitor-enter v22

    .line 1689
    :try_start_2
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1690
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1691
    monitor-exit v22

    return-void

    :catchall_0
    move-exception v21

    monitor-exit v22
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v21

    .line 1409
    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_2

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljava/lang/Runnable;

    move-object v9, v0

    .line 1574
    :goto_2
    monitor-exit v22
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1576
    if-eqz v9, :cond_14

    .line 1577
    :try_start_4
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1578
    const/4 v9, 0x0

    .line 1579
    goto :goto_0

    .line 1415
    :cond_2
    const/4 v13, 0x0

    .line 1416
    .local v13, "pausing":Z
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v23, v0

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_3

    .line 1417
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1418
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    .line 1419
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 1426
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    move/from16 v21, v0

    if-eqz v21, :cond_4

    .line 1430
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1431
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1432
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1433
    const/4 v4, 0x1

    .line 1437
    :cond_4
    if-eqz v12, :cond_5

    .line 1438
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1439
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1440
    const/4 v12, 0x0

    .line 1444
    :cond_5
    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v21, v0

    if-eqz v21, :cond_6

    .line 1448
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1452
    :cond_6
    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v21, v0

    if-eqz v21, :cond_8

    .line 1453
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/opengl/GLSurfaceView;

    .line 1454
    .local v18, "view":Landroid/opengl/GLSurfaceView;
    if-nez v18, :cond_11

    const/4 v14, 0x0

    .line 1456
    .local v14, "preserveEglContextOnPause":Z
    :goto_3
    if-eqz v14, :cond_7

    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->shouldReleaseEGLContextWhenPausing()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 1457
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1465
    .end local v14    # "preserveEglContextOnPause":Z
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_8
    if-eqz v13, :cond_9

    .line 1466
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$GLThreadManager;->shouldTerminateEGLWhenPausing()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1475
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v21, v0

    if-nez v21, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v21, v0

    if-nez v21, :cond_b

    .line 1479
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v21, v0

    if-eqz v21, :cond_a

    .line 1480
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1482
    :cond_a
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1483
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1484
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 1488
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    move/from16 v21, v0

    if-eqz v21, :cond_c

    .line 1492
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    .line 1493
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 1496
    :cond_c
    if-eqz v8, :cond_d

    .line 1500
    const/16 v20, 0x0

    .line 1501
    const/4 v8, 0x0

    .line 1502
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1503
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 1507
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v21

    if-eqz v21, :cond_13

    .line 1510
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v21, v0

    if-nez v21, :cond_e

    .line 1511
    if-eqz v4, :cond_12

    .line 1512
    const/4 v4, 0x0

    .line 1527
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v21, v0

    if-nez v21, :cond_f

    .line 1528
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1529
    const/4 v6, 0x1

    .line 1530
    const/4 v7, 0x1

    .line 1531
    const/4 v15, 0x1

    .line 1534
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    move/from16 v21, v0

    if-eqz v21, :cond_13

    .line 1535
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    .line 1536
    const/4 v15, 0x1

    .line 1537
    move-object/from16 v0, p0

    iget v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    move/from16 v19, v0

    .line 1538
    move-object/from16 v0, p0

    iget v11, v0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1539
    const/16 v20, 0x1

    .line 1547
    const/4 v6, 0x1

    .line 1549
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1551
    :cond_10
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1552
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_2

    .line 1574
    .end local v13    # "pausing":Z
    :catchall_1
    move-exception v21

    monitor-exit v22
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1688
    :catchall_2
    move-exception v21

    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    monitor-enter v22

    .line 1689
    :try_start_7
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglSurfaceLocked()V

    .line 1690
    invoke-direct/range {p0 .. p0}, Landroid/opengl/GLSurfaceView$GLThread;->stopEglContextLocked()V

    .line 1691
    monitor-exit v22
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    throw v21

    .line 1454
    .restart local v13    # "pausing":Z
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_11
    :try_start_8
    # getter for: Landroid/opengl/GLSurfaceView;->mPreserveEGLContextOnPause:Z
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->access$1000(Landroid/opengl/GLSurfaceView;)Z

    move-result v14

    goto/16 :goto_3

    .line 1513
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_12
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->tryAcquireEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    move-result v21

    if-eqz v21, :cond_e

    .line 1515
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->start()V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1520
    const/16 v21, 0x1

    :try_start_a
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1521
    const/4 v5, 0x1

    .line 1523
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_4

    .line 1516
    :catch_0
    move-exception v17

    .line 1517
    .local v17, "t":Ljava/lang/RuntimeException;
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1518
    throw v17

    .line 1572
    .end local v17    # "t":Ljava/lang/RuntimeException;
    :cond_13
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto/16 :goto_1

    .line 1582
    .end local v13    # "pausing":Z
    :cond_14
    if-eqz v6, :cond_15

    .line 1586
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->createSurface()Z

    move-result v21

    if-eqz v21, :cond_1c

    .line 1587
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    monitor-enter v22
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 1588
    const/16 v21, 0x1

    :try_start_c
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1589
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 1590
    monitor-exit v22
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 1599
    const/4 v6, 0x0

    .line 1602
    :cond_15
    if-eqz v7, :cond_16

    .line 1603
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->createGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v21

    move-object/from16 v0, v21

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v10, v0

    .line 1605
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Landroid/opengl/GLSurfaceView$GLThreadManager;->checkGLDriver(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1606
    const/4 v7, 0x0

    .line 1609
    :cond_16
    if-eqz v5, :cond_18

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/opengl/GLSurfaceView;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 1614
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v18, :cond_17

    .line 1616
    const-wide/16 v22, 0x8

    :try_start_e
    const-string/jumbo v21, "onSurfaceCreated"

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1617
    # getter for: Landroid/opengl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->access$1100(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$EglHelper;->mEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v0, v10, v1}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 1619
    const-wide/16 v22, 0x8

    :try_start_f
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1622
    :cond_17
    const/4 v5, 0x0

    .line 1625
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_18
    if-eqz v15, :cond_1a

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/opengl/GLSurfaceView;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 1630
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v18, :cond_19

    .line 1632
    const-wide/16 v22, 0x8

    :try_start_10
    const-string/jumbo v21, "onSurfaceChanged"

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1633
    # getter for: Landroid/opengl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->access$1100(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-interface {v0, v10, v1, v11}, Landroid/opengl/GLSurfaceView$Renderer;->onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 1635
    const-wide/16 v22, 0x8

    :try_start_11
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1638
    :cond_19
    const/4 v15, 0x0

    .line 1645
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mGLSurfaceViewWeakRef:Ljava/lang/ref/WeakReference;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/opengl/GLSurfaceView;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 1646
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    if-eqz v18, :cond_1b

    .line 1648
    const-wide/16 v22, 0x8

    :try_start_12
    const-string/jumbo v21, "onDrawFrame"

    move-wide/from16 v0, v22

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1649
    # getter for: Landroid/opengl/GLSurfaceView;->mRenderer:Landroid/opengl/GLSurfaceView$Renderer;
    invoke-static/range {v18 .. v18}, Landroid/opengl/GLSurfaceView;->access$1100(Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView$Renderer;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Landroid/opengl/GLSurfaceView$Renderer;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    .line 1651
    const-wide/16 v22, 0x8

    :try_start_13
    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    .line 1655
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/opengl/GLSurfaceView$EglHelper;->swap()I

    move-result v16

    .line 1656
    .local v16, "swapError":I
    sparse-switch v16, :sswitch_data_0

    .line 1670
    const-string v21, "GLThread"

    const-string v22, "eglSwapBuffers"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/opengl/GLSurfaceView$EglHelper;->logEglErrorAsWarning(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1672
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    monitor-enter v22
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 1673
    const/16 v21, 0x1

    :try_start_14
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1674
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 1675
    monitor-exit v22
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    .line 1679
    :goto_5
    :sswitch_0
    if-eqz v20, :cond_0

    .line 1680
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 1590
    .end local v16    # "swapError":I
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :catchall_3
    move-exception v21

    :try_start_15
    monitor-exit v22
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :try_start_16
    throw v21

    .line 1592
    :cond_1c
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v22

    monitor-enter v22
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_2

    .line 1593
    const/16 v21, 0x1

    :try_start_17
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1594
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    .line 1595
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->notifyAll()V

    .line 1596
    monitor-exit v22

    goto/16 :goto_0

    :catchall_4
    move-exception v21

    monitor-exit v22
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    :try_start_18
    throw v21

    .line 1619
    .restart local v18    # "view":Landroid/opengl/GLSurfaceView;
    :catchall_5
    move-exception v21

    const-wide/16 v22, 0x8

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    throw v21

    .line 1635
    :catchall_6
    move-exception v21

    const-wide/16 v22, 0x8

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    throw v21

    .line 1651
    :catchall_7
    move-exception v21

    const-wide/16 v22, 0x8

    invoke-static/range {v22 .. v23}, Landroid/os/Trace;->traceEnd(J)V

    throw v21
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    .line 1663
    .restart local v16    # "swapError":I
    :sswitch_1
    const/4 v12, 0x1

    .line 1664
    goto :goto_5

    .line 1675
    :catchall_8
    move-exception v21

    :try_start_19
    monitor-exit v22
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    :try_start_1a
    throw v21
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 1691
    .end local v16    # "swapError":I
    .end local v18    # "view":Landroid/opengl/GLSurfaceView;
    :catchall_9
    move-exception v21

    :try_start_1b
    monitor-exit v22
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    throw v21

    .line 1656
    nop

    :sswitch_data_0
    .sparse-switch
        0x3000 -> :sswitch_0
        0x300e -> :sswitch_1
    .end sparse-switch
.end method

.method private readyToDraw()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1700
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSurfaceIsBad:Z

    if-nez v1, :cond_1

    iget v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    if-lez v1, :cond_1

    iget v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    if-nez v1, :cond_0

    iget v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopEglContextLocked()V
    .locals 1

    .prologue
    .line 1378
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->finish()V

    .line 1380
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    .line 1381
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->releaseEglContextLocked(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1383
    :cond_0
    return-void
.end method

.method private stopEglSurfaceLocked()V
    .locals 1

    .prologue
    .line 1367
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    .line 1368
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    .line 1369
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEglHelper:Landroid/opengl/GLSurfaceView$EglHelper;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView$EglHelper;->destroySurface()V

    .line 1371
    :cond_0
    return-void
.end method


# virtual methods
.method public ableToDraw()Z
    .locals 1

    .prologue
    .line 1696
    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglContext:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHaveEglSurface:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->readyToDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRenderMode()I
    .locals 2

    .prologue
    .line 1716
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1717
    :try_start_0
    iget v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    monitor-exit v1

    return v0

    .line 1718
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1766
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1770
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1771
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1772
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1777
    :try_start_1
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1778
    :catch_0
    move-exception v0

    .line 1779
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1782
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1783
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1786
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1790
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestPaused:Z

    .line 1791
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1792
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1793
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1794
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1799
    :try_start_1
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1800
    :catch_0
    move-exception v0

    .line 1801
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1804
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1805
    return-void
.end method

.method public onWindowResize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 1808
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1809
    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWidth:I

    .line 1810
    iput p2, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHeight:I

    .line 1811
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mSizeChanged:Z

    .line 1812
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1813
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    .line 1814
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1818
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mPaused:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderComplete:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->ableToDraw()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 1823
    :try_start_1
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1824
    :catch_0
    move-exception v0

    .line 1825
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1828
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1829
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 1857
    if-nez p1, :cond_0

    .line 1858
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "r must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1860
    :cond_0
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1861
    :try_start_0
    iget-object v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mEventQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1862
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1863
    monitor-exit v1

    .line 1864
    return-void

    .line 1863
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestExitAndWait()V
    .locals 3

    .prologue
    .line 1834
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1835
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldExit:Z

    .line 1836
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1837
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1839
    :try_start_1
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1840
    :catch_0
    move-exception v0

    .line 1841
    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1844
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1845
    return-void
.end method

.method public requestReleaseEglContextLocked()V
    .locals 1

    .prologue
    .line 1848
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mShouldReleaseEglContext:Z

    .line 1849
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1850
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1722
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1723
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRequestRender:Z

    .line 1724
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1725
    monitor-exit v1

    .line 1726
    return-void

    .line 1725
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GLThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView$GLThread;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView$GLThread;->setName(Ljava/lang/String;)V

    .line 1354
    :try_start_0
    invoke-direct {p0}, Landroid/opengl/GLSurfaceView$GLThread;->guardedRun()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1358
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    .line 1360
    :goto_0
    return-void

    .line 1355
    :catch_0
    move-exception v0

    .line 1358
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/opengl/GLSurfaceView$GLThreadManager;->threadExiting(Landroid/opengl/GLSurfaceView$GLThread;)V

    throw v0
.end method

.method public setRenderMode(I)V
    .locals 2
    .param p1, "renderMode"    # I

    .prologue
    .line 1706
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 1707
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "renderMode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1709
    :cond_1
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    monitor-enter v1

    .line 1710
    :try_start_0
    iput p1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mRenderMode:I

    .line 1711
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1712
    monitor-exit v1

    .line 1713
    return-void

    .line 1712
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public surfaceCreated()V
    .locals 3

    .prologue
    .line 1729
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1733
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1734
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    .line 1735
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1738
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mFinishedCreatingEglSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1740
    :try_start_1
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1741
    :catch_0
    move-exception v0

    .line 1742
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1745
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1746
    return-void
.end method

.method public surfaceDestroyed()V
    .locals 3

    .prologue
    .line 1749
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v2

    monitor-enter v2

    .line 1753
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mHasSurface:Z

    .line 1754
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1755
    :goto_0
    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mWaitingForSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/opengl/GLSurfaceView$GLThread;->mExited:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 1757
    :try_start_1
    # getter for: Landroid/opengl/GLSurfaceView;->sGLThreadManager:Landroid/opengl/GLSurfaceView$GLThreadManager;
    invoke-static {}, Landroid/opengl/GLSurfaceView;->access$900()Landroid/opengl/GLSurfaceView$GLThreadManager;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1758
    :catch_0
    move-exception v0

    .line 1759
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 1762
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1763
    return-void
.end method
