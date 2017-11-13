.class Lcom/android/server/display/MagnifierSurfaceControl$Border$4;
.super Ljava/lang/Object;
.source "MagnifierSurfaceControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/MagnifierSurfaceControl$Border;->injectAccessibilityMotionEvent(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;


# direct methods
.method constructor <init>(Lcom/android/server/display/MagnifierSurfaceControl$Border;)V
    .locals 0

    .prologue
    .line 1184
    iput-object p1, p0, Lcom/android/server/display/MagnifierSurfaceControl$Border$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 39

    .prologue
    .line 1186
    const-string v6, "Magnifier.Border"

    const-string/jumbo v7, "injectAccessibilityMotionEvent"

    invoke-static {v6, v7}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1189
    .local v2, "downTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1190
    .local v4, "eventTime":J
    const/4 v14, 0x4

    .line 1191
    .local v14, "deviceId":I
    const/4 v15, 0x0

    .line 1192
    .local v15, "edgeFlag":I
    const/4 v10, 0x0

    .line 1193
    .local v10, "metaState":I
    const/high16 v17, -0x80000000

    .line 1194
    .local v17, "AMOTION_EVENT_FLAG_WINDOW_IS_ACCESSIBILITY":I
    const/high16 v12, 0x3f800000    # 1.0f

    .line 1195
    .local v12, "xPrecision":F
    const/high16 v13, 0x3f800000    # 1.0f

    .line 1196
    .local v13, "yPrecision":F
    new-instance v34, Landroid/app/Instrumentation;

    invoke-direct/range {v34 .. v34}, Landroid/app/Instrumentation;-><init>()V

    .line 1198
    .local v34, "inst":Landroid/app/Instrumentation;
    const/4 v6, 0x2

    new-array v8, v6, [Landroid/view/MotionEvent$PointerProperties;

    .line 1199
    .local v8, "properties":[Landroid/view/MotionEvent$PointerProperties;
    new-instance v38, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct/range {v38 .. v38}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 1200
    .local v38, "pp1":Landroid/view/MotionEvent$PointerProperties;
    const/4 v6, 0x0

    move-object/from16 v0, v38

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 1201
    const/4 v6, 0x1

    move-object/from16 v0, v38

    iput v6, v0, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 1202
    const/4 v6, 0x0

    aput-object v38, v8, v6

    .line 1204
    const/4 v6, 0x1

    new-array v0, v6, [Landroid/view/MotionEvent$PointerCoords;

    move-object/from16 v25, v0

    .line 1205
    .local v25, "pointerCoordsUp":[Landroid/view/MotionEvent$PointerCoords;
    new-instance v37, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v37 .. v37}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 1207
    .local v37, "pcUp":Landroid/view/MotionEvent$PointerCoords;
    const/4 v6, 0x1

    new-array v9, v6, [Landroid/view/MotionEvent$PointerCoords;

    .line 1208
    .local v9, "pointerCoordsDown":[Landroid/view/MotionEvent$PointerCoords;
    new-instance v36, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct/range {v36 .. v36}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 1210
    .local v36, "pcDown":Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget v6, v6, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchUpX:F

    move-object/from16 v0, v37

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1211
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget v6, v6, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchUpY:F

    move-object/from16 v0, v37

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1212
    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v37

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1213
    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v37

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1214
    const/4 v6, 0x0

    aput-object v37, v25, v6

    .line 1216
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget v6, v6, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchDownX:F

    move-object/from16 v0, v36

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1217
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/display/MagnifierSurfaceControl$Border$4;->this$0:Lcom/android/server/display/MagnifierSurfaceControl$Border;

    iget v6, v6, Lcom/android/server/display/MagnifierSurfaceControl$Border;->mTouchDownY:F

    move-object/from16 v0, v36

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1218
    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v36

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1219
    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, v36

    iput v6, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1220
    const/4 v6, 0x0

    aput-object v36, v9, v6

    .line 1222
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v11, 0x0

    const/16 v16, 0x0

    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v35

    .line 1228
    .local v35, "mMotionEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {v34 .. v35}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 1229
    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->recycle()V

    .line 1230
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1232
    const/16 v22, 0x1

    const/16 v23, 0x1

    const/16 v27, 0x0

    const/16 v32, 0x0

    move-wide/from16 v18, v2

    move-wide/from16 v20, v4

    move-object/from16 v24, v8

    move/from16 v26, v10

    move/from16 v28, v12

    move/from16 v29, v13

    move/from16 v30, v14

    move/from16 v31, v15

    move/from16 v33, v17

    invoke-static/range {v18 .. v33}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v35

    .line 1238
    invoke-virtual/range {v34 .. v35}, Landroid/app/Instrumentation;->sendPointerSync(Landroid/view/MotionEvent;)V

    .line 1239
    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->recycle()V

    .line 1240
    return-void
.end method
