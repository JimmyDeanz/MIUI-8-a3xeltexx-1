.class public abstract Lcom/samsung/android/contextaware/manager/ContextProvider;
.super Lcom/samsung/android/contextaware/manager/ContextComponent;
.source "ContextProvider.java"

# interfaces
.implements Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
.implements Lcom/samsung/android/contextaware/manager/IApPowerObserver;
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;


# instance fields
.field private mApStatus:I

.field private final mContext:Landroid/content/Context;

.field private final mLooper:Landroid/os/Looper;

.field private mPreparedCollection:I

.field private final mSensorHubResetObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

.field private final mTimeOutCheck:Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

.field private mTimeStampForApStatus:J

.field private mVersion:I


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 2
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/contextaware/manager/ContextComponent;-><init>()V

    iput p1, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mVersion:I

    iput-object p2, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mLooper:Landroid/os/Looper;

    iput-object p4, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mSensorHubResetObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    new-instance v0, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getTimeOutCheckObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/manager/ContextTimeOutCheck;-><init>(Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mTimeOutCheck:Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

    return-void
.end method


# virtual methods
.method protected checkFaultDetectionResult()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public abstract disable()V
.end method

.method protected disableForRestore()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->disable()V

    return-void
.end method

.method protected disableForStop(I)V
    .locals 1
    .param p1, "operation"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->disableForRestore()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->disable()V

    goto :goto_0
.end method

.method protected display()V
    .locals 6

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->getContextBundleForDisplay()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "context":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "================= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContextType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ================="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .local v3, "str":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .local v1, "i":Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .end local v1    # "i":Ljava/lang/String;
    :cond_2
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .restart local v1    # "i":Ljava/lang/String;
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getDisplayContents(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method protected doTimeOutChecking(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    if-nez p2, :cond_0

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BUNDLE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "CheckResult"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->clear()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mTimeOutCheck:Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

    invoke-interface {v0}, Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;->run()V

    goto :goto_0

    :cond_1
    const-string v0, "FAULT_DETECTION result is not success"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "Cause"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/manager/ContextProvider;->notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public abstract enable()V
.end method

.method protected enableForRestore()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->enable()V

    return-void
.end method

.method protected enableForStart(I)V
    .locals 1
    .param p1, "operation"    # I

    .prologue
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->enableForRestore()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->enable()V

    goto :goto_0
.end method

.method public final getAPStatus()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mApStatus:I

    return v0
.end method

.method protected final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getContextInfo(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;)V
    .locals 9
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;

    .prologue
    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getDependentService()Ljava/lang/String;

    move-result-object v0

    .local v0, "dependentService":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mTimeOutCheck:Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;->setTimeOutOccurence(Z)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    sget-object v6, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v8, v7}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextProvider;->notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, "isRegisterDependentService":Z
    invoke-virtual {p1}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->getServices()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    .local v5, "services":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    move-object v3, v2

    .local v3, "j":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .local v4, "service":I
    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/samsung/android/contextaware/ContextList;->getServiceCode(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    .end local v4    # "service":I
    :cond_3
    if-nez v1, :cond_4

    sget-object v6, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v6}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_DEPENDENT_SERVICE_NOT_REGISTERED:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v8, v7}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextProvider;->notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->enable()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/samsung/android/contextaware/manager/ContextProvider;->doTimeOutChecking(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public final getContextProvider()Lcom/samsung/android/contextaware/manager/ContextProvider;
    .locals 0

    .prologue
    return-object p0
.end method

.method public final getContextTypeOfFaultDetection()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract getContextValueNames()[Ljava/lang/String;
.end method

.method protected getDependentService()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDisplayContents(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    const-string v8, "key is null"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move-object v6, v7

    :cond_1
    :goto_0
    return-object v6

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_3
    const-string v8, "bundle is null"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move-object v6, v7

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .local v4, "str":Ljava/lang/StringBuffer;
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, [Ljava/lang/String;

    if-eqz v8, :cond_7

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "strArray":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v3, :cond_5

    aget-object v2, v0, v1

    .local v2, "j":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2    # "j":Ljava/lang/String;
    :cond_5
    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_6

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "strArray":[Ljava/lang/String;
    :cond_7
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_8
    const-string v8, "bundle.getStringArray(key) is null"

    invoke-static {v8}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move-object v6, v7

    goto :goto_0
.end method

.method public abstract getFaultDetectionResult()Landroid/os/Bundle;
.end method

.method protected final getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .param p1, "result"    # I
    .param p2, "cause"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getFaultDetectionResultValueNames()[Ljava/lang/String;

    move-result-object v1

    .local v1, "names":[Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {}, Lcom/samsung/android/contextaware/ContextList;->getInstance()Lcom/samsung/android/contextaware/ContextList;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContextType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/contextaware/ContextList;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getFaultDetectionResultValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Service"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CheckResult"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Cause"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method protected abstract getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
.end method

.method protected abstract getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
.end method

.method protected getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getTimeOutCheckManager()Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mTimeOutCheck:Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

    return-object v0
.end method

.method protected getTimeOutCheckObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTimeStampForApStatus()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mTimeStampForApStatus:J

    return-wide v0
.end method

.method protected final getVersion()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mVersion:I

    return v0
.end method

.method public final initializePreparedSubCollection()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mPreparedCollection:I

    return-void
.end method

.method protected final isDisable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getUsedTotalCount()I

    move-result v1

    if-ge v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final isEnable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getUsedTotalCount()I

    move-result v1

    if-gt v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .prologue
    if-nez p2, :cond_0

    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CheckResult = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "CheckResult"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Cause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Cause"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected final notifyFaultDetectionResult()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "bundle":Landroid/os/Bundle;
    if-nez v0, :cond_0

    const-string v1, "Fault Detection Result is null."

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->disable()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->enable()V

    return-void
.end method

.method protected processApPowerStatus()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mApStatus:I

    const/16 v1, -0x2e

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->updateApSleep()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mApStatus:I

    const/16 v1, -0x2f

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->updateApWakeup()V

    goto :goto_0
.end method

.method protected final registerApPowerObserver()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mSensorHubResetObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mSensorHubResetObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;->registerSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->registerApPowerObserver(Lcom/samsung/android/contextaware/manager/IApPowerObserver;)V

    return-void
.end method

.method public final setAPStatus(I)V
    .locals 0
    .param p1, "status"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mApStatus:I

    return-void
.end method

.method protected final setVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    iput p1, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mVersion:I

    return-void
.end method

.method public start(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->initialize()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->clear()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->enableForStart(I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->registerApPowerObserver()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->registerObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->notifyFaultDetectionResult()V

    :cond_1
    return-void
.end method

.method public stop(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;I)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "operation"    # I

    .prologue
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->isDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->clear()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->unregisterApPowerObserver()V

    invoke-virtual {p0, p2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->disableForStop(I)V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->terminate()V

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->unregisterObserver(Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->notifyFaultDetectionResult()V

    :cond_1
    return-void
.end method

.method protected final unregisterApPowerObserver()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mSensorHubResetObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mSensorHubResetObservable:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;->unregisterSensorHubResetObserver(Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->unregisterApPowerObserver(Lcom/samsung/android/contextaware/manager/IApPowerObserver;)V

    return-void
.end method

.method public updateApPowerStatus(IJ)V
    .locals 2
    .param p1, "status"    # I
    .param p2, "timeStamp"    # J

    .prologue
    iput p1, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mApStatus:I

    iput-wide p2, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mTimeStampForApStatus:J

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getUsedSubCollectionCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getUsedSubCollectionCount()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mPreparedCollection:I

    if-le v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->processApPowerStatus()V

    goto :goto_0
.end method

.method public final updateApPowerStatusForPreparedCollection()V
    .locals 2

    .prologue
    iget v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mPreparedCollection:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mPreparedCollection:I

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->getUsedSubCollectionCount()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mPreparedCollection:I

    if-le v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->processApPowerStatus()V

    goto :goto_0
.end method

.method protected updateApReset()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mApStatus:I

    return-void
.end method

.method protected updateApSleep()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->pause()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mApStatus:I

    return-void
.end method

.method protected updateApWakeup()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->resume()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/manager/ContextProvider;->mApStatus:I

    return-void
.end method

.method public updateSensorHubResetStatus(I)V
    .locals 1
    .param p1, "status"    # I

    .prologue
    const/16 v0, -0x2b

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/manager/ContextProvider;->reset()V

    :cond_0
    return-void
.end method
