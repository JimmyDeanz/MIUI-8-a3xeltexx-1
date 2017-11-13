.class public Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;
.super Ljava/lang/Object;
.source "CocktailBarStatePolicyController.java"

# interfaces
.implements Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

.field private mStateListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const-class v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mInstance:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;

    invoke-direct {v0, p1, p0}, Lcom/android/server/cocktailbar/policy/state/EdgeCocktailBarStatePolicy;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    :goto_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->initialize()V

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;

    invoke-direct {v0, p1, p0}, Lcom/android/server/cocktailbar/policy/state/OverlayCocktailBarStatePolicy;-><init>(Landroid/content/Context;Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy$OnCocktailBarStateListener;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;)Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mInstance:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    invoke-direct {v0, p0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mInstance:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;

    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mInstance:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getValidVisibility(I)I
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->getLockState()I

    move-result v0

    .local v0, "lockstate":I
    if-ne p1, v1, :cond_2

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    .end local p1    # "visibility":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "visibility":I
    :cond_1
    and-int/lit8 v1, v0, 0x6

    if-eqz v1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    move p1, v1

    goto :goto_0
.end method


# virtual methods
.method public activateCocktailBar()V
    .locals 2

    .prologue
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    const-string v1, "activateCocktailBar"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateActivate(Z)V

    return-void
.end method

.method public deactivateCocktailBar()V
    .locals 2

    .prologue
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    const-string v1, "deactivateCocktailBar"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateActivate(Z)V

    return-void
.end method

.method public dump()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v2, "[CocktailBarStatePolicy] "

    .local v2, "result":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .local v1, "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->dump()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v4}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->dump()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v0

    return-object v0
.end method

.method public getWindowType()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->getWindowType()I

    move-result v0

    return v0
.end method

.method public hideAndLockCocktailBar(ZI)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "id"    # I

    .prologue
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideAndLockCocktailBar : enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    const/4 v1, 0x2

    invoke-interface {v0, v1, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->setLockState(IZI)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->refreshState()V

    return-void
.end method

.method public notifyCocktailBarState(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z
    .locals 5
    .param p1, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    sget-boolean v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyCocktailBarState: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " backgroundType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showtimeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->mode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " activate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " windowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changeFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget v2, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    const/16 v4, 0x80

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .local v1, "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .restart local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    goto :goto_1

    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    return v2
.end method

.method public notifyCocktailBarStateExceptCallingPackage(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;Ljava/lang/String;)Z
    .locals 5
    .param p1, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    sget-boolean v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyCocktailBarStateExceptCallingPackage: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " windowType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " changeFlag = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget v2, p1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->changeFlag:I

    const/16 v4, 0x80

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .local v1, "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    if-eqz p2, :cond_2

    iget-object v2, v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .restart local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    invoke-virtual {v1, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    goto :goto_1

    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    return v2
.end method

.method public notifyCocktailBarStateToBinder(Landroid/os/IBinder;Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)Z
    .locals 5
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "stateInfo"    # Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    .prologue
    sget-boolean v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyCocktailBarStateToBinder: visibility = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->visibility:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " backgroundType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->backgroundType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " position = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " showtimeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->showTimeout:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .local v1, "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    iget-object v2, v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->onCocktailBarStateChanged(Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;)V

    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :cond_2
    monitor-exit v3

    const/4 v2, 0x1

    return v2

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerCocktailBarStateListenerCallback(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 9
    .param p1, "binder"    # Landroid/os/IBinder;
    .param p2, "component"    # Landroid/content/ComponentName;

    .prologue
    iget-object v8, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .local v0, "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    const-string v2, "registerListenerCallback : already registered"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    :goto_0
    return-void

    .end local v0    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :cond_1
    new-instance v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;-><init>(Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;Landroid/os/IBinder;Landroid/content/ComponentName;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v0    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    iget-object v2, v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->notifyStateToBinder(Landroid/os/IBinder;)V

    monitor-exit v8

    goto :goto_0

    .end local v0    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .restart local v0    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v6

    .local v6, "e":Landroid/os/RemoteException;
    :try_start_3
    sget-object v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerListenerCallback : exception in linkToDeath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public restrictCocktailBar(ZI)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "id"    # I

    .prologue
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restrictCocktailBar : enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->setLockState(IZI)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->refreshState()V

    return-void
.end method

.method public showAndLockCocktailBar(ZI)V
    .locals 4
    .param p1, "enable"    # Z
    .param p2, "visibility"    # I

    .prologue
    const/4 v3, 0x1

    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showAndLockCocktailBar : enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0, v3, p1, v3}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->setLockState(IZI)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-direct {p0, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->getValidVisibility(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateVisibility(I)V

    return-void
.end method

.method public unregisterCocktailBarStateListenerCallback(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    iget-object v4, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    monitor-enter v4

    const/4 v2, 0x0

    .local v2, "listenerInfo":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;

    .local v1, "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    if-eqz v1, :cond_0

    iget-object v3, v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v1

    goto :goto_0

    .end local v1    # "listener":Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController$CocktailBarStateListenerInfo;
    :cond_1
    if-nez v2, :cond_2

    sget-object v3, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    const-string v5, "registerListenerCallback : cannot find the matched listener"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    if-eqz v2, :cond_4

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_4
    iget-object v3, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    monitor-exit v4

    goto :goto_1

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public updateCocktailBarStatus(ZZ)V
    .locals 3
    .param p1, "shift"    # Z
    .param p2, "dimBackground"    # Z

    .prologue
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCocktailBarStatus: shift = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dimBackground = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0, p1, p2}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateState(ZZ)V

    return-void
.end method

.method public updatePosition(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePosition: position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updatePosition(I)V

    return-void
.end method

.method public updateStateFromSystem(I)V
    .locals 3
    .param p1, "windowType"    # I

    .prologue
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStateFromSystem: windowType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateStateFromSystem(I)V

    return-void
.end method

.method public updateVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    sget-boolean v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVisibility: visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v0, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateVisibility(I)V

    return-void
.end method

.method public updateWindowType(Ljava/lang/String;I)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "windowType"    # I

    .prologue
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->getCocktailBarStateInfo()Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    move-result-object v1

    iget v0, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    .local v0, "currentWindowType":I
    sget-boolean v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWindowType: currentWindowType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " windowType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    packed-switch p2, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_2
    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v1, p2, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateCocktailBarWindowType(ILjava/lang/String;)V

    goto :goto_0

    :pswitch_1
    if-ne v0, p2, :cond_3

    sget-object v1, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWindowType: current window type is requested window type("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPolicy:Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;

    invoke-interface {v1, p2, p1}, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicy;->updateCocktailBarWindowType(ILjava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/cocktailbar/policy/state/CocktailBarStatePolicyController;->mPackageName:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
