.class public Landroid/os/SmartManager;
.super Ljava/lang/Object;
.source "SmartManager.java"


# static fields
.field private static mService:Landroid/os/ICustomFrequencyManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatteryRemainingUsageTime(Landroid/content/Context;I)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "mode"    # I

    .prologue
    invoke-static {p0}, Landroid/os/SmartManager;->getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    .local v2, "svc":Landroid/os/ICustomFrequencyManager;
    const/4 v1, 0x0

    .local v1, "remainTime":I
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2, p1}, Landroid/os/ICustomFrequencyManager;->getBatteryRemainingUsageTime(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFrequentlyUsedAppListByLocation(Landroid/content/Context;DDI)[Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D
    .param p5, "numOfItems"    # I

    .prologue
    invoke-static {p0}, Landroid/os/SmartManager;->getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    .local v1, "svc":Landroid/os/ICustomFrequencyManager;
    const/4 v7, 0x0

    .local v7, "result":[Ljava/lang/String;
    if-eqz v1, :cond_0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    :try_start_0
    invoke-interface/range {v1 .. v6}, Landroid/os/ICustomFrequencyManager;->getFrequentlyUsedAppListByLocation(DDI)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    :cond_0
    :goto_0
    return-object v7

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getLeastRecentlyUsedAppList(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "numOfItems"    # I

    .prologue
    invoke-static {p0}, Landroid/os/SmartManager;->getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;

    move-result-object v2

    .local v2, "svc":Landroid/os/ICustomFrequencyManager;
    const/4 v1, 0x0

    .local v1, "result":[Ljava/lang/String;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2, p1}, Landroid/os/ICustomFrequencyManager;->getLeastRecentlyUsedAppList(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private static declared-synchronized getService(Landroid/content/Context;)Landroid/os/ICustomFrequencyManager;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v2, Landroid/os/SmartManager;

    monitor-enter v2

    :try_start_0
    sget-object v1, Landroid/os/SmartManager;->mService:Landroid/os/ICustomFrequencyManager;

    if-nez v1, :cond_0

    const-string v1, "CustomFrequencyManagerService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/ICustomFrequencyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICustomFrequencyManager;

    move-result-object v1

    sput-object v1, Landroid/os/SmartManager;->mService:Landroid/os/ICustomFrequencyManager;

    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    sget-object v1, Landroid/os/SmartManager;->mService:Landroid/os/ICustomFrequencyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
