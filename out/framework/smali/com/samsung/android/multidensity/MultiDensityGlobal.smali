.class public Lcom/samsung/android/multidensity/MultiDensityGlobal;
.super Landroid/util/Singleton;
.source "MultiDensityGlobal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton",
        "<",
        "Lcom/samsung/android/multidensity/MultiDensityGlobal;",
        ">;"
    }
.end annotation


# static fields
.field private static final CUSTOM_DENSITY:I = 0xf0

.field public static final MULTI_DENSITY_ENABLED:Z = false

.field private static final SAFE_DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MultiDensityGlobal"

.field public static final UNDEFINED_DENSITY:I = -0x1

.field static sInstance:Lcom/samsung/android/multidensity/MultiDensityGlobal;


# instance fields
.field private mDensityAppList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 25
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/samsung/android/multidensity/MultiDensityGlobal;->SAFE_DEBUG:Z

    .line 44
    new-instance v0, Lcom/samsung/android/multidensity/MultiDensityGlobal;

    invoke-direct {v0}, Lcom/samsung/android/multidensity/MultiDensityGlobal;-><init>()V

    sput-object v0, Lcom/samsung/android/multidensity/MultiDensityGlobal;->sInstance:Lcom/samsung/android/multidensity/MultiDensityGlobal;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multidensity/MultiDensityGlobal;->mDensityAppList:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/multidensity/MultiDensityGlobal;->mLock:Ljava/lang/Object;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/multidensity/MultiDensityGlobal;->mEnabled:Z

    .line 41
    sget-boolean v0, Lcom/samsung/android/multidensity/MultiDensityGlobal;->SAFE_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiDensityGlobal"

    const-string v1, "MultiDensityGlobal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    return-void
.end method

.method public static getDensityConfiguration(Landroid/content/res/Configuration;ILjava/lang/String;)Landroid/content/res/Configuration;
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "customDensity"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 155
    if-nez p0, :cond_0

    .line 156
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 177
    :goto_0
    return-object v0

    .line 159
    :cond_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p0}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 177
    .local v0, "densityConfig":Landroid/content/res/Configuration;
    goto :goto_0
.end method

.method public static getInstance()Lcom/samsung/android/multidensity/MultiDensityGlobal;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/samsung/android/multidensity/MultiDensityGlobal;->sInstance:Lcom/samsung/android/multidensity/MultiDensityGlobal;

    invoke-virtual {v0}, Lcom/samsung/android/multidensity/MultiDensityGlobal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multidensity/MultiDensityGlobal;

    return-object v0
.end method


# virtual methods
.method protected create()Lcom/samsung/android/multidensity/MultiDensityGlobal;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/samsung/android/multidensity/MultiDensityGlobal;->sInstance:Lcom/samsung/android/multidensity/MultiDensityGlobal;

    return-object v0
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/multidensity/MultiDensityGlobal;->create()Lcom/samsung/android/multidensity/MultiDensityGlobal;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 194
    return-void
.end method

.method public getDensity(Ljava/lang/String;)I
    .locals 3
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 139
    if-nez p1, :cond_0

    .line 149
    :goto_0
    return v0

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/multidensity/MultiDensityGlobal;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multidensity/MultiDensityGlobal;->mDensityAppList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/samsung/android/multidensity/MultiDensityGlobal;->mDensityAppList:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 146
    .local v0, "currentDensity":I
    monitor-exit v2

    goto :goto_0

    .line 148
    .end local v0    # "currentDensity":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public hasApplication(Ljava/lang/String;)Z
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 125
    if-eqz p1, :cond_0

    .line 126
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/samsung/android/multidensity/MultiDensityGlobal;->mEnabled:Z

    return v0
.end method

.method public removeApplication(Ljava/lang/String;)Z
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setApplication(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "customDensity"    # I

    .prologue
    .line 61
    if-eqz p1, :cond_0

    if-lez p2, :cond_0

    .line 62
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setEnabled(Landroid/content/Context;Z)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 97
    const/4 v0, 0x1

    return v0
.end method
