.class final Lcom/android/server/am/ActivityManagerService$UiHandler;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "UiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3

    .prologue
    .line 2120
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    .line 2121
    invoke-static {}, Lcom/android/server/UiThread;->get()Lcom/android/server/UiThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/UiThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2122
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 42
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2126
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 2482
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 2128
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/HashMap;

    .line 2129
    .local v34, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "anr_show_background"

    const/4 v8, 0x0

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    const/16 v39, 0x1

    .line 2131
    .local v39, "showBackground":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    .line 2132
    :try_start_0
    const-string v3, "app"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 2133
    .local v6, "proc":Lcom/android/server/am/ProcessRecord;
    const-string/jumbo v3, "result"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppErrorResult;

    .line 2134
    .local v5, "res":Lcom/android/server/am/AppErrorResult;
    const-string/jumbo v3, "skipDump"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 2135
    .local v7, "skipDump":Z
    if-eqz v6, :cond_3

    iget-object v3, v6, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_3

    .line 2136
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has crash dialog: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    if-eqz v5, :cond_1

    .line 2138
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 2140
    :cond_1
    monitor-exit v8

    goto :goto_0

    .line 2207
    .end local v5    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v7    # "skipDump":Z
    :catchall_0
    move-exception v3

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2129
    .end local v39    # "showBackground":Z
    :cond_2
    const/16 v39, 0x0

    goto :goto_1

    .line 2142
    .restart local v5    # "res":Lcom/android/server/am/AppErrorResult;
    .restart local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v7    # "skipDump":Z
    .restart local v39    # "showBackground":Z
    :cond_3
    :try_start_1
    iget v3, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_4

    iget v3, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v4, :cond_4

    const/16 v36, 0x1

    .line 2145
    .local v36, "isBackground":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    move-object/from16 v33, v0

    .local v33, "arr$":[I
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v37, v0

    .local v37, "len$":I
    const/16 v35, 0x0

    .local v35, "i$":I
    :goto_3
    move/from16 v0, v35

    move/from16 v1, v37

    if-ge v0, v1, :cond_6

    aget v41, v33, v35

    .line 2146
    .local v41, "userId":I
    iget v3, v6, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v0, v41

    if-eq v3, v0, :cond_5

    const/4 v3, 0x1

    :goto_4
    and-int v36, v36, v3

    .line 2145
    add-int/lit8 v35, v35, 0x1

    goto :goto_3

    .line 2142
    .end local v33    # "arr$":[I
    .end local v35    # "i$":I
    .end local v36    # "isBackground":Z
    .end local v37    # "len$":I
    .end local v41    # "userId":I
    :cond_4
    const/16 v36, 0x0

    goto :goto_2

    .line 2146
    .restart local v33    # "arr$":[I
    .restart local v35    # "i$":I
    .restart local v36    # "isBackground":Z
    .restart local v37    # "len$":I
    .restart local v41    # "userId":I
    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    .line 2148
    .end local v41    # "userId":I
    :cond_6
    if-eqz v36, :cond_8

    if-nez v39, :cond_8

    .line 2149
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping crash dialog of "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ": background"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    if-eqz v5, :cond_7

    .line 2151
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 2153
    :cond_7
    monitor-exit v8

    goto/16 :goto_0

    .line 2155
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSleeping:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-nez v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v3, :cond_c

    .line 2156
    new-instance v2, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Z)V

    .line 2160
    .local v2, "d":Landroid/app/Dialog;
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2162
    new-instance v3, Lcom/android/server/am/ActivityManagerService$UiHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/ActivityManagerService$UiHandler$1;-><init>(Lcom/android/server/am/ActivityManagerService$UiHandler;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2177
    new-instance v3, Lcom/android/server/am/ActivityManagerService$UiHandler$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/ActivityManagerService$UiHandler$2;-><init>(Lcom/android/server/am/ActivityManagerService$UiHandler;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2187
    :cond_9
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2188
    iput-object v2, v6, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 2191
    const/16 v3, 0x3e8

    iget v4, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v3, v4, :cond_a

    .line 2192
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->forceResetEasyOneHandService()V

    .line 2203
    .end local v2    # "d":Landroid/app/Dialog;
    :cond_a
    :goto_5
    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->mIsSPDError:Z

    if-eqz v3, :cond_b

    .line 2204
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/server/am/ActivityManagerService;->mIsSPDError:Z

    .line 2207
    :cond_b
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2209
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 2198
    :cond_c
    if-eqz v5, :cond_a

    .line 2199
    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v5, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 2214
    .end local v5    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v7    # "skipDump":Z
    .end local v33    # "arr$":[I
    .end local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v35    # "i$":I
    .end local v36    # "isBackground":Z
    .end local v37    # "len$":I
    .end local v39    # "showBackground":Z
    :sswitch_2
    const-string v3, "AASAMSGAASA"

    const-string v4, " SHOW_CMPERMISSION_ERROR_MSG is called"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/HashMap;

    .line 2217
    .restart local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "anr_show_background"

    const/4 v8, 0x0

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_e

    const/16 v39, 0x1

    .line 2219
    .restart local v39    # "showBackground":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2220
    :try_start_3
    const-string/jumbo v3, "errorpermission"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 2221
    .local v12, "permission":Ljava/lang/String;
    const-string/jumbo v3, "errorpackagename"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 2222
    .local v13, "packagename":Ljava/lang/String;
    const-string v3, "app"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 2223
    .restart local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    const-string/jumbo v3, "result"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppErrorResult;

    .line 2224
    .restart local v5    # "res":Lcom/android/server/am/AppErrorResult;
    if-eqz v6, :cond_f

    iget-object v3, v6, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_f

    .line 2225
    const-string v3, "AASAMSGAASA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has crash dialog: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    if-eqz v5, :cond_d

    .line 2227
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 2229
    :cond_d
    monitor-exit v4

    goto/16 :goto_0

    .line 2271
    .end local v5    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "permission":Ljava/lang/String;
    .end local v13    # "packagename":Ljava/lang/String;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 2217
    .end local v39    # "showBackground":Z
    :cond_e
    const/16 v39, 0x0

    goto :goto_6

    .line 2232
    .restart local v5    # "res":Lcom/android/server/am/AppErrorResult;
    .restart local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v12    # "permission":Ljava/lang/String;
    .restart local v13    # "packagename":Ljava/lang/String;
    .restart local v39    # "showBackground":Z
    :cond_f
    :try_start_4
    iget v3, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    const/16 v8, 0x2710

    if-lt v3, v8, :cond_10

    iget v3, v6, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v8, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v8, :cond_10

    const/16 v36, 0x1

    .line 2235
    .restart local v36    # "isBackground":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mCurrentProfileIds:[I

    move-object/from16 v33, v0

    .restart local v33    # "arr$":[I
    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v37, v0

    .restart local v37    # "len$":I
    const/16 v35, 0x0

    .restart local v35    # "i$":I
    :goto_8
    move/from16 v0, v35

    move/from16 v1, v37

    if-ge v0, v1, :cond_12

    aget v41, v33, v35

    .line 2236
    .restart local v41    # "userId":I
    iget v3, v6, Lcom/android/server/am/ProcessRecord;->userId:I

    move/from16 v0, v41

    if-eq v3, v0, :cond_11

    const/4 v3, 0x1

    :goto_9
    and-int v36, v36, v3

    .line 2235
    add-int/lit8 v35, v35, 0x1

    goto :goto_8

    .line 2232
    .end local v33    # "arr$":[I
    .end local v35    # "i$":I
    .end local v36    # "isBackground":Z
    .end local v37    # "len$":I
    .end local v41    # "userId":I
    :cond_10
    const/16 v36, 0x0

    goto :goto_7

    .line 2236
    .restart local v33    # "arr$":[I
    .restart local v35    # "i$":I
    .restart local v36    # "isBackground":Z
    .restart local v37    # "len$":I
    .restart local v41    # "userId":I
    :cond_11
    const/4 v3, 0x0

    goto :goto_9

    .line 2239
    .end local v41    # "userId":I
    :cond_12
    if-eqz v36, :cond_14

    if-nez v39, :cond_14

    .line 2240
    const-string v3, "AASAMSGAASA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Skipping crash dialog of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ": background"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2241
    if-eqz v5, :cond_13

    .line 2242
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V

    .line 2244
    :cond_13
    monitor-exit v4

    goto/16 :goto_0

    .line 2248
    :cond_14
    const-string v3, "AASAMSGAASA"

    const-string v8, "AppPermissionManagedDialog was creadted by SHOW_CMPERMISSION_ERROR_MSG"

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSleeping:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-nez v3, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v3, :cond_18

    .line 2251
    const/4 v2, 0x0

    .line 2253
    .restart local v2    # "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v8, "emergency_mode"

    const/4 v9, 0x0

    invoke-static {v3, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v8, 0x1

    if-eq v3, v8, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v8, "ultra_powersaving_mode"

    const/4 v9, 0x0

    invoke-static {v3, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_17

    .line 2255
    :cond_15
    const-string v3, "AASAMSGAASA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Settings.System.getInt(getContext().getContentResolver(),Settings.System.EMERGENCY_MODE,0)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "emergency_mode"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2256
    const-string v3, "AASAMSGAASA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Settings.System.getInt(getContext().getContentResolver(),Settings.System.EMERGENCY_MODE,0)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "ultra_powersaving_mode"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    new-instance v2, Lcom/android/server/am/AppPermissionManagedDialog;

    .end local v2    # "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x1

    move-object v8, v2

    move-object v10, v5

    move-object v11, v6

    invoke-direct/range {v8 .. v14}, Lcom/android/server/am/AppPermissionManagedDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2262
    .restart local v2    # "d":Landroid/app/Dialog;
    :goto_a
    if-eqz v2, :cond_16

    .line 2263
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2264
    iput-object v2, v6, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 2271
    .end local v2    # "d":Landroid/app/Dialog;
    :cond_16
    :goto_b
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2272
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 2259
    .restart local v2    # "d":Landroid/app/Dialog;
    :cond_17
    :try_start_5
    new-instance v2, Lcom/android/server/am/AppPermissionManagedDialog;

    .end local v2    # "d":Landroid/app/Dialog;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    move-object v8, v2

    move-object v10, v5

    move-object v11, v6

    invoke-direct/range {v8 .. v14}, Lcom/android/server/am/AppPermissionManagedDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;Z)V

    .restart local v2    # "d":Landroid/app/Dialog;
    goto :goto_a

    .line 2269
    .end local v2    # "d":Landroid/app/Dialog;
    :cond_18
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_b

    .line 2295
    .end local v5    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v12    # "permission":Ljava/lang/String;
    .end local v13    # "packagename":Ljava/lang/String;
    .end local v33    # "arr$":[I
    .end local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v35    # "i$":I
    .end local v36    # "isBackground":Z
    .end local v37    # "len$":I
    .end local v39    # "showBackground":Z
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2296
    :try_start_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/HashMap;

    .line 2297
    .restart local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "app"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 2298
    .restart local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v6, :cond_19

    iget-object v3, v6, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_19

    .line 2299
    const-string v3, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has anr dialog: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2300
    monitor-exit v4

    goto/16 :goto_0

    .line 2351
    .end local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v3

    .line 2303
    .restart local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .restart local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_19
    :try_start_7
    new-instance v17, Landroid/content/Intent;

    const-string v3, "android.intent.action.ANR"

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2304
    .local v17, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v3, :cond_1a

    .line 2305
    const/high16 v3, 0x50000000

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2308
    :cond_1a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    sget v28, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v29, 0x3e8

    const/16 v30, 0x0

    # invokes: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I
    invoke-static/range {v14 .. v30}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZIII)I

    .line 2312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_1d

    sget-boolean v3, Lcom/android/server/am/ActivityManagerService;->LIBC_DEBUG_ENABLED:Z

    if-nez v3, :cond_1d

    .line 2313
    new-instance v2, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v3, "activity"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_1c

    const/16 v23, 0x1

    :goto_c
    move-object/from16 v18, v2

    move-object/from16 v21, v6

    invoke-direct/range {v18 .. v23}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Z)V

    .line 2318
    .restart local v2    # "d":Landroid/app/Dialog;
    invoke-static {}, Landroid/util/GateConfig;->isGateEnabled()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 2320
    new-instance v3, Lcom/android/server/am/ActivityManagerService$UiHandler$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/ActivityManagerService$UiHandler$3;-><init>(Lcom/android/server/am/ActivityManagerService$UiHandler;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2335
    new-instance v3, Lcom/android/server/am/ActivityManagerService$UiHandler$4;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/am/ActivityManagerService$UiHandler$4;-><init>(Lcom/android/server/am/ActivityManagerService$UiHandler;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2345
    :cond_1b
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2346
    iput-object v2, v6, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 2351
    .end local v2    # "d":Landroid/app/Dialog;
    :goto_d
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2353
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 2313
    :cond_1c
    const/16 v23, 0x0

    goto :goto_c

    .line 2349
    :cond_1d
    :try_start_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v8}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;Landroid/app/Dialog;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_d

    .line 2356
    .end local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v17    # "intent":Landroid/content/Intent;
    .end local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Ljava/util/HashMap;

    .line 2357
    .restart local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2358
    :try_start_9
    const-string v3, "app"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 2359
    .restart local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    if-nez v6, :cond_1e

    .line 2360
    const-string v3, "ActivityManager"

    const-string v8, "App not found when showing strict mode dialog."

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    monitor-exit v4

    goto/16 :goto_0

    .line 2378
    .end local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    :catchall_3
    move-exception v3

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v3

    .line 2363
    .restart local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_1e
    :try_start_a
    iget-object v3, v6, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_1f

    .line 2364
    const-string v3, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "App already has strict mode dialog: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    monitor-exit v4

    goto/16 :goto_0

    .line 2367
    :cond_1f
    const-string/jumbo v3, "result"

    move-object/from16 v0, v34

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppErrorResult;

    .line 2368
    .restart local v5    # "res":Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mSleeping:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-nez v3, :cond_20

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v3, :cond_20

    .line 2369
    new-instance v2, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v2, v3, v8, v5, v6}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 2371
    .restart local v2    # "d":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2372
    iput-object v2, v6, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 2378
    .end local v2    # "d":Landroid/app/Dialog;
    :goto_e
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 2379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 2376
    :cond_20
    const/4 v3, 0x0

    :try_start_b
    invoke-virtual {v5, v3}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_e

    .line 2382
    .end local v5    # "res":Lcom/android/server/am/AppErrorResult;
    .end local v6    # "proc":Lcom/android/server/am/ProcessRecord;
    .end local v34    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_5
    new-instance v2, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v8, "msg"

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 2384
    .restart local v2    # "d":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2385
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 2388
    .end local v2    # "d":Landroid/app/Dialog;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2389
    :try_start_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Lcom/android/server/am/ProcessRecord;

    .line 2390
    .local v31, "app":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_22

    .line 2391
    move-object/from16 v0, v31

    iget-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    if-nez v3, :cond_21

    .line 2392
    new-instance v2, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v31

    invoke-direct {v2, v3, v8, v0}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 2395
    .restart local v2    # "d":Landroid/app/Dialog;
    move-object/from16 v0, v31

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 2396
    const/4 v3, 0x1

    move-object/from16 v0, v31

    iput-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 2397
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2405
    .end local v2    # "d":Landroid/app/Dialog;
    :cond_21
    :goto_f
    monitor-exit v4

    goto/16 :goto_0

    .end local v31    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_4
    move-exception v3

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v3

    .line 2400
    .restart local v31    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_22
    :try_start_d
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_21

    .line 2401
    move-object/from16 v0, v31

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 2402
    const/4 v3, 0x0

    move-object/from16 v0, v31

    iput-object v3, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    goto :goto_f

    .line 2408
    .end local v31    # "app":Lcom/android/server/am/ProcessRecord;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2409
    new-instance v2, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 2410
    .local v2, "d":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 2411
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 2412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x1040130

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104059a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2414
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v8, 0x104000a

    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v8, 0x30

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lcom/android/server/am/ActivityManagerService$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v2, v3, v4, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 2416
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2420
    .end local v2    # "d":Landroid/app/AlertDialog;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/ActivityManagerService;->mShowDialogs:Z
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2421
    new-instance v2, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 2422
    .restart local v2    # "d":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7da

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 2423
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 2424
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x1040130

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2425
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v4, 0x104059b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2426
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v8, 0x104000a

    invoke-virtual {v4, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    const/16 v8, 0x30

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lcom/android/server/am/ActivityManagerService$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v2, v3, v4, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 2428
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 2432
    .end local v2    # "d":Landroid/app/AlertDialog;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 2433
    :try_start_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Lcom/android/server/am/ActivityRecord;

    .line 2434
    .local v32, "ar":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v3, :cond_24

    .line 2435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v3, v3, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v8, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2437
    monitor-exit v4

    goto/16 :goto_0

    .line 2456
    .end local v32    # "ar":Lcom/android/server/am/ActivityRecord;
    :catchall_5
    move-exception v3

    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    throw v3

    .line 2439
    .restart local v32    # "ar":Lcom/android/server/am/ActivityRecord;
    :cond_23
    :try_start_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v3}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    .line 2440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, 0x0

    iput-object v8, v3, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    .line 2442
    :cond_24
    if-eqz v32, :cond_25

    .line 2456
    :cond_25
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto/16 :goto_0

    .line 2460
    .end local v32    # "ar":Lcom/android/server/am/ActivityRecord;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    # invokes: Lcom/android/server/am/ActivityManagerService;->showUserSwitchDialog(ILjava/lang/String;)V
    invoke-static {v4, v8, v3}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2464
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/app/Dialog;

    .line 2465
    .local v2, "d":Landroid/app/Dialog;
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_0

    .line 2469
    .end local v2    # "d":Landroid/app/Dialog;
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessesChanged()V
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    .line 2473
    :sswitch_d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v38, v0

    .line 2474
    .local v38, "pid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v40, v0

    .line 2475
    .local v40, "uid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    move/from16 v0, v38

    move/from16 v1, v40

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchProcessDied(II)V
    invoke-static {v3, v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$500(Lcom/android/server/am/ActivityManagerService;II)V

    goto/16 :goto_0

    .line 2479
    .end local v38    # "pid":I
    .end local v40    # "uid":I
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService$UiHandler;->this$0:Lcom/android/server/am/ActivityManagerService;

    # invokes: Lcom/android/server/am/ActivityManagerService;->dispatchUidsChanged()V
    invoke-static {v3}, Lcom/android/server/am/ActivityManagerService;->access$600(Lcom/android/server/am/ActivityManagerService;)V

    goto/16 :goto_0

    .line 2126
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_5
        0x6 -> :sswitch_6
        0xe -> :sswitch_7
        0xf -> :sswitch_8
        0x1a -> :sswitch_4
        0x1e -> :sswitch_9
        0x1f -> :sswitch_c
        0x20 -> :sswitch_d
        0x2e -> :sswitch_a
        0x30 -> :sswitch_b
        0x36 -> :sswitch_e
        0x40 -> :sswitch_2
        0x41 -> :sswitch_0
    .end sparse-switch
.end method
