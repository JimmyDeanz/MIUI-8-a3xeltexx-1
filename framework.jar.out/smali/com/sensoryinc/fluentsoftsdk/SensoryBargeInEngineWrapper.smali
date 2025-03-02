.class public Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;
.super Ljava/lang/Object;
.source "SensoryBargeInEngineWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;
    .locals 3

    .prologue
    .line 12
    const-class v1, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    if-nez v0, :cond_1

    .line 14
    sget-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->TAG:Ljava/lang/String;

    const-string v2, "getInstance() : make new SensoryBargeInEngine"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->init()I

    move-result v0

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    invoke-direct {v0}, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;-><init>()V

    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    .line 29
    :goto_0
    sget-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->uniqueInstance:Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v1

    return-object v0

    .line 20
    :cond_0
    :try_start_1
    sget-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->TAG:Ljava/lang/String;

    const-string v2, "cannot load libSensoryBargeInEngien.so"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const/4 v0, 0x0

    goto :goto_1

    .line 26
    :cond_1
    sget-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngineWrapper;->TAG:Ljava/lang/String;

    const-string v2, "getInstance() : get existed SensoryBargeInEngine"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 12
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
