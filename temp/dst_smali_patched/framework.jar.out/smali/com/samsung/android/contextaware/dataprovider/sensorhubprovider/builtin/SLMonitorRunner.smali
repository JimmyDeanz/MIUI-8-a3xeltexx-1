.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "SLMonitorRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;
    }
.end annotation


# static fields
.field private static final DEFAULT_POWER_STEP_START_DURATION:I = 0x12c

.field private static final DEFAULT_STEP_LEVEL_TYPE:I = 0x4


# instance fields
.field private final _mutex:Ljava/util/concurrent/locks/Lock;

.field private mDuration:I

.field private final mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

.field private mStepLevelType:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 2
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mDuration:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mStepLevelType:I

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    return-void
.end method

.method private display(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "context"    # Landroid/os/Bundle;

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "================= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextType()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ================="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    .local v15, "str":Ljava/lang/StringBuffer;
    const-string v19, "DataType"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .local v8, "dataType":I
    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v8, v0, :cond_15

    const-string v19, "DataCount"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .local v6, "count":I
    const-string v19, "HistoryMode"

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .local v11, "historyType":I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DT=["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "], "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DC=["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "], "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_a

    const-string v19, "TimeStampArray"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v18

    .local v18, "timestampArray":[J
    const-string v19, "TS=["

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v6, :cond_3

    aget-wide v20, v18, v12

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    add-int/lit8 v19, v6, -0x1

    move/from16 v0, v19

    if-eq v12, v0, :cond_2

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_3
    const-string v19, "], "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v12    # "i":I
    .end local v18    # "timestampArray":[J
    :goto_2
    const-string v19, "DataBundle"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .local v7, "dataBundle":Landroid/os/Bundle;
    if-eqz v7, :cond_0

    const-string v19, "StepTypeArray"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v14

    .local v14, "stepType":[I
    const-string v19, "StepCountArray"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v13

    .local v13, "stepCount":[I
    const-string v19, "DistanceArray"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v9

    .local v9, "distance":[D
    const-string v19, "CalorieArray"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v5

    .local v5, "calorie":[D
    const-string v19, "DurationArray"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v10

    .local v10, "duration":[I
    if-eqz v14, :cond_0

    if-eqz v13, :cond_0

    if-eqz v9, :cond_0

    if-eqz v5, :cond_0

    if-eqz v10, :cond_0

    const-string v19, "ST=["

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    if-ge v12, v6, :cond_b

    aget v19, v14, v12

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    const-string v19, "IN"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    aget v19, v14, v12

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    const-string v19, "PO"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    aget v19, v14, v12

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    const-string v19, "NO"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    aget v19, v14, v12

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    const-string v19, "SE"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    aget v19, v14, v12

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    const-string v19, "ST"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_8
    add-int/lit8 v19, v6, -0x1

    move/from16 v0, v19

    if-eq v12, v0, :cond_9

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .end local v5    # "calorie":[D
    .end local v7    # "dataBundle":Landroid/os/Bundle;
    .end local v9    # "distance":[D
    .end local v10    # "duration":[I
    .end local v12    # "i":I
    .end local v13    # "stepCount":[I
    .end local v14    # "stepType":[I
    :cond_a
    const-string v19, "TimeStamp"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v16

    .local v16, "timestamp":J
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "TS=["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "], "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .end local v16    # "timestamp":J
    .restart local v5    # "calorie":[D
    .restart local v7    # "dataBundle":Landroid/os/Bundle;
    .restart local v9    # "distance":[D
    .restart local v10    # "duration":[I
    .restart local v12    # "i":I
    .restart local v13    # "stepCount":[I
    .restart local v14    # "stepType":[I
    :cond_b
    const-string v19, "], "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v19, "SC=["

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v6, :cond_d

    aget v19, v13, v12

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v19, v6, -0x1

    move/from16 v0, v19

    if-eq v12, v0, :cond_c

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_d
    const-string v19, "], "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v19, "DI=["

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v12, 0x0

    :goto_5
    if-ge v12, v6, :cond_f

    aget-wide v20, v9, v12

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    add-int/lit8 v19, v6, -0x1

    move/from16 v0, v19

    if-eq v12, v0, :cond_e

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_f
    const-string v19, "], "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v19, "CA=["

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v12, 0x0

    :goto_6
    if-ge v12, v6, :cond_11

    aget-wide v20, v5, v12

    move-wide/from16 v0, v20

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    add-int/lit8 v19, v6, -0x1

    move/from16 v0, v19

    if-eq v12, v0, :cond_10

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    :cond_11
    const-string v19, "], "

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v19, "DU=["

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v12, 0x0

    :goto_7
    if-ge v12, v6, :cond_13

    aget v19, v10, v12

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v19, v6, -0x1

    move/from16 v0, v19

    if-eq v12, v0, :cond_12

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    :cond_13
    const-string v19, "]"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v19, 0x1

    move/from16 v0, v19

    if-ne v11, v0, :cond_14

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, ", HistoryMode=["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "], "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .end local v5    # "calorie":[D
    .end local v6    # "count":I
    .end local v7    # "dataBundle":Landroid/os/Bundle;
    .end local v9    # "distance":[D
    .end local v10    # "duration":[I
    .end local v11    # "historyType":I
    .end local v12    # "i":I
    .end local v13    # "stepCount":[I
    .end local v14    # "stepType":[I
    :cond_14
    :goto_8
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_15
    const/16 v19, 0x2

    move/from16 v0, v19

    if-ne v8, v0, :cond_14

    const-string v19, "ActiveTimeDuration"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .local v4, "activeTime":I
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DT=["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "], "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "DU=["

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_8
.end method

.method private sendHistorySLMBuffer()V
    .locals 18

    .prologue
    const-string v15, "sendSLMHistoryData"

    invoke-static {v15}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    const/4 v7, 0x1

    .local v7, "historySLMMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v11

    .local v11, "names":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getBufferSize()I

    move-result v10

    .local v10, "loggingCount":I
    if-nez v10, :cond_0

    const-string v15, "History Data Buffer is null!"

    invoke-static {v15}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    const/4 v4, 0x1

    .local v4, "dataType":I
    new-array v14, v10, [J

    .local v14, "timeStampArray":[J
    new-array v13, v10, [I

    .local v13, "stepType":[I
    new-array v12, v10, [I

    .local v12, "stepCount":[I
    new-array v5, v10, [D

    .local v5, "distance":[D
    new-array v2, v10, [D

    .local v2, "calorie":[D
    new-array v6, v10, [I

    .local v6, "duration":[I
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .local v3, "dataBundle":Landroid/os/Bundle;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v15, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getTimeStampSingle(I)J

    move-result-wide v16

    aput-wide v16, v14, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v15, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getmStepTypeArraySingle(I)I

    move-result v15

    aput v15, v13, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v15, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getmStepCountArraySingle(I)I

    move-result v15

    aput v15, v12, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v15, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getmDistanceArraySingle(I)D

    move-result-wide v16

    aput-wide v16, v5, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v15, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getmCalorieArraySingle(I)D

    move-result-wide v16

    aput-wide v16, v2, v8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v15, v8}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->getmDurationArraySingle(I)I

    move-result v15

    aput v15, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v11, v15

    invoke-virtual {v3, v15, v13}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v11, v15

    invoke-virtual {v3, v15, v12}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Distance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v11, v15

    invoke-virtual {v3, v15, v5}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Calorie:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v11, v15

    invoke-virtual {v3, v15, v2}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Duration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v11, v15

    invoke-virtual {v3, v15, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->TimeStampArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v15

    sget-object v16, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->HistoryMode:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static/range {v16 .. v16}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v16

    aget-object v16, v11, v16

    const/16 v17, 0x1

    invoke-virtual/range {v15 .. v17}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .local v9, "logBundle":Landroid/os/Bundle;
    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v11, v15

    invoke-virtual {v9, v15, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->TimeStampArray:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v11, v15

    invoke-virtual {v9, v15, v14}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v11, v15

    invoke-virtual {v9, v15, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v11, v15

    invoke-virtual {v9, v15, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v15, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->HistoryMode:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v15

    aget-object v15, v11, v15

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->display(Landroid/os/Bundle;)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->erase()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public final disable()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    return-void
.end method

.method protected display()V
    .locals 0

    .prologue
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SL_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DataType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "TimeStamp"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "DataCount"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "DataBundle"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "StepTypeArray"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "StepCountArray"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DistanceArray"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "CalorieArray"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DurationArray"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ActiveTimeDuration"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "TimeStampArray"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "HistoryMode"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v3, 0x8

    new-array v0, v3, [B

    .local v0, "packet":[B
    aput-byte v5, v0, v5

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mStepLevelType:I

    invoke-static {v3, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v3, v3, v5

    aput-byte v3, v0, v6

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mDuration:I

    invoke-static {v3, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .local v1, "startDuration":[B
    aget-byte v3, v1, v5

    aput-byte v3, v0, v7

    const/4 v3, 0x3

    aget-byte v4, v1, v6

    aput-byte v4, v0, v3

    const/4 v3, 0x4

    aput-byte v5, v0, v3

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v2

    .local v2, "utcTime":[I
    const/4 v3, 0x5

    aget v4, v2, v5

    invoke-static {v4, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    const/4 v3, 0x6

    aget v4, v2, v6

    invoke-static {v4, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    const/4 v3, 0x7

    aget v4, v2, v7

    invoke-static {v4, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v4, v4, v5

    aput-byte v4, v0, v3

    return-object v0
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [B

    .local v0, "packet":[B
    aput-byte v2, v0, v2

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    const/16 v0, 0x2c

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    .prologue
    return-object p0
.end method

.method public final parse([BI)I
    .locals 39
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    move/from16 v37, p2

    .local v37, "tmpNext":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v32

    .local v32, "names":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parse:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v37

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_0

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    add-int/lit8 v38, v37, 0x1

    .end local v37    # "tmpNext":I
    .local v38, "tmpNext":I
    aget-byte v23, p1, v37

    .local v23, "dataType":I
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_8

    :try_start_0
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v38

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_1

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v37, -0x1

    move/from16 v3, v37

    move/from16 v37, v38

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    goto :goto_0

    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :cond_1
    add-int/lit8 v37, v38, 0x1

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    :try_start_1
    aget-byte v22, p1, v38

    .local v22, "dataSize":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dataSize:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    if-gtz v22, :cond_2

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v3, -0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v37

    mul-int/lit8 v11, v22, 0xc

    add-int/lit8 v11, v11, 0x4

    if-ge v3, v11, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "packet len:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    array-length v11, v0

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v11, " tmpNext:"

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v3, -0x1

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x8

    new-array v3, v3, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-byte v12, v3, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-byte v12, v3, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput-byte v12, v3, v11

    const/4 v11, 0x3

    const/4 v12, 0x0

    aput-byte v12, v3, v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v11, 0x4

    add-int/lit8 v38, v37, 0x1

    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :try_start_2
    aget-byte v12, p1, v37

    aput-byte v12, v3, v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v11, 0x5

    add-int/lit8 v37, v38, 0x1

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    :try_start_3
    aget-byte v12, p1, v38

    aput-byte v12, v3, v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v11, 0x6

    add-int/lit8 v38, v37, 0x1

    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :try_start_4
    aget-byte v12, p1, v37

    aput-byte v12, v3, v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v11, 0x7

    add-int/lit8 v37, v38, 0x1

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    :try_start_5
    aget-byte v12, p1, v38

    aput-byte v12, v3, v11

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v8

    .local v8, "timestamp":J
    new-instance v3, Ljava/util/SimpleTimeZone;

    const/4 v11, 0x0

    const-string v12, "GMT"

    invoke-direct {v3, v11, v12}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v2

    .local v2, "calender":Ljava/util/Calendar;
    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v27

    .local v27, "hour":I
    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v31

    .local v31, "minute":I
    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v33

    .local v33, "second":I
    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v30

    .local v30, "milliSec":I
    move/from16 v0, v27

    mul-int/lit16 v3, v0, 0xe10

    mul-int/lit8 v11, v31, 0x3c

    add-int/2addr v3, v11

    add-int v3, v3, v33

    mul-int/lit16 v3, v3, 0x3e8

    add-int v3, v3, v30

    int-to-long v4, v3

    .local v4, "curUtcTime":J
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .local v6, "curTimeMillis":J
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v3

    invoke-virtual/range {v3 .. v9}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC24(JJJ)J

    move-result-wide v8

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v35, v0

    .local v35, "stepType":[I
    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v34, v0

    .local v34, "stepCount":[I
    move/from16 v0, v22

    new-array v0, v0, [D

    move-object/from16 v24, v0

    .local v24, "distance":[D
    move/from16 v0, v22

    new-array v10, v0, [D

    .local v10, "calorie":[D
    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .local v25, "duration":[I
    move/from16 v0, v22

    new-array v0, v0, [J

    move-object/from16 v36, v0

    .local v36, "tempTimeStamp":[J
    const/4 v3, 0x0

    aput-wide v8, v36, v3

    new-instance v21, Landroid/os/Bundle;

    invoke-direct/range {v21 .. v21}, Landroid/os/Bundle;-><init>()V

    .local v21, "dataBundle":Landroid/os/Bundle;
    const/16 v28, 0x0

    .local v28, "i":I
    move/from16 v38, v37

    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :goto_1
    move/from16 v0, v28

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    add-int/lit8 v37, v38, 0x1

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    aget-byte v3, p1, v38

    aput v3, v35, v28

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-byte v12, v3, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-byte v12, v3, v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v11, 0x2

    add-int/lit8 v38, v37, 0x1

    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :try_start_6
    aget-byte v12, p1, v37

    aput-byte v12, v3, v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const/4 v11, 0x3

    add-int/lit8 v37, v38, 0x1

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    :try_start_7
    aget-byte v12, p1, v38

    aput-byte v12, v3, v11

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v34, v28

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-byte v12, v3, v11
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    const/4 v11, 0x1

    add-int/lit8 v38, v37, 0x1

    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :try_start_8
    aget-byte v12, p1, v37

    aput-byte v12, v3, v11
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const/4 v11, 0x2

    add-int/lit8 v37, v38, 0x1

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    :try_start_9
    aget-byte v12, p1, v38

    aput-byte v12, v3, v11
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    const/4 v11, 0x3

    add-int/lit8 v38, v37, 0x1

    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :try_start_a
    aget-byte v12, p1, v37

    aput-byte v12, v3, v11

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-double v12, v3

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    aput-wide v12, v24, v28

    const/4 v3, 0x4

    new-array v3, v3, [B

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput-byte v12, v3, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput-byte v12, v3, v11
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const/4 v11, 0x2

    add-int/lit8 v37, v38, 0x1

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    :try_start_b
    aget-byte v12, p1, v38

    aput-byte v12, v3, v11
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    const/4 v11, 0x3

    add-int/lit8 v38, v37, 0x1

    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :try_start_c
    aget-byte v12, p1, v37

    aput-byte v12, v3, v11

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    int-to-double v12, v3

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    div-double/2addr v12, v14

    aput-wide v12, v10, v28

    const/4 v3, 0x4

    new-array v3, v3, [B
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const/4 v11, 0x0

    add-int/lit8 v37, v38, 0x1

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    :try_start_d
    aget-byte v12, p1, v38

    aput-byte v12, v3, v11
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    const/4 v11, 0x1

    add-int/lit8 v38, v37, 0x1

    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :try_start_e
    aget-byte v12, p1, v37

    aput-byte v12, v3, v11
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    const/4 v11, 0x2

    add-int/lit8 v37, v38, 0x1

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    :try_start_f
    aget-byte v12, p1, v38

    aput-byte v12, v3, v11
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    const/4 v11, 0x3

    add-int/lit8 v38, v37, 0x1

    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :try_start_10
    aget-byte v12, p1, v37

    aput-byte v12, v3, v11

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    aput v3, v25, v28

    aget v3, v35, v28

    const/4 v11, 0x1

    if-lt v3, v11, :cond_4

    aget v3, v35, v28

    const/4 v11, 0x5

    if-le v3, v11, :cond_5

    :cond_4
    new-instance v3, Ljava/lang/Exception;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid stepType : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v35, v28

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    .end local v2    # "calender":Ljava/util/Calendar;
    .end local v4    # "curUtcTime":J
    .end local v6    # "curTimeMillis":J
    .end local v8    # "timestamp":J
    .end local v10    # "calorie":[D
    .end local v21    # "dataBundle":Landroid/os/Bundle;
    .end local v22    # "dataSize":I
    .end local v24    # "distance":[D
    .end local v25    # "duration":[I
    .end local v27    # "hour":I
    .end local v28    # "i":I
    .end local v30    # "milliSec":I
    .end local v31    # "minute":I
    .end local v33    # "second":I
    .end local v34    # "stepCount":[I
    .end local v35    # "stepType":[I
    .end local v36    # "tempTimeStamp":[J
    :catch_0
    move-exception v26

    move/from16 v37, v38

    .end local v38    # "tmpNext":I
    .local v26, "e":Ljava/lang/Exception;
    .restart local v37    # "tmpNext":I
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SLMonitor Runner Exception : "

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .end local v26    # "e":Ljava/lang/Exception;
    :goto_3
    move/from16 v3, v37

    goto/16 :goto_0

    .end local v37    # "tmpNext":I
    .restart local v2    # "calender":Ljava/util/Calendar;
    .restart local v4    # "curUtcTime":J
    .restart local v6    # "curTimeMillis":J
    .restart local v8    # "timestamp":J
    .restart local v10    # "calorie":[D
    .restart local v21    # "dataBundle":Landroid/os/Bundle;
    .restart local v22    # "dataSize":I
    .restart local v24    # "distance":[D
    .restart local v25    # "duration":[I
    .restart local v27    # "hour":I
    .restart local v28    # "i":I
    .restart local v30    # "milliSec":I
    .restart local v31    # "minute":I
    .restart local v33    # "second":I
    .restart local v34    # "stepCount":[I
    .restart local v35    # "stepType":[I
    .restart local v36    # "tempTimeStamp":[J
    .restart local v38    # "tmpNext":I
    :cond_5
    :try_start_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    :try_start_12
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mSLMHistory:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;

    aget-wide v12, v36, v28

    aget v14, v35, v28

    aget v15, v34, v28

    aget-wide v16, v24, v28

    aget-wide v18, v10, v28

    aget v20, v25, v28

    invoke-virtual/range {v11 .. v20}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/utils/SLMHistory;->putSLMData(JIIDDI)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :try_start_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    add-int/lit8 v3, v22, -0x1

    move/from16 v0, v28

    if-ge v0, v3, :cond_6

    add-int/lit8 v3, v28, 0x1

    aget-wide v12, v36, v28

    aget v11, v25, v28

    int-to-long v14, v11

    add-long/2addr v12, v14

    aput-wide v12, v36, v3

    :cond_6
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v11}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v3

    :cond_7
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v32, v3

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->StepCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v32, v3

    move-object/from16 v0, v21

    move-object/from16 v1, v34

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Distance:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v32, v3

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Calorie:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v32, v3

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Duration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v32, v3

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v11

    aget-object v11, v32, v11

    move/from16 v0, v22

    invoke-virtual {v3, v11, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Timestamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v11

    aget-object v11, v32, v11

    invoke-virtual {v3, v11, v8, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v11

    aget-object v11, v32, v11

    move-object/from16 v0, v21

    invoke-virtual {v3, v11, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    sget-object v11, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v11

    aget-object v11, v32, v11

    move/from16 v0, v23

    invoke-virtual {v3, v11, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    new-instance v29, Landroid/os/Bundle;

    invoke-direct/range {v29 .. v29}, Landroid/os/Bundle;-><init>()V

    .local v29, "logBundle":Landroid/os/Bundle;
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v32, v3

    move-object/from16 v0, v29

    move/from16 v1, v22

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->Timestamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v32, v3

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataBundle:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v32, v3

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;

    # getter for: Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->val:I
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;->access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner$ContextValIndex;)I

    move-result v3

    aget-object v3, v32, v3

    move-object/from16 v0, v29

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->display(Landroid/os/Bundle;)V

    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move/from16 v37, v38

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    goto/16 :goto_3

    .end local v2    # "calender":Ljava/util/Calendar;
    .end local v4    # "curUtcTime":J
    .end local v6    # "curTimeMillis":J
    .end local v8    # "timestamp":J
    .end local v10    # "calorie":[D
    .end local v21    # "dataBundle":Landroid/os/Bundle;
    .end local v22    # "dataSize":I
    .end local v24    # "distance":[D
    .end local v25    # "duration":[I
    .end local v27    # "hour":I
    .end local v28    # "i":I
    .end local v29    # "logBundle":Landroid/os/Bundle;
    .end local v30    # "milliSec":I
    .end local v31    # "minute":I
    .end local v33    # "second":I
    .end local v34    # "stepCount":[I
    .end local v35    # "stepType":[I
    .end local v36    # "tempTimeStamp":[J
    .end local v37    # "tmpNext":I
    .restart local v38    # "tmpNext":I
    :cond_8
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TYPE_VALUE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    move/from16 v37, v38

    .end local v38    # "tmpNext":I
    .restart local v37    # "tmpNext":I
    goto/16 :goto_3

    :catch_1
    move-exception v26

    goto/16 :goto_2
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 6
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v5, 0x4

    const/4 v0, 0x1

    .local v0, "result":Z
    const/16 v1, 0x3a

    if-ne p1, v1, :cond_0

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mStepLevelType:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Step Level Type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mStepLevelType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :goto_0
    return v0

    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    const/16 v1, 0x3b

    if-ne p1, v1, :cond_1

    check-cast p2, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mDuration:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mDuration:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    const/16 v1, 0x17

    const/16 v2, 0x2c

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->mDuration:I

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    invoke-virtual {p0, v1, v2, v5, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto :goto_0

    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    if-ne p1, v5, :cond_2

    const-string v1, "History Data"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->sendHistorySLMBuffer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorRunner;->_mutex:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
