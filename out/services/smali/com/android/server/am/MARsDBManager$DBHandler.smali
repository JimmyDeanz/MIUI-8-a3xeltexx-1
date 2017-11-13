.class Lcom/android/server/am/MARsDBManager$DBHandler;
.super Landroid/os/Handler;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DBHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsDBManager;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    .line 317
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 318
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 322
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 449
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 324
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->initManagedPackagesInternal()V
    invoke-static {v3}, Lcom/android/server/am/MARsDBManager;->access$100(Lcom/android/server/am/MARsDBManager;)V

    goto :goto_0

    .line 327
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->getSettingsValueFromDB()V
    invoke-static {v3}, Lcom/android/server/am/MARsDBManager;->access$200(Lcom/android/server/am/MARsDBManager;)V

    goto :goto_0

    .line 330
    :pswitch_3
    const/4 v14, 0x3

    .line 332
    .local v14, "columns":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v3, v3, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v3, :cond_1

    .line 333
    const/16 v14, 0xb

    .line 336
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # getter for: Lcom/android/server/am/MARsDBManager;->mUpdateResetTimeValues:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/am/MARsDBManager;->access$300(Lcom/android/server/am/MARsDBManager;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # getter for: Lcom/android/server/am/MARsDBManager;->mUpdateResetTimeValues:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/am/MARsDBManager;->access$300(Lcom/android/server/am/MARsDBManager;)Ljava/util/ArrayList;

    move-result-object v5

    # invokes: Lcom/android/server/am/MARsDBManager;->updateDBAll(ILjava/util/ArrayList;)V
    invoke-static {v3, v14, v5}, Lcom/android/server/am/MARsDBManager;->access$400(Lcom/android/server/am/MARsDBManager;ILjava/util/ArrayList;)V

    goto :goto_0

    .line 341
    .end local v14    # "columns":I
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    .line 342
    .local v15, "extras":Landroid/os/Bundle;
    if-eqz v15, :cond_0

    .line 343
    const-string/jumbo v3, "packageName"

    const/4 v5, 0x0

    invoke-virtual {v15, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "pkgName":Ljava/lang/String;
    const-string/jumbo v3, "time"

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    invoke-virtual {v15, v3, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v18

    .line 345
    .local v18, "time":J
    const-string/jumbo v3, "strExtras"

    const-string v5, "0"

    invoke-virtual {v15, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 346
    .local v6, "strExtras":Ljava/lang/String;
    const/4 v14, 0x0

    .line 347
    .restart local v14    # "columns":I
    const/4 v2, 0x0

    .line 349
    .local v2, "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    if-eqz v4, :cond_0

    const-wide/16 v20, 0x0

    cmp-long v3, v18, v20

    if-eqz v3, :cond_0

    .line 350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v3, v3, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-nez v3, :cond_2

    .line 351
    const/4 v14, 0x3

    .line 352
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->updateDBSpecific(Ljava/lang/String;ILcom/android/server/am/MARsDBManager$SMDBValue;)V
    invoke-static {v3, v4, v14, v2}, Lcom/android/server/am/MARsDBManager;->access$500(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;ILcom/android/server/am/MARsDBManager$SMDBValue;)V

    goto/16 :goto_0

    .line 354
    :cond_2
    const-string/jumbo v3, "strAutoRun"

    const-string v5, "0"

    invoke-virtual {v15, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 355
    .local v7, "strAutoRun":Ljava/lang/String;
    const/16 v14, 0xb

    .line 356
    new-instance v2, Lcom/android/server/am/MARsDBManager$SMDBValue;

    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/MARsDBManager$SMDBValue;-><init>(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    goto :goto_1

    .line 364
    .end local v2    # "value":Lcom/android/server/am/MARsDBManager$SMDBValue;
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v6    # "strExtras":Ljava/lang/String;
    .end local v7    # "strAutoRun":Ljava/lang/String;
    .end local v14    # "columns":I
    .end local v15    # "extras":Landroid/os/Bundle;
    .end local v18    # "time":J
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    .line 365
    .restart local v15    # "extras":Landroid/os/Bundle;
    if-eqz v15, :cond_0

    .line 366
    const-string/jumbo v3, "onUpgrade"

    const/4 v5, 0x0

    invoke-virtual {v15, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 367
    .local v16, "onUpgrade":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v3, v3, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_3

    .line 368
    const-string v3, "MARsDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received MARS_DB_REQUEST_FILLINDB_MSG, --- onUpgrade = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " --mDBUpdated = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # getter for: Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z
    invoke-static {v8}, Lcom/android/server/am/MARsDBManager;->access$600(Lcom/android/server/am/MARsDBManager;)Z

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_3
    if-nez v16, :cond_4

    .line 374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # getter for: Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z
    invoke-static {v3}, Lcom/android/server/am/MARsDBManager;->access$600(Lcom/android/server/am/MARsDBManager;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v20, 0x0

    move/from16 v0, v20

    # invokes: Lcom/android/server/am/MARsDBManager;->updateDBForApp(ZLjava/util/ArrayList;Z)V
    invoke-static {v3, v5, v8, v0}, Lcom/android/server/am/MARsDBManager;->access$700(Lcom/android/server/am/MARsDBManager;ZLjava/util/ArrayList;Z)V

    .line 376
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/am/MARsDBManager;->mDBUpdated:Z
    invoke-static {v3, v5}, Lcom/android/server/am/MARsDBManager;->access$602(Lcom/android/server/am/MARsDBManager;Z)Z

    goto/16 :goto_0

    .line 379
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    .line 380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/16 v20, 0x1

    move/from16 v0, v20

    # invokes: Lcom/android/server/am/MARsDBManager;->updateDBForApp(ZLjava/util/ArrayList;Z)V
    invoke-static {v3, v5, v8, v0}, Lcom/android/server/am/MARsDBManager;->access$700(Lcom/android/server/am/MARsDBManager;ZLjava/util/ArrayList;Z)V

    goto/16 :goto_0

    .line 385
    .end local v15    # "extras":Landroid/os/Bundle;
    .end local v16    # "onUpgrade":Z
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-object v3, v3, Lcom/android/server/am/MARsDBManager;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->DEBUG_MARs:Z

    if-eqz v3, :cond_5

    .line 386
    const-string v3, "MARsDBManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received UPDATE_PREVIOUS_PACKAGESTYPE_MSG --size ="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # getter for: Lcom/android/server/am/MARsDBManager;->mPreviousPackages:Landroid/util/ArrayMap;
    invoke-static {v8}, Lcom/android/server/am/MARsDBManager;->access$800(Lcom/android/server/am/MARsDBManager;)Landroid/util/ArrayMap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # getter for: Lcom/android/server/am/MARsDBManager;->mPreviousPackages:Landroid/util/ArrayMap;
    invoke-static {v3}, Lcom/android/server/am/MARsDBManager;->access$800(Lcom/android/server/am/MARsDBManager;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 391
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v17, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # getter for: Lcom/android/server/am/MARsDBManager;->mPreviousPackages:Landroid/util/ArrayMap;
    invoke-static {v3}, Lcom/android/server/am/MARsDBManager;->access$800(Lcom/android/server/am/MARsDBManager;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    const/4 v5, 0x4

    move-object/from16 v0, v17

    # invokes: Lcom/android/server/am/MARsDBManager;->updateDBAll(ILjava/util/ArrayList;)V
    invoke-static {v3, v5, v0}, Lcom/android/server/am/MARsDBManager;->access$400(Lcom/android/server/am/MARsDBManager;ILjava/util/ArrayList;)V

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # getter for: Lcom/android/server/am/MARsDBManager;->mPreviousPackages:Landroid/util/ArrayMap;
    invoke-static {v3}, Lcom/android/server/am/MARsDBManager;->access$800(Lcom/android/server/am/MARsDBManager;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    goto/16 :goto_0

    .line 401
    .end local v17    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsDBManager$SMDBValue;>;"
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-boolean v3, v3, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    if-nez v3, :cond_0

    .line 402
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    .line 403
    .restart local v15    # "extras":Landroid/os/Bundle;
    if-eqz v15, :cond_0

    .line 404
    const-string/jumbo v3, "packageName"

    const/4 v5, 0x0

    invoke-virtual {v15, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 405
    .restart local v4    # "pkgName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->insertPackage(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/am/MARsDBManager;->access$900(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 412
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v15    # "extras":Landroid/os/Bundle;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-boolean v3, v3, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    if-nez v3, :cond_0

    .line 413
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    .line 414
    .restart local v15    # "extras":Landroid/os/Bundle;
    if-eqz v15, :cond_0

    .line 415
    const-string/jumbo v3, "packageName"

    const/4 v5, 0x0

    invoke-virtual {v15, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 416
    .restart local v4    # "pkgName":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->deletePackage(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/am/MARsDBManager;->access$1000(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 423
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v15    # "extras":Landroid/os/Bundle;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    iget-boolean v3, v3, Lcom/android/server/am/MARsDBManager;->mOldVersion:Z

    if-nez v3, :cond_0

    .line 424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->updateAutoRunTargetXmlToDB()V
    invoke-static {v3}, Lcom/android/server/am/MARsDBManager;->access$1100(Lcom/android/server/am/MARsDBManager;)V

    goto/16 :goto_0

    .line 428
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->getExcludedAppDBValues()V
    invoke-static {v3}, Lcom/android/server/am/MARsDBManager;->access$1200(Lcom/android/server/am/MARsDBManager;)V

    goto/16 :goto_0

    .line 431
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->getSCPMParametersFromDB()V
    invoke-static {v3}, Lcom/android/server/am/MARsDBManager;->access$1300(Lcom/android/server/am/MARsDBManager;)V

    goto/16 :goto_0

    .line 435
    :pswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v15

    .line 436
    .restart local v15    # "extras":Landroid/os/Bundle;
    if-eqz v15, :cond_0

    .line 437
    const-string v3, "callee"

    const/4 v5, 0x0

    invoke-virtual {v15, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 438
    .local v9, "callee":Ljava/lang/String;
    const-string v3, "caller"

    const/4 v5, 0x0

    invoke-virtual {v15, v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 439
    .local v10, "caller":Ljava/lang/String;
    const-string/jumbo v3, "isblock"

    const/4 v5, 0x1

    invoke-virtual {v15, v3, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 440
    .local v11, "isblocked":Z
    const-string/jumbo v3, "requesttime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    invoke-virtual {v15, v3, v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v12

    .line 441
    .local v12, "requestTime":J
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    # invokes: Lcom/android/server/am/MARsDBManager;->updateInfo(Ljava/lang/String;Ljava/lang/String;ZJ)V
    invoke-static/range {v8 .. v13}, Lcom/android/server/am/MARsDBManager;->access$1400(Lcom/android/server/am/MARsDBManager;Ljava/lang/String;Ljava/lang/String;ZJ)V

    goto/16 :goto_0

    .line 445
    .end local v9    # "callee":Ljava/lang/String;
    .end local v10    # "caller":Ljava/lang/String;
    .end local v11    # "isblocked":Z
    .end local v12    # "requestTime":J
    .end local v15    # "extras":Landroid/os/Bundle;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/MARsDBManager$DBHandler;->this$0:Lcom/android/server/am/MARsDBManager;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/am/MARsDBManager;->updateAppStartUpHistory(Z)V

    goto/16 :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
