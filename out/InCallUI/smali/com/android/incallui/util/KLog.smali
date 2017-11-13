.class public Lcom/android/incallui/util/KLog;
.super Ljava/lang/Object;
.source "KLog.java"


# static fields
.field private static calendar:Ljava/util/Calendar;

.field private static mKLog:Lcom/android/incallui/util/KLog;


# instance fields
.field private mLogList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxLines:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/android/incallui/util/KLog;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Lcom/android/incallui/util/KLog;-><init>(I)V

    sput-object v0, Lcom/android/incallui/util/KLog;->mKLog:Lcom/android/incallui/util/KLog;

    .line 20
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/util/KLog;->calendar:Ljava/util/Calendar;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "maxLines"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/incallui/util/KLog;->mLogList:Ljava/util/LinkedList;

    .line 32
    iput p1, p0, Lcom/android/incallui/util/KLog;->mMaxLines:I

    .line 33
    return-void
.end method

.method public static dumpLog(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .prologue
    .line 27
    sget-object v0, Lcom/android/incallui/util/KLog;->mKLog:Lcom/android/incallui/util/KLog;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/incallui/util/KLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static logIt(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-object v0, Lcom/android/incallui/util/KLog;->mKLog:Lcom/android/incallui/util/KLog;

    invoke-virtual {v0, p0, p1}, Lcom/android/incallui/util/KLog;->log(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 56
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/incallui/util/KLog;->mLogList:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 57
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 56
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 60
    .restart local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized log(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    monitor-enter p0

    :try_start_0
    iget v4, p0, Lcom/android/incallui/util/KLog;->mMaxLines:I

    if-lez v4, :cond_1

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .local v2, "sb":Ljava/lang/StringBuilder;
    sget-object v4, Lcom/android/incallui/util/KLog;->calendar:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 40
    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v5, "%tm-%td %tH:%tM:%tS.%tL"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/android/incallui/util/KLog;->calendar:Ljava/util/Calendar;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Lcom/android/incallui/util/KLog;->calendar:Ljava/util/Calendar;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Lcom/android/incallui/util/KLog;->calendar:Ljava/util/Calendar;

    aput-object v8, v6, v7

    const/4 v7, 0x3

    sget-object v8, Lcom/android/incallui/util/KLog;->calendar:Ljava/util/Calendar;

    aput-object v8, v6, v7

    const/4 v7, 0x4

    sget-object v8, Lcom/android/incallui/util/KLog;->calendar:Ljava/util/Calendar;

    aput-object v8, v6, v7

    const/4 v7, 0x5

    sget-object v8, Lcom/android/incallui/util/KLog;->calendar:Ljava/util/Calendar;

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    instance-of v4, p1, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 43
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 47
    .local v3, "tag":Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/incallui/util/KLog;->mLogList:Ljava/util/LinkedList;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 48
    :goto_1
    iget-object v4, p0, Lcom/android/incallui/util/KLog;->mLogList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget v5, p0, Lcom/android/incallui/util/KLog;->mMaxLines:I

    if-le v4, v5, :cond_1

    .line 49
    iget-object v4, p0, Lcom/android/incallui/util/KLog;->mLogList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 36
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 45
    .restart local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .restart local v3    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 52
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    .end local v3    # "tag":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    return-void
.end method
