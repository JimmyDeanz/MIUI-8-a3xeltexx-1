.class Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;
.super Ljava/lang/Object;
.source "ResourcesInstanceWrapper.java"

# interfaces
.implements Lcom/samsung/android/multidisplay/common/datastructure/ContextRelatedInstance;


# static fields
.field private static final CALLSTACK_DUMP_PREFIX:Ljava/lang/String; = "                         "

.field public static final DEBUG:Z

.field public static final DUMP_DETAIL:Z

.field public static PROPAGATION_ENABLED:Z = false

.field public static final TAG:Ljava/lang/String; = "ResourcesInstanceHandler"


# instance fields
.field contextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field lastDisplayId:I

.field private mContextCallStack:Ljava/lang/String;

.field private mContextTimeStamp:J

.field private mResourcesCallStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mResourcesRefList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResourcesTimeStamps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    sget-boolean v0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceHandler;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->DEBUG:Z

    sget-boolean v0, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->DUMP_DETAIL:Z

    sput-boolean v0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->DUMP_DETAIL:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->PROPAGATION_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "_itemRef"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->lastDisplayId:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mContextTimeStamp:J

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mContextCallStack:Ljava/lang/String;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->contextRef:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->lastDisplayId:I

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesRefList:Ljava/util/LinkedList;

    sget-boolean v0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->DUMP_DETAIL:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesCallStacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesTimeStamps:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mContextTimeStamp:J

    const/16 v0, 0x19

    const-string v1, "                         "

    invoke-static {v0, v1}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mContextCallStack:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mContextCallStack:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->trimCallStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mContextCallStack:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public addResourcesRef(Landroid/content/res/Resources;)V
    .locals 10
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    .local v2, "refSize":I
    sget-boolean v6, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->DEBUG:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesRefList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v2

    :cond_2
    const/4 v4, 0x0

    .local v4, "tempResources":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesRefList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .local v5, "tempResourcesRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "tempResources":Landroid/content/res/Resources;
    check-cast v4, Landroid/content/res/Resources;

    .restart local v4    # "tempResources":Landroid/content/res/Resources;
    if-eqz v4, :cond_3

    if-ne v4, p1, :cond_3

    goto :goto_0

    .end local v5    # "tempResourcesRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_4
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .local v3, "resourcesRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    iget-object v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesRefList:Ljava/util/LinkedList;

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-boolean v6, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->DUMP_DETAIL:Z

    if-eqz v6, :cond_5

    const/16 v6, 0x19

    const-string v7, "                         "

    invoke-static {v6, v7}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "callStack":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->trimCallStack(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesCallStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesTimeStamps:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v0    # "callStack":Ljava/lang/String;
    :cond_5
    sget-boolean v6, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "ResourcesInstanceHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addDisplayRef() : res= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " refSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " final size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesRefList:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpCallStack"    # Z

    .prologue
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesRefList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .local v4, "resourcesRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/res/Resources;

    .local v3, "res":Landroid/content/res/Resources;
    iget-object v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesRefList:Ljava/util/LinkedList;

    invoke-virtual {v6, v4}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, "id":I
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-class v7, Landroid/content/res/Resources;

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " {"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v3, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->displayId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "@0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v6, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->DUMP_DETAIL:Z

    if-eqz v6, :cond_1

    new-instance v5, Ljava/util/Date;

    iget-object v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesTimeStamps:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    .local v5, "time":Ljava/util/Date;
    sget-object v7, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->TIME_STAMP_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v7

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->TIME_STAMP_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v5    # "time":Ljava/util/Date;
    :cond_1
    :goto_1
    const-string v6, "}"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v6, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->DUMP_DETAIL:Z

    if-eqz v6, :cond_0

    if-eqz p3, :cond_0

    iget-object v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesCallStacks:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v5    # "time":Ljava/util/Date;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .end local v5    # "time":Ljava/util/Date;
    :cond_2
    const-string v6, "null"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .end local v1    # "id":I
    .end local v3    # "res":Landroid/content/res/Resources;
    .end local v4    # "resourcesRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesRefList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "no reference"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public garbageCollect()V
    .locals 8

    .prologue
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .local v2, "removingResourcesRefList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;>;"
    const/4 v3, 0x0

    .local v3, "res":Landroid/content/res/Resources;
    iget-object v5, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesRefList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .local v4, "tempRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "res":Landroid/content/res/Resources;
    check-cast v3, Landroid/content/res/Resources;

    .restart local v3    # "res":Landroid/content/res/Resources;
    if-nez v3, :cond_0

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v4    # "tempRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_1
    const/4 v1, 0x0

    .local v1, "index":I
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    .restart local v4    # "tempRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    sget-boolean v5, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string v5, "ResourcesInstanceHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "garbageCollect() : removing "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v5, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesRefList:Ljava/util/LinkedList;

    invoke-virtual {v5, v4}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesRefList:Ljava/util/LinkedList;

    invoke-virtual {v5, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    sget-boolean v5, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->DUMP_DETAIL:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesCallStacks:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesTimeStamps:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .end local v4    # "tempRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_4
    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    sget-boolean v5, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "ResourcesInstanceHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "garbageCollect() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public getCallStack()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mContextCallStack:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->contextRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->contextRef:Ljava/lang/ref/WeakReference;

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
    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->getObject()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getResourcesRefSize()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .local v3, "resourcesRefSize":I
    iget-object v4, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesRefList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .local v2, "resourcesRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/res/Resources;

    .local v1, "res":Landroid/content/res/Resources;
    if-eqz v1, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1    # "res":Landroid/content/res/Resources;
    .end local v2    # "resourcesRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    :cond_1
    return v3
.end method

.method public release()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesRefList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    sget-boolean v0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->DUMP_DETAIL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesCallStacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesTimeStamps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v3, "sb":Ljava/lang/StringBuilder;
    const-string v5, "Context {"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_5

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

    if-eqz v5, :cond_1

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

    sget-boolean v5, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->DUMP_DETAIL:Z

    if-eqz v5, :cond_0

    new-instance v4, Ljava/util/Date;

    iget-wide v6, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mContextTimeStamp:J

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

    .end local v4    # "time":Ljava/util/Date;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " resourcesSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->getResourcesRefSize()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v1    # "id":I
    .end local v2    # "outerContext":Landroid/content/Context;
    :goto_1
    const-string v5, "}"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .restart local v2    # "outerContext":Landroid/content/Context;
    :cond_1
    instance-of v5, v2, Landroid/app/Service;

    if-eqz v5, :cond_2

    const-string v5, "s "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_2
    instance-of v5, v2, Landroid/app/Application;

    if-eqz v5, :cond_3

    const-string v5, "p "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_3
    instance-of v5, v2, Landroid/view/ContextThemeWrapper;

    if-eqz v5, :cond_4

    const-string v5, "t "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_4
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
    :cond_5
    const-string v5, "null"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public updateDisplay(IZ)V
    .locals 14
    .param p1, "displayId"    # I
    .param p2, "force"    # Z

    .prologue
    iget-object v11, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .local v1, "context":Landroid/content/Context;
    if-eqz v1, :cond_0

    sget-boolean v11, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->PROPAGATION_ENABLED:Z

    if-nez v11, :cond_1

    const-string v11, "ResourcesInstanceHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "BLOCKED :: updating display of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Landroid/content/Context;->getOuterContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v11, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->DEBUG:Z

    if-eqz v11, :cond_2

    const-string v11, "ResourcesInstanceHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update display of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Landroid/content/Context;->getOuterContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v10, 0x0

    .local v10, "token":Landroid/os/IBinder;
    instance-of v11, v1, Landroid/app/Activity;

    if-eqz v11, :cond_3

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    .local v0, "a":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v10

    .end local v0    # "a":Landroid/app/Activity;
    :cond_3
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v3

    .local v3, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    invoke-virtual {v1, p1}, Landroid/content/Context;->getDisplayAdjustments(I)Landroid/view/DisplayAdjustments;

    move-result-object v11

    invoke-virtual {v3, p1, v11}, Landroid/hardware/display/DisplayManagerGlobal;->getCompatibleDisplay(ILandroid/view/DisplayAdjustments;)Landroid/view/Display;

    move-result-object v2

    .local v2, "display":Landroid/view/Display;
    if-eqz v2, :cond_0

    iget-object v11, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesRefList:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/ref/WeakReference;

    .local v7, "resourcesRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/res/Resources;

    .local v6, "res":Landroid/content/res/Resources;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->displayId:I

    if-eq v11, p1, :cond_4

    if-nez p2, :cond_5

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->displayId:I

    iget v12, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->lastDisplayId:I

    if-ne v11, v12, :cond_4

    :cond_5
    sget-boolean v11, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->DEBUG:Z

    if-eqz v11, :cond_7

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v11, 0x80

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v8, "sb":Ljava/lang/StringBuilder;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "{d"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v12

    iget v12, v12, Landroid/content/res/Configuration;->displayId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "@0x"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesRefList:Ljava/util/LinkedList;

    invoke-virtual {v11, v7}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .local v5, "id":I
    sget-boolean v11, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->DUMP_DETAIL:Z

    if-eqz v11, :cond_6

    new-instance v9, Ljava/util/Date;

    iget-object v11, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->mResourcesTimeStamps:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-direct {v9, v12, v13}, Ljava/util/Date;-><init>(J)V

    .local v9, "time":Ljava/util/Date;
    sget-object v12, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->TIME_STAMP_FORMAT:Ljava/text/SimpleDateFormat;

    monitor-enter v12

    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v13, Lcom/samsung/android/multidisplay/common/ContextRelationManager;->TIME_STAMP_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v13, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9    # "time":Ljava/util/Date;
    :cond_6
    const-string v11, "}"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "ResourcesInstanceHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update display of "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to d"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5    # "id":I
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/view/Display;)V

    goto/16 :goto_1

    .restart local v5    # "id":I
    .restart local v8    # "sb":Ljava/lang/StringBuilder;
    .restart local v9    # "time":Ljava/util/Date;
    :catchall_0
    move-exception v11

    :try_start_1
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v11

    .end local v5    # "id":I
    .end local v6    # "res":Landroid/content/res/Resources;
    .end local v7    # "resourcesRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources;>;"
    .end local v8    # "sb":Ljava/lang/StringBuilder;
    .end local v9    # "time":Ljava/util/Date;
    :cond_8
    iput p1, p0, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->lastDisplayId:I

    goto/16 :goto_0
.end method

.method public varargs updateRelatedInfo([Ljava/lang/Object;)V
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    :try_start_0
    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, "displayId":I
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/multidisplay/common/datastructure/ResourcesInstanceWrapper;->updateDisplay(IZ)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "displayId":I
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
