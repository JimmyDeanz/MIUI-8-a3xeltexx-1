.class public abstract Lcom/samsung/android/contextaware/dataprovider/DataProvider;
.super Lcom/samsung/android/contextaware/manager/ContextProvider;
.source "DataProvider.java"


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/manager/ContextProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    return-void
.end method


# virtual methods
.method protected final initialize()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "mContext is null."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->initializeManager()V

    goto :goto_0
.end method

.method protected abstract initializeManager()V
.end method

.method protected final terminate()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/DataProvider;->terminateManager()V

    return-void
.end method

.method protected abstract terminateManager()V
.end method
