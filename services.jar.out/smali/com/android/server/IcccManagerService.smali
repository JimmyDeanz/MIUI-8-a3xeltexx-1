.class public Lcom/android/server/IcccManagerService;
.super Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;
.source "IcccManagerService.java"


# static fields
.field private static final ACTION_BCS_REQUEST:Ljava/lang/String; = "com.samsung.intent.action.BCS_REQUEST"

.field private static final ACTION_BCS_RESPONSE:Ljava/lang/String; = "com.samsung.intent.action.BCS_RESPONSE"

.field private static final ACTION_SYSSCOPESTATUS:Ljava/lang/String; = "com.sec.intent.action.SYSSCOPESTATUS"

.field private static final CURR_BIN_STATUS:I = -0xffff6

.field private static final NOK:I = 0x2

.field private static final NOT_SCANNED:I = -0x1

.field private static final OK:I = 0x1

.field private static final REQUEST_AT_COMMAND:Ljava/lang/String; = "AT+ICCCINFO=1,0,0"

.field private static final SYSSCOPE_FLAG:I = -0xe00000

.field private static final WARRANTY_BIT:I = -0xffff4

.field private static mSysScopeResult:I


# instance fields
.field TAG:Ljava/lang/String;

.field icccBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, -0x1

    sput v0, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/iccc/IIntegrityControlCheckCenter$Stub;-><init>()V

    .line 35
    const-string v1, "ICCC"

    iput-object v1, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    .line 64
    new-instance v1, Lcom/android/server/IcccManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/IcccManagerService$1;-><init>(Lcom/android/server/IcccManagerService;)V

    iput-object v1, p0, Lcom/android/server/IcccManagerService;->icccBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    iget-object v1, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Start IcccManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iput-object p1, p0, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "com.samsung.intent.action.BCS_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/IcccManagerService;->icccBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 62
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 34
    sget v0, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 34
    sput p0, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/IcccManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/IcccManagerService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->enforcePermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/IcccManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/IcccManagerService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->setSysScopeField()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/IcccManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/IcccManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/IcccManagerService;->get_iccc_response_data(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/IcccManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/IcccManagerService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/server/IcccManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private enforcePermission()Z
    .locals 2

    .prologue
    .line 166
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 167
    .local v0, "uid":I
    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    .line 168
    const/4 v1, 0x1

    .line 170
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static native get_Trusted_Boot_Data()I
.end method

.method private get_iccc_response_data(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "iccc_response"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "result":I
    const v1, -0xffff4

    invoke-static {v1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v0

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 104
    const v1, -0xffff6

    invoke-static {v1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 106
    const/high16 v1, -0xe00000

    invoke-static {v1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 108
    return-object p1
.end method

.method static native iccc_readData_platform(I)I
.end method

.method static native iccc_saveData_platform(II)I
.end method

.method private setSysScopeField()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/high16 v6, -0xe00000

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 116
    .local v0, "ut":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 117
    const-wide/16 v0, 0x1

    .line 120
    :cond_0
    sget v2, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    if-ne v2, v7, :cond_2

    const-wide/16 v2, 0x78

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 121
    iget-object v2, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v3, "There is some problem in SysScope. Keep it uninitialized"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_1
    :goto_0
    return-void

    .line 123
    :cond_2
    sget v2, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    if-ne v2, v8, :cond_3

    .line 124
    iget-object v2, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Saving SysScope Value : OK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v2, 0x0

    invoke-static {v6, v2}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I

    goto :goto_0

    .line 126
    :cond_3
    sget v2, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    if-ne v2, v9, :cond_4

    .line 127
    iget-object v2, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Saving SysScope Value : NOK"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {v6, v8}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I

    goto :goto_0

    .line 129
    :cond_4
    sget v2, Lcom/android/server/IcccManagerService;->mSysScopeResult:I

    if-ne v2, v7, :cond_1

    .line 130
    iget-object v2, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Saving SysScope Value : NOT_SCANNED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-static {v6, v9}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I

    goto :goto_0
.end method


# virtual methods
.method public getSecureData(I)I
    .locals 1
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    const/4 v0, 0x0

    .line 139
    .local v0, "result":I
    invoke-static {p1}, Lcom/android/server/IcccManagerService;->iccc_readData_platform(I)I

    move-result v0

    .line 140
    return v0
.end method

.method public getTrustedBootData()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "result":I
    invoke-static {}, Lcom/android/server/IcccManagerService;->get_Trusted_Boot_Data()I

    move-result v0

    .line 161
    return v0
.end method

.method public setSecureData(II)I
    .locals 3
    .param p1, "type"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/IcccManagerService;->enforcePermission()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    invoke-static {p1, p2}, Lcom/android/server/IcccManagerService;->iccc_saveData_platform(II)I

    move-result v0

    .line 153
    :goto_0
    return v0

    .line 150
    :cond_0
    iget-object v1, p0, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Not System UID. Only system UID caller can change status"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, -0x1

    goto :goto_0
.end method
