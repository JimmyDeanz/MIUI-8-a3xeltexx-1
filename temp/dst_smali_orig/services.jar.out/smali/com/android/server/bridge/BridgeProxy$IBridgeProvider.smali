.class Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;
.super Landroid/content/IProviderCallBack$Stub;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IBridgeProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/content/IProviderCallBack$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p2, "x1"    # Lcom/android/server/bridge/BridgeProxy$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method private getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 10
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    iget-object v7, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mProviderPrefName:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/bridge/BridgeProxy;->access$1600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .local v5, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .local v4, "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v6, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;

    iget-object v8, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-direct {v6, v8, v7}, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;-><init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .local v6, "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    iget-object v0, v6, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->serviceName:Ljava/lang/String;

    .local v0, "fullServiceName":Ljava/lang/String;
    iget-object v3, v6, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->packageName:Ljava/lang/String;

    .local v3, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " package name of provider sync service ==  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "; service == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "fullServiceName":Ljava/lang/String;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "pairs":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    :goto_0
    return-object v7

    :cond_1
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot find service name for providerName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    goto :goto_0
.end method

.method private getResizedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "image"    # Landroid/graphics/Bitmap;

    .prologue
    const/16 v2, 0x90

    .local v2, "maxSize":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .local v3, "width":I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .local v1, "height":I
    if-ne v1, v3, :cond_0

    if-ne v3, v2, :cond_0

    .end local p1    # "image":Landroid/graphics/Bitmap;
    :goto_0
    return-object p1

    .restart local p1    # "image":Landroid/graphics/Bitmap;
    :cond_0
    int-to-float v4, v3

    int-to-float v5, v1

    div-float v0, v4, v5

    .local v0, "bitmapRatio":F
    const/4 v4, 0x0

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    move v3, v2

    int-to-float v4, v3

    div-float/2addr v4, v0

    float-to-int v1, v4

    :goto_1
    const/4 v4, 0x1

    invoke-static {p1, v3, v1, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_1
    move v1, v2

    int-to-float v4, v1

    mul-float/2addr v4, v0

    float-to-int v3, v4

    goto :goto_1
.end method


# virtual methods
.method public getCallerInfoDetails(Ljava/lang/String;)Landroid/content/CustomCursor;
    .locals 10
    .param p1, "contactRefUriAsString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v5, "getCallerInfoDetails"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getCallerInfoDetails() called"

    invoke-static {v4, v5}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Contacts"

    invoke-direct {p0, v4}, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ProviderNames MATCH, we will now sync up"

    invoke-static {v4, v5}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-class v5, Lcom/android/server/bridge/BridgeProxy;

    monitor-enter v5

    :try_start_0
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string v6, " SyncToAsyncService I am waiting now"

    invoke-static {v4, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v4, "action"

    const-string v6, "CALLER_INFO"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "contactRefUriAsString"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "messenger"

    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mMessenger:Landroid/os/Messenger;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/Messenger;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, "binderBundle"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IProviderCallBack.Stub before result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mCallerInfoResult:Landroid/content/CustomCursor;
    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$2100(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->resultLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$1900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->resultLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$1900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;

    move-result-object v4

    const-wide/16 v8, 0x7530

    invoke-virtual {v4, v8, v9}, Ljava/lang/Object;->wait(J)V

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IProviderCallBack.Stub after result: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mCallerInfoResult:Landroid/content/CustomCursor;
    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$2100(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mCallerInfoResult:Landroid/content/CustomCursor;
    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$2100(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_0
    return-object v4

    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    monitor-exit v5

    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v4
.end method

.method public handleShortcut(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "packageLabel"    # Ljava/lang/String;
    .param p4, "shortcutIcon"    # Landroid/graphics/Bitmap;
    .param p5, "shortcutIntentUri"    # Ljava/lang/String;
    .param p6, "createOrRemove"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v7, "handleShortcut"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, "createShortcut()"

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "RemoteShortcuts"

    invoke-direct {p0, v6}, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->getComponentName(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .local v1, "cn":Landroid/content/ComponentName;
    if-eqz v1, :cond_3

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ProviderNames MATCH, we will now sync up"

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, " SyncToAsyncService I am waiting now"

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz p4, :cond_0

    invoke-direct {p0, p4}, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->getResizedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p4

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " before startservice intent shortcutIcon.getWidth():"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " shortcutIcon.getHeight(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package name is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "bundle":Landroid/os/Bundle;
    const-string v6, "userId"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "packageName"

    invoke-virtual {v0, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "packageLabel"

    invoke-virtual {v0, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "shortcutIcon"

    invoke-virtual {v0, v6, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v6, "shortcutIntentUri"

    invoke-virtual {v0, v6, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "createOrRemove"

    invoke-virtual {v0, v6, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "create"

    invoke-virtual {p6, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$2900(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$2900(Lcom/android/server/bridge/BridgeProxy;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " preinstalled Package name is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "isPreInstalledPackage"

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .local v4, "req":Landroid/os/Bundle;
    const-string v6, "action"

    const-string v7, "RequestBadgeInfo"

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "pkgName"

    invoke-virtual {v4, v6, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, p1, v4}, Landroid/os/RCPManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .local v5, "resp":Landroid/os/Bundle;
    if-eqz v5, :cond_2

    const-string v6, "pkg_names"

    const-string v7, "pkg_names"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "class_names"

    const-string v7, "class_names"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "counts"

    const-string v7, "counts"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "BadgeInfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "pkg_names"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "class_names"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "counts"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "req":Landroid/os/Bundle;
    .end local v5    # "resp":Landroid/os/Bundle;
    :cond_2
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, " before startservice intent"

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    :goto_1
    return-void

    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_4
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, " set does not contain package"

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v3    # "intent":Landroid/content/Intent;
    :cond_5
    :try_start_1
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, " set is null "

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public queryProvider(Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/content/CustomCursor;
    .locals 26
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "resourceName"    # Ljava/lang/String;
    .param p3, "containerId"    # I
    .param p4, "projection"    # [Ljava/lang/String;
    .param p5, "selection"    # Ljava/lang/String;
    .param p6, "selectionArgs"    # [Ljava/lang/String;
    .param p7, "sortOrder"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    const-string v21, "queryProvider"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static/range {v20 .. v21}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    const-string v21, " IBridgeProvider queryProvider() called"

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mProviderPrefName:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/server/bridge/BridgeProxy;->access$1600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    invoke-virtual/range {v20 .. v22}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .local v14, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v14}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v10

    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_6

    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .local v17, "stringStringEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v12, v17

    .local v12, "pairs":Ljava/util/Map$Entry;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "ProviderNames MATCH, we will now sync up for providerName="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "false"

    .local v15, "sanitizeData":Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "syncOnlyFavoritesContactsPolicy":Z
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_4

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    const-string v21, "Contacts"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    const-string v21, "Calendar"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    const-string v21, "CallLog"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_1

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    const-string v21, "Bookmarks"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "knox-export-data"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v20 .. v22}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "policy":Ljava/lang/String;
    if-eqz v13, :cond_2

    const-string v20, "false"

    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    const-string v21, "Blocked EXPORT_DATA by  policy."

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v20, 0x0

    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "pairs":Ljava/util/Map$Entry;
    .end local v13    # "policy":Ljava/lang/String;
    .end local v15    # "sanitizeData":Ljava/lang/String;
    .end local v17    # "stringStringEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "syncOnlyFavoritesContactsPolicy":Z
    :goto_1
    return-object v20

    .restart local v9    # "i$":Ljava/util/Iterator;
    .restart local v12    # "pairs":Ljava/util/Map$Entry;
    .restart local v13    # "policy":Ljava/lang/String;
    .restart local v15    # "sanitizeData":Ljava/lang/String;
    .restart local v17    # "stringStringEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v18    # "syncOnlyFavoritesContactsPolicy":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    const-string v22, "knox-sanitize-data"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v20 .. v22}, Lcom/android/server/bridge/BridgeProxy;->access$2600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    const-string v21, "Contacts"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getSyncPolicy()Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/android/server/bridge/BridgeProxy;->access$2700(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v19

    .local v19, "syncPolicy":Ljava/lang/String;
    const-string v20, "fav_contacts"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    const/16 v18, 0x1

    :cond_3
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Contacts: syncOnlyFavoritesContactsPolicy = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v13    # "policy":Ljava/lang/String;
    .end local v19    # "syncPolicy":Ljava/lang/String;
    :cond_4
    const-class v21, Lcom/android/server/bridge/BridgeProxy;

    monitor-enter v21

    :try_start_0
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    const-string v22, " SyncToAsyncService I am waiting now"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .local v8, "i":Landroid/content/Intent;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " SyncToAsyncService  package+fullServiceName == "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v16, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v22, v0

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;-><init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    .local v16, "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->serviceName:Ljava/lang/String;

    .local v7, "fullServiceName":Ljava/lang/String;
    move-object/from16 v0, v16

    iget-object v11, v0, Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;->packageName:Ljava/lang/String;

    .local v11, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " Sync during switch package == "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "; service == "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "package name of provider sync service == "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v11, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v5, "cn":Landroid/content/ComponentName;
    invoke-virtual {v8, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .local v4, "bundle":Landroid/os/Bundle;
    const-string v20, "messenger"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mMessenger:Landroid/os/Messenger;
    invoke-static/range {v22 .. v22}, Lcom/android/server/bridge/BridgeProxy;->access$2800(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/Messenger;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v20, "providerName"

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "resourceName"

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "containerId"

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v20, "projection"

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v20, "selection"

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "selectionArgs"

    move-object/from16 v0, v20

    move-object/from16 v1, p6

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v20, "sortOrder"

    move-object/from16 v0, v20

    move-object/from16 v1, p7

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "sanitizeData"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v20, "syncOnlyFavoritesContactsPolicy"

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v20, "binderBundle"

    move-object/from16 v0, v20

    invoke-virtual {v8, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static/range {v22 .. v22}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IProviderCallBack.Stub before result: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;
    invoke-static/range {v23 .. v23}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->resultLock:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Lcom/android/server/bridge/BridgeProxy;->access$1900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;

    move-result-object v22

    monitor-enter v22
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->resultLock:Ljava/lang/Object;
    invoke-static/range {v20 .. v20}, Lcom/android/server/bridge/BridgeProxy;->access$1900(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/Object;

    move-result-object v20

    const-wide/16 v24, 0x7530

    move-object/from16 v0, v20

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/Object;->wait(J)V

    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "IProviderCallBack.Stub after result: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;
    invoke-static/range {v23 .. v23}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;
    invoke-static/range {v20 .. v20}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;

    move-result-object v20

    if-eqz v20, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;
    invoke-static/range {v20 .. v20}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/CustomCursor;->setCursorOwnerId(I)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IBridgeProvider;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v20, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->result:Landroid/content/CustomCursor;
    invoke-static/range {v20 .. v20}, Lcom/android/server/bridge/BridgeProxy;->access$2000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/CustomCursor;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v20

    :try_start_3
    monitor-exit v21

    goto/16 :goto_1

    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "cn":Landroid/content/ComponentName;
    .end local v7    # "fullServiceName":Ljava/lang/String;
    .end local v8    # "i":Landroid/content/Intent;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v16    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    :catchall_0
    move-exception v20

    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v20

    .restart local v4    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "cn":Landroid/content/ComponentName;
    .restart local v7    # "fullServiceName":Ljava/lang/String;
    .restart local v8    # "i":Landroid/content/Intent;
    .restart local v11    # "packageName":Ljava/lang/String;
    .restart local v16    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    :catchall_1
    move-exception v20

    :try_start_4
    monitor-exit v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v20
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "cn":Landroid/content/ComponentName;
    .end local v7    # "fullServiceName":Ljava/lang/String;
    .end local v8    # "i":Landroid/content/Intent;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v16    # "si":Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    monitor-exit v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .end local v6    # "e":Ljava/lang/InterruptedException;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v12    # "pairs":Ljava/util/Map$Entry;
    .end local v15    # "sanitizeData":Ljava/lang/String;
    .end local v17    # "stringStringEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v18    # "syncOnlyFavoritesContactsPolicy":Z
    :cond_6
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v20

    const-string v21, "No services registered to provide. (prefs empty)"

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/16 v20, 0x0

    goto/16 :goto_1
.end method
