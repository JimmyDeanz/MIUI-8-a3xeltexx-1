.class public final Lcom/android/server/OemExtendedApi3LMService;
.super Landroid/os/IOemExtendedApi3LM$Stub;
.source "OemExtendedApi3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemExtendedApi3LMService$PublicKey3LM;
    }
.end annotation


# static fields
.field public static final ACTION_EMERGENCY_LOCK_ENABLED:Ljava/lang/String; = "android.action.emergencylockenabled"

.field private static final ACTION_NFC_POLICY_CHANGED:Ljava/lang/String; = "android.action.nfc.policychanged"

.field private static final API_VERSION:I = 0x1

.field private static final DEBUG:Z = false

.field private static final PROPERTY_FELICA_LOCKOUT:Ljava/lang/String; = "persist.security.felica.lockout"

.field private static final PROPERTY_NFC_LOCKOUT:Ljava/lang/String; = "persist.security.nfc.lockout"

.field private static final SCREEN_MODE_SETTING:Ljava/lang/String; = "my_profile_enabled"

.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_UNSUPPORTED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "OemExtendedApi3LM"

.field private static final is3LMAllowed:Z

.field private static mCurrentUserId:I


# instance fields
.field private FelicaSavedState:I

.field private SalesCode:Ljava/lang/String;

.field private binder:Lcom/samsung/felicaremotelock/IFelica;

.field private isSimulatorPermitted:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Landroid/os/IDeviceManager3LM;

.field private mEmergencyLockCallState:I

.field private mEmergencyLockState:I

.field private mHapticFeedbackVibrationIntensity:I

.field private mLockScreenSettings:I

.field private final mOem:Landroid/os/IDeviceManagerRestrictable3LM;

.field private mOneSegState:I

.field private mOwnerInfo:Ljava/lang/String;

.field private mOwnerInfoEnabled:I

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    const/4 v0, 0x0

    sput v0, Lcom/android/server/OemExtendedApi3LMService;->mCurrentUserId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/IDeviceManagerRestrictable3LM;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "oem"    # Landroid/os/IDeviceManagerRestrictable3LM;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 182
    invoke-direct {p0}, Landroid/os/IOemExtendedApi3LM$Stub;-><init>()V

    .line 62
    iput-boolean v4, p0, Lcom/android/server/OemExtendedApi3LMService;->isSimulatorPermitted:Z

    .line 71
    iput v3, p0, Lcom/android/server/OemExtendedApi3LMService;->mOwnerInfoEnabled:I

    .line 74
    const-string/jumbo v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->SalesCode:Ljava/lang/String;

    .line 79
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->binder:Lcom/samsung/felicaremotelock/IFelica;

    .line 80
    new-instance v2, Lcom/android/server/OemExtendedApi3LMService$1;

    invoke-direct {v2, p0}, Lcom/android/server/OemExtendedApi3LMService$1;-><init>(Lcom/android/server/OemExtendedApi3LMService;)V

    iput-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mConnection:Landroid/content/ServiceConnection;

    .line 322
    iput v3, p0, Lcom/android/server/OemExtendedApi3LMService;->FelicaSavedState:I

    .line 472
    new-instance v2, Lcom/android/server/OemExtendedApi3LMService$2;

    invoke-direct {v2, p0}, Lcom/android/server/OemExtendedApi3LMService$2;-><init>(Lcom/android/server/OemExtendedApi3LMService;)V

    iput-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 183
    iput-object p1, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    .line 184
    iput-object p2, p0, Lcom/android/server/OemExtendedApi3LMService;->mOem:Landroid/os/IDeviceManagerRestrictable3LM;

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 186
    const-string v2, "DeviceManager3LM"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Landroid/os/IDeviceManager3LM;

    iput-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    .line 188
    new-instance v2, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

    invoke-direct {v2, p1}, Lcom/android/server/DeviceManager3LMService$PublicKey3LM;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mPublicKey3LM:Lcom/android/server/DeviceManager3LMService$PublicKey3LM;

    .line 189
    iput v5, p0, Lcom/android/server/OemExtendedApi3LMService;->mOneSegState:I

    .line 191
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/felicaremotelock/IFelica;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.felicaremotelock"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v2, "OemExtendedApi3LM"

    const-string v3, "OemExtendedApi3LMService:  Bind to Felica Service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/OemExtendedApi3LMService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v1, v3, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 196
    iput v4, p0, Lcom/android/server/OemExtendedApi3LMService;->mEmergencyLockState:I

    .line 198
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 199
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    iget-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/OemExtendedApi3LMService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/OemExtendedApi3LMService;Lcom/samsung/felicaremotelock/IFelica;)Lcom/samsung/felicaremotelock/IFelica;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemExtendedApi3LMService;
    .param p1, "x1"    # Lcom/samsung/felicaremotelock/IFelica;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/server/OemExtendedApi3LMService;->binder:Lcom/samsung/felicaremotelock/IFelica;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/OemExtendedApi3LMService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/OemExtendedApi3LMService;
    .param p1, "x1"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/OemExtendedApi3LMService;->setCurrentUserId(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/OemExtendedApi3LMService;)Landroid/os/IDeviceManager3LM;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/OemExtendedApi3LMService;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mDeviceManager:Landroid/os/IDeviceManager3LM;

    return-object v0
.end method

.method private getCurrentUserId()I
    .locals 3

    .prologue
    .line 468
    const-string v0, "OemExtendedApi3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OemExtendedApi3LMService.getCurrentUserId(): userId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/OemExtendedApi3LMService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    sget v0, Lcom/android/server/OemExtendedApi3LMService;->mCurrentUserId:I

    return v0
.end method

.method private isAccessPermitted()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method private setCurrentUserId(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 463
    sput p1, Lcom/android/server/OemExtendedApi3LMService;->mCurrentUserId:I

    .line 464
    const-string v0, "OemExtendedApi3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OemExtendedApi3LMService.setCurrentUserId(): userId is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/OemExtendedApi3LMService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return-void
.end method

.method private setFelicaSavedState(I)V
    .locals 0
    .param p1, "CurentState"    # I

    .prologue
    .line 332
    iput p1, p0, Lcom/android/server/OemExtendedApi3LMService;->FelicaSavedState:I

    .line 333
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 265
    const-string v0, "OemExtendedApi3LM"

    const-string v1, "OEM clear()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method

.method public getEmergencyLockState()I
    .locals 3

    .prologue
    .line 443
    const-string v0, "OemExtendedApi3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3LM getEmergencyLockState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mEmergencyLockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "emergency_lock_call_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mEmergencyLockCallState:I

    .line 445
    const-string v0, "OemExtendedApi3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning from getEmergencyLockState() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mEmergencyLockCallState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mEmergencyLockCallState:I

    return v0
.end method

.method public getFelicaSavedState()I
    .locals 1

    .prologue
    .line 328
    iget v0, p0, Lcom/android/server/OemExtendedApi3LMService;->FelicaSavedState:I

    return v0
.end method

.method public getFelicaState()I
    .locals 1

    .prologue
    .line 297
    const/4 v0, 0x1

    return v0
.end method

.method public getInfraredState()I
    .locals 1

    .prologue
    .line 418
    const/4 v0, -0x1

    return v0
.end method

.method public getIsSimulatorPermitted()Z
    .locals 1

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/server/OemExtendedApi3LMService;->isSimulatorPermitted:Z

    return v0
.end method

.method public getOneSegState()I
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x1

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 254
    const/4 v0, -0x1

    return v0
.end method

.method public setEmergencyLock(ZLjava/lang/String;Z)Z
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "alarm"    # Z

    .prologue
    .line 523
    const/4 v0, 0x1

    return v0
.end method

.method public setEmergencyLockState(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    .line 453
    const-string v0, "OemExtendedApi3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "3LM setEmergencyLockState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-direct {p0}, Lcom/android/server/OemExtendedApi3LMService;->isAccessPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "emergency_lock_call_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 457
    const-string v0, "OemExtendedApi3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Verify value after setting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OemExtendedApi3LMService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "emergency_lock_call_state"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setFelicaState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 340
    return-void
.end method

.method public setInfraredState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 432
    return-void
.end method

.method public setOneSegState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 394
    return-void
.end method

.method public setisSimulatorPermitted(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 98
    const-string v0, "OemExtendedApi3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OEM extended3LM setisSimulatorPermitted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput-boolean p1, p0, Lcom/android/server/OemExtendedApi3LMService;->isSimulatorPermitted:Z

    .line 100
    const-string v0, "OemExtendedApi3LM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oem extended isSimulatorPermitted is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemExtendedApi3LMService;->isSimulatorPermitted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void
.end method
