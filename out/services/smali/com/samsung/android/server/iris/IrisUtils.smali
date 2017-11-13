.class public Lcom/samsung/android/server/iris/IrisUtils;
.super Ljava/lang/Object;
.source "IrisUtils.java"


# static fields
.field private static sInstance:Lcom/samsung/android/server/iris/IrisUtils;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field private final mUsers:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/samsung/android/server/iris/IrisesUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/iris/IrisUtils;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/iris/IrisUtils;->mUsers:Landroid/util/SparseArray;

    .line 56
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/server/iris/IrisUtils;
    .locals 2

    .prologue
    .line 47
    sget-object v1, Lcom/samsung/android/server/iris/IrisUtils;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/samsung/android/server/iris/IrisUtils;->sInstance:Lcom/samsung/android/server/iris/IrisUtils;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/samsung/android/server/iris/IrisUtils;

    invoke-direct {v0}, Lcom/samsung/android/server/iris/IrisUtils;-><init>()V

    sput-object v0, Lcom/samsung/android/server/iris/IrisUtils;->sInstance:Lcom/samsung/android/server/iris/IrisUtils;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    sget-object v0, Lcom/samsung/android/server/iris/IrisUtils;->sInstance:Lcom/samsung/android/server/iris/IrisUtils;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getStateForUser(Landroid/content/Context;I)Lcom/samsung/android/server/iris/IrisesUserState;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .prologue
    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisUtils;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/iris/IrisesUserState;

    .line 101
    .local v0, "state":Lcom/samsung/android/server/iris/IrisesUserState;
    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/samsung/android/server/iris/IrisesUserState;

    .end local v0    # "state":Lcom/samsung/android/server/iris/IrisesUserState;
    invoke-direct {v0, p1, p2}, Lcom/samsung/android/server/iris/IrisesUserState;-><init>(Landroid/content/Context;I)V

    .line 103
    .restart local v0    # "state":Lcom/samsung/android/server/iris/IrisesUserState;
    iget-object v1, p0, Lcom/samsung/android/server/iris/IrisUtils;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    :cond_0
    monitor-exit p0

    return-object v0

    .line 106
    .end local v0    # "state":Lcom/samsung/android/server/iris/IrisesUserState;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static vibrateIrisError(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 84
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const v1, 0xc36d

    const/4 v2, -0x1

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 88
    :cond_0
    return-void
.end method

.method public static vibrateIrisSuccess(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 92
    .local v0, "vibrator":Landroid/os/Vibrator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Vibrator;->isEnableIntensity()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    const v1, 0xc369

    const/4 v2, -0x1

    const/4 v3, 0x0

    sget-object v4, Landroid/os/Vibrator$MagnitudeTypes;->TouchMagnitude:Landroid/os/Vibrator$MagnitudeTypes;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Vibrator;->vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V

    .line 96
    :cond_0
    return-void
.end method


# virtual methods
.method public addIrisForUser(Landroid/content/Context;II)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "irisId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/server/iris/IrisUtils;->getStateForUser(Landroid/content/Context;I)Lcom/samsung/android/server/iris/IrisesUserState;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/server/iris/IrisesUserState;->addIris(II)V

    .line 64
    return-void
.end method

.method public addIrisForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "irisId"    # I
    .param p3, "userId"    # I
    .param p4, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 67
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/server/iris/IrisUtils;->getStateForUser(Landroid/content/Context;I)Lcom/samsung/android/server/iris/IrisesUserState;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/server/iris/IrisesUserState;->addIris(IILjava/lang/CharSequence;)V

    .line 68
    return-void
.end method

.method public getIrisesForUser(Landroid/content/Context;I)Ljava/util/List;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/iris/Iris;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/iris/IrisUtils;->getStateForUser(Landroid/content/Context;I)Lcom/samsung/android/server/iris/IrisesUserState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/iris/IrisesUserState;->getIrises()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public removeIrisIdForUser(Landroid/content/Context;II)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "irisId"    # I
    .param p3, "userId"    # I

    .prologue
    .line 71
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/server/iris/IrisUtils;->getStateForUser(Landroid/content/Context;I)Lcom/samsung/android/server/iris/IrisesUserState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/iris/IrisesUserState;->removeIris(I)V

    .line 72
    return-void
.end method

.method public renameIrisForUser(Landroid/content/Context;IILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "irisId"    # I
    .param p3, "userId"    # I
    .param p4, "name"    # Ljava/lang/CharSequence;

    .prologue
    .line 75
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/server/iris/IrisUtils;->getStateForUser(Landroid/content/Context;I)Lcom/samsung/android/server/iris/IrisesUserState;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lcom/samsung/android/server/iris/IrisesUserState;->renameIris(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method
