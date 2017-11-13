.class public Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
.super Ljava/lang/Object;
.source "LppAlgorithm.java"


# instance fields
.field APDRMAXNUMBER:I

.field AlgoLocP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field AlgoLocPPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field Cnt_SameLocSet:J

.field CurrSetLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field Flag_FineLocAcquired:Z

.field Flag_First_loc:Z

.field Flag_Loc_init:Z

.field LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field final MAX_MOVEMENT_SPEED_RUN:D

.field final MAX_MOVEMENT_SPEED_STATIONARY:D

.field final MAX_MOVEMENT_SPEED_VEHICLE:D

.field final MAX_MOVEMENT_SPEED_WALK:D

.field final MIN_MOVEMENT_DISTANCE:D

.field final MIN_UPDTAE_TIME:D

.field OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

.field Origin_LLH:[D

.field final POS_SET_RADIUS:D

.field final POS_SET_TIME:D

.field PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

.field final Position_Jump_Sec_TH:D

.field Prev_StateTime:D

.field ProcessNoisePerSecondVehicle:[D

.field ProcessNoisePerSecondWalk:[D

.field final RST_LOC_VALID_CHK_NEWSET:I

.field final RST_LOC_VALID_CHK_NOUPDATE:I

.field final RST_LOC_VALID_CHK_STATIONARY:I

.field final STATE_STATIONARY:I

.field final STATE_UNKNWON:I

.field final STATE_VEHICLE:I

.field TAG:Ljava/lang/String;

.field final Trajectory_Time_Gap:J

.field final _DATAFROMAPDR:I

.field final _DATAFROMGPS:I

.field final _DATAFROMNETWORK:I

.field flag_AlgorithmOn:Z

.field lastStatus:I

.field lastTrajTime:J

.field public mAPDRResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;",
            ">;"
        }
    .end annotation
.end field

.field public mAPDRStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;",
            ">;"
        }
    .end annotation
.end field

.field mFlagIsGPSBatchMode:Z

.field mFlagLocInputReady:Z

.field mFlagStayingArea:Z

.field private final mInputPosBuf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final mInputPosBufSync:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field

.field mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

.field private final mLPPPosition:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;",
            ">;"
        }
    .end annotation
.end field

.field time_lastSent:J


# direct methods
.method public constructor <init>()V
    .locals 10

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "LppAlgorithm"

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MAX_MOVEMENT_SPEED_VEHICLE:D

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MAX_MOVEMENT_SPEED_RUN:D

    iput-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MAX_MOVEMENT_SPEED_WALK:D

    iput-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MAX_MOVEMENT_SPEED_STATIONARY:D

    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MIN_MOVEMENT_DISTANCE:D

    const-wide v0, 0x40b3880000000000L    # 5000.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->MIN_UPDTAE_TIME:D

    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Trajectory_Time_Gap:J

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Position_Jump_Sec_TH:D

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrSetLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    iput-boolean v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->_DATAFROMAPDR:I

    iput v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->_DATAFROMGPS:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->_DATAFROMNETWORK:I

    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->POS_SET_RADIUS:D

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->POS_SET_TIME:D

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->RST_LOC_VALID_CHK_NOUPDATE:I

    iput v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->RST_LOC_VALID_CHK_NEWSET:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->RST_LOC_VALID_CHK_STATIONARY:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->APDRMAXNUMBER:I

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_Loc_init:Z

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_First_loc:Z

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-direct {v0, v4, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    iput-wide v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_SameLocSet:J

    iput v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastStatus:I

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_UNKNWON:I

    iput v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_STATIONARY:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->STATE_VEHICLE:I

    iput-wide v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->time_lastSent:J

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iput-wide v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    new-array v0, v4, [D

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    new-array v0, v4, [D

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondVehicle:[D

    new-array v0, v4, [D

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x4059000000000000L    # 100.0
    .end array-data

    :array_1
    .array-data 8
        0x4024000000000000L    # 10.0
        0x4024000000000000L    # 10.0
        0x3fe0000000000000L    # 0.5
    .end array-data

    :array_2
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3fe0000000000000L    # 0.5
    .end array-data
.end method

.method private LocValidCheck(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;Z)I
    .locals 22
    .param p1, "lpploc"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .param p2, "lpplocOld"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .param p3, "flag_fixPos"    # Z

    .prologue
    new-instance v7, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>()V

    .local v7, "apdrCurrent":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    new-instance v8, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>()V

    .local v8, "apdrOld":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    .local v6, "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    iget-wide v0, v7, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v18, v0

    iget-wide v0, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_1

    iget-wide v0, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gez v18, :cond_1

    invoke-virtual {v7, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->set(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    :cond_1
    iget-wide v0, v8, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v18, v0

    iget-wide v0, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_0

    iget-wide v0, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v20

    cmp-long v18, v18, v20

    if-gez v18, :cond_0

    invoke-virtual {v8, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->set(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    goto :goto_0

    .end local v6    # "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    :cond_2
    iget v9, v7, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    .local v9, "currStatus":I
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .local v4, "MAX_VELOCITY":D
    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v9, v0, :cond_3

    iget v0, v8, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    :cond_3
    const/16 v18, 0x4

    move/from16 v0, v18

    if-eq v9, v0, :cond_4

    iget v0, v8, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    :cond_4
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    :goto_1
    invoke-virtual/range {p1 .. p2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->distanceTo(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)D

    move-result-wide v10

    .local v10, "dist_2_point":D
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v18

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v20

    sub-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v16, v18, v20

    .local v16, "timediff":D
    mul-double v14, v4, v16

    .local v14, "maxDistance":D
    const/16 v18, 0x2

    move/from16 v0, v18

    if-ne v9, v0, :cond_5

    iget v0, v8, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->APDRMAXNUMBER:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fe999999999999aL    # 0.8

    mul-double v18, v18, v20

    cmpl-double v18, v14, v18

    if-lez v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->APDRMAXNUMBER:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0x3fe999999999999aL    # 0.8

    mul-double v14, v18, v20

    :cond_5
    const/4 v13, 0x0

    .local v13, "result":I
    const-wide/16 v18, 0x0

    cmpl-double v18, v16, v18

    if-lez v18, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v18

    const-string v19, "gps"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v18

    if-nez v18, :cond_d

    const/4 v13, 0x1

    :cond_6
    :goto_2
    return v13

    .end local v10    # "dist_2_point":D
    .end local v13    # "result":I
    .end local v14    # "maxDistance":D
    .end local v16    # "timediff":D
    :cond_7
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_8
    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v9, v0, :cond_9

    iget v0, v8, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    :cond_9
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    goto/16 :goto_1

    :cond_a
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v9, v0, :cond_b

    iget v0, v8, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    move/from16 v18, v0

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    :cond_b
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    goto/16 :goto_1

    :cond_c
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    goto/16 :goto_1

    .restart local v10    # "dist_2_point":D
    .restart local v13    # "result":I
    .restart local v14    # "maxDistance":D
    .restart local v16    # "timediff":D
    :cond_d
    cmpl-double v18, v10, v14

    if-lez v18, :cond_f

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/location/Location;->getAccuracy()F

    move-result v18

    const/high16 v19, 0x42480000    # 50.0f

    cmpl-float v18, v18, v19

    if-lez v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    .restart local v6    # "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Loc Rejection : apdr time - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto :goto_3

    .end local v6    # "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    :cond_e
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Loc Rejection : currStatus - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " oldStatus: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v8, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Loc Rejection : timediff - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " MAX_VELOCITY: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Loc Rejection : dist - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " MaxDist: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Loc Rejection :Too long distance, eliminate pos "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " , dist: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " MaxDist: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_f
    const-wide/high16 v18, 0x4034000000000000L    # 20.0

    mul-double v18, v18, v16

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    mul-double v18, v18, v20

    cmpl-double v18, v10, v18

    if-lez v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    .restart local v6    # "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Loc Rejection : apdr time - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-wide v0, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v6, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto :goto_4

    .end local v6    # "apdr":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    :cond_10
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Loc Rejection : currStatus - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " oldStatus: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v8, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Loc Rejection : timediff - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " MAX_VELOCITY: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Loc Rejection : dist - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " MaxDist: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Loc Rejection :Too long distance, eliminate pos "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " , dist: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " MaxDist: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    const/4 v13, 0x0

    goto/16 :goto_2

    :cond_11
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v9, v0, :cond_12

    const/4 v13, 0x2

    goto/16 :goto_2

    :cond_12
    const/4 v13, 0x1

    goto/16 :goto_2
.end method

.method private LppAlgorithmCheckAndRun(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V
    .locals 8
    .param p1, "lpploca"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .prologue
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Flag_LocOK - loc time is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NOPROVIDER"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    :cond_0
    const/4 v0, 0x0

    .local v0, "flag_goAlgo":Z
    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_SameLocSet:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_SameLocSet:J

    const-wide v4, 0x40c3880000000000L    # 10000.0

    iget-wide v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    long-to-double v6, v6

    add-double/2addr v4, v6

    invoke-virtual {p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v6

    long-to-double v6, v6

    cmpg-double v4, v4, v6

    if-gez v4, :cond_3

    const/4 v0, 0x1

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_SameLocSet:J

    :cond_1
    :goto_0
    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrSetLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "mAPDRDeleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    .local v3, "sample":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    iget-wide v4, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mAPDRDeleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    .end local v3    # "sample":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    :cond_3
    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_SameLocSet:J

    const-wide/16 v6, 0x2

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "mAPDRDeleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete ApdrData num : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    .restart local v3    # "sample":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    iget-wide v4, v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrSetLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    new-instance v5, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v5, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v3    # "sample":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    :cond_7
    iget-boolean v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    if-eqz v4, :cond_8

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LppAlgorithmRun()V

    :cond_8
    const-string v4, "LppAlgorithmRun end"

    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrSetLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "mAPDRDeleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    :cond_9
    return-void
.end method

.method private LppAlgorithmRun()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrSetLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOPROVIDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "LppAlgorithmRun - Initial update"

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->estimateSinglePoint()V

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->makeTrajectory()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    const-string v0, "ERROR: LppAlgorithmRun() unkwon error - [mLPPPosition.size() < 1]"

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;->onUpdateLPPtraj(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private PositionFiltering(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .locals 22
    .param p1, "LocMeas"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .prologue
    move-object/from16 v3, p1

    .local v3, "result":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    const/4 v4, 0x3

    new-array v0, v4, [D

    move-object/from16 v20, v0

    .local v20, "resultENU":[D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    aput-wide v6, v20, v4

    const/4 v4, 0x1

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    aput-wide v6, v20, v4

    const/4 v4, 0x2

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v6

    aput-wide v6, v20, v4

    const/4 v4, 0x0

    aget-wide v4, v20, v4

    const/4 v6, 0x0

    aget-wide v6, v20, v6

    mul-double/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v20, v6

    const/4 v8, 0x1

    aget-wide v8, v20, v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const/4 v6, 0x2

    aget-wide v6, v20, v6

    const/4 v8, 0x2

    aget-wide v8, v20, v8

    mul-double/2addr v6, v8

    add-double v10, v4, v6

    .local v10, "Dist":D
    const-wide v4, 0x41d502f900000000L    # 1.410065408E9

    cmpl-double v4, v10, v4

    if-lez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLatitude()D

    move-result-wide v6

    aput-wide v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x1

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLongitude()D

    move-result-wide v6

    aput-wide v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x2

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v6

    aput-wide v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v9, 0x2

    aget-wide v8, v8, v9

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFilteringInit()V

    const/4 v4, 0x3

    new-array v0, v4, [D

    move-object/from16 v19, v0

    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    aput-wide v6, v19, v4

    const/4 v4, 0x1

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    aput-wide v6, v19, v4

    const/4 v4, 0x2

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v6

    aput-wide v6, v19, v4

    .local v19, "mStateInit":[D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setInitialState([D)Z

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v4

    long-to-double v4, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    .end local v3    # "result":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .end local v19    # "mStateInit":[D
    :goto_0
    return-object v3

    .restart local v3    # "result":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Measurement: E : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " N "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " U "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v4

    long-to-double v4, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    sub-double/2addr v4, v6

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v16, v4, v6

    .local v16, "delT":D
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v4

    long-to-double v4, v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Prev_StateTime:D

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v4, 0x3

    new-array v0, v4, [[D

    move-object/from16 v18, v0

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    const/4 v8, 0x0

    aget-wide v8, v7, v8

    mul-double v8, v8, v16

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    aput-object v5, v18, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    const/4 v8, 0x1

    aget-wide v8, v7, v8

    mul-double v8, v8, v16

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    aput-object v5, v18, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->ProcessNoisePerSecondWalk:[D

    const/4 v8, 0x2

    aget-wide v8, v7, v8

    mul-double v8, v8, v16

    aput-wide v8, v5, v6

    aput-object v5, v18, v4

    .local v18, "mProcessNoise":[[D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setProcessNoise([[D)Z

    move-result v4

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v5, "PositionFiltering - Process noise error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_0

    .end local v18    # "mProcessNoise":[[D
    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getMovingStatus()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    const/4 v4, 0x3

    new-array v0, v4, [[D

    move-object/from16 v18, v0

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [D

    fill-array-data v5, :array_0

    aput-object v5, v18, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    new-array v5, v5, [D

    fill-array-data v5, :array_1

    aput-object v5, v18, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    new-array v5, v5, [D

    fill-array-data v5, :array_2

    aput-object v5, v18, v4

    .restart local v18    # "mProcessNoise":[[D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setProcessNoise([[D)Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v5, "PositionFiltering - Process noise error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->TimePropagation(D)Z

    move-result v4

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v5, "PositionFiltering - TimePropagation error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_0

    .end local v18    # "mProcessNoise":[[D
    :cond_3
    const/4 v4, 0x3

    new-array v13, v4, [[D

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [D

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v8

    aput-wide v8, v5, v6

    aput-object v5, v13, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    new-array v5, v5, [D

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v8

    aput-wide v8, v5, v6

    aput-object v5, v13, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    new-array v5, v5, [D

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosUpLocal()D

    move-result-wide v8

    aput-wide v8, v5, v6

    aput-object v5, v13, v4

    .local v13, "Meas":[[D
    new-instance v21, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, v21

    invoke-direct {v0, v13}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[D)V

    .local v21, "z":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_5

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v4}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v4

    const-string v5, "network"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x3

    new-array v14, v4, [[D

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x41a00000    # 20.0f

    div-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v8

    const/high16 v9, 0x41a00000    # 20.0f

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-double v8, v7

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    aput-object v5, v14, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x41a00000    # 20.0f

    div-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v8

    const/high16 v9, 0x41a00000    # 20.0f

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-double v8, v7

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    aput-object v5, v14, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    new-array v5, v5, [D

    fill-array-data v5, :array_3

    aput-object v5, v14, v4

    .local v14, "MeasNoise":[[D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v4, v14}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->MeasurementUpdate(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v5, "PositionFiltering - MeasurementUpdate error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto/16 :goto_0

    .end local v14    # "MeasNoise":[[D
    :cond_4
    const/4 v4, 0x3

    new-array v14, v4, [[D

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-double v8, v7

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    aput-object v5, v14, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-double v8, v7

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    aput-object v5, v14, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x40a00000    # 5.0f

    mul-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v8

    const/high16 v9, 0x40a00000    # 5.0f

    mul-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-double v8, v7

    aput-wide v8, v5, v6

    aput-object v5, v14, v4

    .restart local v14    # "MeasNoise":[[D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v4, v14}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    goto/16 :goto_1

    .end local v14    # "MeasNoise":[[D
    :cond_5
    const/4 v4, 0x3

    new-array v14, v4, [[D

    const/4 v4, 0x0

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-double v8, v7

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    aput-object v5, v14, v4

    const/4 v4, 0x1

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-double v8, v7

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    aput-object v5, v14, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    new-array v5, v5, [D

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x1

    const-wide/16 v8, 0x0

    aput-wide v8, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v7

    const/high16 v8, 0x41200000    # 10.0f

    mul-float/2addr v7, v8

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v8

    const/high16 v9, 0x41200000    # 10.0f

    mul-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-double v8, v7

    aput-wide v8, v5, v6

    aput-object v5, v14, v4

    .restart local v14    # "MeasNoise":[[D
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v4, v14}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->getCurrentState()[D

    move-result-object v2

    .local v2, "ENU_updated":[D
    const/4 v4, 0x3

    new-array v15, v4, [D

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    const-wide v8, 0x400921fafc8b007aL    # 3.141592

    mul-double/2addr v6, v8

    aput-wide v6, v15, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v6, 0x1

    aget-wide v6, v5, v6

    const-wide v8, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v8

    const-wide v8, 0x400921fafc8b007aL    # 3.141592

    mul-double/2addr v6, v8

    aput-wide v6, v15, v4

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v6, 0x2

    aget-wide v6, v5, v6

    aput-wide v6, v15, v4

    .local v15, "Origin_LLH_radian":[D
    invoke-static {v2, v15}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/CoordinateTransform;->enu2llh([D[D)[D

    move-result-object v12

    .local v12, "LLH_updated":[D
    const/4 v4, 0x0

    aget-wide v4, v12, v4

    const-wide v6, 0x400921fafc8b007aL    # 3.141592

    div-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setLatitude(D)V

    const/4 v4, 0x1

    aget-wide v4, v12, v4

    const-wide v6, 0x400921fafc8b007aL    # 3.141592

    div-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    mul-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setLongitude(D)V

    const/4 v4, 0x2

    aget-wide v4, v12, v4

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setAltitude(D)V

    goto/16 :goto_0

    nop

    :array_0
    .array-data 8
        0x406c200000000000L    # 225.0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x406c200000000000L    # 225.0
        0x4059000000000000L    # 100.0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x4039000000000000L    # 25.0
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x4197d78400000000L    # 1.0E8
    .end array-data
.end method

.method private PositionFilteringInit()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    const-string v5, "PositionFilteringInit()"

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    new-array v0, v6, [[D

    new-array v5, v6, [D

    fill-array-data v5, :array_0

    aput-object v5, v0, v7

    new-array v5, v6, [D

    fill-array-data v5, :array_1

    aput-object v5, v0, v8

    new-array v5, v6, [D

    fill-array-data v5, :array_2

    aput-object v5, v0, v9

    .local v0, "mCovMatrix":[[D
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setInitialCovariance([[D)Z

    new-array v1, v6, [[D

    new-array v5, v6, [D

    fill-array-data v5, :array_3

    aput-object v5, v1, v7

    new-array v5, v6, [D

    fill-array-data v5, :array_4

    aput-object v5, v1, v8

    new-array v5, v6, [D

    fill-array-data v5, :array_5

    aput-object v5, v1, v9

    .local v1, "mMeasMatrix":[[D
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementMatrix([[D)Z

    new-array v4, v6, [D

    fill-array-data v4, :array_6

    .local v4, "mStateInit":[D
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setInitialState([D)Z

    new-array v2, v6, [[D

    new-array v5, v6, [D

    fill-array-data v5, :array_7

    aput-object v5, v2, v7

    new-array v5, v6, [D

    fill-array-data v5, :array_8

    aput-object v5, v2, v8

    new-array v5, v6, [D

    fill-array-data v5, :array_9

    aput-object v5, v2, v9

    .local v2, "mMeasNoise":[[D
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setMeasurementNoise([[D)Z

    new-array v3, v6, [[D

    new-array v5, v6, [D

    fill-array-data v5, :array_a

    aput-object v5, v3, v7

    new-array v5, v6, [D

    fill-array-data v5, :array_b

    aput-object v5, v3, v8

    new-array v5, v6, [D

    fill-array-data v5, :array_c

    aput-object v5, v3, v9

    .local v3, "mProcessNoise":[[D
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setProcessNoise([[D)Z

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PosKF:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;

    invoke-virtual {v5, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/KalmanFilter;->setTransitionMatrix([[D)Z

    return-void

    nop

    :array_0
    .array-data 8
        0x4059000000000000L    # 100.0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x4059000000000000L    # 100.0
        0x0
    .end array-data

    :array_2
    .array-data 8
        0x0
        0x0
        0x4059000000000000L    # 100.0
    .end array-data

    :array_3
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_6
    .array-data 8
        0x0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 8
        0x4030000000000000L    # 16.0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 8
        0x0
        0x4030000000000000L    # 16.0
        0x0
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x0
        0x40c3880000000000L    # 10000.0
    .end array-data

    :array_a
    .array-data 8
        0x4069000000000000L    # 200.0
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 8
        0x0
        0x4069000000000000L    # 200.0
        0x0
    .end array-data

    :array_c
    .array-data 8
        0x0
        0x0
        0x4000000000000000L    # 2.0
    .end array-data
.end method

.method private SendStatus(Ljava/lang/String;)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LppAlgorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;->status(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private SetTrajStartTime(J)J
    .locals 13
    .param p1, "time"    # J

    .prologue
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .local v0, "dataLocalTime":Landroid/text/format/Time;
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    iget v1, v0, Landroid/text/format/Time;->second:I

    int-to-long v6, v1

    iget v1, v0, Landroid/text/format/Time;->second:I

    int-to-long v8, v1

    const-wide/16 v10, 0x14

    div-long/2addr v8, v10

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x14

    mul-long/2addr v8, v10

    sub-long v2, v6, v8

    .local v2, "diff_sec":J
    long-to-double v6, p1

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    double-to-long v6, v6

    iget v1, v0, Landroid/text/format/Time;->second:I

    int-to-long v8, v1

    sub-long/2addr v6, v8

    add-long/2addr v6, v2

    const-wide/16 v8, 0x3e8

    mul-long v4, v6, v8

    .local v4, "result":J
    return-wide v4
.end method

.method private estimateSinglePoint()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, "EstResult":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NOPROVIDER"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .local v1, "LocMeas":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setMovingStatus(I)V

    invoke-direct {p0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFiltering(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-result-object v0

    .end local v1    # "LocMeas":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->estimateVelocity(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    return-void

    :cond_1
    const-string v2, "EstimateSinglePoint(), abnormal filter output - null"

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->AlgoLocPP:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    goto :goto_0
.end method

.method private makeTrajectory()V
    .locals 78

    .prologue
    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v3, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .local v3, "loc1":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    new-instance v56, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v56

    invoke-direct {v0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .local v56, "loc2":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v10, 0x0

    aget-wide v4, v4, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v11, 0x1

    aget-wide v6, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v11, 0x2

    aget-wide v8, v10, v11

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v10, 0x0

    aget-wide v6, v4, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v10, 0x1

    aget-wide v8, v4, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v10, 0x2

    aget-wide v10, v4, v10

    move-object/from16 v5, v56

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-nez v4, :cond_1

    const-string v4, "makeTrajectory : No need to update"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->FilterdOlderLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SetTrajStartTime(J)J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    :cond_2
    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    sub-long/2addr v12, v14

    long-to-double v12, v12

    const-wide v14, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double/2addr v12, v14

    sub-double v72, v10, v12

    .local v72, "time_diff":D
    const/16 v45, 0x1

    .local v45, "dataValid":Z
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v64, v10, v12

    .local v64, "t1":D
    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    long-to-double v10, v10

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v70, v10, v12

    .local v70, "t2":D
    sub-double v10, v70, v64

    const-wide v12, 0x3fc999999999999aL    # 0.2

    mul-double v66, v10, v12

    .local v66, "t1_p1":D
    sub-double v10, v70, v64

    const-wide v12, 0x3fe999999999999aL    # 0.8

    mul-double v68, v10, v12

    .local v68, "t1_p2":D
    sub-double v46, v70, v64

    .local v46, "del_t1_t2":D
    const-wide/16 v10, 0x0

    cmpg-double v4, v46, v10

    if-gtz v4, :cond_6

    const-string v4, "WARNING: makeTrajectory - abnormal t1, t2"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    const/16 v45, 0x0

    const-wide/16 v30, 0x0

    .local v30, "X_D1_2":D
    const-wide/16 v40, 0x0

    .local v40, "Y_D1_2":D
    :goto_1
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getFilteredVelocity()[D

    move-result-object v21

    .local v21, "XY_D1_filtered":[D
    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getFilteredVelocity()[D

    move-result-object v26

    .local v26, "XY_D2_filtered":[D
    const/4 v4, 0x0

    aget-wide v10, v21, v4

    const-wide/16 v12, 0x0

    cmpl-double v4, v10, v12

    if-nez v4, :cond_3

    const/4 v4, 0x1

    aget-wide v10, v21, v4

    const-wide/16 v12, 0x0

    cmpl-double v4, v10, v12

    if-eqz v4, :cond_4

    :cond_3
    const/4 v4, 0x0

    aget-wide v10, v26, v4

    const-wide/16 v12, 0x0

    cmpl-double v4, v10, v12

    if-nez v4, :cond_5

    const/4 v4, 0x1

    aget-wide v10, v26, v4

    const-wide/16 v12, 0x0

    cmpl-double v4, v10, v12

    if-nez v4, :cond_5

    :cond_4
    const/16 v45, 0x0

    :cond_5
    if-eqz v45, :cond_8

    mul-double v10, v30, v30

    mul-double v12, v40, v40

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v58

    .local v58, "norm":D
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v22

    .local v22, "X1":D
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v34

    .local v34, "Y1":D
    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v24

    .local v24, "X2":D
    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v36

    .local v36, "Y2":D
    const/4 v4, 0x0

    aget-wide v10, v21, v4

    mul-double v28, v10, v58

    .local v28, "X_D1":D
    const/4 v4, 0x1

    aget-wide v10, v21, v4

    mul-double v38, v10, v58

    .local v38, "Y_D1":D
    const/4 v4, 0x0

    aget-wide v10, v26, v4

    mul-double v32, v10, v58

    .local v32, "X_D2":D
    const/4 v4, 0x1

    aget-wide v10, v26, v4

    mul-double v42, v10, v58

    .local v42, "Y_D2":D
    move-wide/from16 v48, v28

    .local v48, "e_x":D
    move-wide/from16 v52, v22

    .local v52, "f_x":D
    move-wide/from16 v50, v38

    .local v50, "e_y":D
    move-wide/from16 v54, v34

    .local v54, "f_y":D
    const/4 v4, 0x4

    new-array v0, v4, [[D

    move-object/from16 v57, v0

    const/4 v4, 0x0

    const/4 v10, 0x4

    new-array v10, v10, [D

    const/4 v11, 0x0

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    mul-double v12, v12, v66

    mul-double v12, v12, v66

    mul-double v12, v12, v66

    mul-double v12, v12, v66

    aput-wide v12, v10, v11

    const/4 v11, 0x1

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    mul-double v12, v12, v66

    mul-double v12, v12, v66

    mul-double v12, v12, v66

    aput-wide v12, v10, v11

    const/4 v11, 0x2

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    mul-double v12, v12, v66

    mul-double v12, v12, v66

    aput-wide v12, v10, v11

    const/4 v11, 0x3

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v12, v12, v66

    aput-wide v12, v10, v11

    aput-object v10, v57, v4

    const/4 v4, 0x1

    const/4 v10, 0x4

    new-array v10, v10, [D

    const/4 v11, 0x0

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    mul-double v12, v12, v68

    mul-double v12, v12, v68

    mul-double v12, v12, v68

    mul-double v12, v12, v68

    aput-wide v12, v10, v11

    const/4 v11, 0x1

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    mul-double v12, v12, v68

    mul-double v12, v12, v68

    mul-double v12, v12, v68

    aput-wide v12, v10, v11

    const/4 v11, 0x2

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    mul-double v12, v12, v68

    mul-double v12, v12, v68

    aput-wide v12, v10, v11

    const/4 v11, 0x3

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v12, v12, v68

    aput-wide v12, v10, v11

    aput-object v10, v57, v4

    const/4 v4, 0x2

    const/4 v10, 0x4

    new-array v10, v10, [D

    const/4 v11, 0x0

    mul-double v12, v46, v46

    mul-double v12, v12, v46

    mul-double v12, v12, v46

    mul-double v12, v12, v46

    aput-wide v12, v10, v11

    const/4 v11, 0x1

    mul-double v12, v46, v46

    mul-double v12, v12, v46

    mul-double v12, v12, v46

    aput-wide v12, v10, v11

    const/4 v11, 0x2

    mul-double v12, v46, v46

    mul-double v12, v12, v46

    aput-wide v12, v10, v11

    const/4 v11, 0x3

    mul-double v12, v46, v46

    aput-wide v12, v10, v11

    aput-object v10, v57, v4

    const/4 v4, 0x3

    const/4 v10, 0x4

    new-array v10, v10, [D

    const/4 v11, 0x0

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    mul-double v12, v12, v46

    mul-double v12, v12, v46

    mul-double v12, v12, v46

    mul-double v12, v12, v46

    aput-wide v12, v10, v11

    const/4 v11, 0x1

    const-wide/high16 v12, 0x4010000000000000L    # 4.0

    mul-double v12, v12, v46

    mul-double v12, v12, v46

    mul-double v12, v12, v46

    aput-wide v12, v10, v11

    const/4 v11, 0x2

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    mul-double v12, v12, v46

    mul-double v12, v12, v46

    aput-wide v12, v10, v11

    const/4 v11, 0x3

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v12, v12, v46

    aput-wide v12, v10, v11

    aput-object v10, v57, v4

    .local v57, "vals":[[D
    new-instance v2, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, v57

    invoke-direct {v2, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[D)V

    .local v2, "A_mat":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    const/4 v4, 0x4

    new-array v0, v4, [[D

    move-object/from16 v74, v0

    const/4 v4, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [D

    const/4 v11, 0x0

    sub-double v12, v30, v48

    aput-wide v12, v10, v11

    aput-object v10, v74, v4

    const/4 v4, 0x1

    const/4 v10, 0x1

    new-array v10, v10, [D

    const/4 v11, 0x0

    sub-double v12, v30, v48

    aput-wide v12, v10, v11

    aput-object v10, v74, v4

    const/4 v4, 0x2

    const/4 v10, 0x1

    new-array v10, v10, [D

    const/4 v11, 0x0

    mul-double v12, v48, v46

    sub-double v12, v24, v12

    sub-double v12, v12, v52

    aput-wide v12, v10, v11

    aput-object v10, v74, v4

    const/4 v4, 0x3

    const/4 v10, 0x1

    new-array v10, v10, [D

    const/4 v11, 0x0

    sub-double v12, v32, v48

    aput-wide v12, v10, v11

    aput-object v10, v74, v4

    .local v74, "valsX":[[D
    new-instance v76, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, v76

    move-object/from16 v1, v74

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[D)V

    .local v76, "x_":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    const/4 v4, 0x4

    new-array v0, v4, [[D

    move-object/from16 v75, v0

    const/4 v4, 0x0

    const/4 v10, 0x1

    new-array v10, v10, [D

    const/4 v11, 0x0

    sub-double v12, v40, v50

    aput-wide v12, v10, v11

    aput-object v10, v75, v4

    const/4 v4, 0x1

    const/4 v10, 0x1

    new-array v10, v10, [D

    const/4 v11, 0x0

    sub-double v12, v40, v50

    aput-wide v12, v10, v11

    aput-object v10, v75, v4

    const/4 v4, 0x2

    const/4 v10, 0x1

    new-array v10, v10, [D

    const/4 v11, 0x0

    mul-double v12, v50, v46

    sub-double v12, v36, v12

    sub-double v12, v12, v54

    aput-wide v12, v10, v11

    aput-object v10, v75, v4

    const/4 v4, 0x3

    const/4 v10, 0x1

    new-array v10, v10, [D

    const/4 v11, 0x0

    sub-double v12, v42, v50

    aput-wide v12, v10, v11

    aput-object v10, v75, v4

    .local v75, "valsY":[[D
    new-instance v77, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-object/from16 v0, v77

    move-object/from16 v1, v75

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;-><init>([[D)V

    .local v77, "y_":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v4

    move-object/from16 v0, v76

    invoke-virtual {v4, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v27

    .local v27, "X_coef":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->inverse()Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v4

    move-object/from16 v0, v77

    invoke-virtual {v4, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->times(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;

    move-result-object v44

    .local v44, "Y_coef":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    new-instance v5, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v56

    invoke-direct {v5, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .local v5, "LocOut":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v10, 0x0

    aget-wide v6, v4, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v10, 0x1

    aget-wide v8, v4, v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    const/4 v10, 0x2

    aget-wide v10, v4, v10

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    move-wide/from16 v62, v72

    .local v62, "t":D
    :goto_2
    cmpg-double v4, v62, v46

    if-gez v4, :cond_0

    const/4 v4, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v10

    mul-double v10, v10, v62

    mul-double v10, v10, v62

    mul-double v10, v10, v62

    mul-double v10, v10, v62

    mul-double v10, v10, v62

    const/4 v4, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v12}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v12

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    add-double/2addr v10, v12

    const/4 v4, 0x2

    const/4 v12, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v12}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v12

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    add-double/2addr v10, v12

    const/4 v4, 0x3

    const/4 v12, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v4, v12}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v12

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    add-double/2addr v10, v12

    mul-double v12, v48, v62

    add-double/2addr v10, v12

    add-double v6, v10, v52

    .local v6, "X_traj":D
    const/4 v4, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v10

    mul-double v10, v10, v62

    mul-double v10, v10, v62

    mul-double v10, v10, v62

    mul-double v10, v10, v62

    mul-double v10, v10, v62

    const/4 v4, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v12}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v12

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    add-double/2addr v10, v12

    const/4 v4, 0x2

    const/4 v12, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v12}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v12

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    add-double/2addr v10, v12

    const/4 v4, 0x3

    const/4 v12, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v12}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;->get(II)D

    move-result-wide v12

    mul-double v12, v12, v62

    mul-double v12, v12, v62

    add-double/2addr v10, v12

    mul-double v12, v50, v62

    add-double/2addr v10, v12

    add-double v8, v10, v54

    .local v8, "Y_traj":D
    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v10

    invoke-virtual/range {v5 .. v11}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setPosENU(DDD)V

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double v12, v12, v62

    double-to-long v12, v12

    add-long/2addr v10, v12

    invoke-virtual {v4, v10, v11}, Landroid/location/Location;->setTime(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    new-instance v10, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v10, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    add-double v62, v62, v10

    goto/16 :goto_2

    .end local v2    # "A_mat":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .end local v5    # "LocOut":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    .end local v6    # "X_traj":D
    .end local v8    # "Y_traj":D
    .end local v21    # "XY_D1_filtered":[D
    .end local v22    # "X1":D
    .end local v24    # "X2":D
    .end local v26    # "XY_D2_filtered":[D
    .end local v27    # "X_coef":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .end local v28    # "X_D1":D
    .end local v30    # "X_D1_2":D
    .end local v32    # "X_D2":D
    .end local v34    # "Y1":D
    .end local v36    # "Y2":D
    .end local v38    # "Y_D1":D
    .end local v40    # "Y_D1_2":D
    .end local v42    # "Y_D2":D
    .end local v44    # "Y_coef":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .end local v48    # "e_x":D
    .end local v50    # "e_y":D
    .end local v52    # "f_x":D
    .end local v54    # "f_y":D
    .end local v57    # "vals":[[D
    .end local v58    # "norm":D
    .end local v62    # "t":D
    .end local v74    # "valsX":[[D
    .end local v75    # "valsY":[[D
    .end local v76    # "x_":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    .end local v77    # "y_":Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/Matrix;
    :cond_6
    const-wide v10, 0x4072c00000000000L    # 300.0

    cmpl-double v4, v46, v10

    if-lez v4, :cond_7

    const-string v4, "WARNING: makeTrajectory - too much gap between t1 and t2"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    const/16 v45, 0x0

    const-wide/16 v30, 0x0

    .restart local v30    # "X_D1_2":D
    const-wide/16 v40, 0x0

    .restart local v40    # "Y_D1_2":D
    goto/16 :goto_1

    .end local v30    # "X_D1_2":D
    .end local v40    # "Y_D1_2":D
    :cond_7
    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v10

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v12

    sub-double/2addr v10, v12

    sub-double v12, v70, v64

    div-double v30, v10, v12

    .restart local v30    # "X_D1_2":D
    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v10

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v12

    sub-double/2addr v10, v12

    sub-double v12, v70, v64

    div-double v40, v10, v12

    .restart local v40    # "Y_D1_2":D
    goto/16 :goto_1

    .restart local v21    # "XY_D1_filtered":[D
    .restart local v26    # "XY_D2_filtered":[D
    :cond_8
    const-wide v10, 0x408c200000000000L    # 900.0

    cmpl-double v4, v46, v10

    if-lez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    new-instance v10, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    move-object/from16 v0, v56

    invoke-direct {v10, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    goto/16 :goto_0

    :cond_9
    const-wide/16 v10, 0x0

    cmpl-double v4, v46, v10

    if-lez v4, :cond_0

    new-instance v5, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v5, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    .restart local v5    # "LocOut":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    const/4 v4, 0x2

    new-array v0, v4, [D

    move-object/from16 v18, v0

    .local v18, "EN1":[D
    const/4 v4, 0x2

    new-array v0, v4, [D

    move-object/from16 v19, v0

    .local v19, "EN2":[D
    const/4 v4, 0x2

    new-array v0, v4, [D

    move-object/from16 v20, v0

    .local v20, "EN_new":[D
    const/4 v4, 0x0

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v10

    aput-wide v10, v18, v4

    const/4 v4, 0x1

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v10

    aput-wide v10, v18, v4

    const/4 v4, 0x0

    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosEastLocal()D

    move-result-wide v10

    aput-wide v10, v19, v4

    const/4 v4, 0x1

    invoke-virtual/range {v56 .. v56}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getPosNorthLocal()D

    move-result-wide v10

    aput-wide v10, v19, v4

    move-wide/from16 v62, v72

    .restart local v62    # "t":D
    :goto_3
    cmpg-double v4, v62, v46

    if-gez v4, :cond_0

    div-double v60, v62, v46

    .local v60, "ratio":D
    const/4 v4, 0x0

    const/4 v10, 0x0

    aget-wide v10, v18, v10

    const/4 v12, 0x0

    aget-wide v12, v19, v12

    const/4 v14, 0x0

    aget-wide v14, v18, v14

    sub-double/2addr v12, v14

    mul-double v12, v12, v60

    add-double/2addr v10, v12

    aput-wide v10, v20, v4

    const/4 v4, 0x1

    const/4 v10, 0x1

    aget-wide v10, v18, v10

    const/4 v12, 0x1

    aget-wide v12, v19, v12

    const/4 v14, 0x1

    aget-wide v14, v18, v14

    sub-double/2addr v12, v14

    mul-double v12, v12, v60

    add-double/2addr v10, v12

    aput-wide v10, v20, v4

    const/4 v4, 0x0

    aget-wide v12, v20, v4

    const/4 v4, 0x1

    aget-wide v14, v20, v4

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAltitude()D

    move-result-wide v16

    move-object v11, v5

    invoke-virtual/range {v11 .. v17}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setPosENU(DDD)V

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v4

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double v12, v12, v62

    double-to-long v12, v12

    add-long/2addr v10, v12

    invoke-virtual {v4, v10, v11}, Landroid/location/Location;->setTime(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    new-instance v10, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v10, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    const-wide/high16 v10, 0x4034000000000000L    # 20.0

    add-double v62, v62, v10

    goto :goto_3
.end method

.method private resetwithLastLoc(Landroid/location/Location;)V
    .locals 12
    .param p1, "lastloc"    # Landroid/location/Location;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v6, 0x2

    const/4 v4, 0x0

    const/4 v8, 0x1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v1, "resetwithLastLoc() unknown error - lastloc is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Landroid/location/Location;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    aput-wide v2, v0, v4

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    aput-wide v2, v0, v8

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    aput-wide v2, v0, v6

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    aget-wide v2, v0, v4

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    aget-wide v4, v0, v8

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Origin_LLH:[D

    aget-wide v6, v0, v6

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->setOrigin(DDD)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->CurrentLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->OldLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRStack:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v1, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iput-boolean v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    iput-wide v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->lastTrajTime:J

    iput-wide v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Cnt_SameLocSet:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Landroid/location/Location;)V

    goto :goto_1
.end method


# virtual methods
.method public deliverAPDRData(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listAPDR":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;>;"
    const/4 v6, 0x1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deliverAPDRData(), array size \t\t: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>()V

    .local v0, "apdrD":Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;
    const/4 v1, 0x0

    .local v1, "inx":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APDR time - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-wide v4, v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->utctime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget v2, v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " step length - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-wide v4, v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->stepLength:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " step heading - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    iget-wide v4, v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->apdrHeading:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-virtual {v0, v2}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->set(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mAPDRResults:Ljava/util/ArrayList;

    new-instance v3, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;

    invoke-direct {v3, v0}, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v2, v0, Lcom/samsung/android/contextaware/aggregator/lpp/ApdrData;->movingStatus:I

    if-ne v2, v6, :cond_0

    invoke-virtual {p0, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->setStayingAreaFlag(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public deliverLocationData(Landroid/location/Location;)V
    .locals 11
    .param p1, "loc"    # Landroid/location/Location;

    .prologue
    const/4 v8, 0x0

    const/4 v10, 0x1

    if-nez p1, :cond_0

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v6, "deliverLocationData - loc is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LppAlgorithm - PosIn => Time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Pos : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    if-nez v5, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->resetwithLastLoc(Landroid/location/Location;)V

    :cond_1
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {v6, p1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;-><init>(Landroid/location/Location;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/16 v6, 0x64

    if-le v5, v6, :cond_2

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Size of mInputPosBufSync : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Position filter Status - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    if-eqz v5, :cond_5

    iput-boolean v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .local v3, "lppl":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v3    # "lppl":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBufSync:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm$1;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;)V

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-boolean v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    if-nez v5, :cond_a

    const/4 v1, 0x0

    .local v1, "Flag_Stationary":Z
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    .local v4, "lpploca":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    const/4 v0, 0x1

    .local v0, "Flag_LocOK":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fine Location Acq Flag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-direct {p0, v4, v5, v10}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LocValidCheck(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;Z)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_8

    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LppAlgorithmCheckAndRun(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    if-eqz v1, :cond_4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getLoc()Landroid/location/Location;

    move-result-object v6

    invoke-virtual {v6}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    add-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Landroid/location/Location;->setTime(J)V

    invoke-direct {p0, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LppAlgorithmCheckAndRun(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    invoke-virtual {v5, v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->set(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;)V

    goto :goto_2

    .end local v0    # "Flag_LocOK":Z
    .end local v1    # "Flag_Stationary":Z
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "lpploca":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    :cond_5
    const-string v5, "Position filter is not ready"

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v0    # "Flag_LocOK":Z
    .restart local v1    # "Flag_Stationary":Z
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "lpploca":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_3

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_3

    :pswitch_2
    const/4 v0, 0x1

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v5

    const/high16 v6, 0x42480000    # 50.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LppAlgorithm - check Initial Fine location : false - accuracy is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LppAlgorithm - check Initial Fine location : OK - accuracy is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getAccuracy()F

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    iput-boolean v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Flag_Loc false - loc time is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v0    # "Flag_LocOK":Z
    .end local v4    # "lpploca":Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;
    :cond_9
    iget-object v5, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .end local v1    # "Flag_Stationary":Z
    :goto_4
    iput-boolean v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagLocInputReady:Z

    goto/16 :goto_0

    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Position Filtering hold - GPS batching mode , accumulated index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mInputPosBuf:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->SendStatus(Ljava/lang/String;)V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public init(Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;)V
    .locals 3
    .param p1, "LPPLnr"    # Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    .prologue
    const/4 v2, 0x0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->Flag_FineLocAcquired:Z

    invoke-direct {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->PositionFilteringInit()V

    return-void
.end method

.method public setGPSBatchingStatus(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagIsGPSBatchMode:Z

    return-void
.end method

.method public setStayingAreaFlag(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mFlagStayingArea:Z

    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    return-void
.end method

.method public stop()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop - mLPPPosition size() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPLnr:Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppAlgoListener;->onUpdateLPPtraj(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->mLPPPosition:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->LastLMLoc:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocation;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->flag_AlgorithmOn:Z

    return-void
.end method
