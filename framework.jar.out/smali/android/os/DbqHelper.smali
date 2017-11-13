.class public Landroid/os/DbqHelper;
.super Ljava/lang/Object;
.source "DbqHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DbqHelper$DbqInfo;
    }
.end annotation


# static fields
.field private static final TAG_DBQ:Ljava/lang/String; = "DbqHelper"

.field private static final isEngBinary:Z

.field private static mInstance:Landroid/os/DbqHelper;


# instance fields
.field private mWhiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/DbqHelper$DbqInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    const/4 v0, 0x0

    sput-object v0, Landroid/os/DbqHelper;->mInstance:Landroid/os/DbqHelper;

    .line 85
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/DbqHelper;->isEngBinary:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/DbqHelper;->mWhiteList:Ljava/util/HashMap;

    .line 50
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/os/DbqHelper;
    .locals 2

    .prologue
    .line 55
    const-class v1, Landroid/os/DbqHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/os/DbqHelper;->mInstance:Landroid/os/DbqHelper;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/os/DbqHelper;

    invoke-direct {v0}, Landroid/os/DbqHelper;-><init>()V

    sput-object v0, Landroid/os/DbqHelper;->mInstance:Landroid/os/DbqHelper;

    .line 58
    :cond_0
    sget-object v0, Landroid/os/DbqHelper;->mInstance:Landroid/os/DbqHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 88
    sget-boolean v0, Landroid/os/DbqHelper;->isEngBinary:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addPackage(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "count"    # Ljava/lang/Integer;
    .param p3, "actEnable"    # Ljava/lang/Boolean;
    .param p4, "svEnable"    # Ljava/lang/Boolean;

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/DbqHelper$DbqInfo;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/os/DbqHelper$DbqInfo;-><init>(Landroid/os/DbqHelper;IZZ)V

    .line 63
    .local v0, "appInfo":Landroid/os/DbqHelper$DbqInfo;
    iget-object v1, p0, Landroid/os/DbqHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    .line 62
    .end local v0    # "appInfo":Landroid/os/DbqHelper$DbqInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized checkDbqEnabledforAct(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 78
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/DbqHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DbqHelper$DbqInfo;

    iget-object v0, v0, Landroid/os/DbqHelper$DbqInfo;->isActEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkDbqEnabledforSV(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/DbqHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DbqHelper$DbqInfo;

    iget-object v0, v0, Landroid/os/DbqHelper$DbqInfo;->isSvEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDbqCount(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/DbqHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DbqHelper$DbqInfo;

    iget v0, v0, Landroid/os/DbqHelper$DbqInfo;->bufferCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPackageExist(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 68
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/DbqHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showAllDBQInfo()V
    .locals 5

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/os/DbqHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 95
    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/DbqHelper$DbqInfo;>;"
    const-string v3, "DbqHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DBQ PackageName : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",  DBQValues : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/DbqHelper$DbqInfo;

    iget v2, v2, Landroid/os/DbqHelper$DbqInfo;->bufferCount:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/DbqHelper$DbqInfo;

    iget-object v2, v2, Landroid/os/DbqHelper$DbqInfo;->isActEnabled:Ljava/lang/Boolean;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/DbqHelper$DbqInfo;

    iget-object v2, v2, Landroid/os/DbqHelper$DbqInfo;->isSvEnabled:Ljava/lang/Boolean;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 94
    .end local v0    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/DbqHelper$DbqInfo;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 99
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method
