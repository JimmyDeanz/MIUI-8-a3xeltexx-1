.class Lcom/android/internal/app/AppLockPolicy$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AppLockPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/AppLockPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field isNotObserve:Z

.field mSettingContentResolver:Landroid/content/ContentResolver;

.field mSettingsObserverContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/internal/app/AppLockPolicy;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/AppLockPolicy;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    iput-object p1, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->isNotObserve:Z

    iput-object p2, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingsObserverContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingsObserverContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private getLockedApps()V
    .locals 19

    .prologue
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingsObserverContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "smartmanager_locked_apps_packages"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "lockedPackages":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingsObserverContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "smartmanager_locked_apps_classes"

    invoke-static/range {v15 .. v16}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "lockedClasses":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingsObserverContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "applock_lock_type"

    const/16 v18, 0x0

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedTypeInt:I
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$202(Lcom/android/internal/app/AppLockPolicy;I)I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    # getter for: Lcom/android/internal/app/AppLockPolicy;->mLockedTypeInt:I
    invoke-static {v15}, Lcom/android/internal/app/AppLockPolicy;->access$200(Lcom/android/internal/app/AppLockPolicy;)I

    move-result v15

    packed-switch v15, :pswitch_data_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const/16 v16, 0x0

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$302(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    # getter for: Lcom/android/internal/app/AppLockPolicy;->mAppLockedLock:Ljava/lang/Object;
    invoke-static {v15}, Lcom/android/internal/app/AppLockPolicy;->access$400(Lcom/android/internal/app/AppLockPolicy;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    if-eqz v10, :cond_3

    :try_start_0
    const-string v15, ","

    invoke-virtual {v10, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .local v9, "lockedPackageArray":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, v9

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v11, v1, v4

    .local v11, "packageName":Ljava/lang/String;
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    # getter for: Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/android/internal/app/AppLockPolicy;->access$000(Lcom/android/internal/app/AppLockPolicy;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    # getter for: Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/android/internal/app/AppLockPolicy;->access$000(Lcom/android/internal/app/AppLockPolicy;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .local v12, "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .local v14, "relatedPackage":Ljava/lang/String;
    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_0

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "len$":I
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "lockedPackageArray":[Ljava/lang/String;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v12    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "relatedPackage":Ljava/lang/String;
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string v16, "pattern_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$302(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string v16, "pincode_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$302(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string v16, "password_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$302(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string v16, "fingerprint_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$302(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string v16, "fingerprint_pattern_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$302(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string v16, "fingerprint_pincode_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$302(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    const-string v16, "fingerprint_password_type"

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mLockedType:Ljava/lang/String;
    invoke-static/range {v15 .. v16}, Lcom/android/internal/app/AppLockPolicy;->access$302(Lcom/android/internal/app/AppLockPolicy;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v5    # "len$":I
    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v9    # "lockedPackageArray":[Ljava/lang/String;
    .restart local v11    # "packageName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto/16 :goto_1

    .end local v11    # "packageName":Ljava/lang/String;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mAppLockedPackageList:Ljava/util/ArrayList;
    invoke-static {v15, v6}, Lcom/android/internal/app/AppLockPolicy;->access$502(Lcom/android/internal/app/AppLockPolicy;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "lockedPackageArray":[Ljava/lang/String;
    :cond_3
    if-eqz v8, :cond_7

    const-string v15, ","

    invoke-virtual {v8, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, "lockedClassArray":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .restart local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v1, v7

    .restart local v1    # "arr$":[Ljava/lang/String;
    array-length v5, v1

    .restart local v5    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    :goto_3
    if-ge v4, v5, :cond_6

    aget-object v2, v1, v4

    .local v2, "className":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    # getter for: Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/android/internal/app/AppLockPolicy;->access$100(Lcom/android/internal/app/AppLockPolicy;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    # getter for: Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;
    invoke-static {v15}, Lcom/android/internal/app/AppLockPolicy;->access$100(Lcom/android/internal/app/AppLockPolicy;)Ljava/util/HashMap;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .restart local v12    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v4    # "i$":I
    .local v3, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, "relatedClass":Ljava/lang/String;
    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v12    # "related":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "relatedClass":Ljava/lang/String;
    :cond_5
    add-int/lit8 v3, v4, 0x1

    .local v3, "i$":I
    move v4, v3

    .end local v3    # "i$":I
    .restart local v4    # "i$":I
    goto :goto_3

    .end local v2    # "className":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    # setter for: Lcom/android/internal/app/AppLockPolicy;->mAppLockedClassList:Ljava/util/ArrayList;
    invoke-static {v15, v6}, Lcom/android/internal/app/AppLockPolicy;->access$602(Lcom/android/internal/app/AppLockPolicy;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "lockedClassArray":[Ljava/lang/String;
    :cond_7
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private getRelatedApps()V
    .locals 15

    .prologue
    iget-object v13, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingsObserverContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .local v12, "res":Landroid/content/res/Resources;
    const v13, 0x1070086

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .local v9, "relatedPackageArray":[Ljava/lang/String;
    if-eqz v9, :cond_1

    array-length v13, v9

    if-lez v13, :cond_1

    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v11, v0, v3

    .local v11, "relatedPackages":Ljava/lang/String;
    const-string v13, ","

    invoke-virtual {v11, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "packages":[Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .local v10, "relatedPackageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v13, v5

    if-ge v2, v13, :cond_0

    aget-object v13, v5, v2

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    # getter for: Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedPackageMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/android/internal/app/AppLockPolicy;->access$000(Lcom/android/internal/app/AppLockPolicy;)Ljava/util/HashMap;

    move-result-object v13

    aget-object v14, v5, v2

    invoke-virtual {v13, v14, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "packages":[Ljava/lang/String;
    .end local v10    # "relatedPackageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "relatedPackages":Ljava/lang/String;
    :cond_1
    const v13, 0x1070087

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .local v6, "relatedClassArray":[Ljava/lang/String;
    if-eqz v6, :cond_3

    array-length v13, v6

    if-lez v13, :cond_3

    move-object v0, v6

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v3, 0x0

    .restart local v3    # "i$":I
    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v8, v0, v3

    .local v8, "relatedClasses":Ljava/lang/String;
    const-string v13, ","

    invoke-virtual {v8, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "classes":[Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, "relatedClassList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v13, v1

    if-ge v2, v13, :cond_2

    aget-object v13, v1, v2

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v13, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->this$0:Lcom/android/internal/app/AppLockPolicy;

    # getter for: Lcom/android/internal/app/AppLockPolicy;->mAppLockedRelatedClassMap:Ljava/util/HashMap;
    invoke-static {v13}, Lcom/android/internal/app/AppLockPolicy;->access$100(Lcom/android/internal/app/AppLockPolicy;)Ljava/util/HashMap;

    move-result-object v13

    aget-object v14, v1, v2

    invoke-virtual {v13, v14, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "classes":[Ljava/lang/String;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "relatedClassList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "relatedClasses":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->isNotObserve:Z

    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingContentResolver:Landroid/content/ContentResolver;

    const-string v1, "smartmanager_locked_apps_packages"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingContentResolver:Landroid/content/ContentResolver;

    const-string v1, "smartmanager_locked_apps_classes"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingContentResolver:Landroid/content/ContentResolver;

    const-string v1, "applock_lock_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->getRelatedApps()V

    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->getLockedApps()V

    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->getLockedApps()V

    return-void
.end method

.method unObserve()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/app/AppLockPolicy$SettingsObserver;->mSettingContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
