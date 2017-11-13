.class public Lcom/android/internal/widget/LockPatternUtils;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternUtils$registerCardCallback;,
        Lcom/android/internal/widget/LockPatternUtils$verifyCardCallback;,
        Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;,
        Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;,
        Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;,
        Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;
    }
.end annotation


# static fields
.field public static final APP_LOCK_FINGERPRINT_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.applock_fingerprint"

.field public static final BIOMETRIC_WEAK_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.biometricweakeverchosen"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field public static final DISABLE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.disabled"

.field public static final ENABLED_FINGERPRINT_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.enabled_fingerprint"

.field private static final ENABLED_TRUST_AGENTS:Ljava/lang/String; = "lockscreen.enabledtrustagents"

.field public static final ENTERPRISEID_TYPE_KEY:Ljava/lang/String; = "lockscreen.enterpriseidentity_type"

.field public static final FAILED_ATTEMPTS_BEFORE_RESET:I = 0x14

.field public static final FAILED_ATTEMPTS_BEFORE_TIMEOUT:I = 0x5

.field public static final FAILED_ATTEMPTS_BEFORE_WIPE_GRACE:I = 0x5

.field public static final FAILED_ATTEMPT_COUNTDOWN_INTERVAL_MS:J = 0x3e8L

.field private static final FAILED_ATTEMPT_TIMEOUT_MS:J = 0x7530L

.field private static final FAILED_ATTEMPT_TIMEOUT_MS_LEVEL2:J = 0xea60L

.field private static final FAILED_ATTEMPT_TIMEOUT_MS_LEVEL3:J = 0x493e0L

.field private static final FAILED_ATTEMPT_TIMEOUT_MS_LEVEL4:J = 0x927c0L

.field private static final FAILED_ATTEMPT_TIMEOUT_MS_LEVEL5:J = 0x1b7740L

.field private static final FAILED_ATTEMPT_TIMEOUT_MS_LEVEL6:J = 0x36ee80L

.field public static final FINGERPRINT_LOCKSCREEN_OFF:I = 0x0

.field public static final FINGERPRINT_LOCKSCREEN_ON:I = 0x1

.field public static final FINGERPRINT_LOCKSCREEN_OPTIONAL:I = 0x2

.field public static final FLAG_ENTERPRISEID_SELECTED:Ljava/lang/String; = "lockscreen.enterpriseidentity_selected"

.field public static final FMM_LOCK:I = 0x0

.field public static final LGT_REJECT_CAUSE_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.lgt_reject_cause"

.field public static final LOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "lockscreen.lockoutattemptdeadline"

.field public static final LOCKOUT_ATTEMPT_TIMEOUT_MS:Ljava/lang/String; = "lockscreen.lockoutattempttimeoutmss"

.field public static final LOCKOUT_PERMANENT_KEY:Ljava/lang/String; = "lockscreen.lockedoutpermanently"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKOUT_RECOVERY_KEY:Ljava/lang/String; = "lockscreen.lockedoutRecovery"

.field public static final LOCKSCREEN_BIOMETRIC_WEAK_FALLBACK:Ljava/lang/String; = "lockscreen.biometric_weak_fallback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCKSCREEN_OPTIONS:Ljava/lang/String; = "lockscreen.options"

.field public static final LOCKSCREEN_POWER_BUTTON_INSTANTLY_LOCKS:Ljava/lang/String; = "lockscreen.power_button_instantly_locks"

.field public static final LOCKSCREEN_WIDGETS_ENABLED:Ljava/lang/String; = "lockscreen.widgets_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LOCK_PASSWORD_SALT_KEY:Ljava/lang/String; = "lockscreen.password_salt"

.field private static final LOCK_SCREEN_OWNER_INFO:Ljava/lang/String; = "lock_screen_owner_info"

.field private static final LOCK_SCREEN_OWNER_INFO_ENABLED:Ljava/lang/String; = "lock_screen_owner_info_enabled"

.field public static final MAX_ALLOWED_SEQUENCE:I = 0x3

.field private static final MIGRATION_FINGERPRINT_FOTA_KEY:Ljava/lang/String; = "migrated_fingerprint_fota_key"

.field public static final MIN_LOCK_PASSWORD_SIZE:I = 0x4

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field public static final MIN_PATTERN_REGISTER_FAIL:I = 0x4

.field public static final PASSWORD_HISTORY_KEY:Ljava/lang/String; = "lockscreen.passwordhistory"

.field public static final PASSWORD_TYPE_ALTERNATE_KEY:Ljava/lang/String; = "lockscreen.password_type_alternate"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final PASSWORD_TYPE_KEY:Ljava/lang/String; = "lockscreen.password_type"

.field private static final PATH_PERMANENT_MEM_LOCK_FOLDER:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem"

.field private static final PATH_PERMANENT_MEM_LOCK_INFO:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/lawlock.txt"

.field private static final PATH_PERMANENT_MEM_LOCK_INFO_ENC:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/enclawlock.txt"

.field private static final PATH_PERMANENT_MEM_LOCK_MSG_INFO:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/lawlockmsg.txt"

.field private static final PATH_PERMANENT_MEM_LOCK_MSG_INFO_ENC:Ljava/lang/String; = "/efs/sec_efs/sktdm_mem/enclawlockmsg.txt"

.field public static final PATTERN_EVER_CHOSEN_KEY:Ljava/lang/String; = "lockscreen.patterneverchosen"

.field public static final PRIVATE_MODE_FINGERPRINT_LOCKSCREEN_KEY:Ljava/lang/String; = "lockscreen.privatemode_fingerprint"

.field private static final SECURE_DEBUG:Z

.field public static final SKTLOCKOUT_ATTEMPT_DEADLINE:Ljava/lang/String; = "sktlockscreen.lockoutdeadline"

.field private static final SKT_CARRIERLOCK_MODE_FILE:Ljava/lang/String; = "/efs/sms/sktcarrierlockmode"

.field public static final SKT_CARRIER_LOCK:I = 0x1

.field public static final SKT_FAILED_ATTEMPT_TIMEOUT_MS:J = 0x927c0L

.field public static final SMARTCARD_TYPE_KEY:Ljava/lang/String; = "lockscreen.smartcard_type"

.field private static final TAG:Ljava/lang/String; = "LockPatternUtils"

.field private static final TEXT_SEPERATOR:C = ':'

.field public static final UNIVERSAL_LOCK_ENABLED:Ljava/lang/String; = "isUniversalLock"

.field private static cacPasswordSetProgress:Z = false

.field private static failedUnlockAttemptNumber:J = 0x0L

.field private static final ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

.field private static lockChecksum:Ljava/lang/String; = null

.field private static lockChecksumUnlock:Ljava/lang/String; = null

.field private static lockMsg:Ljava/lang/String; = null

.field private static lockMsgUnlock:Ljava/lang/String; = null

.field private static lockPassword:Ljava/lang/String; = null

.field private static lockPasswordUnlock:Ljava/lang/String; = null

.field private static lockSaveMsg:Ljava/lang/String; = null

.field private static lockSaveMsgUnlock:Ljava/lang/String; = null

.field private static lockType:Ljava/lang/String; = null

.field private static lockTypeUnlock:Ljava/lang/String; = null

.field private static mIsCallbackCalled:Z = false

.field private static final mSCafeName:Ljava/lang/String;

.field private static mScVerifyStatus:I = 0x0

.field private static mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager; = null

.field private static final mSmsPortAddressedMessage:Z = false

.field private static mSwipeSmartLock:Z = false

.field private static volatile sCurrentUserId:I = 0x0

.field private static final secretKey:Ljava/lang/String; = "SKT : Find lost phone plus !!!"


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final mMultiUserMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->SECURE_DEBUG:Z

    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    const-string v2, "i_love_office_tg"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    const-string v0, ""

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockMsg:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockSaveMsg:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockMsgUnlock:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->lockSaveMsgUnlock:Ljava/lang/String;

    const-string v0, "ro.build.scafe"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->mSCafeName:Ljava/lang/String;

    sput v1, Lcom/android/internal/widget/LockPatternUtils;->mScVerifyStatus:I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/widget/LockPatternUtils;->mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    sput-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->cacPasswordSetProgress:Z

    sput-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->mSwipeSmartLock:Z

    const/16 v0, -0x2710

    sput v0, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mMultiUserMode:Z

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen.failedUnlockAttemptNumber"

    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    sput p0, Lcom/android/internal/widget/LockPatternUtils;->mScVerifyStatus:I

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    sput-boolean p0, Lcom/android/internal/widget/LockPatternUtils;->mIsCallbackCalled:Z

    return p0
.end method

.method private static categoryChar(C)I
    .locals 1
    .param p0, "c"    # C

    .prologue
    const/16 v0, 0x61

    if-gt v0, p0, :cond_0

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    if-gt v0, p0, :cond_2

    const/16 v0, 0x39

    if-gt p0, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private clearLockExceptPwd()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLockExceptPwd(I)V

    return-void
.end method

.method private clearLockExceptPwd(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->updateCACAuthentication(I)V

    return-void
.end method

.method public static computePasswordQuality(Ljava/lang/String;)I
    .locals 6
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .local v0, "hasDigit":Z
    const/4 v1, 0x0

    .local v1, "hasNonDigit":Z
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    const/high16 v4, 0x50000

    :goto_2
    return v4

    :cond_2
    if-eqz v1, :cond_3

    const/high16 v4, 0x40000

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/android/internal/widget/LockPatternUtils;->maxLengthSequence(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    if-le v4, v5, :cond_4

    const/high16 v4, 0x20000

    goto :goto_2

    :cond_4
    const/high16 v4, 0x30000

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private generateRecoveryPassword()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Lcom/android/internal/widget/RandomString;->randomstring()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBoolean(Ljava/lang/String;ZI)Z
    .locals 5
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z
    .param p3, "userId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->getBoolean(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result p2

    .end local p2    # "defaultValue":Z
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :catch_0
    move-exception v1

    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_0

    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t read boolean "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCurrentOrCallingUserId()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mMultiUserMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    goto :goto_0
.end method

.method private getKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .local v0, "digest":Ljava/security/MessageDigest;
    const-string v2, "SKT : Find lost phone plus !!!"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->update([B)V

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    const-string v3, "AES"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .local v1, "key":Ljavax/crypto/spec/SecretKeySpec;
    return-object v1
.end method

.method private getLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 2

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v1, :cond_0

    const-string v1, "lock_settings"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    .local v0, "service":Lcom/android/internal/widget/ILockSettings;
    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    .end local v0    # "service":Lcom/android/internal/widget/ILockSettings;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v1
.end method

.method private getLong(Ljava/lang/String;JI)J
    .locals 6
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J
    .param p4, "userHandle"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->getLong(Ljava/lang/String;JI)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide p2

    .end local p2    # "defaultValue":J
    :goto_0
    return-wide p2

    .restart local p2    # "defaultValue":J
    :catch_0
    move-exception v1

    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_0

    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t read long "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getProfiles(I)Ljava/util/List;
    .locals 11
    .param p0, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .local v3, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_0
    const-string v9, "user"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v7

    .local v7, "um":Landroid/os/IUserManager;
    if-eqz v7, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v4, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :try_start_1
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v8

    .local v8, "versionInfo":Landroid/os/Bundle;
    if-eqz v8, :cond_4

    const-string v9, "2.0"

    const-string v10, "version"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v7, p0}, Landroid/os/IUserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    .local v6, "uinfo":Landroid/content/pm/UserInfo;
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    move-object v3, v4

    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "uinfo":Landroid/content/pm/UserInfo;
    .end local v7    # "um":Landroid/os/IUserManager;
    .end local v8    # "versionInfo":Landroid/os/Bundle;
    .restart local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_1
    :goto_0
    return-object v3

    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v6    # "uinfo":Landroid/content/pm/UserInfo;
    .restart local v7    # "um":Landroid/os/IUserManager;
    .restart local v8    # "versionInfo":Landroid/os/Bundle;
    :cond_2
    const/4 v9, 0x0

    invoke-interface {v7, p0, v9}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;

    move-result-object v5

    .local v5, "profilesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .local v2, "pi":Landroid/content/pm/UserInfo;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isKnoxWorkspace()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "pi":Landroid/content/pm/UserInfo;
    .end local v5    # "profilesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v6    # "uinfo":Landroid/content/pm/UserInfo;
    .end local v8    # "versionInfo":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    move-object v3, v4

    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "um":Landroid/os/IUserManager;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :goto_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "um":Landroid/os/IUserManager;
    .restart local v8    # "versionInfo":Landroid/os/Bundle;
    :cond_4
    const/4 v9, 0x0

    :try_start_2
    invoke-interface {v7, p0, v9}, Landroid/os/IUserManager;->getProfiles(IZ)Ljava/util/List;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v3

    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_0

    .end local v7    # "um":Landroid/os/IUserManager;
    .end local v8    # "versionInfo":Landroid/os/Bundle;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v7    # "um":Landroid/os/IUserManager;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v3    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    goto :goto_3

    .end local v7    # "um":Landroid/os/IUserManager;
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method private getRequestedPasswordHistoryLength(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method private getSalt(I)Ljava/lang/String;
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v4, 0x0

    const-string v1, "lockscreen.password_salt"

    invoke-direct {p0, v1, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    .local v2, "salt":J
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "SHA1PRNG"

    invoke-static {v1}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v2

    const-string v1, "lockscreen.password_salt"

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    const-string v1, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Initialized lock password salt for user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Couldn\'t get SecureRandom number"

    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "tContext":Landroid/content/Context;
    :goto_0
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getInstance()Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getSmartcardPinMgr(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v1

    sput-object v1, Lcom/android/internal/widget/LockPatternUtils;->mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    return-object v1

    .end local v0    # "tContext":Landroid/content/Context;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getSmartcardPinManager_Sync()Lcom/sec/smartcard/pinservice/SmartCardPinManager;
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .local v0, "tContext":Landroid/content/Context;
    :goto_0
    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getInstance()Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getSmartcardPinMgr_Sync(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v1

    sput-object v1, Lcom/android/internal/widget/LockPatternUtils;->mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->mSmartcardPinMgr:Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    return-object v1

    .end local v0    # "tContext":Landroid/content/Context;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method private getString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "userHandle"    # I

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, p1, v4, p2}, Lcom/android/internal/widget/ILockSettings;->getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    :goto_0
    return-object v2

    :catch_0
    move-exception v1

    .local v1, "re":Landroid/os/RemoteException;
    goto :goto_0

    .end local v1    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t read String "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getTrustManager()Landroid/app/trust/TrustManager;
    .locals 5

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v2, "trust"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .local v0, "trust":Landroid/app/trust/TrustManager;
    if-nez v0, :cond_0

    const-string v1, "LockPatternUtils"

    const-string v2, "Can\'t get TrustManagerService: is it running?"

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Stack trace:"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method

.method public static isDeviceEncrypted()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .local v0, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    invoke-interface {v0}, Landroid/os/storage/IMountService;->getEncryptionState()I

    move-result v3

    if-eq v3, v2, :cond_0

    invoke-interface {v0}, Landroid/os/storage/IMountService;->getPasswordType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eq v3, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    const-string v4, "Error getting encryption state"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static isDeviceEncryptionEnabled()Z
    .locals 3

    .prologue
    const-string v1, "ro.crypto.state"

    const-string v2, "unsupported"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "status":Ljava/lang/String;
    const-string v1, "encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private isDoNotAskCredentialsOnBootSet()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v0

    return v0
.end method

.method private isFollowLegacyTimeoutPolicy()Z
    .locals 2

    .prologue
    const-string v0, "mocha"

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "americano"

    sget-object v1, Lcom/android/internal/widget/LockPatternUtils;->mSCafeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isKnoxUser(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "ret":Z
    const/16 v2, 0x64

    if-lt p1, v2, :cond_0

    const/16 v2, 0xc8

    if-gt p1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .local v0, "pm":Landroid/os/PersonaManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    .end local v0    # "pm":Landroid/os/PersonaManager;
    :cond_0
    return v1
.end method

.method private isLockPasswordEnabled(II)Z
    .locals 10
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "lockscreen.password_type_alternate"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p2}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-long v2, v6

    .local v2, "backupMode":J
    const/high16 v6, 0x40000

    if-eq p1, v6, :cond_0

    const/high16 v6, 0x20000

    if-eq p1, v6, :cond_0

    const/high16 v6, 0x30000

    if-eq p1, v6, :cond_0

    const/high16 v6, 0x50000

    if-eq p1, v6, :cond_0

    const/high16 v6, 0x60000

    if-eq p1, v6, :cond_0

    const/high16 v6, 0x70000

    if-ne p1, v6, :cond_3

    :cond_0
    move v1, v5

    .local v1, "passwordEnabled":Z
    :goto_0
    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x30000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-nez v6, :cond_4

    :cond_1
    move v0, v5

    .local v0, "backupEnabled":Z
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExists(I)Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak(I)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    :cond_2
    :goto_2
    return v5

    .end local v0    # "backupEnabled":Z
    .end local v1    # "passwordEnabled":Z
    :cond_3
    move v1, v4

    goto :goto_0

    .restart local v1    # "passwordEnabled":Z
    :cond_4
    move v0, v4

    goto :goto_1

    .restart local v0    # "backupEnabled":Z
    :cond_5
    move v5, v4

    goto :goto_2
.end method

.method private isLockPatternEnabled(II)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    const/high16 v0, 0x10000

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLockUniversalEnabled(II)Z
    .locals 1
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static maxDiffCategory(I)I
    .locals 1
    .param p0, "category"    # I

    .prologue
    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const/16 v0, 0xa

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static maxLengthSequence(Ljava/lang/String;)I
    .locals 12
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_0

    :goto_0
    return v7

    :cond_0
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .local v8, "previousChar":C
    invoke-static {v8}, Lcom/android/internal/widget/LockPatternUtils;->categoryChar(C)I

    move-result v0

    .local v0, "category":I
    const/4 v5, 0x0

    .local v5, "diff":I
    const/4 v6, 0x0

    .local v6, "hasDiff":Z
    const/4 v7, 0x0

    .local v7, "maxLength":I
    const/4 v9, 0x0

    .local v9, "startSequence":I
    const/4 v2, 0x1

    .local v2, "current":I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v2, v10, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .local v3, "currentChar":C
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->categoryChar(C)I

    move-result v1

    .local v1, "categoryCurrent":I
    sub-int v4, v3, v8

    .local v4, "currentDiff":I
    if-ne v1, v0, :cond_1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->maxDiffCategory(I)I

    move-result v11

    if-le v10, v11, :cond_2

    :cond_1
    sub-int v10, v2, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v9, v2

    const/4 v6, 0x0

    move v0, v1

    :goto_2
    move v8, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_3

    if-eq v4, v5, :cond_3

    sub-int v10, v2, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/lit8 v9, v2, -0x1

    :cond_3
    move v5, v4

    const/4 v6, 0x1

    goto :goto_2

    .end local v1    # "categoryCurrent":I
    .end local v3    # "currentChar":C
    .end local v4    # "currentDiff":I
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    goto :goto_0
.end method

.method private onAfterChangingPassword(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    return-void
.end method

.method public static patternStringToBaseZero(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    if-nez p0, :cond_0

    const-string v4, ""

    :goto_0
    return-object v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "patternSize":I
    new-array v3, v2, [B

    .local v3, "res":[B
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    aget-byte v4, v0, v1

    add-int/lit8 v4, v4, -0x31

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method public static patternToHash(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "patternSize":I
    new-array v6, v5, [B

    .local v6, "res":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v5, :cond_1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    :try_start_0
    const-string v7, "SHA-1"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .local v3, "md":Ljava/security/MessageDigest;
    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "hash":[B
    goto :goto_0

    .end local v1    # "hash":[B
    .end local v3    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v4

    .local v4, "nsa":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v6

    goto :goto_0
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    const-string v4, ""

    :goto_0
    return-object v4

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "patternSize":I
    new-array v3, v2, [B

    .local v3, "res":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x31

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private saveLockFingerprintPasswordwithoutQuality(Ljava/lang/String;I)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprintPasswordwithoutQuality(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method private saveLockFingerprintPasswordwithoutQuality(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedpassword"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v10

    .local v10, "computedQuality":I
    if-eqz v10, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->setContainerPasswordState(Ljava/lang/String;Ljava/lang/String;I)V

    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "computedQuality":I
    :goto_0
    return-void

    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v10    # "computedQuality":I
    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v10    # "computedQuality":I
    :catch_0
    move-exception v11

    .local v11, "re":Ljava/lang/Exception;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save Fingerprint lock password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v11    # "re":Ljava/lang/Exception;
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private savedPasswordExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private savedPasswordExistsNoCache()Z
    .locals 4

    .prologue
    const-string v2, "lock_settings"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    .local v1, "lockSettingsService":Lcom/android/internal/widget/ILockSettings;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->havePassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    const-string v3, "Unable to reach LockSettingsService"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    return-void
.end method

.method private setBoolean(Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setBoolean(Ljava/lang/String;ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write boolean "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setLockoutAttemptDeadlineInAbnormalCase(IJ)J
    .locals 4
    .param p1, "userId"    # I
    .param p2, "timeout"    # J

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "deadline":J
    add-long/2addr v0, p2

    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    return-wide v0
.end method

.method private setLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    return-void
.end method

.method private setLong(Ljava/lang/String;JI)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userHandle"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->setLong(Ljava/lang/String;JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write long "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "secureSettingKey"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t write string "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private shouldEncryptWithCredentials(Z)Z
    .locals 1
    .param p1, "defaultValue"    # Z

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->isDoNotAskCredentialsOnBootSet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    if-nez p0, :cond_1

    const/4 v3, 0x0

    :cond_0
    return-object v3

    :cond_1
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v3

    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    aget-byte v4, v1, v2

    add-int/lit8 v4, v4, -0x31

    int-to-byte v0, v4

    .local v0, "b":B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static toHex([B)Ljava/lang/String;
    .locals 6
    .param p0, "ary"    # [B

    .prologue
    const-string v0, "0123456789ABCDEF"

    .local v0, "hex":Ljava/lang/String;
    const-string v2, ""

    .local v2, "ret":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    shr-int/lit8 v5, v5, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "0123456789ABCDEF"

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method private updateCACAuthentication()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isCACPasswordEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->cacPasswordSetProgress:Z

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.smartcard.pinservice.action.SMARTCARD_PIN_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "LockPatternUtils"

    const-string v2, "updateCACAuthentication: send broadcast"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->cacPasswordSetProgress:Z

    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private updateCACAuthentication(I)V
    .locals 6
    .param p1, "quality"    # I

    .prologue
    const/high16 v5, 0x70000

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCACAuthentication "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->updateCACAuthentication()V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->update_lockscreen_type(I)V

    if-ne p1, v5, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setCACPasswordEnabled(Z)Z

    const-string v0, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCACPasswordEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne p1, v5, :cond_1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private updateCryptoUserInfo(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    if-eqz p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "ownerInfo":Ljava/lang/String;
    :goto_1
    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .local v3, "service":Landroid/os/IBinder;
    if-nez v3, :cond_2

    const-string v4, "LockPatternUtils"

    const-string v5, "Could not find the mount service to update the user info"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "ownerInfo":Ljava/lang/String;
    .end local v3    # "service":Landroid/os/IBinder;
    :cond_1
    const-string v2, ""

    goto :goto_1

    .restart local v2    # "ownerInfo":Ljava/lang/String;
    .restart local v3    # "service":Landroid/os/IBinder;
    :cond_2
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string v4, "LockPatternUtils"

    const-string v5, "Setting owner info"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "OwnerInfo"

    invoke-interface {v1, v4, v2}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    const-string v5, "Error changing user info"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private updateEncryptionPassword(ILjava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, "service":Landroid/os/IBinder;
    if-nez v0, :cond_1

    const-string v1, "LockPatternUtils"

    const-string v2, "Could not find the mount service to update the encryption password"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils$1;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils$1;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/IBinder;ILjava/lang/String;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private updateEnterpriseIdentityLock(I)V
    .locals 6
    .param p1, "userId"    # I

    .prologue
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "lockscreen.enterpriseidentity_selected"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .local v1, "eIdChoosenByUser":I
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEnterpriseIdentityLock: eIdChoosenByUser: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "user: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Enterprise ID status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, "isEidLockNeedToSet":Z
    if-lez v1, :cond_0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentitySelected(ZI)Z

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentityLock(ZI)Z

    :cond_1
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEnterpriseIdentityLock: EidState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "eIdChoosenByUser":I
    .end local v2    # "isEidLockNeedToSet":Z
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private update_lockscreen_type(I)V
    .locals 4
    .param p1, "quality"    # I

    .prologue
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.sec.smartcard.pinservice.action.SMARTCARD_LOCKTYPE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x70000

    if-ne p1, v1, :cond_0

    const-string v1, "Type"

    const-string v2, "Smartcard"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCACAuthentication: send broadcast "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/widget/LockPatternUtils;->cacPasswordSetProgress:Z

    return-void

    :cond_0
    const-string v1, "Type"

    const-string v2, "Other"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public checkAppLockPassword(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)Z
    .locals 2
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p3, "userId"    # I

    .prologue
    :try_start_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPin(Ljava/lang/String;I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPassword(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockPattern(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_3

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->checkAppLockBackupPin(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkBackupPassword(Ljava/lang/String;IZ)Z
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "useKeystore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v6

    invoke-interface {v6, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->checkBackupPassword(Ljava/lang/String;IZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .local v3, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkBackupPassword resCode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "useKeystore:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    invoke-virtual {v0, p1}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/app/admin/DevicePolicyManager;->setNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;Z)V

    .end local v0    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    :goto_0
    return v4

    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v6

    if-ne v6, v4, :cond_2

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v6

    invoke-direct {v4, v6}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v4

    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v2

    .local v2, "re":Landroid/os/RemoteException;
    move v4, v5

    goto :goto_0

    .end local v2    # "re":Landroid/os/RemoteException;
    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_2
    const-string v4, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkBackupPassword resCode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    goto :goto_0
.end method

.method public checkBackupPin(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkBackupPin(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_0

    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    return v2

    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-ne v4, v2, :cond_1

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v2

    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    move v2, v3

    goto :goto_0

    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    const-string v2, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkBackupPin resCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0
.end method

.method public checkFingerprintPassword(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->checkFingerprintPassword(Ljava/lang/String;IZ)Z

    move-result v0

    return v0
.end method

.method public checkFingerprintPassword(Ljava/lang/String;IZ)Z
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "useKeystore"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .local v1, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v6

    invoke-interface {v6, p1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->checkBackupPassword(Ljava/lang/String;IZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v3

    .local v3, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    const-string v6, "LockPatternUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkBackupPassword resCode "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "useKeystore:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager;->isSupportFingerprintForODE(Landroid/content/ComponentName;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .local v0, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    invoke-virtual {v0, p1}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/app/admin/DevicePolicyManager;->setNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;Z)V

    .end local v0    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    :goto_0
    return v4

    .restart local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    const-string v4, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkBackupPassword resCode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    goto :goto_0

    .end local v1    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v3    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v2

    .local v2, "re":Landroid/os/RemoteException;
    move v4, v5

    goto :goto_0
.end method

.method public checkParentControlPassword(Ljava/lang/String;)Z
    .locals 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    .local v2, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/internal/widget/ILockSettings;->getParentControlPasswordHashSize(I)I

    move-result v0

    .local v0, "length":I
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lcom/android/internal/widget/ILockSettings;->checkParentControlPassword([BI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v0    # "length":I
    :goto_0
    return v3

    :catch_0
    move-exception v1

    .local v1, "re":Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public checkPassword(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/android/internal/widget/ILockSettings;->checkPassword(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_0

    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    return v2

    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-ne v4, v2, :cond_1

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isKnoxUser(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v2, v3

    goto :goto_0

    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    :try_start_1
    const-string v2, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkPassword resCode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v3

    goto :goto_0

    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v0    # "re":Landroid/os/RemoteException;
    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public checkPasswordHistory(Ljava/lang/String;I)Z
    .locals 8
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, 0x0

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v6

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v6, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .local v2, "passwordHashString":Ljava/lang/String;
    const-string v6, "lockscreen.passwordhistory"

    invoke-direct {p0, v6, p2}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .local v3, "passwordHistory":Ljava/lang/String;
    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, "passwordHashLength":I
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    move-result v4

    .local v4, "passwordHistoryLength":I
    if-eqz v4, :cond_0

    mul-int v6, v1, v4

    add-int/2addr v6, v4

    add-int/lit8 v0, v6, -0x1

    .local v0, "neededPasswordHistoryLength":I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v0, :cond_2

    invoke-virtual {v3, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_0
.end method

.method public checkPasswordWithCAC(Ljava/lang/String;)I
    .locals 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    const-string v2, "LockPatternUtils"

    const-string v3, "checkPasswordWithCAC: "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->mIsCallbackCalled:Z

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .local v0, "cv":Landroid/os/ConditionVariable;
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    new-instance v4, Lcom/android/internal/widget/LockPatternUtils$2;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/widget/LockPatternUtils$2;-><init>(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/ConditionVariable;)V

    iget-object v4, v4, Lcom/android/internal/widget/LockPatternUtils$2;->mVerifyCallback:Lcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;

    invoke-virtual {v2, v3, v4}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->verifyCard([CLcom/sec/smartcard/pinservice/ISmartCardVerifyCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget-boolean v2, Lcom/android/internal/widget/LockPatternUtils;->mIsCallbackCalled:Z

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    :cond_0
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPasswordWithCAC: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/internal/widget/LockPatternUtils;->mScVerifyStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/android/internal/widget/LockPatternUtils;->mScVerifyStatus:I

    :goto_0
    return v2

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x5

    goto :goto_0
.end method

.method public checkPattern(Ljava/util/List;I)Z
    .locals 6
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, p2}, Lcom/android/internal/widget/ILockSettings;->checkPattern(Ljava/lang/String;I)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-nez v4, :cond_0

    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    return v2

    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v4

    if-ne v4, v2, :cond_1

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v2, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isKnoxUser(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    move v2, v3

    goto :goto_0

    .end local v0    # "re":Landroid/os/RemoteException;
    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    move v2, v3

    goto :goto_0

    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    .restart local v0    # "re":Landroid/os/RemoteException;
    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public checkPersonalModeFingerPrintPassword(Ljava/lang/String;)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeFingerprintPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkPersonalModeLockBackupPin(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeBackupPin(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkPersonalModeLockPassword(Ljava/lang/String;)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkPersonalModeLockPin(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePin(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public checkPersonalModePattern(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePattern(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public checkPrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;I)Z
    .locals 3
    .param p1, "password"    # Ljava/lang/String;
    .param p3, "mode"    # Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;",
            "I)Z"
        }
    .end annotation

    .prologue
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :try_start_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePin(Ljava/lang/String;I)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Password:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePassword(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-static {p2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p4}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModePattern(Ljava/lang/String;I)Z

    move-result v1

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_3

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->checkPersonalModeBackupPin(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkRemoteLockPassword(ILjava/lang/String;I)Z
    .locals 8
    .param p1, "whichlock"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_1

    :try_start_0
    const-string v4, "SHA-1"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .local v3, "sha1":[B
    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .local v0, "base64":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-interface {v4, v0, p3}, Lcom/android/internal/widget/ILockSettings;->checkFMMPassword(Ljava/lang/String;I)Z

    move-result v4

    .end local v0    # "base64":Ljava/lang/String;
    .end local v3    # "sha1":[B
    :cond_0
    :goto_0
    return v4

    :cond_1
    if-ne p1, v4, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-interface {v4, p2, p3}, Lcom/android/internal/widget/ILockSettings;->checkCarrierPassword(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    goto :goto_0

    :catch_0
    move-exception v2

    .local v2, "re":Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to save lock ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") Password "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0

    .end local v2    # "re":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v4, "LockPatternUtils"

    const-string v6, "Failed to encode string because of missing algorithm: SHA-1"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v5

    goto :goto_0
.end method

.method public checkVoldPassword(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->checkVoldPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearEncryptionPassword()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    return-void
.end method

.method public clearLock(I)V
    .locals 11
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-string v0, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearLock : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setFingerPrintLockscreen(II)V

    const-string v0, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/android/internal/widget/ILockSettings;->setLockFMMPassword(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPin(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez p1, :cond_0

    invoke-direct {p0, v5, v4}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    if-nez p1, :cond_0

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v10, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-direct {v10, v0}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .local v10, "dem":Landroid/dirEncryption/DirEncryptionManager;
    invoke-virtual {v10, v5}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    invoke-virtual {v10, v4}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    .end local v10    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    move v2, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    move v8, v1

    move v9, p1

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearLockUniversal(Z)V
    .locals 4
    .param p1, "isFallback"    # Z

    .prologue
    const-string v0, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearLockExceptPwd()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clearLockoutAttemptDeadline()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen.failedUnlockAttemptNumber"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-string v0, "lockscreen.lockoutattempttimeoutmss"

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    const-string v0, "lockscreen.lockoutattemptdeadline"

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    return-void
.end method

.method public decryptCarrierLockPlusMsg(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "input"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .local v3, "output":Ljava/lang/String;
    :try_start_0
    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .local v1, "cipher":Ljavax/crypto/Cipher;
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-direct {p0, v6}, Lcom/android/internal/widget/LockPatternUtils;->getKey(Landroid/content/Context;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v6

    sget-object v7, Lcom/android/internal/widget/LockPatternUtils;->ivParamSpec:Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v1, v5, v6, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const/4 v5, 0x0

    invoke-static {p2, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .local v0, "buff":[B
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .end local v3    # "output":Ljava/lang/String;
    .local v4, "output":Ljava/lang/String;
    move-object v3, v4

    .end local v0    # "buff":[B
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "output":Ljava/lang/String;
    .restart local v3    # "output":Ljava/lang/String;
    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sec_encrypt.decrypt() NoSuchAlgorithmException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v2

    .local v2, "e":Ljavax/crypto/NoSuchPaddingException;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sec_encrypt.decrypt() NoSuchPaddingException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_2
    move-exception v2

    .local v2, "e":Ljava/security/InvalidKeyException;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sec_encrypt.decrypt() InvalidKeyException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/security/InvalidKeyException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v2

    .local v2, "e":Ljava/security/InvalidAlgorithmParameterException;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sec_encrypt.decrypt() InvalidAlgorithmParameterException = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_4
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sec_encrypt.decrypt() Exception = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public deinitializeCACAuthentication()V
    .locals 3

    .prologue
    const-string v0, "LockPatternUtils"

    const-string v1, "deinitializeCACAuthentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->getInstance()Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManagerFactory;->deinitializeCAC(Landroid/os/UserHandle;)V

    return-void
.end method

.method public getActivePasswordQuality(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .local v0, "quality":I
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .end local v0    # "quality":I
    :cond_0
    :goto_0
    return v0

    .restart local v0    # "quality":I
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockUniversalEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x1000

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled(II)Z

    move-result v1

    if-eqz v1, :cond_3

    const v0, 0x9100

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(II)Z

    move-result v1

    if-eqz v1, :cond_4

    const v0, 0x61000

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCarrierLockoutAttemptDeadline(I)J
    .locals 7
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v4, 0x0

    const-string v6, "sktlockscreen.lockoutdeadline"

    invoke-direct {p0, v6, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .local v0, "deadline":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "now":J
    cmp-long v6, v0, v2

    if-gtz v6, :cond_0

    move-wide v0, v4

    .end local v0    # "deadline":J
    :cond_0
    return-wide v0
.end method

.method public getCurrentUser()I
    .locals 3

    .prologue
    sget v1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    sget v1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    const-string v0, "LockPatternUtils"

    const-string v1, "Can\'t get DevicePolicyManagerService: is it running?"

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Stack trace:"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method public getEnabledTrustAgents(I)Ljava/util/List;
    .locals 8
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v7, "lockscreen.enabledtrustagents"

    invoke-direct {p0, v7, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .local v5, "serialized":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, "split":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    array-length v7, v6

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .local v0, "activeTrustAgents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    move-object v1, v6

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .local v4, "s":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getFingerPrintLockscreenState(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const-string v0, "lockscreen.enabled_fingerprint"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getFingerPrintMigrated(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const-string v0, "migrated_fingerprint_fota_key"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    return v0
.end method

.method public getKeyguardStoredPasswordQuality(I)I
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    const-string v0, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getLockoutAttemptDeadline(I)J
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const-string v6, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .local v0, "deadline":J
    const-string v6, "lockscreen.lockoutattempttimeoutmss"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    .local v4, "timeoutMs":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "now":J
    cmp-long v6, v0, v2

    if-gez v6, :cond_1

    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_1

    const-string v6, "lockscreen.lockoutattemptdeadline"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    const-string v6, "lockscreen.lockoutattempttimeoutmss"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    const-wide/16 v0, 0x0

    .end local v0    # "deadline":J
    :cond_0
    :goto_0
    return-wide v0

    .restart local v0    # "deadline":J
    :cond_1
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_2

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->isFollowLegacyTimeoutPolicy()Z

    move-result v6

    if-eqz v6, :cond_2

    const-wide/16 v6, 0x7530

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    const-wide/16 v6, 0x7530

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto :goto_0

    :cond_2
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-eqz v6, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    add-long v6, v2, v4

    cmp-long v6, v0, v6

    if-lez v6, :cond_3

    invoke-direct {p0, p1, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto :goto_0

    :cond_3
    sget-wide v6, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v8, 0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    const-wide/16 v6, 0x7530

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_4

    const-wide/16 v6, 0x7530

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto :goto_0

    :cond_4
    sget-wide v6, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v8, 0x2

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    const-wide/32 v6, 0xea60

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_5

    const-wide/32 v6, 0xea60

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto :goto_0

    :cond_5
    sget-wide v6, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v8, 0x3

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    const-wide/32 v6, 0x493e0

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_6

    const-wide/32 v6, 0x493e0

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto :goto_0

    :cond_6
    sget-wide v6, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v8, 0x4

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    const-wide/32 v6, 0x927c0

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_7

    const-wide/32 v6, 0x927c0

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto/16 :goto_0

    :cond_7
    sget-wide v6, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v8, 0x5

    cmp-long v6, v6, v8

    if-nez v6, :cond_8

    const-wide/32 v6, 0x1b7740

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_8

    const-wide/32 v6, 0x1b7740

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto/16 :goto_0

    :cond_8
    sget-wide v6, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v8, 0x5

    cmp-long v6, v6, v8

    if-lez v6, :cond_0

    const-wide/32 v6, 0x36ee80

    add-long/2addr v6, v2

    cmp-long v6, v0, v6

    if-lez v6, :cond_0

    const-wide/32 v6, 0x36ee80

    invoke-direct {p0, p1, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadlineInAbnormalCase(IJ)J

    goto/16 :goto_0
.end method

.method public getOwnerInfo(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    const-string v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPasswordRecoverable(I)Z
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;I)Z

    move-result v0

    return v0
.end method

.method public getPowerButtonInstantlyLocks(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const-string v0, "lockscreen.power_button_instantly_locks"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public getRecoveryPassword(I)Ljava/lang/String;
    .locals 13
    .param p1, "userHandle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v8, 0x0

    .local v8, "recoveryPassword":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "password"

    aput-object v3, v2, v11

    const-string v3, "user_id=?"

    new-array v4, v12, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    if-nez v8, :cond_2

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->generateRecoveryPassword()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeRecoveryPasswords(I)V

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .local v9, "values":Landroid/content/ContentValues;
    const-string v0, "password"

    invoke-virtual {v9, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "set_date"

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v9, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "user_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_2
    return-object v8

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getRecoveryScreenLocked()Z
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    .local v0, "userId":I
    const-string v1, "lockscreen.lockedoutRecovery"

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    return v1
.end method

.method public getRequestedMinimumPasswordLength(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLetters(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLetters(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumLowerCase(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLowerCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNonLetter(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumNumeric(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNumeric(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumSymbols(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumSymbols(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordMinimumUpperCase(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumUpperCase(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public getRequestedPasswordQuality(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    return v0
.end method

.method public initializeCACAuthentication()V
    .locals 2

    .prologue
    const-string v0, "LockPatternUtils"

    const-string v1, "initializeCACAuthentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartcardAuthInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    :cond_0
    return-void
.end method

.method public initializeCACAuthentication_Sync()V
    .locals 2

    .prologue
    const-string v0, "LockPatternUtils"

    const-string v1, "initializeCACAuthentication: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartcardAuthInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSmartcardPinManager_Sync()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    :cond_0
    return-void
.end method

.method public isAppLockFingerPrintLockscreen(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const-string v0, "lockscreen.applock_fingerprint"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isBiometricWeakInstalled()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v4, "com.android.facelock"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "android.hardware.camera.front"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v2

    .local v2, "restrictionPolicy":Landroid/sec/enterprise/RestrictionPolicy;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v3}, Landroid/sec/enterprise/RestrictionPolicy;->isCameraEnabled(Z)Z

    move-result v3

    goto :goto_0
.end method

.method public isCACCardRegistered()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, "ret":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isCardRegistered(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCardRegistered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isCACPasswordEnabled()Z
    .locals 3

    .prologue
    const-string v0, "lockscreen.smartcard_type"

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isCarrierLockEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .local v0, "mCarrierlockMode":Ljava/lang/String;
    const/4 v1, 0x0

    return v1
.end method

.method public isCarrierLockPlusEnabled()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isCarrierLockPlusEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->getCarrierLockPlusMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCarrierPasswordSaved()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveCarrierPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCredentialRequiredToDecrypt(Z)Z
    .locals 4
    .param p1, "defaultValue"    # Z

    .prologue
    const/4 v3, -0x1

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "require_password_to_decrypt"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, "value":I
    if-ne v0, v3, :cond_0

    .end local p1    # "defaultValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultValue":Z
    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public isDeviceConnectedWithCACCard()Z
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getSmartcardPinManager()Lcom/sec/smartcard/pinservice/SmartCardPinManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isDeviceConnectedWithCard()Z

    move-result v0

    .local v0, "ret":Z
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCACCardRegistred: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isDevicePasswordSimple(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "is_smpw_key"

    invoke-static {v2, v3, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isEnterpriseIdentityLockSet()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isEnterpriseIdentityLockSet(I)Z

    move-result v0

    return v0
.end method

.method public isEnterpriseIdentityLockSet(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const-string v0, "LockPatternUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IsEnterpriseIdSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lockscreen.enterpriseidentity_type"

    invoke-direct {p0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "lockscreen.enterpriseidentity_type"

    invoke-direct {p0, v0, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isFMMLockEnabled()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isFMMLockEnabled(I)Z
    .locals 2
    .param p1, "userid"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->haveFMMPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFingerPrintLockscreen(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v2, 0x0

    const-string v0, "lockscreen.enabled_fingerprint"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFingerPrintLockscreen(II)Z
    .locals 4
    .param p1, "mode"    # I
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x61000

    if-ne p1, v3, :cond_0

    move v0, v1

    .local v0, "isFingerPrintEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_1
    return v1

    .end local v0    # "isFingerPrintEnabled":Z
    :cond_0
    move v0, v2

    goto :goto_0

    .restart local v0    # "isFingerPrintEnabled":Z
    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public isLockFingerprintEnabled(I)Z
    .locals 6
    .param p1, "userId"    # I

    .prologue
    const-wide/32 v4, 0x61000

    const/4 v0, 0x0

    const-string v1, "lockscreen.enabled_fingerprint"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "lockscreen.password_type"

    invoke-direct {p0, v1, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isLockPasswordEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(II)Z

    move-result v0

    return v0
.end method

.method public isLockPasswordEnabledNoCache(I)Z
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const-string v6, "lockscreen.password_type"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-long v4, v6

    .local v4, "mode":J
    const-string v6, "lockscreen.password_type_alternate"

    const-wide/16 v8, 0x0

    invoke-direct {p0, v6, v8, v9, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v6

    long-to-int v6, v6

    int-to-long v2, v6

    .local v2, "backupMode":J
    const-wide/32 v6, 0x40000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x20000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x30000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x50000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x60000

    cmp-long v6, v4, v6

    if-eqz v6, :cond_0

    const-wide/32 v6, 0x70000

    cmp-long v6, v4, v6

    if-nez v6, :cond_3

    :cond_0
    const/4 v1, 0x1

    .local v1, "passwordEnabled":Z
    :goto_0
    const-wide/32 v6, 0x40000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x20000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x30000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x50000

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    const-wide/32 v6, 0x60000

    cmp-long v6, v2, v6

    if-nez v6, :cond_4

    :cond_1
    const/4 v0, 0x1

    .local v0, "backupEnabled":Z
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->savedPasswordExistsNoCache()Z

    move-result v6

    if-eqz v6, :cond_5

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->usingBiometricWeak(I)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    :cond_2
    const/4 v6, 0x1

    :goto_2
    return v6

    .end local v0    # "backupEnabled":Z
    .end local v1    # "passwordEnabled":Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .restart local v1    # "passwordEnabled":Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0    # "backupEnabled":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public isLockPatternEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(II)Z

    move-result v0

    return v0
.end method

.method public isLockScreenDisabled(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    const-string v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .local v0, "pm":Landroid/os/PersonaManager;
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "lockscreen.disabled"

    invoke-direct {p0, v2, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public isLockUniversalEnabled(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockUniversalEnabled(II)Z

    move-result v0

    return v0
.end method

.method public isOwnerInfoEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const-string v0, "lock_screen_owner_info_enabled"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isParentControlLockEnabled()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public isPatternEverChosen(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const-string v0, "lockscreen.patterneverchosen"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isPermanentlyLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const-string v0, "lockscreen.lockedoutpermanently"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isPrevLockFingerprintEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const-string v0, "prev_lock_type"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isPrivateModeFingerPrintLockscreen(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const-string v0, "lockscreen.privatemode_fingerprint"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isRejectModeLocked()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isRejectModeLocked(I)Z

    move-result v0

    return v0
.end method

.method public isRejectModeLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const-string v0, "lockscreen.lgt_reject_cause"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public isSecure(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .local v0, "mode":I
    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockUniversalEnabled(II)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSmartCardPasswordEnabled()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .local v2, "ret":Z
    const-string v3, "lockscreen.password_type"

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v0

    .local v0, "mode":J
    const-wide/32 v4, 0x70000

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public isSmartUnlockEnabled()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSmartUnlockEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isSmartUnlockEnabled(I)Z
    .locals 2
    .param p1, "userid"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "lock_smart_unlock_enabled"

    invoke-direct {p0, v1, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->usingSmartUnlock(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isSmartUnlockEnabled(II)Z
    .locals 2
    .param p1, "quality"    # I
    .param p2, "userid"    # I

    .prologue
    const/4 v0, 0x0

    const v1, 0x9100

    if-eq p1, v1, :cond_0

    const/high16 v1, 0x90000

    if-ne p1, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "lock_smart_unlock_enabled"

    invoke-direct {p0, v1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isSmartcardAuthInstalled()Z
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/smartcard/pinservice/SmartCardPinManager;->isSmartCardAuthenticationInstalled(Landroid/content/Context;)Z

    move-result v0

    .local v0, "ret":Z
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSmartCardAuthenticationAvailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isSwipeSmartLock()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/widget/LockPatternUtils;->mSwipeSmartLock:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "haptic_feedback_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisiblePatternDisabledByMDM()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;

    move-result-object v0

    .local v0, "passPolicy":Landroid/sec/enterprise/PasswordPolicy;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/sec/enterprise/PasswordPolicy;->isScreenLockPatternVisibilityEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public isVisiblePatternEnabled(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const-string v0, "lock_pattern_visible_pattern"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBoolean(Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public passwordToHash(Ljava/lang/String;I)[B
    .locals 12
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    if-nez p1, :cond_0

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getSalt(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .local v6, "saltedPassword":[B
    const/4 v7, 0x0

    .local v7, "sha":[B
    const-string v8, "SHA-1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .local v3, "md":Ljava/security/MessageDigest;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .local v4, "s":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v8, 0x400

    if-ge v2, v8, :cond_2

    if-eqz v7, :cond_1

    invoke-virtual {v3, v7}, Ljava/security/MessageDigest;->update([B)V

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "e":J
    const-string v8, "LockPatternUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "passwordToHash time = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sub-long v10, v0, v4

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "ms"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Lcom/android/internal/widget/LockPatternUtils;->toHex([B)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    goto/16 :goto_0

    .end local v0    # "e":J
    .end local v2    # "i":I
    .end local v3    # "md":Ljava/security/MessageDigest;
    .end local v4    # "s":J
    .end local v6    # "saltedPassword":[B
    .end local v7    # "sha":[B
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v8, Ljava/lang/AssertionError;

    const-string v9, "Missing digest algorithm: "

    invoke-direct {v8, v9, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public passwordToHashOriginal(Ljava/lang/String;I)[B
    .locals 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    if-nez p1, :cond_0

    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_0
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getSalt(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .local v4, "saltedPassword":[B
    const-string v6, "SHA-1"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    .local v5, "sha1":[B
    const-string v6, "MD5"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v3

    .local v3, "md5":[B
    array-length v6, v5

    array-length v7, v3

    add-int/2addr v6, v7

    new-array v0, v6, [B

    .local v0, "combined":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v5

    invoke-static {v5, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    const/4 v6, 0x0

    array-length v7, v5

    array-length v8, v3

    invoke-static {v3, v6, v0, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v2

    .local v2, "hexEncoded":[C
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([C)V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_0

    .end local v0    # "combined":[B
    .end local v2    # "hexEncoded":[C
    .end local v3    # "md5":[B
    .end local v4    # "saltedPassword":[B
    .end local v5    # "sha1":[B
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/lang/AssertionError;

    const-string v7, "Missing digest algorithm: "

    invoke-direct {v6, v7, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public recoverPassword(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->recoverPassword(I)V

    return-void
.end method

.method public registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .locals 3
    .param p1, "strongAuthTracker"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not register StrongAuthTracker"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeRecoveryPasswords(I)V
    .locals 6
    .param p1, "userHandle"    # I

    .prologue
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/SecurityContract$Tables$PASSWORDS;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "user_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public reportFailedPasswordAttempt(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportFailedPasswordAttempt(I)V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    return-void
.end method

.method public reportSuccessfulPasswordAttempt(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->reportSuccessfulPasswordAttempt(I)V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/trust/TrustManager;->reportUnlockAttempt(ZI)V

    sput-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lockscreen.failedUnlockAttemptNumber"

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-string v0, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    const-string v0, "lockscreen.lockoutattempttimeoutmss"

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    return-void
.end method

.method public requireCredentialEntry(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    return-void
.end method

.method public requireStrongAuth(II)V
    .locals 4
    .param p1, "strongAuthReason"    # I
    .param p2, "userId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/internal/widget/ILockSettings;->requireStrongAuth(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while requesting strong auth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sanitizePassword()V
    .locals 4

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/widget/ILockSettings;->sanitizePassword()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t sanitize password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveAppLockPassword(Ljava/lang/String;Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p3, "userId"    # I

    .prologue
    :try_start_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPin(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPassword(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_3

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockPattern(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p2, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/android/internal/widget/ILockSettings;->setAppLockBackupPin(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public saveLockBackupPassword(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, p2, p3, v2}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock Backup PIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveLockBackupPin(Ljava/lang/String;I)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockBackupPin(Ljava/lang/String;II)V

    return-void
.end method

.method public saveLockBackupPin(Ljava/lang/String;II)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "userHandle"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPin(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock Backup PIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveLockBackupPin(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "quality"    # I
    .param p4, "userHandle"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p2, p4}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPin(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock Backup PIN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveLockFingerprint(I)V
    .locals 4
    .param p1, "userHandle"    # I

    .prologue
    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLockFingerprintEnabled(ZI)V

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setPrevLockFingerprintEnabled(ZI)V

    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x61000

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->copyAlternativeToActivePasswordState(I)V

    return-void
.end method

.method public saveLockFingerprintPassword(Ljava/lang/String;I)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprintPasswordwithoutQuality(Ljava/lang/String;I)V

    return-void
.end method

.method public saveLockFingerprintPassword(Ljava/lang/String;IIZ)V
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "quality"    # I
    .param p4, "skipUpdateEncryptionPassword"    # Z

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockFingerprintPassword(Ljava/lang/String;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public saveLockFingerprintPassword(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .locals 21
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedpassword"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "quality"    # I
    .param p5, "skipUpdateEncryptionPassword"    # Z

    .prologue
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v5, v0, v1, v2, v6}, Lcom/android/internal/widget/ILockSettings;->setLockBackupPassword(Ljava/lang/String;Ljava/lang/String;IZ)V

    if-nez p3, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    move/from16 v0, p3

    if-ne v0, v5, :cond_0

    const/4 v5, 0x1

    move/from16 v0, p5

    if-eq v0, v5, :cond_0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v15, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-direct {v15, v5}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .local v15, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v5, 0x1

    invoke-virtual {v15, v5}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/admin/DevicePolicyManager;->setNeedToGetAlternativePasswdForODE(Landroid/content/ComponentName;Z)V

    .end local v15    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v14

    .local v14, "computedQuality":I
    const-string v5, "lockscreen.password_type_alternate"

    move/from16 v0, p4

    invoke-static {v0, v14}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v6, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V

    if-eqz v14, :cond_3

    invoke-virtual/range {p0 .. p3}, Lcom/android/internal/widget/LockPatternUtils;->setContainerPasswordState(Ljava/lang/String;Ljava/lang/String;I)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/security/CCManager;->isMdfEnforced()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "lockscreen.passwordhistory"

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v18

    .local v18, "passwordHistory":Ljava/lang/String;
    if-nez v18, :cond_1

    new-instance v18, Ljava/lang/String;

    .end local v18    # "passwordHistory":Ljava/lang/String;
    invoke-direct/range {v18 .. v18}, Ljava/lang/String;-><init>()V

    .restart local v18    # "passwordHistory":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    move-result v19

    .local v19, "passwordHistoryLength":I
    if-nez v19, :cond_4

    const-string v18, ""

    :goto_1
    const-string v5, "lockscreen.passwordhistory"

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v6

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v5, v1, v6}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v14    # "computedQuality":I
    .end local v18    # "passwordHistory":Ljava/lang/String;
    .end local v19    # "passwordHistoryLength":I
    :cond_2
    :goto_2
    return-void

    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v14    # "computedQuality":I
    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v13

    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v14    # "computedQuality":I
    :catch_0
    move-exception v20

    .local v20, "re":Ljava/lang/Exception;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to save Fingerprint lock password "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v20    # "re":Ljava/lang/Exception;
    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v14    # "computedQuality":I
    .restart local v18    # "passwordHistory":Ljava/lang/String;
    .restart local v19    # "passwordHistoryLength":I
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v16

    .local v16, "hash":[B
    new-instance v17, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .local v17, "hashString":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :cond_5
    const/4 v5, 0x0

    move-object/from16 v0, v16

    array-length v6, v0

    mul-int v6, v6, v19

    add-int v6, v6, v19

    add-int/lit8 v6, v6, -0x1

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v0, v18

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    .end local v14    # "computedQuality":I
    .end local v16    # "hash":[B
    .end local v17    # "hashString":Ljava/lang/String;
    .end local v18    # "passwordHistory":Ljava/lang/String;
    .end local v19    # "passwordHistoryLength":I
    :cond_6
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v13

    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method public saveLockParentControlPassword(Ljava/lang/String;I)V
    .locals 6
    .param p1, "spare"    # Ljava/lang/String;
    .param p2, "quality"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    .local v2, "userId":I
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v0

    .local v0, "hash":[B
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v4

    invoke-interface {v3, v0, v4}, Lcom/android/internal/widget/ILockSettings;->setLockParentControlPassword([BI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "re":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to save lock parent control password "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 41
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "quality"    # I
    .param p4, "userHandle"    # I

    .prologue
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    .local v4, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_2

    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "password must not be null and at least of length 4"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v37

    .local v37, "re":Landroid/os/RemoteException;
    const-string v5, "LockPatternUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to save lock password "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v37

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v37    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void

    .restart local v4    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_2
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p4

    invoke-interface {v5, v0, v1, v2}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v24

    .local v24, "computedQuality":I
    if-nez p4, :cond_3

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/internal/widget/LockPatternUtils;->shouldEncryptWithCredentials(Z)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateCACAuthentication(I)V

    const-string v5, "lockscreen.password_type"

    move/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-long v14, v6

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v5, v14, v15, v1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    if-eqz v24, :cond_13

    const/4 v7, 0x0

    .local v7, "letters":I
    const/4 v8, 0x0

    .local v8, "uppercase":I
    const/4 v9, 0x0

    .local v9, "lowercase":I
    const/4 v10, 0x0

    .local v10, "numbers":I
    const/4 v11, 0x0

    .local v11, "symbols":I
    const/4 v12, 0x0

    .local v12, "nonletter":I
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_c

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    .local v23, "c":C
    const/16 v5, 0x41

    move/from16 v0, v23

    if-lt v0, v5, :cond_9

    const/16 v5, 0x5a

    move/from16 v0, v23

    if-gt v0, v5, :cond_9

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    :goto_3
    add-int/lit8 v28, v28, 0x1

    goto :goto_2

    .end local v7    # "letters":I
    .end local v8    # "uppercase":I
    .end local v9    # "lowercase":I
    .end local v10    # "numbers":I
    .end local v11    # "symbols":I
    .end local v12    # "nonletter":I
    .end local v23    # "c":C
    .end local v28    # "i":I
    :cond_4
    const/high16 v5, 0x20000

    move/from16 v0, v24

    if-ne v0, v5, :cond_6

    const/16 v33, 0x1

    .local v33, "numeric":Z
    :goto_4
    const/high16 v5, 0x30000

    move/from16 v0, v24

    if-ne v0, v5, :cond_7

    const/16 v34, 0x1

    .local v34, "numericComplex":Z
    :goto_5
    if-nez v33, :cond_5

    if-eqz v34, :cond_8

    :cond_5
    const/16 v39, 0x3

    .local v39, "type":I
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v39

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V

    goto :goto_1

    .end local v33    # "numeric":Z
    .end local v34    # "numericComplex":Z
    .end local v39    # "type":I
    :cond_6
    const/16 v33, 0x0

    goto :goto_4

    .restart local v33    # "numeric":Z
    :cond_7
    const/16 v34, 0x0

    goto :goto_5

    .restart local v34    # "numericComplex":Z
    :cond_8
    const/16 v39, 0x0

    goto :goto_6

    .end local v33    # "numeric":Z
    .end local v34    # "numericComplex":Z
    .restart local v7    # "letters":I
    .restart local v8    # "uppercase":I
    .restart local v9    # "lowercase":I
    .restart local v10    # "numbers":I
    .restart local v11    # "symbols":I
    .restart local v12    # "nonletter":I
    .restart local v23    # "c":C
    .restart local v28    # "i":I
    :cond_9
    const/16 v5, 0x61

    move/from16 v0, v23

    if-lt v0, v5, :cond_a

    const/16 v5, 0x7a

    move/from16 v0, v23

    if-gt v0, v5, :cond_a

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_a
    const/16 v5, 0x30

    move/from16 v0, v23

    if-lt v0, v5, :cond_b

    const/16 v5, 0x39

    move/from16 v0, v23

    if-gt v0, v5, :cond_b

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_b
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .end local v23    # "c":C
    :cond_c
    move/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v13, p4

    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    if-eqz p2, :cond_11

    invoke-static/range {p2 .. p2}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v25

    .local v25, "computedQuality_old":I
    const/16 v29, 0x0

    .local v29, "letters_old":I
    const/16 v40, 0x0

    .local v40, "uppercase_old":I
    const/16 v30, 0x0

    .local v30, "lowercase_old":I
    const/16 v32, 0x0

    .local v32, "numbers_old":I
    const/16 v38, 0x0

    .local v38, "symbols_old":I
    const/16 v31, 0x0

    .local v31, "nonletter_old":I
    const/16 v28, 0x0

    :goto_7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    move/from16 v0, v28

    if-ge v0, v5, :cond_10

    move-object/from16 v0, p2

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v23

    .restart local v23    # "c":C
    const/16 v5, 0x41

    move/from16 v0, v23

    if-lt v0, v5, :cond_d

    const/16 v5, 0x5a

    move/from16 v0, v23

    if-gt v0, v5, :cond_d

    add-int/lit8 v29, v29, 0x1

    add-int/lit8 v40, v40, 0x1

    :goto_8
    add-int/lit8 v28, v28, 0x1

    goto :goto_7

    :cond_d
    const/16 v5, 0x61

    move/from16 v0, v23

    if-lt v0, v5, :cond_e

    const/16 v5, 0x7a

    move/from16 v0, v23

    if-gt v0, v5, :cond_e

    add-int/lit8 v29, v29, 0x1

    add-int/lit8 v30, v30, 0x1

    goto :goto_8

    :cond_e
    const/16 v5, 0x30

    move/from16 v0, v23

    if-lt v0, v5, :cond_f

    const/16 v5, 0x39

    move/from16 v0, v23

    if-gt v0, v5, :cond_f

    add-int/lit8 v32, v32, 0x1

    add-int/lit8 v31, v31, 0x1

    goto :goto_8

    :cond_f
    add-int/lit8 v38, v38, 0x1

    add-int/lit8 v31, v31, 0x1

    goto :goto_8

    .end local v23    # "c":C
    :cond_10
    move/from16 v0, v25

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_11

    move/from16 v0, v29

    if-ne v0, v7, :cond_11

    move/from16 v0, v40

    if-ne v0, v8, :cond_11

    move/from16 v0, v30

    if-ne v0, v9, :cond_11

    move/from16 v0, v32

    if-ne v0, v10, :cond_11

    move/from16 v0, v38

    if-ne v0, v11, :cond_11

    move/from16 v0, v31

    if-ne v0, v12, :cond_11

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_11

    move/from16 v0, p3

    move/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v13, p4

    invoke-virtual/range {v4 .. v13}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordStateForEAS(IIIIIIIII)V

    .end local v7    # "letters":I
    .end local v8    # "uppercase":I
    .end local v9    # "lowercase":I
    .end local v10    # "numbers":I
    .end local v11    # "symbols":I
    .end local v12    # "nonletter":I
    .end local v25    # "computedQuality_old":I
    .end local v28    # "i":I
    .end local v29    # "letters_old":I
    .end local v30    # "lowercase_old":I
    .end local v31    # "nonletter_old":I
    .end local v32    # "numbers_old":I
    .end local v38    # "symbols_old":I
    .end local v40    # "uppercase_old":I
    :cond_11
    :goto_9
    const-string v5, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v35

    .local v35, "passwordHistory":Ljava/lang/String;
    if-nez v35, :cond_12

    const-string v35, ""

    :cond_12
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength(I)I

    move-result v36

    .local v36, "passwordHistoryLength":I
    if-nez v36, :cond_14

    const-string v35, ""

    :goto_a
    const-string v5, "lockscreen.passwordhistory"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, p4

    invoke-direct {v0, v5, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEnterpriseIdentityLock(I)V

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    if-nez p4, :cond_1

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v26, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .local v26, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v26    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v35    # "passwordHistory":Ljava/lang/String;
    .end local v36    # "passwordHistoryLength":I
    :cond_13
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object v13, v4

    move/from16 v22, p4

    invoke-virtual/range {v13 .. v22}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    goto :goto_9

    .restart local v35    # "passwordHistory":Ljava/lang/String;
    .restart local v36    # "passwordHistoryLength":I
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;I)[B

    move-result-object v27

    .local v27, "hash":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v6, Ljava/lang/String;

    sget-object v13, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v27

    invoke-direct {v6, v0, v13}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    const/4 v5, 0x0

    move-object/from16 v0, v27

    array-length v6, v0

    mul-int v6, v6, v36

    add-int v6, v6, v36

    add-int/lit8 v6, v6, -0x1

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->length()I

    move-result v13

    invoke-static {v6, v13}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v0, v35

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v35

    goto/16 :goto_a
.end method

.method public saveLockPattern(Ljava/util/List;I)V
    .locals 1
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V
    .locals 1
    .param p2, "savedPattern"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;IZ)V

    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Ljava/lang/String;IZ)V
    .locals 6
    .param p2, "savedPattern"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "isDirectionLock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;IZZ)V

    return-void
.end method

.method public saveLockPattern(Ljava/util/List;Ljava/lang/String;IZZ)V
    .locals 15
    .param p2, "savedPattern"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "isDirectionLock"    # Z
    .param p5, "isSmartUnlock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "IZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const-string v4, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LockPatternUtils.saveLockPattern() userId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isSmartUnlock: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isDirectionLock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "pattern must not be null and at least 4 dots long."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v13

    .local v13, "re":Landroid/os/RemoteException;
    const-string v4, "LockPatternUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t save lock pattern "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v13    # "re":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v4

    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v4, v5, v0, v1}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-nez p3, :cond_3

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/android/internal/widget/LockPatternUtils;->shouldEncryptWithCredentials(Z)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->clearEncryptionPassword()V

    :cond_3
    :goto_1
    const-string v4, "lockscreen.patterneverchosen"

    const/4 v5, 0x1

    move/from16 v0, p3

    invoke-direct {p0, v4, v5, v0}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    const/high16 v4, 0x10000

    invoke-direct {p0, v4}, Lcom/android/internal/widget/LockPatternUtils;->updateCACAuthentication(I)V

    const/high16 v3, 0x10000

    .local v3, "passwordQuality":I
    if-eqz p4, :cond_6

    const/16 v3, 0x1000

    :cond_4
    :goto_2
    const-string v4, "lockscreen.password_type"

    int-to-long v6, v3

    move/from16 v0, p3

    invoke-direct {p0, v4, v6, v7, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v11, p3

    invoke-virtual/range {v2 .. v11}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->onAfterChangingPassword(I)V

    move/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->updateEnterpriseIdentityLock(I)V

    if-nez p3, :cond_1

    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v12, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v4, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-direct {v12, v4}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    .local v12, "dem":Landroid/dirEncryption/DirEncryptionManager;
    const/4 v4, 0x1

    invoke-virtual {v12, v4}, Landroid/dirEncryption/DirEncryptionManager;->setNeedToCreateKey(Z)V

    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    .local v14, "stringPattern":Ljava/lang/String;
    invoke-virtual {v12, v14}, Landroid/dirEncryption/DirEncryptionManager;->setPassword(Ljava/lang/String;)I

    goto :goto_0

    .end local v3    # "passwordQuality":I
    .end local v12    # "dem":Landroid/dirEncryption/DirEncryptionManager;
    .end local v14    # "stringPattern":Ljava/lang/String;
    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    .restart local v14    # "stringPattern":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-direct {p0, v4, v14}, Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v14    # "stringPattern":Ljava/lang/String;
    .restart local v3    # "passwordQuality":I
    :cond_6
    if-eqz p5, :cond_4

    const v3, 0x9100

    goto :goto_2
.end method

.method public saveLockUniversal(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;IZ)V

    return-void
.end method

.method public savePersonalModeFingerPrintPassword(Ljava/lang/String;)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeFingerprintPassword(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock password "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public savePersonalModeLockBackupPin(Ljava/lang/String;)V
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockBackupPin(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock pin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public savePersonalModeLockPassword(Ljava/lang/String;)V
    .locals 5
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPassword(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock password "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public savePersonalModeLockPattern(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPattern(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock pattern "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public savePersonalModeLockPin(Ljava/lang/String;)V
    .locals 5
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPin(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v2, "LockPatternUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to save lock pin "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public savePrivateModePassword(Ljava/lang/String;Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;I)V
    .locals 4
    .param p1, "password"    # Ljava/lang/String;
    .param p3, "mode"    # Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :try_start_0
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPin(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Password:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_2

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPassword(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " :: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_3

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-static {p2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p4}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockPattern(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p3, v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1, p4}, Lcom/android/internal/widget/ILockSettings;->setPersonalModeLockBackupPin(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public saveRemoteLockPassword(ILjava/lang/String;)V
    .locals 1
    .param p1, "whichlock"    # I
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->saveRemoteLockPassword(ILjava/lang/String;I)V

    return-void
.end method

.method public saveRemoteLockPassword(ILjava/lang/String;I)V
    .locals 4
    .param p1, "whichlock"    # I
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "userHandle"    # I

    .prologue
    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p2, v2}, Lcom/android/internal/widget/ILockSettings;->setLockFMMPassword(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock FMM Password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "re":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p2, p3}, Lcom/android/internal/widget/ILockSettings;->setLockCarrierPassword(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to save lock Carrier Password "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public savedAppLockPasswordExists(Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;I)Z
    .locals 3
    .param p1, "lockType"    # Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPin(I)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Password:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPassword(I)Z

    move-result v1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v2, :cond_3

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockPattern(I)Z

    move-result v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecAppLockType;

    if-ne p1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->haveAppLockBackupPin(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public savedBackupPasswordExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->haveBackupPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedBackupPinExists()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveBackupPin(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedFingerprintPasswordExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->haveBackupPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedParentControlPasswordExists()Z
    .locals 3

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->haveParentControlPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedPatternExists(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->havePattern(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savedPersonalModeBackupPinExists()Z
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeBackupPin(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public savedPersonalModeFingerPrintPasswordExists()Z
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeFingerprintPassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public savedPersonalModePasswordExists()Z
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePassword(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public savedPersonalModePatternExists()Z
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePattern(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public savedPersonalModePinExists()Z
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    .local v1, "userId":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePin(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public savedPrivateModePasswordExists(Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;I)Z
    .locals 3
    .param p1, "mode"    # Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->PIN:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePin(I)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Password:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePassword(I)Z

    move-result v1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->Pattern:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p1, v2, :cond_3

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->havePersonalModePattern(I)Z

    move-result v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;->BackupPin:Lcom/android/internal/widget/LockPatternUtils$SecPrivateMode;

    if-ne p1, v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/android/internal/widget/ILockSettings;->havePersonalModeBackupPin(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setAppLockFingerPrintLockscreen(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    const-string v0, "lockscreen.applock_fingerprint"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    return-void
.end method

.method public setCACPasswordEnabled(Z)Z
    .locals 1
    .param p1, "status"    # Z

    .prologue
    const-string v0, "lockscreen.smartcard_type"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public setCarrierLockoutAttemptDeadline(I)J
    .locals 6
    .param p1, "userId"    # I

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x927c0

    add-long v0, v2, v4

    .local v0, "deadline":J
    const-string v2, "sktlockscreen.lockoutdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    return-wide v0
.end method

.method public setContainerPasswordState(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 19
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "savedPassword"    # Ljava/lang/String;
    .param p3, "containerId"    # I

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v4, 0x0

    .local v4, "letters":I
    const/4 v5, 0x0

    .local v5, "uppercase":I
    const/4 v6, 0x0

    .local v6, "lowercase":I
    const/4 v7, 0x0

    .local v7, "numbers":I
    const/4 v8, 0x0

    .local v8, "symbols":I
    const/4 v9, 0x0

    .local v9, "nonletter":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v12, v3, :cond_3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .local v11, "c":C
    const/16 v3, 0x41

    if-lt v11, v3, :cond_0

    const/16 v3, 0x5a

    if-gt v11, v3, :cond_0

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    const/16 v3, 0x61

    if-lt v11, v3, :cond_1

    const/16 v3, 0x7a

    if-gt v11, v3, :cond_1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    const/16 v3, 0x30

    if-lt v11, v3, :cond_2

    const/16 v3, 0x39

    if-gt v11, v3, :cond_2

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v11    # "c":C
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v10, p3

    invoke-virtual/range {v2 .. v10}, Landroid/app/admin/DevicePolicyManager;->setAlternativePasswordState(IIIIIIII)V

    if-eqz p2, :cond_8

    const/4 v13, 0x0

    .local v13, "letters_old":I
    const/16 v18, 0x0

    .local v18, "uppercase_old":I
    const/4 v14, 0x0

    .local v14, "lowercase_old":I
    const/16 v16, 0x0

    .local v16, "numbers_old":I
    const/16 v17, 0x0

    .local v17, "symbols_old":I
    const/4 v15, 0x0

    .local v15, "nonletter_old":I
    const/4 v12, 0x0

    :goto_2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v12, v3, :cond_7

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .restart local v11    # "c":C
    const/16 v3, 0x41

    if-lt v11, v3, :cond_4

    const/16 v3, 0x5a

    if-gt v11, v3, :cond_4

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v18, v18, 0x1

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    const/16 v3, 0x61

    if-lt v11, v3, :cond_5

    const/16 v3, 0x7a

    if-gt v11, v3, :cond_5

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_5
    const/16 v3, 0x30

    if-lt v11, v3, :cond_6

    const/16 v3, 0x39

    if-gt v11, v3, :cond_6

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .end local v11    # "c":C
    :cond_7
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v3, v10, :cond_8

    if-ne v13, v4, :cond_8

    move/from16 v0, v18

    if-ne v0, v5, :cond_8

    if-ne v14, v6, :cond_8

    move/from16 v0, v16

    if-ne v0, v7, :cond_8

    move/from16 v0, v17

    if-ne v0, v8, :cond_8

    if-ne v15, v9, :cond_8

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_8

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v10, p3

    invoke-virtual/range {v2 .. v10}, Landroid/app/admin/DevicePolicyManager;->setAlternativePasswordStateForEAS(IIIIIIII)V

    .end local v13    # "letters_old":I
    .end local v14    # "lowercase_old":I
    .end local v15    # "nonletter_old":I
    .end local v16    # "numbers_old":I
    .end local v17    # "symbols_old":I
    .end local v18    # "uppercase_old":I
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v3

    const v10, 0x61000

    if-ne v3, v10, :cond_9

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Landroid/app/admin/DevicePolicyManager;->copyAlternativeToActivePasswordState(I)V

    :cond_9
    return-void
.end method

.method public setCredentialRequiredToDecrypt(Z)V
    .locals 3
    .param p1, "required"    # Z

    .prologue
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "LockPatternUtils"

    const-string v1, "Only device owner may call setCredentialRequiredForDecrypt()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "require_password_to_decrypt"

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "userId"    # I

    .prologue
    sput p1, Lcom/android/internal/widget/LockPatternUtils;->sCurrentUserId:I

    return-void
.end method

.method public setEnabledTrustAgents(Ljava/util/Collection;I)V
    .locals 5
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/content/ComponentName;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "activeTrustAgents":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/content/ComponentName;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .local v0, "cn":Landroid/content/ComponentName;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v0    # "cn":Landroid/content/ComponentName;
    :cond_1
    const-string v3, "lockscreen.enabledtrustagents"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getTrustManager()Landroid/app/trust/TrustManager;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/trust/TrustManager;->reportEnabledTrustAgentsChanged(I)V

    return-void
.end method

.method public setEnterpriseIdentityLock(Z)Z
    .locals 1
    .param p1, "status"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setEnterpriseIdentityLock(ZI)Z

    const/4 v0, 0x1

    return v0
.end method

.method public setEnterpriseIdentityLock(ZI)Z
    .locals 1
    .param p1, "status"    # Z
    .param p2, "userId"    # I

    .prologue
    const-string v0, "lockscreen.enterpriseidentity_type"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    const/4 v0, 0x1

    return v0
.end method

.method public setEnterpriseIdentitySelected(ZI)Z
    .locals 4
    .param p1, "select"    # Z
    .param p2, "userId"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x64

    if-lt p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "lockscreen.enterpriseidentity_selected"

    if-ne p1, v0, :cond_1

    :goto_0
    invoke-static {v2, v3, v0, p2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v1

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setFingerPrintLockscreen(II)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "userId"    # I

    .prologue
    const-string v0, "lockscreen.enabled_fingerprint"

    int-to-long v2, p1

    invoke-direct {p0, v0, v2, v3, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    return-void
.end method

.method public setFingerPrintLockscreen(ZI)V
    .locals 4
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .local v0, "state":I
    :goto_0
    const-string v1, "lockscreen.enabled_fingerprint"

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    return-void

    .end local v0    # "state":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFingerPrintMigrated(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    const-string v0, "migrated_fingerprint_fota_key"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    return-void
.end method

.method public setLockFingerprintEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    const-string v0, "lockscreen.enabled_fingerprint"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    return-void
.end method

.method public setLockPatternEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(ZI)V

    return-void
.end method

.method public setLockPatternEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userHandle"    # I

    .prologue
    const-string v0, "lock_pattern_autolock"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    return-void
.end method

.method public setLockScreenDisabled(ZI)V
    .locals 1
    .param p1, "disable"    # Z
    .param p2, "userId"    # I

    .prologue
    const-string v0, "lockscreen.disabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    return-void
.end method

.method public setLockoutAttemptDeadline(I)J
    .locals 8
    .param p1, "userId"    # I

    .prologue
    const-wide/16 v6, 0x5

    const-wide/16 v4, 0x1

    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    add-long/2addr v2, v4

    sput-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "deadline":J
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->isFollowLegacyTimeoutPolicy()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-wide/16 v2, 0x7530

    add-long/2addr v0, v2

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen.failedUnlockAttemptNumber"

    sget-wide v4, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    return-wide v0

    :cond_2
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    const-wide/32 v2, 0xea60

    add-long/2addr v0, v2

    goto :goto_0

    :cond_3
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v4, 0x3

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-wide/32 v2, 0x493e0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_4
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    const-wide/32 v2, 0x927c0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_5
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_6

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    goto :goto_0

    :cond_6
    sget-wide v2, Lcom/android/internal/widget/LockPatternUtils;->failedUnlockAttemptNumber:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_1

    const-wide/32 v2, 0x36ee80

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public setLockoutAttemptDeadline(II)J
    .locals 6
    .param p1, "userId"    # I
    .param p2, "timeoutMs"    # I

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p2

    add-long v0, v2, v4

    .local v0, "deadline":J
    const-string v2, "lockscreen.lockoutattemptdeadline"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    const-string v2, "lockscreen.lockoutattempttimeoutmss"

    int-to-long v4, p2

    invoke-direct {p0, v2, v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V

    return-wide v0
.end method

.method public setOwnerInfo(Ljava/lang/String;I)V
    .locals 1
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const-string v0, "lock_screen_owner_info"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->updateCryptoUserInfo(I)V

    return-void
.end method

.method public setOwnerInfoEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    const-string v0, "lock_screen_owner_info_enabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils;->updateCryptoUserInfo(I)V

    return-void
.end method

.method public setPermanentlyLocked(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    const-string v0, "lockscreen.lockedoutpermanently"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setPowerButtonInstantlyLocks(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    const-string v0, "lockscreen.power_button_instantly_locks"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    return-void
.end method

.method public setPrevLockFingerprintEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    const-string v0, "prev_lock_type"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    return-void
.end method

.method public setPrivateModeFingerPrintLockscreen(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    const-string v0, "lockscreen.privatemode_fingerprint"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    return-void
.end method

.method public setRecoveryScreenLocked(Z)V
    .locals 1
    .param p1, "locked"    # Z

    .prologue
    const-string v0, "lockscreen.lockedoutRecovery"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setRejectModeLocked(Z)V
    .locals 2
    .param p1, "locked"    # Z

    .prologue
    const-string v0, "lockscreen.lgt_reject_cause"

    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I

    move-result v1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    return-void
.end method

.method public setRejectModeLocked(ZI)V
    .locals 1
    .param p1, "locked"    # Z
    .param p2, "userId"    # I

    .prologue
    const-string v0, "lockscreen.lgt_reject_cause"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    return-void
.end method

.method public setSmartUnlockEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    const-string v0, "lock_smart_unlock_enabled"

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setSmartUnlockEnabled(ZI)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "userid"    # I

    .prologue
    const-string v0, "lock_smart_unlock_enabled"

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    return-void
.end method

.method public setSwipeSmartLock(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    sput-boolean p1, Lcom/android/internal/widget/LockPatternUtils;->mSwipeSmartLock:Z

    return-void
.end method

.method public setVisiblePasswordEnabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    if-eqz p2, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_1

    const-string v3, "LockPatternUtils"

    const-string v4, "Could not find the mount service to update the user info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string v4, "PasswordVisible"

    if-eqz p1, :cond_2

    const-string v3, "1"

    :goto_1
    invoke-interface {v1, v4, v3}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    const-string v4, "Error changing password visible state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    :try_start_1
    const-string v3, "0"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setVisiblePatternEnabled(ZI)V
    .locals 5
    .param p1, "enabled"    # Z
    .param p2, "userId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternDisabledByMDM()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    const-string v3, "LockPatternUtils"

    const-string v4, "Could not enable visible pattern by IT admin."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "lock_pattern_visible_pattern"

    invoke-direct {p0, v3, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;ZI)V

    if-nez p2, :cond_0

    const-string v3, "mount"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .local v2, "service":Landroid/os/IBinder;
    if-nez v2, :cond_2

    const-string v3, "LockPatternUtils"

    const-string v4, "Could not find the mount service to update the user info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-static {v2}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .local v1, "mountService":Landroid/os/storage/IMountService;
    :try_start_0
    const-string v4, "PatternVisible"

    if-eqz p1, :cond_3

    const-string v3, "1"

    :goto_1
    invoke-interface {v1, v4, v3}, Landroid/os/storage/IMountService;->setField(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    const-string v4, "Error changing pattern visible state"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    const-string v3, "0"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public showCardNotRegisteredDialog()V
    .locals 4

    .prologue
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.smartcard.pinservice.CARD_NOT_REGISTERED_ERROR_DIALOG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    const-string v2, "LockPatternUtils"

    const-string v3, "showCardNotRegisteredDialog called "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "LockPatternUtils"

    const-string v3, "showCardNotRegisteredDialog "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V
    .locals 3
    .param p1, "strongAuthTracker"    # Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    invoke-interface {v1, v2}, Lcom/android/internal/widget/ILockSettings;->unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    const-string v2, "Could not unregister StrongAuthTracker"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateCarrierLockPlus(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/widget/ILockSettings;->updateCarrierLockPlusMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable updateCarrierLockPlus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public usingBiometricWeak(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const-string v1, "lockscreen.password_type"

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .local v0, "quality":I
    const v1, 0x8000

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public usingSmartUnlock(I)Z
    .locals 4
    .param p1, "userid"    # I

    .prologue
    const-string v1, "lockscreen.password_type"

    const-wide/32 v2, 0x10000

    invoke-direct {p0, v1, v2, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;JI)J

    move-result-wide v2

    long-to-int v0, v2

    .local v0, "quality":I
    const v1, 0x9100

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x90000

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public verifyBackupPassword(Ljava/lang/String;JIZ)[B
    .locals 10
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .param p5, "useKeystore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/widget/ILockSettings;->verifyBackupPassword(Ljava/lang/String;JIZ)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v7

    .local v7, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v0

    .end local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :goto_0
    return-object v0

    .restart local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v7}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v6

    .local v6, "re":Landroid/os/RemoteException;
    move-object v0, v8

    goto :goto_0

    .end local v6    # "re":Landroid/os/RemoteException;
    .restart local v7    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    move-object v0, v8

    goto :goto_0
.end method

.method public verifyBackupPin(Ljava/lang/String;JI)[B
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyBackupPin(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public verifyPassword(Ljava/lang/String;JI)[B
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyPassword(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public verifyPattern(Ljava/util/List;JI)[B
    .locals 6
    .param p2, "challenge"    # J
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;JI)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p2, p3, p4}, Lcom/android/internal/widget/ILockSettings;->verifyPattern(Ljava/lang/String;JI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object v1

    .local v1, "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    if-nez v1, :cond_1

    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_0
    :goto_0
    return-object v2

    .restart local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getPayload()[B

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getResponseCode()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;

    invoke-virtual {v1}, Lcom/android/internal/widget/VerifyCredentialResponse;->getTimeout()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;-><init>(I)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "response":Lcom/android/internal/widget/VerifyCredentialResponse;
    :catch_0
    move-exception v0

    .local v0, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method
