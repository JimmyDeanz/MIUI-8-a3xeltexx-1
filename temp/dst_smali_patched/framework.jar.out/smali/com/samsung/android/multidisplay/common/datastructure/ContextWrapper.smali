.class Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;
.super Ljava/lang/Object;
.source "ContextWrapper.java"

# interfaces
.implements Lcom/samsung/android/multidisplay/common/datastructure/RelationObject;


# static fields
.field private static final CALLSTACK_DUMP_PREFIX:Ljava/lang/String; = "                         "

.field public static final DEBUG:Z

.field public static final DUMP_DETAIL:Z

.field public static final TAG:Ljava/lang/String; = "ContextRelationGraph"


# instance fields
.field callStack:Ljava/lang/String;

.field itemRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field timeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->DEBUG:Z

    sget-boolean v0, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->DUMP_DETAIL:Z

    sput-boolean v0, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->DUMP_DETAIL:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "_itemRef"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->timeStamp:J

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->callStack:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->itemRef:Ljava/lang/ref/WeakReference;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->timeStamp:J

    sget-boolean v0, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->DUMP_DETAIL:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    const-string v1, "                         "

    invoke-static {v0, v1}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->callStack:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->callStack:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->trimCallStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->callStack:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p1, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->getObject()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->getObject()Landroid/content/Context;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
.end method

.method public getCallStack()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->callStack:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->itemRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->itemRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->getObject()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v5, "{"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->itemRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Context;->getOuterContext()Landroid/content/Context;

    move-result-object v2

    .local v2, "outerContext":Landroid/content/Context;
    instance-of v5, v2, Landroid/app/Activity;

    if-eqz v5, :cond_0

    const-string v5, "a "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .local v1, "id":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->timeStamp:J

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    .local v4, "time":Ljava/util/Date;
    sget-object v6, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->TIME_STAMP_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v6

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v7, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->TIME_STAMP_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v7, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "id":I
    .end local v2    # "outerContext":Landroid/content/Context;
    .end local v4    # "time":Ljava/util/Date;
    :goto_1
    const-string v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .restart local v2    # "outerContext":Landroid/content/Context;
    :cond_0
    instance-of v5, v2, Landroid/app/Service;

    if-eqz v5, :cond_1

    const-string v5, "s "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    instance-of v5, v2, Landroid/app/Application;

    if-eqz v5, :cond_2

    const-string v5, "p "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    instance-of v5, v2, Landroid/view/ContextThemeWrapper;

    if-eqz v5, :cond_3

    const-string v5, "t "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const-string v5, "c "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .restart local v1    # "id":I
    .restart local v4    # "time":Ljava/util/Date;
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .end local v1    # "id":I
    .end local v2    # "outerContext":Landroid/content/Context;
    .end local v4    # "time":Ljava/util/Date;
    :cond_4
    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public varargs updateRelatedInfo([Ljava/lang/Object;)V
    .locals 10
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    :try_start_0
    array-length v7, p1

    if-lez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->itemRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    .local v2, "context":Landroid/content/Context;
    if-eqz v2, :cond_2

    sget-boolean v7, Lcom/samsung/android/multidisplay/common/datastructure/ContextWrapper;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "ContextRelationGraph"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update context of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/Context;->getOuterContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v6, 0x0

    .local v6, "token":Landroid/os/IBinder;
    const/4 v7, 0x0

    aget-object v7, p1, v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .local v4, "displayId":I
    instance-of v7, v2, Landroid/app/Activity;

    if-eqz v7, :cond_1

    move-object v0, v2

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    .local v1, "a":Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v6

    .end local v1    # "a":Landroid/app/Activity;
    :cond_1
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v5

    .local v5, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual {v2, v4}, Landroid/content/Context;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v7

    invoke-virtual {v5, v4, v7}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v3

    .local v3, "display":Landroid/view/Display;
    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Landroid/content/Context;->setDisplay(Landroid/view/Display;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "context":Landroid/content/Context;
    .end local v3    # "display":Landroid/view/Display;
    .end local v4    # "displayId":I
    .end local v5    # "dm":Landroid/hardware/display/DisplayManagerGlobal;
    .end local v6    # "token":Landroid/os/IBinder;
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v7

    goto :goto_0
.end method
