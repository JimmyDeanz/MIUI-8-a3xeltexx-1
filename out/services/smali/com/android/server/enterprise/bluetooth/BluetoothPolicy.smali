.class public Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
.super Landroid/app/enterprise/IBluetoothPolicy$Stub;
.source "BluetoothPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;,
        Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;,
        Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BluetoothPolicyService"


# instance fields
.field private isCacheUpdated:Z

.field mBluetoothManagerAdapter:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

.field private mCacheIsBluetoothLogEnabled:Z

.field private mContext:Landroid/content/Context;

.field mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mLogQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mProfileMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestart:Z

.field private mThread:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 117
    invoke-direct {p0}, Landroid/app/enterprise/IBluetoothPolicy$Stub;-><init>()V

    .line 106
    iput-boolean v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mCacheIsBluetoothLogEnabled:Z

    .line 107
    iput-boolean v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    .line 108
    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    .line 109
    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mThread:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;

    .line 111
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    .line 138
    new-instance v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$1;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    iput-object p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    .line 119
    new-instance v1, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 120
    iput-boolean v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    .line 127
    new-instance v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V

    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mThread:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;

    .line 128
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mThread:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$StoreLogThread;->start()V

    .line 131
    new-instance v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    const-string v3, "BLUETOOTH_PROFILE_BWLIST"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    .line 133
    new-instance v1, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    const-string v3, "BLUETOOTH_DEVICE_BWLIST"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    .line 134
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mBluetoothManagerAdapter:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    .line 135
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->initProfileMap()V

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->disableDesktopConnectivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Ljava/util/concurrent/BlockingQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method private applyDevicePolicy()V
    .locals 1

    .prologue
    .line 1535
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyBlackList(Ljava/util/List;)V

    .line 1537
    return-void
.end method

.method private delayedBTOff()V
    .locals 1

    .prologue
    .line 312
    new-instance v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;-><init>(Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$2;->start()V

    .line 335
    return-void
.end method

.method private disableDesktopConnectivity()V
    .locals 8

    .prologue
    .line 874
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 875
    .local v4, "token":J
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 877
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 879
    .local v1, "btSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 880
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 881
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 882
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v6

    const/16 v7, 0x100

    if-ne v6, v7, :cond_0

    .line 885
    iget-object v6, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mBluetoothManagerAdapter:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->removeBond(Ljava/lang/String;)Z

    goto :goto_0

    .line 888
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 889
    return-void
.end method

.method private enforceBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 344
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_BLUETOOTH"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_BLUETOOTH"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyAndActiveAdminPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object v0

    return-object v0
.end method

.method private getBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allAdmins"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 953
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBluetoothLogEnabled("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const/4 v6, -0x1

    .line 955
    .local v6, "uid":I
    if-nez p2, :cond_0

    .line 956
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 957
    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 959
    :cond_0
    new-array v0, v11, [Ljava/lang/String;

    .line 960
    .local v0, "columns":[Ljava/lang/String;
    const-string v7, "bluetoothLogEnabled"

    aput-object v7, v0, v10

    .line 961
    const/4 v5, 0x0

    .line 963
    .local v5, "ret":Z
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBluetoothLogEnabled - uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    if-lez v6, :cond_3

    .line 965
    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    invoke-virtual {v7, v8, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 968
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_2

    .line 969
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ne v7, v11, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 970
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 971
    const/4 v5, 0x1

    .line 974
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 994
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_0
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBluetoothLogEnabled - ret: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 995
    return v5

    .line 977
    :cond_3
    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    invoke-virtual {v7, v8, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 979
    .local v3, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v3, :cond_2

    .line 980
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBluetoothLogEnabled - cvList: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    const/4 v2, 0x0

    .line 982
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 984
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 985
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "cv":Landroid/content/ContentValues;
    check-cast v2, Landroid/content/ContentValues;

    .line 986
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string v7, "BluetoothPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getBluetoothLogEnabled - cv: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    const-string v7, "bluetoothLogEnabled"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 988
    const/4 v5, 0x1

    .line 989
    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private initProfileMap()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/16 v3, 0x8

    .line 1567
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1569
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1571
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1572
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1573
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1574
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1575
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1576
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1578
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001108-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1579
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001112-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1581
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000111E-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1582
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000111F-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1584
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110E-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1586
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110C-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1590
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000112f-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1591
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001130-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1593
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110A-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1595
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110B-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1597
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000110D-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1600
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001103-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1601
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001106-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1602
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x80

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001101-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1603
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "0000112D-0000-1000-8000-00805F9B34FB"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1604
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const-string v1, "00001122-0000-1000-8000-00805f9b34fb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1606
    return-void
.end method

.method private isProfileEnabled(II)Z
    .locals 8
    .param p1, "adminUid"    # I
    .param p2, "profile"    # I

    .prologue
    .line 629
    const/4 v2, 0x1

    .line 633
    .local v2, "lEnabled":Z
    if-gtz p2, :cond_1

    .line 634
    :try_start_0
    new-instance v5, Ljava/security/InvalidParameterException;

    invoke-direct {v5}, Ljava/security/InvalidParameterException;-><init>()V

    throw v5
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Ljava/security/InvalidParameterException;
    const-string v5, "BluetoothPolicyService"

    const-string/jumbo v6, "isProfileEnabled() failed: INVALID PARAMETER INPUT"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    .end local v0    # "e":Ljava/security/InvalidParameterException;
    :cond_0
    :goto_0
    if-eqz v2, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabledBySecureMode(II)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    return v5

    .line 637
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "BLUETOOTH"

    const-string/jumbo v7, "profileSettings"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 639
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 640
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 641
    .local v3, "value":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ltz v5, :cond_2

    .line 642
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    and-int/2addr v5, p2

    if-eq p2, v5, :cond_2

    .line 643
    const/4 v2, 0x0

    .line 644
    goto :goto_0

    .line 651
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Ljava/lang/Integer;
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_1
    move-exception v0

    .line 652
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "BluetoothPolicyService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 656
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isProfileEnabledBySecureMode(II)Z
    .locals 6
    .param p1, "adminUid"    # I
    .param p2, "profile"    # I

    .prologue
    .line 660
    const/4 v3, 0x1

    .line 661
    .local v3, "ret":Z
    const-string v5, "bluetooth_secure_mode_policy"

    invoke-static {v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;

    .line 664
    .local v0, "bsmp":Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, p1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    .line 665
    .local v2, "cxtInfo":Landroid/app/enterprise/ContextInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->isSecureModeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v4, v3

    .line 693
    .end local v3    # "ret":Z
    .local v4, "ret":I
    :goto_0
    return v4

    .line 669
    .end local v4    # "ret":I
    .restart local v3    # "ret":Z
    :cond_1
    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getSecureModeConfiguration(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/BluetoothSecureModeConfig;

    move-result-object v1

    .line 671
    .local v1, "currentConfig":Landroid/app/enterprise/BluetoothSecureModeConfig;
    if-eqz v1, :cond_2

    .line 672
    sparse-switch p2, :sswitch_data_0

    :cond_2
    :goto_1
    move v4, v3

    .line 693
    .restart local v4    # "ret":I
    goto :goto_0

    .line 674
    .end local v4    # "ret":I
    :sswitch_0
    iget-boolean v3, v1, Landroid/app/enterprise/BluetoothSecureModeConfig;->hfpEnable:Z

    .line 675
    goto :goto_1

    .line 677
    :sswitch_1
    iget-boolean v3, v1, Landroid/app/enterprise/BluetoothSecureModeConfig;->pbapEnable:Z

    .line 678
    goto :goto_1

    .line 680
    :sswitch_2
    iget-boolean v3, v1, Landroid/app/enterprise/BluetoothSecureModeConfig;->a2dpEnable:Z

    .line 681
    goto :goto_1

    .line 683
    :sswitch_3
    iget-boolean v3, v1, Landroid/app/enterprise/BluetoothSecureModeConfig;->ftpEnable:Z

    .line 684
    goto :goto_1

    .line 686
    :sswitch_4
    iget-boolean v3, v1, Landroid/app/enterprise/BluetoothSecureModeConfig;->sapEnable:Z

    .line 687
    goto :goto_1

    .line 672
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x40 -> :sswitch_3
        0x100 -> :sswitch_4
    .end sparse-switch
.end method

.method private restartBluetooth()V
    .locals 2

    .prologue
    .line 1540
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1541
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1543
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    .line 1544
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 1546
    :cond_0
    return-void
.end method

.method private showProfileBlockedToast(I)V
    .locals 1
    .param p1, "profile"    # I

    .prologue
    .line 697
    const/4 v0, -0x1

    .line 699
    .local v0, "msgResId":I
    sparse-switch p1, :sswitch_data_0

    .line 735
    :goto_0
    return-void

    .line 701
    :sswitch_0
    const v0, 0x1040b9e

    .line 734
    :goto_1
    invoke-static {v0}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_0

    .line 704
    :sswitch_1
    const v0, 0x1040b9f

    .line 705
    goto :goto_1

    .line 707
    :sswitch_2
    const v0, 0x1040b9c

    .line 708
    goto :goto_1

    .line 710
    :sswitch_3
    const v0, 0x1040b9d

    .line 711
    goto :goto_1

    .line 713
    :sswitch_4
    const v0, 0x1040ba0

    .line 714
    goto :goto_1

    .line 716
    :sswitch_5
    const v0, 0x1040ba1

    .line 717
    goto :goto_1

    .line 719
    :sswitch_6
    const v0, 0x1040ba2

    .line 720
    goto :goto_1

    .line 722
    :sswitch_7
    const v0, 0x1040ba3

    .line 723
    goto :goto_1

    .line 725
    :sswitch_8
    const v0, 0x1040ba4

    .line 726
    goto :goto_1

    .line 728
    :sswitch_9
    const v0, 0x1040ba5

    .line 729
    goto :goto_1

    .line 699
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x8 -> :sswitch_3
        0x10 -> :sswitch_4
        0x20 -> :sswitch_5
        0x40 -> :sswitch_6
        0x80 -> :sswitch_7
        0x100 -> :sswitch_8
        0x200 -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public activateBluetoothDeviceRestriction(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v6, 0x1

    .line 1392
    const-string v7, "BluetoothPolicyService"

    const-string v8, "activateBluetoothDeviceRestriction"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1394
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1395
    .local v0, "adminUid":I
    const/4 v2, 0x0

    .line 1396
    .local v2, "refresh":Z
    const/4 v3, 0x0

    .line 1397
    .local v3, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1399
    .local v4, "token":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v7

    if-eq p2, v7, :cond_1

    move v2, v6

    .line 1400
    :goto_0
    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    const-string/jumbo v9, "devicePolicyEnabled"

    invoke-virtual {v7, v0, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 1402
    if-ne v3, v6, :cond_0

    if-eqz v2, :cond_0

    .line 1403
    iget-object v6, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v6}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->reload()Z

    .line 1404
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1410
    :cond_0
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1411
    return v3

    .line 1399
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1406
    :catch_0
    move-exception v1

    .line 1407
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public activateBluetoothUUIDRestriction(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    const/4 v6, 0x1

    .line 1210
    const-string v7, "BluetoothPolicyService"

    const-string v8, "activateBluetoothUUIDRestriction"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const/4 v3, 0x0

    .line 1212
    .local v3, "ret":Z
    const/4 v2, 0x0

    .line 1213
    .local v2, "restartNeeded":Z
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1214
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1215
    .local v0, "adminUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1217
    .local v4, "token":J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v7, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v7

    if-eq p2, v7, :cond_1

    move v2, v6

    .line 1218
    :goto_0
    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BLUETOOTH"

    const-string/jumbo v9, "profilePolicyEnabled"

    invoke-virtual {v7, v0, v8, v9, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    .line 1221
    if-ne v3, v6, :cond_0

    if-eqz v2, :cond_0

    .line 1222
    iget-object v6, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v6}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->reload()Z

    .line 1223
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    :cond_0
    :goto_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1230
    return v3

    .line 1217
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 1225
    :catch_0
    move-exception v1

    .line 1226
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public addBluetoothDevicesToBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1234
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string v6, "addDevicesToBlackList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1235
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1236
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1237
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1240
    .local v1, "ret":Z
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    .line 1249
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 1244
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1245
    .local v4, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->addObjectsToBlackList(ILjava/util/List;)Z

    move-result v1

    .line 1246
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1247
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 1248
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1249
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public addBluetoothDevicesToWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1306
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string v6, "addDevicesToWhiteList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1308
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1309
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1312
    .local v1, "ret":Z
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    .line 1321
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 1316
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1317
    .local v4, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->addObjectsToWhiteList(ILjava/util/List;)Z

    move-result v1

    .line 1318
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1319
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 1320
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1321
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public addBluetoothUUIDsToBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1068
    .local p2, "profileUUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string v6, "addProfilesToBlackList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1070
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1071
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1074
    .local v1, "ret":Z
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    .line 1082
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 1077
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1078
    .local v4, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->addObjectsToBlackList(ILjava/util/List;)Z

    move-result v1

    .line 1079
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1080
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 1081
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1082
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public addBluetoothUUIDsToWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1139
    .local p2, "profileUUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string v6, "addProfilesToWhiteList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1140
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1141
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1142
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1145
    .local v1, "ret":Z
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    .line 1154
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 1149
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1150
    .local v4, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->addObjectsToWhiteList(ILjava/util/List;)Z

    move-result v1

    .line 1151
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1152
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 1153
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1154
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public allowBluetooth(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 263
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 265
    const/4 v12, 0x1

    .line 266
    .local v12, "success":Z
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v13

    .line 268
    .local v13, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 270
    .local v14, "token":J
    if-nez p2, :cond_0

    .line 271
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    .line 272
    .local v9, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 273
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->disable()Z

    .line 281
    .end local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "BLUETOOTH"

    const-string v5, "bluetoothEnabled"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    .line 283
    if-eqz v12, :cond_1

    .line 284
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "BluetoothPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has changed allow bluetooth to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 290
    if-nez v13, :cond_1

    .line 291
    new-instance v11, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v11, v2}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    .local v11, "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :try_start_1
    const-string v2, "Bluetooth"

    const-string v3, "allowBluetooth"

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    invoke-virtual {v11, v2, v3, v4}, Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;->SetBooleanTypePolicy(Ljava/lang/String;Ljava/lang/String;Z)I

    .line 295
    const-string v2, "BluetoothPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GearPolicy allowBluetooth : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    .end local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :cond_1
    :goto_1
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 308
    :goto_2
    return v12

    .line 275
    .restart local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_2
    :try_start_2
    invoke-virtual {v9}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    .line 277
    invoke-direct/range {p0 .. p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->delayedBTOff()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 302
    .end local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v10

    .line 303
    .local v10, "e":Ljava/lang/Exception;
    const/4 v12, 0x0

    .line 304
    :try_start_3
    const-string v2, "BluetoothPolicyService"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 306
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 296
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catch_1
    move-exception v10

    .line 297
    .restart local v10    # "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 306
    .end local v10    # "e":Ljava/lang/Exception;
    .end local v11    # "gearPolicyManager":Lcom/samsung/android/sagearpolicymanager/SAGearPolicyManager;
    :catchall_0
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public allowCallerIDDisplay(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "allow"    # Z

    .prologue
    .line 1628
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1630
    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v3, "BLUETOOTH"

    const-string v4, "allowCallerID"

    invoke-virtual {v1, v2, v3, v4, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1636
    :goto_0
    return v1

    .line 1633
    :catch_0
    move-exception v0

    .line 1634
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BluetoothPolicyService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1636
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public allowOutgoingCalls(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 451
    const-string v3, "BluetoothPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allowOutgoingCalls = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 453
    const/4 v2, 0x0

    .line 454
    .local v2, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 456
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "BLUETOOTH"

    const-string v8, "allowOutgoingCalls"

    invoke-virtual {v3, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 458
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 459
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 461
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mRestart:Z

    .line 462
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 467
    .end local v0    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 468
    return v2

    .line 464
    :catch_0
    move-exception v1

    .line 465
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method applyBlackList(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1551
    .local p1, "blacklist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1552
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v1

    .line 1553
    .local v1, "btSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1554
    .local v4, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1555
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 1556
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "*"

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1558
    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mBluetoothManagerAdapter:Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/adapterlayer/BluetoothManagerAdapter;->removeBond(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1561
    .end local v0    # "ba":Landroid/bluetooth/BluetoothAdapter;
    .end local v1    # "btSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/bluetooth/BluetoothDevice;>;"
    :catch_0
    move-exception v3

    .line 1562
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "BluetoothPolicyService"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public bluetoothLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 1030
    const/4 v0, 0x0

    .line 1034
    .local v0, "ret":Z
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1035
    const-string v1, "BluetoothPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "on server bluetoothLoglogConnectionChanged ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1036
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    .line 1038
    :cond_0
    return v0
.end method

.method public clearBluetoothDevicesFromBlackList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1272
    const-string v4, "BluetoothPolicyService"

    const-string v5, "clearDevicesFromBlackList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1274
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1275
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1276
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1277
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->clearObjectsFromBlackList(I)Z

    move-result v1

    .line 1278
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1279
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 1280
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1281
    return v1
.end method

.method public clearBluetoothDevicesFromWhiteList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1344
    const-string v4, "BluetoothPolicyService"

    const-string v5, "clearDevicesFromWhiteList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1346
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1347
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1348
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1349
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->clearObjectsFromWhiteList(I)Z

    move-result v1

    .line 1350
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1351
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 1352
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1353
    return v1
.end method

.method public clearBluetoothUUIDsFromBlackList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1105
    const-string v4, "BluetoothPolicyService"

    const-string v5, "clearProfilesFromBlackList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1107
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1108
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1109
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1110
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->clearObjectsFromBlackList(I)Z

    move-result v1

    .line 1111
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1112
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 1113
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1114
    return v1
.end method

.method public clearBluetoothUUIDsFromWhiteList(Landroid/app/enterprise/ContextInfo;)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1177
    const-string v4, "BluetoothPolicyService"

    const-string v5, "clearProfilesFromWhiteList"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1179
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1180
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1181
    .local v1, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1182
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->clearObjectsFromWhiteList(I)Z

    move-result v1

    .line 1183
    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v4, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1184
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 1185
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1186
    return v1
.end method

.method public getAllBluetoothDevicesBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1285
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getAllDevicesBlackLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1286
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1287
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1288
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getAllObjectsFromBlackListForAllAdmins()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1290
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1291
    return-object v0
.end method

.method public getAllBluetoothDevicesWhiteLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1373
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getAllDevicesWhiteLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1375
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1376
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getAllObjectsFromWhiteListForAllAdmins()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1378
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1379
    return-object v0
.end method

.method public getAllBluetoothUUIDsBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1118
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getAllProfilesBlackLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1120
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1121
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->getAllObjectsFromBlackListForAllAdmins()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1124
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1125
    return-object v0
.end method

.method public getAllBluetoothUUIDsWhiteLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1190
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getAllProfilesWhiteLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1192
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1193
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->getAllObjectsFromWhiteListForAllAdmins()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->translateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1195
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1196
    return-object v0
.end method

.method public getAllowBluetoothDataTransfer(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "showMsg"    # Z

    .prologue
    .line 380
    const-string v4, "BluetoothPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAllowBluetoothDataTransfer - showMsg: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    const/4 v1, 0x1

    .line 382
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "allowDataTransfer"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 384
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 385
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 386
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 387
    move v1, v2

    .line 393
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Z
    :cond_1
    if-eqz p2, :cond_2

    if-nez v1, :cond_2

    .line 394
    const v4, 0x1040baa

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 397
    :cond_2
    return v1
.end method

.method public getBluetoothLog(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 999
    const-string v7, "BluetoothPolicyService"

    const-string/jumbo v8, "getBluetoothLog()"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1001
    const/4 v7, 0x2

    new-array v0, v7, [Ljava/lang/String;

    .line 1002
    .local v0, "columns":[Ljava/lang/String;
    const/4 v7, 0x0

    const-string/jumbo v8, "time"

    aput-object v8, v0, v7

    .line 1003
    const/4 v7, 0x1

    const-string/jumbo v8, "log"

    aput-object v8, v0, v7

    .line 1004
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1005
    .local v5, "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "BluetoothLogTable"

    invoke-virtual {v7, v8, v6, v6, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1007
    .local v2, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-nez v2, :cond_0

    .line 1008
    const-string v7, "BluetoothPolicyService"

    const-string/jumbo v8, "getBluetoothLog - cvList is null"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    .line 1026
    .end local v5    # "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v5

    .line 1011
    .restart local v5    # "reportList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getBluetoothLog() - cvList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    const/4 v1, 0x0

    .line 1013
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1015
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1016
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cv":Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 1017
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string/jumbo v6, "time"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1018
    .local v4, "report":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1019
    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1020
    const-string/jumbo v6, "log"

    invoke-virtual {v1, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1021
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1022
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getBluetoothLog() - report: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1025
    .end local v4    # "report":Ljava/lang/String;
    :cond_2
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getBluetoothLog() - reportList: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getEffectiveBluetoothDevicesBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1296
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getEffectiveBluetoothDevicesBlackLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1298
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1299
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object v0

    .line 1300
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1301
    return-object v0
.end method

.method public getEffectiveBluetoothDevicesWhiteLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1383
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getEffectiveBluetoothDevicesWhiteLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1385
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1386
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->getEffectiveWhiteList()Ljava/util/List;

    move-result-object v0

    .line 1387
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1388
    return-object v0
.end method

.method public getEffectiveBluetoothUUIDsBlackLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1129
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getEffectiveBluetoothUUIDsBlackLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1131
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1132
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->getEffectiveBlackList()Ljava/util/List;

    move-result-object v0

    .line 1133
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1134
    return-object v0
.end method

.method public getEffectiveBluetoothUUIDsWhiteLists(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1200
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "getEffectiveBluetoothUUIDsWhiteLists"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1201
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1202
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1203
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->getEffectiveWhiteList()Ljava/util/List;

    move-result-object v0

    .line 1204
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1205
    return-object v0
.end method

.method getProfileFromUUID(Ljava/lang/String;)I
    .locals 5
    .param p1, "profileUUID"    # Ljava/lang/String;

    .prologue
    .line 1441
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1442
    .local v3, "profileItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1443
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1444
    .local v2, "profile":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1445
    .local v0, "UUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1446
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1447
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1450
    .end local v0    # "UUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "profile":Ljava/lang/Integer;
    :goto_1
    return v4

    .line 1445
    .restart local v0    # "UUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    .restart local v2    # "profile":Ljava/lang/Integer;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1450
    .end local v0    # "UUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "i":I
    .end local v2    # "profile":Ljava/lang/Integer;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public isBluetoothDeviceAllowed(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 1470
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothDeviceAllowed(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBluetoothDeviceAllowed(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "deviceAddress"    # Ljava/lang/String;
    .param p2, "showMsg"    # Z

    .prologue
    .line 1476
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1477
    :cond_0
    const/4 v0, 0x0

    .line 1486
    :cond_1
    :goto_0
    return v0

    .line 1480
    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isObjectAllowed(Ljava/lang/String;)Z

    move-result v0

    .line 1482
    .local v0, "ret":Z
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    .line 1483
    const v1, 0x1040ba8

    invoke-static {v1}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    goto :goto_0
.end method

.method public isBluetoothDeviceRestrictionActive(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1424
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "isBluetoothDeviceRestrictionActive"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1425
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1426
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1427
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v0

    .line 1428
    .local v0, "ret":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1429
    return v0
.end method

.method public isBluetoothEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isBluetoothEnabled(Z)Z
    .locals 7
    .param p1, "showMsg"    # Z

    .prologue
    .line 177
    const-string v4, "BluetoothPolicyService"

    const-string/jumbo v5, "isBluetoothEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v1, 0x1

    .line 180
    .local v1, "ret":Z
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/app/enterprise/EnterpriseDeviceManager;->isRestrictedByConstrainedState(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 181
    const/4 v1, 0x0

    .line 195
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    if-nez v1, :cond_1

    .line 196
    const v4, 0x1040b9b

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 199
    :cond_1
    return v1

    .line 183
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "bluetoothEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 185
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_0

    .line 186
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 187
    .local v2, "value":Z
    if-nez v2, :cond_3

    .line 188
    move v1, v2

    .line 189
    goto :goto_0
.end method

.method public isBluetoothEnabledWithMsg(Z)Z
    .locals 1
    .param p1, "showMsg"    # Z

    .prologue
    .line 173
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x1

    .line 945
    iget-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    if-nez v0, :cond_0

    .line 946
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mCacheIsBluetoothLogEnabled:Z

    .line 947
    iput-boolean v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    .line 949
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mCacheIsBluetoothLogEnabled:Z

    return v0
.end method

.method public isBluetoothUUIDAllowed(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profileUUID"    # Ljava/lang/String;

    .prologue
    .line 1433
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    .locals 1
    .param p1, "profileUUID"    # Ljava/lang/String;

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isObjectAllowed(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isBluetoothUUIDAllowedInternal(Ljava/lang/String;)Z
    .locals 3
    .param p1, "profileUUID"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1454
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getProfileFromUUID(Ljava/lang/String;)I

    move-result v0

    .line 1456
    .local v0, "profile":I
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1457
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->showProfileBlockedToast(I)V

    .line 1466
    :cond_0
    :goto_0
    return v1

    .line 1462
    :cond_1
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabled(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1466
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBluetoothUUIDRestrictionActive(Landroid/app/enterprise/ContextInfo;)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1415
    const-string v1, "BluetoothPolicyService"

    const-string/jumbo v4, "isBluetoothUUIDRestrictionActive"

    invoke-static {v1, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    .line 1417
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1418
    .local v2, "token":J
    iget-object v1, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v0

    .line 1419
    .local v0, "ret":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1420
    return v0
.end method

.method public isCallerIDDisplayAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1640
    const/4 v2, 0x1

    .line 1642
    .local v2, "ret":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "BLUETOOTH"

    const-string v7, "allowCallerID"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1645
    .local v4, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1646
    .local v3, "value":Z
    if-nez v3, :cond_0

    .line 1647
    move v2, v3

    .line 1654
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "value":Z
    .end local v4    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_1
    :goto_0
    return v2

    .line 1651
    :catch_0
    move-exception v0

    .line 1652
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "BluetoothPolicyService"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isDesktopConnectivityEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 897
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isDesktopConnectivityEnabled(Z)Z
    .locals 7
    .param p1, "showMsg"    # Z

    .prologue
    .line 900
    const-string v4, "BluetoothPolicyService"

    const-string/jumbo v5, "isDesktopConnectivityEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    const/4 v1, 0x1

    .line 902
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string/jumbo v6, "desktopConnectivityEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 905
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 906
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 907
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 908
    move v1, v2

    .line 914
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    .line 915
    const v4, 0x1040ba6

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 918
    :cond_2
    return v1
.end method

.method public isDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 816
    const-string v6, "BluetoothPolicyService"

    const-string/jumbo v7, "isDiscoverableEnabled "

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 817
    const/4 v3, 0x1

    .line 818
    .local v3, "ret":Z
    iget-object v6, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string/jumbo v8, "discoverableModeEnabled"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 820
    .local v5, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v5, :cond_1

    .line 821
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 822
    .local v4, "value":Z
    if-nez v4, :cond_0

    .line 823
    move v3, v4

    .line 828
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "value":Z
    :cond_1
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isDiscoverableEnabled ret:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 830
    const-string v6, "bluetooth_secure_mode_policy"

    invoke-static {v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;

    .line 832
    .local v0, "bsmp":Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;
    if-eqz v3, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->isSecureModeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 833
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothSecureModePolicy;->getSecureModeConfiguration(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/BluetoothSecureModeConfig;

    move-result-object v1

    .line 834
    .local v1, "currentConfig":Landroid/app/enterprise/BluetoothSecureModeConfig;
    if-eqz v1, :cond_2

    .line 835
    iget-boolean v6, v1, Landroid/app/enterprise/BluetoothSecureModeConfig;->scanMode:Z

    if-nez v6, :cond_3

    const/4 v3, 0x1

    .line 839
    .end local v1    # "currentConfig":Landroid/app/enterprise/BluetoothSecureModeConfig;
    :cond_2
    :goto_0
    return v3

    .line 835
    .restart local v1    # "currentConfig":Landroid/app/enterprise/BluetoothSecureModeConfig;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isLimitedDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 553
    const-string v4, "BluetoothPolicyService"

    const-string/jumbo v5, "isLimitedDiscoverableEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const/4 v1, 0x1

    .line 555
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string/jumbo v6, "limitedDiscoverableEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 558
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 559
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 560
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 561
    move v1, v2

    .line 566
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Z
    :cond_1
    const-string v4, "BluetoothPolicyService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isLimitedDiscoverableEnabled ret:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    return v1
.end method

.method public isOutgoingCallsAllowed(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 478
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isOutgoingCallsAllowed(Z)Z
    .locals 7
    .param p1, "showMsg"    # Z

    .prologue
    .line 482
    const-string v4, "BluetoothPolicyService"

    const-string/jumbo v5, "isPairingEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    const/4 v1, 0x1

    .line 484
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string v6, "allowOutgoingCalls"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 486
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 487
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 488
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 489
    move v1, v2

    .line 495
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    .line 496
    const v4, 0x1040ba9

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 499
    :cond_2
    return v1
.end method

.method public isPairingEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 420
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isPairingEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public isPairingEnabled(Z)Z
    .locals 7
    .param p1, "showMsg"    # Z

    .prologue
    .line 424
    const-string v4, "BluetoothPolicyService"

    const-string/jumbo v5, "isPairingEnabled "

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const/4 v1, 0x1

    .line 426
    .local v1, "ret":Z
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "BLUETOOTH"

    const-string/jumbo v6, "pairingEnabled"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 428
    .local v3, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    if-eqz v3, :cond_1

    .line 429
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 430
    .local v2, "value":Z
    if-nez v2, :cond_0

    .line 431
    move v1, v2

    .line 437
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "value":Z
    :cond_1
    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    .line 438
    const v4, 0x1040ba7

    invoke-static {v4}, Lcom/android/server/enterprise/RestrictionToastManager;->show(I)V

    .line 441
    :cond_2
    return v1
.end method

.method public isProfileEnabled(Landroid/app/enterprise/ContextInfo;I)Z
    .locals 2
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # I

    .prologue
    .line 624
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrUserUid(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 625
    .local v0, "adminUid":I
    invoke-direct {p0, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabled(II)Z

    move-result v1

    return v1
.end method

.method public isProfileEnabledInternal(IZ)Z
    .locals 6
    .param p1, "profile"    # I
    .param p2, "showMsg"    # Z

    .prologue
    .line 739
    const/4 v3, 0x1

    .line 743
    .local v3, "lEnabled":Z
    if-gtz p1, :cond_2

    .line 744
    :try_start_0
    new-instance v4, Ljava/security/InvalidParameterException;

    invoke-direct {v4}, Ljava/security/InvalidParameterException;-><init>()V

    throw v4
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 761
    :catch_0
    move-exception v1

    .line 762
    .local v1, "e":Ljava/security/InvalidParameterException;
    const-string v4, "BluetoothPolicyService"

    const-string/jumbo v5, "isProfileEnabledInternal() failed: INVALID PARAMETER INPUT"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 767
    .end local v1    # "e":Ljava/security/InvalidParameterException;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    if-nez v3, :cond_1

    .line 768
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->showProfileBlockedToast(I)V

    :cond_1
    move v4, v3

    .line 770
    :goto_1
    return v4

    .line 747
    :cond_2
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, v4, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabled(II)Z

    move-result v4

    if-nez v4, :cond_4

    .line 748
    if-eqz p2, :cond_3

    .line 749
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->showProfileBlockedToast(I)V

    .line 751
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 754
    :cond_4
    iget-object v4, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfileMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 755
    .local v0, "UUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 756
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-nez v4, :cond_5

    .line 757
    const/4 v3, 0x0

    .line 758
    goto :goto_0

    .line 755
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 763
    .end local v0    # "UUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "i":I
    :catch_1
    move-exception v1

    .line 764
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1492
    return-void
.end method

.method onAdminRemoved()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    .line 205
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 207
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 3
    .param p1, "uid"    # I

    .prologue
    .line 1494
    const-string v0, "BluetoothPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdminRemoved - uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1495
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->reload()Z

    .line 1496
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->reload()Z

    .line 1499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    .line 1501
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1502
    const-string v0, "BluetoothPolicyService"

    const-string/jumbo v1, "onAdminRemoved - Clean log"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "BluetoothLogTable"

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->remove(Ljava/lang/String;)Z

    .line 1506
    :cond_0
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 1516
    return-void
.end method

.method public removeBluetoothDevicesFromBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1253
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string/jumbo v6, "removeDevicesFromBlackList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1255
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1256
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1259
    .local v1, "ret":Z
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    .line 1268
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 1263
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1264
    .local v4, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->removeObjectsFromBlackList(ILjava/util/List;)Z

    move-result v1

    .line 1265
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1266
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 1267
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1268
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public removeBluetoothDevicesFromWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1325
    .local p2, "devices":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string/jumbo v6, "removeDevicesFromWhiteList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1327
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1328
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1331
    .local v1, "ret":Z
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    .line 1340
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 1335
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1336
    .local v4, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->removeObjectsFromWhiteList(ILjava/util/List;)Z

    move-result v1

    .line 1337
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1338
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->applyDevicePolicy()V

    .line 1339
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1340
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public removeBluetoothUUIDsFromBlackList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1086
    .local p2, "profileUUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string/jumbo v6, "removeProfilesFromBlackList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1088
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1089
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1092
    .local v1, "ret":Z
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    .line 1101
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 1096
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1097
    .local v4, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->removeObjectsFromBlackList(ILjava/util/List;)Z

    move-result v1

    .line 1098
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1099
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 1100
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1101
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public removeBluetoothUUIDsFromWhiteList(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Z
    .locals 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1158
    .local p2, "profileUUIDs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "BluetoothPolicyService"

    const-string/jumbo v6, "removeProfilesFromWhiteList"

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1160
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 1161
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 1164
    .local v1, "ret":Z
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    .line 1173
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_0
    return v2

    .line 1168
    .end local v2    # "ret":I
    .restart local v1    # "ret":Z
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1169
    .local v4, "token":J
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->removeObjectsFromWhiteList(ILjava/util/List;)Z

    move-result v1

    .line 1170
    const/4 v3, 0x1

    if-ne v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v3, v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->isPolicyActive(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1171
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 1172
    :cond_2
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v2, v1

    .line 1173
    .restart local v2    # "ret":I
    goto :goto_0
.end method

.method public setAllowBluetoothDataTransfer(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 363
    const-string v2, "BluetoothPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setAllowBluetoothDataTransfer = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 365
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 366
    .local v0, "token":J
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V

    .line 367
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 368
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "BLUETOOTH"

    const-string v5, "allowDataTransfer"

    invoke-virtual {v2, v3, v4, v5, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method public setBluetooth(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 219
    const/4 v9, 0x1

    .line 220
    .local v9, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 222
    .local v10, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "BLUETOOTH"

    const-string v3, "bluetoothEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 225
    const-string v0, "BluetoothPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBluetooth : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 227
    .local v7, "ba":Landroid/bluetooth/BluetoothAdapter;
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 239
    :cond_0
    :goto_0
    if-eqz v9, :cond_1

    .line 240
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BluetoothPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has changed bluetooth enabled to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    :cond_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 252
    .end local v7    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :goto_1
    return v9

    .line 231
    .restart local v7    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    .line 232
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 246
    .end local v7    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v8

    .line 247
    .local v8, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 248
    :try_start_2
    const-string v0, "BluetoothPolicyService"

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 250
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 234
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v7    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_3
    :try_start_3
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->delayedBTOff()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 250
    .end local v7    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 923
    const-string v2, "BluetoothPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBluetoothLogEnabled("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 927
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 928
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v2, "bluetoothLogEnabled"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "BLUETOOTH"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(ILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v1

    .line 932
    .local v1, "ret":Z
    if-nez p2, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 933
    const-string v2, "BluetoothPolicyService"

    const-string/jumbo v3, "setBluetoothLogEnabled - Clean log"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "BluetoothLogTable"

    invoke-virtual {v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->remove(Ljava/lang/String;)Z

    .line 935
    iget-object v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mLogQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 937
    :cond_0
    const-string v2, "BluetoothPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBluetoothLogEnabled - return = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    if-eqz v1, :cond_1

    .line 939
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isCacheUpdated:Z

    .line 941
    :cond_1
    return v1
.end method

.method public setDesktopConnectivityState(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 853
    const-string v3, "BluetoothPolicyService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setDesktopConnectivityState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 855
    const/4 v2, 0x0

    .line 856
    .local v2, "ret":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 858
    .local v4, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v7, "BLUETOOTH"

    const-string/jumbo v8, "desktopConnectivityEnabled"

    invoke-virtual {v3, v6, v7, v8, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    .line 860
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 861
    .local v0, "ba":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez p2, :cond_0

    .line 862
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->disableDesktopConnectivity()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 868
    .end local v0    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 869
    return v2

    .line 864
    :catch_0
    move-exception v1

    .line 865
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setDiscoverableState(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 785
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 786
    const/4 v8, 0x0

    .line 787
    .local v8, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 789
    .local v10, "token":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "BLUETOOTH"

    const-string/jumbo v3, "discoverableModeEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 791
    const-string v0, "BluetoothPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDiscoverableState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    if-eqz v8, :cond_0

    .line 793
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "BluetoothPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Admin "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_1

    const-string/jumbo v5, "enabled"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Bluetooth discoverable state."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    :cond_0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 807
    :goto_1
    return v8

    .line 793
    :cond_1
    :try_start_1
    const-string/jumbo v5, "disabled"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 800
    :catch_0
    move-exception v7

    .line 801
    .local v7, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    .line 802
    :try_start_2
    const-string v0, "BluetoothPolicyService"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 804
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public setLimitedDiscoverableState(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 509
    invoke-direct/range {p0 .. p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 510
    const/4 v11, 0x0

    .line 511
    .local v11, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v14

    .line 513
    .local v14, "token":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v4, "BLUETOOTH"

    const-string/jumbo v5, "limitedDiscoverableEnabled"

    move/from16 v0, p2

    invoke-virtual {v2, v3, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v11

    .line 515
    const-string v2, "BluetoothPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLimitedDiscoverableState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    if-eqz v11, :cond_0

    .line 517
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v9

    .line 518
    .local v9, "ba":Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isLimitedDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 520
    const/16 v2, 0x17

    invoke-virtual {v9, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 521
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V

    .line 529
    :goto_0
    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    const-string v6, "BluetoothPolicy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Admin "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p2, :cond_3

    const-string/jumbo v7, "enabled"

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Bluetooth limited discoverable state."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-static/range {v2 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    .end local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_0
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 543
    :goto_2
    return v11

    .line 523
    .restart local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "debug.bt.discoverable_time"

    const/4 v3, -0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 524
    .local v12, "timeout":I
    const/16 v2, 0x15

    invoke-virtual {v9, v2}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(I)Z

    .line 525
    const-string v2, "BluetoothPolicyService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Default discoverable_time : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    if-ltz v12, :cond_2

    .end local v12    # "timeout":I
    :goto_3
    invoke-virtual {v9, v12}, Landroid/bluetooth/BluetoothAdapter;->setDiscoverableTimeout(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 536
    .end local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :catch_0
    move-exception v10

    .line 537
    .local v10, "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    .line 538
    :try_start_2
    const-string v2, "BluetoothPolicyService"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 540
    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 526
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    .restart local v12    # "timeout":I
    :cond_2
    const/16 v12, 0x78

    goto :goto_3

    .line 529
    .end local v12    # "timeout":I
    :cond_3
    :try_start_3
    const-string/jumbo v7, "disabled"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 540
    .end local v9    # "ba":Landroid/bluetooth/BluetoothAdapter;
    :catchall_0
    move-exception v2

    invoke-static {v14, v15}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setPairingState(Landroid/app/enterprise/ContextInfo;Z)Z
    .locals 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z

    .prologue
    .line 407
    const-string v0, "BluetoothPolicyService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPairingState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 409
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const-string v2, "BLUETOOTH"

    const-string/jumbo v3, "pairingEnabled"

    invoke-virtual {v0, v1, v2, v3, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putBoolean(ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setProfileState(Landroid/app/enterprise/ContextInfo;ZI)Z
    .locals 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enable"    # Z
    .param p3, "profile"    # I

    .prologue
    .line 581
    const-string v6, "BluetoothPolicyService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setProfileState = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->enforceOwnerOnlyAndBluetoothPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 583
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .line 584
    .local v0, "callingUid":I
    const/4 v3, 0x0

    .line 585
    .local v3, "success":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 589
    .local v4, "token":J
    if-gtz p3, :cond_0

    .line 590
    :try_start_0
    new-instance v6, Ljava/security/InvalidParameterException;

    invoke-direct {v6}, Ljava/security/InvalidParameterException;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 605
    :catch_0
    move-exception v1

    .line 606
    .local v1, "e":Ljava/security/InvalidParameterException;
    const-string v6, "BluetoothPolicyService"

    const-string/jumbo v7, "setProfileState() failed: INVALID PARAMETER INPUT"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    .end local v1    # "e":Ljava/security/InvalidParameterException;
    :goto_0
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 611
    return v3

    .line 596
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string/jumbo v8, "profileSettings"

    invoke-virtual {v6, v0, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getInt(ILjava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/InvalidParameterException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 601
    .local v2, "lValue":I
    :goto_1
    const/4 v6, 0x1

    if-ne v6, p2, :cond_1

    or-int/2addr v2, p3

    .line 602
    :goto_2
    :try_start_2
    iget-object v6, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "BLUETOOTH"

    const-string/jumbo v8, "profileSettings"

    invoke-virtual {v6, v0, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putInt(ILjava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    .line 604
    invoke-direct {p0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->restartBluetooth()V
    :try_end_2
    .catch Ljava/security/InvalidParameterException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 607
    .end local v2    # "lValue":I
    :catch_1
    move-exception v1

    .line 608
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "BluetoothPolicyService"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 597
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 598
    .local v1, "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    const v2, 0xffff

    .restart local v2    # "lValue":I
    goto :goto_1

    .line 601
    .end local v1    # "e":Lcom/android/server/enterprise/storage/SettingNotFoundException;
    :cond_1
    xor-int/lit8 v6, p3, -0x1

    and-int/2addr v2, v6

    goto :goto_2
.end method

.method public systemReady()V
    .locals 1

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mProfilePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothProfilePolicy;->reload()Z

    .line 1510
    iget-object v0, p0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->mDevicePolicy:Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy$BluetoothDevicePolicy;->reload()Z

    .line 1511
    return-void
.end method

.method public translateList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/ControlInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/app/enterprise/BluetoothControlInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1357
    .local p1, "clist":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/ControlInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1358
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/enterprise/BluetoothControlInfo;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1359
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/enterprise/ControlInfo;

    .line 1360
    .local v3, "obj":Landroid/app/enterprise/ControlInfo;
    iget-object v4, v3, Landroid/app/enterprise/ControlInfo;->entries:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v3, Landroid/app/enterprise/ControlInfo;->entries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1362
    new-instance v1, Landroid/app/enterprise/BluetoothControlInfo;

    invoke-direct {v1}, Landroid/app/enterprise/BluetoothControlInfo;-><init>()V

    .line 1363
    .local v1, "info":Landroid/app/enterprise/BluetoothControlInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v1, Landroid/app/enterprise/BluetoothControlInfo;->entries:Ljava/util/List;

    .line 1364
    iget-object v4, v3, Landroid/app/enterprise/ControlInfo;->adminPackageName:Ljava/lang/String;

    iput-object v4, v1, Landroid/app/enterprise/BluetoothControlInfo;->adminPackageName:Ljava/lang/String;

    .line 1365
    iget-object v4, v1, Landroid/app/enterprise/BluetoothControlInfo;->entries:Ljava/util/List;

    iget-object v5, v3, Landroid/app/enterprise/ControlInfo;->entries:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1366
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1369
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/app/enterprise/BluetoothControlInfo;
    .end local v3    # "obj":Landroid/app/enterprise/ControlInfo;
    :cond_1
    return-object v2
.end method
