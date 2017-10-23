.class Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocaleChangeDump"
.end annotation


# static fields
.field private static final MAX_NUM_OF_LOCALE_CHANGED_HISTORY_DUMP:I = 0x5


# instance fields
.field private mCountPointer:I

.field private mDate:Ljava/util/Date;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field mLocaleChangedHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;",
            ">;"
        }
    .end annotation
.end field

.field mStoredCallingPid:I

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30644
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30635
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss.SSS zzz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 30636
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mDate:Ljava/util/Date;

    .line 30638
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mLocaleChangedHistory:Ljava/util/ArrayList;

    .line 30640
    iput v2, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mStoredCallingPid:I

    .line 30642
    iput v2, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mCountPointer:I

    .line 30644
    return-void
.end method


# virtual methods
.method public clearCallerPid()V
    .locals 1

    .prologue
    .line 30669
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mStoredCallingPid:I

    .line 30670
    return-void
.end method

.method public dumpLocaleChangedHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 30673
    const-string v3, "ACTIVITY MANAGER LOCALE CHANGED HISTORY"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30675
    iget v3, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mCountPointer:I

    if-nez v3, :cond_1

    .line 30676
    const-string v3, " (nothing) "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30698
    :cond_0
    return-void

    .line 30678
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v3, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mCountPointer:I

    if-ge v0, v3, :cond_0

    .line 30679
    iget v3, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mCountPointer:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    rem-int/lit8 v1, v3, 0x5

    .line 30680
    .local v1, "idx":I
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mLocaleChangedHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;

    iget-object v2, v3, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;->mMsg:Ljava/lang/String;

    .line 30682
    .local v2, "msg":Ljava/lang/String;
    const-string v3, "# %d "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mCountPointer:I

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30684
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mLocaleChangedHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;->mTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 30685
    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mDate:Ljava/util/Date;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mLocaleChangedHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;

    iget-wide v6, v3, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;->mSystemTimeMillis:J

    invoke-virtual {v4, v6, v7}, Ljava/util/Date;->setTime(J)V

    .line 30686
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30687
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 30688
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caller : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mLocaleChangedHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;->mCaller:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 30690
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mLocaleChangedHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;->mCallstack:Ljava/lang/RuntimeException;

    invoke-virtual {v3, p2}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 30691
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 30693
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 30678
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public recordLocaleChangedHistory(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    .prologue
    .line 30647
    const-string v2, "Locale is changed. (%s)->(%s) callingPid:%d\n"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    iget v5, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mStoredCallingPid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 30649
    .local v6, "msg":Ljava/lang/String;
    const/4 v8, 0x0

    .line 30651
    .local v8, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v3

    .line 30652
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mStoredCallingPid:I

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    move-object v8, v0

    .line 30653
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30654
    if-nez v8, :cond_0

    const-string v7, "EMPTY_PROC"

    .line 30656
    .local v7, "proc_str":Ljava/lang/String;
    :goto_0
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mCountPointer:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 30657
    iget-object v9, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mLocaleChangedHistory:Ljava/util/ArrayList;

    iget v10, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mCountPointer:I

    new-instance v2, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;-><init>(Lcom/android/server/am/ActivityManagerService;JLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 30661
    :goto_1
    iget v2, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mCountPointer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mCountPointer:I

    .line 30662
    return-void

    .line 30653
    .end local v7    # "proc_str":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 30654
    :cond_0
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 30659
    .restart local v7    # "proc_str":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mLocaleChangedHistory:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mCountPointer:I

    rem-int/lit8 v3, v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService$LocaleChangeDumpData;->updateData(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setCallerPid(I)V
    .locals 0
    .param p1, "pid"    # I

    .prologue
    .line 30665
    iput p1, p0, Lcom/android/server/am/ActivityManagerService$LocaleChangeDump;->mStoredCallingPid:I

    .line 30666
    return-void
.end method
