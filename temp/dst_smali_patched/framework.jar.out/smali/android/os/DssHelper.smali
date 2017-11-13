.class public Landroid/os/DssHelper;
.super Ljava/lang/Object;
.source "DssHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DssHelper$DssAppDate;
    }
.end annotation


# static fields
.field public static final DSS_ENABLED:Z = true

.field static final TAG:Ljava/lang/String; = "DssHelper"

.field private static mInstance:Landroid/os/DssHelper;


# instance fields
.field private final DEFAULT_FACTOR:F

.field mWhiteAdssList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/DssHelper$DssAppDate;",
            ">;"
        }
    .end annotation
.end field

.field mWhiteList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/DssHelper$DssAppDate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/os/DssHelper;->mInstance:Landroid/os/DssHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Landroid/os/DssHelper;->DEFAULT_FACTOR:F

    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/os/DssHelper;
    .locals 2

    .prologue
    const-class v1, Landroid/os/DssHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/os/DssHelper;->mInstance:Landroid/os/DssHelper;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/DssHelper;

    invoke-direct {v0}, Landroid/os/DssHelper;-><init>()V

    sput-object v0, Landroid/os/DssHelper;->mInstance:Landroid/os/DssHelper;

    :cond_0
    sget-object v0, Landroid/os/DssHelper;->mInstance:Landroid/os/DssHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addAdssPackageByTransact(Ljava/lang/String;F)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/DssHelper$DssAppDate;

    invoke-direct {v0, p0}, Landroid/os/DssHelper$DssAppDate;-><init>(Landroid/os/DssHelper;)V

    .local v0, "dssAppData":Landroid/os/DssHelper$DssAppDate;
    invoke-virtual {v0, p2}, Landroid/os/DssHelper$DssAppDate;->addPackage(F)V

    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "dssAppData":Landroid/os/DssHelper$DssAppDate;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addPackage(Ljava/lang/String;F)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F

    .prologue
    monitor-enter p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/DssHelper;->removePackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/os/DssHelper;->addPackageData(Ljava/lang/String;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addPackageByTransact(Ljava/lang/String;F)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F

    .prologue
    monitor-enter p0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/DssHelper;->removePackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/os/DssHelper;->addPackageData(Ljava/lang/String;F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addPackageData(Ljava/lang/String;F)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/DssHelper$DssAppDate;

    invoke-direct {v0, p0}, Landroid/os/DssHelper$DssAppDate;-><init>(Landroid/os/DssHelper;)V

    .local v0, "dssAppData":Landroid/os/DssHelper$DssAppDate;
    invoke-virtual {v0, p2}, Landroid/os/DssHelper$DssAppDate;->addPackage(F)V

    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "dssAppData":Landroid/os/DssHelper$DssAppDate;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized addPackageData(Ljava/lang/String;FZ)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "scalingFactor"    # F
    .param p3, "enableSIOP"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/DssHelper$DssAppDate;

    invoke-direct {v0, p0}, Landroid/os/DssHelper$DssAppDate;-><init>(Landroid/os/DssHelper;)V

    .local v0, "dssAppData":Landroid/os/DssHelper$DssAppDate;
    invoke-virtual {v0, p2, p3}, Landroid/os/DssHelper$DssAppDate;->addPackage(FZ)V

    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "dssAppData":Landroid/os/DssHelper$DssAppDate;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getScalingFactor()F
    .locals 1

    .prologue
    monitor-enter p0

    const/high16 v0, 0x3f000000    # 0.5f

    monitor-exit p0

    return v0
.end method

.method public declared-synchronized getScalingFactor(Ljava/lang/String;)F
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DssHelper$DssAppDate;

    .local v0, "result":Landroid/os/DssHelper$DssAppDate;
    iget v1, v0, Landroid/os/DssHelper$DssAppDate;->mScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/os/DssHelper$DssAppDate;
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DssHelper$DssAppDate;

    .restart local v0    # "result":Landroid/os/DssHelper$DssAppDate;
    iget v1, v0, Landroid/os/DssHelper$DssAppDate;->mScale:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "result":Landroid/os/DssHelper$DssAppDate;
    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getScalingFactorAdss(Ljava/lang/String;)F
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DssHelper$DssAppDate;

    iget v0, v0, Landroid/os/DssHelper$DssAppDate;->mScale:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DssHelper$DssAppDate;

    iget v0, v0, Landroid/os/DssHelper$DssAppDate;->mScale:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DssHelper$DssAppDate;

    iget v0, v0, Landroid/os/DssHelper$DssAppDate;->mScale:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWhiteList()Ljava/lang/StringBuilder;
    .locals 8

    .prologue
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .local v5, "sb":Ljava/lang/StringBuilder;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "dss0_5List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "dss0_75List":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .local v2, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/DssHelper$DssAppDate;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/DssHelper$DssAppDate;

    iget v6, v6, Landroid/os/DssHelper$DssAppDate;->mScale:F

    const/high16 v7, 0x3f000000    # 0.5f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/DssHelper$DssAppDate;

    iget v6, v6, Landroid/os/DssHelper$DssAppDate;->mScale:F

    const/high16 v7, 0x3f400000    # 0.75f

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v2    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/DssHelper$DssAppDate;>;"
    :cond_2
    const-string v6, "DSS 0.5 Group\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "=============\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v4    # "packageName":Ljava/lang/String;
    :cond_3
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "DSS 0.75 Group\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "=============\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .restart local v4    # "packageName":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v4    # "packageName":Ljava/lang/String;
    :cond_4
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v5
.end method

.method public declared-synchronized isAdss(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isPackageExist(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isSIOP(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/DssHelper$DssAppDate;

    .local v0, "result":Landroid/os/DssHelper$DssAppDate;
    iget-boolean v1, v0, Landroid/os/DssHelper$DssAppDate;->mEnableSIOP:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/os/DssHelper$DssAppDate;
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeAdssPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteAdssList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removePackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized showAllDSSInfo()V
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/os/DssHelper;->mWhiteList:Ljava/util/HashMap;

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

    .local v0, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/DssHelper$DssAppDate;>;"
    const-string v3, "DssHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DSS PackageName : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",  Scale : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/DssHelper$DssAppDate;

    iget v2, v2, Landroid/os/DssHelper$DssAppDate;->mScale:F

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ",  SIOP : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/DssHelper$DssAppDate;

    iget-boolean v2, v2, Landroid/os/DssHelper$DssAppDate;->mEnableSIOP:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/DssHelper$DssAppDate;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method
