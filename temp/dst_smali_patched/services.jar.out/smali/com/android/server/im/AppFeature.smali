.class Lcom/android/server/im/AppFeature;
.super Ljava/lang/Thread;
.source "AppFeature.java"


# static fields
.field public static final DEBUG_ELASTIC:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLatch:Ljava/util/concurrent/CountDownLatch;

.field mSourceSpecificFeatureList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/im/InjectionFeatureInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mTargetSpecificFeatureList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/server/im/InjectionManagerService;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -AppFeature"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/im/AppFeature;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "latch"    # Ljava/util/concurrent/CountDownLatch;

    .prologue
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/im/AppFeature;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/im/AppFeature;->mTargetSpecificFeatureList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/im/AppFeature;->mSourceSpecificFeatureList:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/server/im/AppFeature;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/im/AppFeature;->mLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/im/AppFeature;Lcom/android/server/im/InjectionFeatureInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/im/AppFeature;
    .param p1, "x1"    # Lcom/android/server/im/InjectionFeatureInfo;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/im/AppFeature;->addToTargetSpecificMap(Lcom/android/server/im/InjectionFeatureInfo;)V

    return-void
.end method

.method private addToSourceSpecificMap(Lcom/android/server/im/InjectionFeatureInfo;)V
    .locals 3
    .param p1, "featureInfo"    # Lcom/android/server/im/InjectionFeatureInfo;

    .prologue
    iget-object v1, p0, Lcom/android/server/im/AppFeature;->mSourceSpecificFeatureList:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/im/InjectionFeatureInfo;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, "feature":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/im/InjectionFeatureInfo;>;"
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "feature":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/im/InjectionFeatureInfo;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0    # "feature":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/im/InjectionFeatureInfo;>;"
    iget-object v1, p0, Lcom/android/server/im/AppFeature;->mSourceSpecificFeatureList:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/server/im/InjectionFeatureInfo;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addToTargetSpecificMap(Lcom/android/server/im/InjectionFeatureInfo;)V
    .locals 6
    .param p1, "featureInfo"    # Lcom/android/server/im/InjectionFeatureInfo;

    .prologue
    iget-object v4, p0, Lcom/android/server/im/AppFeature;->mTargetSpecificFeatureList:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/server/im/InjectionFeatureInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .local v0, "feature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "feature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .restart local v0    # "feature":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    iget-object v4, p0, Lcom/android/server/im/AppFeature;->mTargetSpecificFeatureList:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/server/im/InjectionFeatureInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v4, p1, Lcom/android/server/im/InjectionFeatureInfo;->targetClass:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .local v1, "featureType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-nez v1, :cond_1

    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "featureType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .restart local v1    # "featureType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v4, p1, Lcom/android/server/im/InjectionFeatureInfo;->targetClass:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v4, p1, Lcom/android/server/im/InjectionFeatureInfo;->featureCategory:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .local v2, "sourceDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "sourceDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "sourceDetails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p1, Lcom/android/server/im/InjectionFeatureInfo;->featureCategory:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/server/im/InjectionFeatureInfo;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/im/InjectionFeatureInfo;->sourceClass:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "sourceInfo":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_0
    return-void

    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1}, Lcom/android/server/im/AppFeature;->addToSourceSpecificMap(Lcom/android/server/im/InjectionFeatureInfo;)V

    goto :goto_0
.end method

.method private fillPkgList(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 12
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v11, 0x0

    iget-object v10, p0, Lcom/android/server/im/AppFeature;->mTargetSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v10, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/HashMap;

    .local v9, "targetClassMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v10

    if-lez v10, :cond_4

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .local v8, "targetClass":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .local v6, "sourceFeatureCategory":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, "category":Ljava/lang/String;
    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .local v7, "sourceFeatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "feature":Ljava/lang/String;
    const-string v10, "#"

    invoke-virtual {v1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "featureInfo":[Ljava/lang/String;
    aget-object v10, v2, v11

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    aget-object v10, v2, v11

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "category":Ljava/lang/String;
    .end local v1    # "feature":Ljava/lang/String;
    .end local v2    # "featureInfo":[Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "sourceFeatureCategory":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v7    # "sourceFeatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "targetClass":Ljava/lang/String;
    :cond_4
    return-void
.end method


# virtual methods
.method public forceStopTarget(Ljava/lang/String;)V
    .locals 3
    .param p1, "sourcePackage"    # Ljava/lang/String;

    .prologue
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/im/AppFeature;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/im/AppFeature;->startCurrentPackage(Ljava/lang/String;)V

    .end local v0    # "am":Landroid/app/ActivityManager;
    :cond_0
    return-void
.end method

.method getCategorisedPackageFeature(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "featureCategory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/im/AppFeature;->mTargetSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/im/AppFeature;->mTargetSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/im/AppFeature;->mTargetSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/im/AppFeature;->mTargetSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCoreFeaturePkgList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/im/AppFeature;->mTargetSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v1, p1}, Lcom/android/server/im/AppFeature;->fillPkgList(Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_2

    .end local v1    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-object v1

    .restart local v1    # "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    iget-object v3, p0, Lcom/android/server/im/AppFeature;->mSourceSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/im/AppFeature;->mSourceSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, "featureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/im/InjectionFeatureInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/im/InjectionFeatureInfo;

    iget-object v2, v3, Lcom/android/server/im/InjectionFeatureInfo;->targetPackage:Ljava/lang/String;

    .local v2, "targetPackageName":Ljava/lang/String;
    invoke-direct {p0, v1, v2}, Lcom/android/server/im/AppFeature;->fillPkgList(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "featureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/im/InjectionFeatureInfo;>;"
    .end local v2    # "targetPackageName":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getCorePackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/im/AppFeature;->mSourceSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, "featureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/im/InjectionFeatureInfo;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/im/InjectionFeatureInfo;

    iget-object v1, v1, Lcom/android/server/im/InjectionFeatureInfo;->targetPackage:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/im/AppFeature;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getPackageFeatures(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/im/AppFeature;->mTargetSpecificFeatureList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method getTargetSpecificList()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;>;>;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/im/AppFeature;->mTargetSpecificFeatureList:Ljava/util/HashMap;

    return-object v0
.end method

.method public removeFeatureFromList(Ljava/lang/String;)Z
    .locals 17
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/AppFeature;->mSourceSpecificFeatureList:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .local v4, "featureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/im/InjectionFeatureInfo;>;"
    if-nez v4, :cond_0

    const/4 v15, 0x0

    :goto_0
    return v15

    :cond_0
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .local v13, "targetPackageSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/im/InjectionFeatureInfo;

    .local v7, "info":Lcom/android/server/im/InjectionFeatureInfo;
    const/4 v9, 0x0

    .local v9, "removed":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/AppFeature;->mTargetSpecificFeatureList:Ljava/util/HashMap;

    iget-object v0, v7, Lcom/android/server/im/InjectionFeatureInfo;->targetPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/HashMap;

    .local v10, "sourceClassList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    iget-object v15, v7, Lcom/android/server/im/InjectionFeatureInfo;->targetClass:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/HashMap;

    .local v11, "sourceFeatureCategory":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v15, v7, Lcom/android/server/im/InjectionFeatureInfo;->featureCategory:Ljava/lang/String;

    invoke-virtual {v11, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    .local v12, "sourceFeatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/AppFeature;->mTargetSpecificFeatureList:Ljava/util/HashMap;

    iget-object v0, v7, Lcom/android/server/im/InjectionFeatureInfo;->targetPackage:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_2

    const/4 v9, 0x1

    :cond_2
    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    :cond_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_4

    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v9, 0x1

    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .local v8, "removalItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .local v3, "featureInfo":Ljava/lang/String;
    const-string v15, "#"

    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, "feature":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v2, v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v2    # "feature":[Ljava/lang/String;
    .end local v3    # "featureInfo":Ljava/lang/String;
    :cond_6
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .restart local v3    # "featureInfo":Ljava/lang/String;
    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v15, v7, Lcom/android/server/im/InjectionFeatureInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v3    # "featureInfo":Ljava/lang/String;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "info":Lcom/android/server/im/InjectionFeatureInfo;
    .end local v8    # "removalItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9    # "removed":Z
    .end local v10    # "sourceClassList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;>;"
    .end local v11    # "sourceFeatureCategory":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    .end local v12    # "sourceFeatureList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/AppFeature;->mContext:Landroid/content/Context;

    const-string v16, "activity"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .local v1, "am":Landroid/app/ActivityManager;
    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .local v14, "targetProcess":Ljava/lang/String;
    invoke-virtual {v1, v14}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/im/AppFeature;->startCurrentPackage(Ljava/lang/String;)V

    goto :goto_3

    .end local v14    # "targetProcess":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/im/AppFeature;->mSourceSpecificFeatureList:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v15, 0x1

    goto/16 :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/android/server/im/AppFeature$1;

    invoke-direct {v0, p0}, Lcom/android/server/im/AppFeature$1;-><init>(Lcom/android/server/im/AppFeature;)V

    iput-object v0, p0, Lcom/android/server/im/AppFeature;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/im/AppFeature;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public startCurrentPackage(Ljava/lang/String;)V
    .locals 9
    .param p1, "sourcePackage"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    iget-object v6, p0, Lcom/android/server/im/AppFeature;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v5

    .local v5, "taskinfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const-string v4, ""

    .local v4, "packageName1":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .local v3, "packageName":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v8, :cond_0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "com.example.weee"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/android/server/im/AppFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .local v2, "i":Landroid/content/Intent;
    if-eqz v2, :cond_2

    const/high16 v6, 0x10000000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/im/AppFeature;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "i":Landroid/content/Intent;
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
