.class Lcom/android/server/am/MARsPolicyManager$8;
.super Ljava/lang/Thread;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/MARsPolicyManager;->runMARsUpdatePackagesThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 3164
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 3170
    :cond_0
    :goto_0
    const-wide/32 v4, 0xea60

    .line 3172
    .local v4, "initIntervalTime":J
    const-wide/32 v12, 0x2bf20

    .line 3173
    .local v12, "updateIntervalTime":J
    const-wide/32 v10, 0x927c0

    .line 3175
    .local v10, "sleepTime":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager;->access$800(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mLaunchedAppBeforeInit:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager;->access$1100(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_1

    .line 3176
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # invokes: Lcom/android/server/am/MARsPolicyManager;->updateLaunchedBeforeInitToManaged()V
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager;->access$1200(Lcom/android/server/am/MARsPolicyManager;)V

    .line 3180
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager;->access$800(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mActiveAdminsUpdated:Z
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager;->access$1300(Lcom/android/server/am/MARsPolicyManager;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 3181
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager;->access$800(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 3182
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager;->access$800(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/MARsPackageStatus;

    .line 3183
    .local v8, "ps":Lcom/android/server/am/MARsPackageStatus;
    iget-boolean v9, v8, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    if-eqz v9, :cond_2

    .line 3184
    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/server/am/MARsPackageStatus;->isActiveDeviceAdmin:Z

    .line 3181
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3187
    .end local v8    # "ps":Lcom/android/server/am/MARsPackageStatus;
    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # invokes: Lcom/android/server/am/MARsPolicyManager;->updateActiveAdminsToManaged()V
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager;->access$1400(Lcom/android/server/am/MARsPolicyManager;)V

    .line 3188
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    const/4 v14, 0x1

    # setter for: Lcom/android/server/am/MARsPolicyManager;->mActiveAdminsUpdated:Z
    invoke-static {v9, v14}, Lcom/android/server/am/MARsPolicyManager;->access$1302(Lcom/android/server/am/MARsPolicyManager;Z)Z

    .line 3191
    .end local v3    # "i":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager;->access$1500(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v9

    if-eqz v9, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->spcmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager;->access$1500(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v9, :cond_5

    .line 3192
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager;->access$800(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_9

    .line 3193
    const-wide/32 v10, 0xea60

    .line 3200
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager;->access$1600(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v9

    if-eqz v9, :cond_6

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager;->access$1600(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v9, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager;->access$100(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v9

    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager;->access$100(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v9, :cond_8

    .line 3202
    :cond_7
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # getter for: Lcom/android/server/am/MARsPolicyManager;->mManagedPackages:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager;->access$800(Lcom/android/server/am/MARsPolicyManager;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_a

    .line 3203
    const-wide/32 v10, 0xea60

    .line 3211
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # invokes: Lcom/android/server/am/MARsPolicyManager;->checkCarModeState()V
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager;->access$1800(Lcom/android/server/am/MARsPolicyManager;)V

    .line 3213
    const-wide/32 v14, 0xea60

    cmp-long v9, v10, v14

    if-nez v9, :cond_b

    .line 3214
    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3230
    :catch_0
    move-exception v2

    .line 3231
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 3233
    return-void

    .line 3195
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_9
    :try_start_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    const/4 v14, 0x0

    # invokes: Lcom/android/server/am/MARsPolicyManager;->updatePackagesScore(Ljava/lang/String;)V
    invoke-static {v9, v14}, Lcom/android/server/am/MARsPolicyManager;->access$1000(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;)V

    .line 3196
    const-wide/32 v10, 0x927c0

    goto :goto_2

    .line 3205
    :cond_a
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/MARsPolicyManager$8;->this$0:Lcom/android/server/am/MARsPolicyManager;

    # invokes: Lcom/android/server/am/MARsPolicyManager;->updateSMDBValues()V
    invoke-static {v9}, Lcom/android/server/am/MARsPolicyManager;->access$1700(Lcom/android/server/am/MARsPolicyManager;)V

    .line 3206
    const-wide/32 v10, 0x927c0

    goto :goto_3

    .line 3218
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 3220
    .local v6, "lSleepBegin":J
    :cond_c
    const-wide/32 v14, 0x2bf20

    invoke-static {v14, v15}, Ljava/lang/Thread;->sleep(J)V

    .line 3223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v6

    cmp-long v9, v14, v10

    if-gtz v9, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v14

    sub-long/2addr v14, v6

    const-wide/16 v16, 0x0

    cmp-long v9, v14, v16

    if-gez v9, :cond_c

    goto/16 :goto_0
.end method
