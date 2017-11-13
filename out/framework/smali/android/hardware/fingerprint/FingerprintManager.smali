.class public Landroid/hardware/fingerprint/FingerprintManager;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fingerprint/FingerprintManager$MyHandler;,
        Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$RequestCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;,
        Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;,
        Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;,
        Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;,
        Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;
    }
.end annotation


# static fields
.field public static final CLIENT_KEY_PRIVILEGED_ATTR:Ljava/lang/String; = "privileged_attr"

.field private static final DEBUG:Z

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_COMPLETED:I = 0x2713

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_FAILED:I = 0x2716

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_FINGER_LEAVE:I = 0x2714

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_FINGER_LEAVE_TIMEOUT:I = 0x2717

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_READY:I = 0x2711

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_STARTED:I = 0x2712

.field public static final FINGERPRINT_ACQUIRED_CAPTURE_SUCCESS:I = 0x2715

.field public static final FINGERPRINT_ACQUIRED_DUPLICATED_SCANNED_IMAGE:I = 0x3ea

.field public static final FINGERPRINT_ACQUIRED_FACTORY_TEST_SNSR_TEST_SCRIPT_END:I = 0x2719

.field public static final FINGERPRINT_ACQUIRED_FACTORY_TEST_SNSR_TEST_SCRIPT_START:I = 0x2718

.field public static final FINGERPRINT_ACQUIRED_GOOD:I = 0x0

.field public static final FINGERPRINT_ACQUIRED_IMAGER_DIRTY:I = 0x3

.field public static final FINGERPRINT_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final FINGERPRINT_ACQUIRED_PARTIAL:I = 0x1

.field public static final FINGERPRINT_ACQUIRED_TOO_FAST:I = 0x5

.field public static final FINGERPRINT_ACQUIRED_TOO_SLOW:I = 0x4

.field public static final FINGERPRINT_ACQUIRED_VENDOR_BASE:I = 0x3e8

.field public static final FINGERPRINT_ACQUIRED_VENDOR_EVENT_BASE:I = 0x2710

.field public static final FINGERPRINT_ACQUIRED_WET_FINGER:I = 0x3e9

.field public static final FINGERPRINT_ERROR_CANCELED:I = 0x5

.field public static final FINGERPRINT_ERROR_DEVICE_NEED_RECAL:I = 0x3e9

.field public static final FINGERPRINT_ERROR_HW_UNAVAILABLE:I = 0x1

.field public static final FINGERPRINT_ERROR_IDENTIFY_FAILURE_BROKEN_DATABASE:I = 0x3ec

.field public static final FINGERPRINT_ERROR_IDENTIFY_FAILURE_SENSOR_CHANGED:I = 0x3ed

.field public static final FINGERPRINT_ERROR_IDENTIFY_FAILURE_SERVICE_FAILURE:I = 0x3eb

.field public static final FINGERPRINT_ERROR_IDENTIFY_FAILURE_SYSTEM_FAILURE:I = 0x3ea

.field public static final FINGERPRINT_ERROR_LOCKOUT:I = 0x7

.field public static final FINGERPRINT_ERROR_NEED_TO_RETRY:I = 0x1388

.field public static final FINGERPRINT_ERROR_NO_SPACE:I = 0x4

.field public static final FINGERPRINT_ERROR_TIMEOUT:I = 0x3

.field public static final FINGERPRINT_ERROR_UNABLE_TO_PROCESS:I = 0x2

.field public static final FINGERPRINT_ERROR_UNABLE_TO_REMOVE:I = 0x6

.field public static final FINGERPRINT_ERROR_VENDOR_BASE:I = 0x3e8

.field public static final FINGERPRINT_REQUEST_ENROLL_SESSION:I = 0x3ea

.field public static final FINGERPRINT_REQUEST_ENUMERATE:I = 0xb

.field public static final FINGERPRINT_REQUEST_GET_SENSOR_INFO:I = 0x5

.field public static final FINGERPRINT_REQUEST_GET_SENSOR_STATUS:I = 0x6

.field public static final FINGERPRINT_REQUEST_GET_UNIQUE_ID:I = 0x7

.field public static final FINGERPRINT_REQUEST_GET_USERIDS:I = 0xc

.field public static final FINGERPRINT_REQUEST_GET_VERSION:I = 0x4

.field public static final FINGERPRINT_REQUEST_LOCKOUT:I = 0x3e9

.field public static final FINGERPRINT_REQUEST_PAUSE:I = 0x0

.field public static final FINGERPRINT_REQUEST_PROCESS_FIDO:I = 0x9

.field public static final FINGERPRINT_REQUEST_REMOVE_FINGER:I = 0x3e8

.field public static final FINGERPRINT_REQUEST_RESUME:I = 0x1

.field public static final FINGERPRINT_REQUEST_SENSOR_TEST_NORMALSCAN:I = 0x3

.field public static final FINGERPRINT_REQUEST_SESSION_OPEN:I = 0x2

.field public static final FINGERPRINT_REQUEST_SET_ACTIVE_GROUP:I = 0x8

.field public static final FINGERPRINT_REQUEST_UPDATE_SID:I = 0xa

.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final MSG_ENROLL_RESULT:I = 0x64

.field private static final MSG_ERROR:I = 0x68

.field private static final MSG_REMOVED:I = 0x69

.field public static final PRIVILEGED_ATTR_EXCLUSIVE_IDENTIFY:I = 0x4

.field public static final PRIVILEGED_ATTR_FINGER_DETECTION:I = 0x8

.field public static final PRIVILEGED_ATTR_NO_LOCKOUT:I = 0x2

.field public static final PRIVILEGED_ATTR_NO_VIBRATION:I = 0x1

.field public static final PRIVILEGED_TYPE_KEYGUARD:I = -0x80000000

.field public static final SENSOR_STATUS_ERROR:I = 0x186ca

.field public static final SENSOR_STATUS_OK:I = 0x186c8

.field public static final SENSOR_STATUS_WORKING:I = 0x186c9

.field private static final TAG:Ljava/lang/String; = "FingerprintManager"


# instance fields
.field private mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

.field private mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

.field private mHandler:Landroid/os/Handler;

.field private mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

.field private mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;

.field private mRequestCallback:Landroid/hardware/fingerprint/FingerprintManager$RequestCallback;

.field private mService:Landroid/hardware/fingerprint/IFingerprintService;

.field private mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

.field private mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/hardware/fingerprint/FingerprintManager;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/hardware/fingerprint/IFingerprintService;

    .prologue
    .line 1156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    .line 1293
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$2;

    invoke-direct {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager$2;-><init>(Landroid/hardware/fingerprint/FingerprintManager;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    .line 1157
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    .line 1158
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    .line 1159
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-nez v0, :cond_0

    .line 1160
    const-string v0, "FingerprintManager"

    const-string v1, "FingerprintManagerService was null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_0
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager$1;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 1163
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->cancelEnrollment()V

    return-void
.end method

.method static synthetic access$100(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p1, "x1"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->cancelAuthentication(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RequestCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRequestCallback:Landroid/hardware/fingerprint/FingerprintManager$RequestCallback;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    return-object v0
.end method

.method static synthetic access$600(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    return-object v0
.end method

.method static synthetic access$700(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/fingerprint/FingerprintManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/fingerprint/FingerprintManager;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-direct {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/fingerprint/FingerprintManager;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    return-object v0
.end method

.method private static bytesToString([BI)Ljava/lang/String;
    .locals 6
    .param p0, "a"    # [B
    .param p1, "len"    # I

    .prologue
    .line 939
    array-length v2, p0

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 940
    :cond_0
    const/4 v2, 0x0

    .line 946
    :goto_0
    return-object v2

    .line 942
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p1, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 943
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 944
    const-string v2, "%c"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 946
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private cancelAuthentication(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V
    .locals 4
    .param p1, "cryptoObject"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .prologue
    .line 1185
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 1186
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1190
    :cond_0
    :goto_0
    return-void

    .line 1187
    :catch_0
    move-exception v0

    .line 1188
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception while canceling authentication"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelEnrollment()V
    .locals 3

    .prologue
    .line 1175
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 1177
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->cancelEnrollment(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1182
    :cond_0
    :goto_0
    return-void

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception while canceling enrollment"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getAcquiredString(I)Ljava/lang/String;
    .locals 9
    .param p1, "acquireInfo"    # I

    .prologue
    const/4 v5, 0x0

    .line 1227
    iget-object v6, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1228
    .local v1, "mPm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 1231
    .local v2, "mRes":Landroid/content/res/Resources;
    :try_start_0
    const-string v6, "com.samsung.android.fingerprint.service"

    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1237
    :goto_0
    if-nez v2, :cond_0

    .line 1238
    const-string v6, "FingerprintManager"

    const-string/jumbo v7, "mRes is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1281
    :cond_1
    const/16 v6, 0x3e8

    if-lt p1, v6, :cond_2

    .line 1282
    add-int/lit16 v4, p1, -0x3e8

    .line 1283
    .local v4, "msgNumber":I
    iget-object v6, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107005a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1285
    .local v3, "msgArray":[Ljava/lang/String;
    array-length v6, v3

    if-ge v4, v6, :cond_2

    .line 1286
    aget-object v5, v3, v4

    .line 1289
    .end local v3    # "msgArray":[Ljava/lang/String;
    .end local v4    # "msgNumber":I
    :cond_2
    :goto_1
    :sswitch_0
    return-object v5

    .line 1232
    :catch_0
    move-exception v0

    .line 1233
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "FingerprintManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getImageQualityFeedbackString, Exception = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    const/4 v2, 0x0

    goto :goto_0

    .line 1245
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_1
    if-nez v2, :cond_3

    .line 1246
    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v6, 0x10401cd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1249
    :cond_3
    const-string/jumbo v5, "touch_image_quality_finger_offset_too_far_left"

    const-string/jumbo v6, "string"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1252
    :sswitch_2
    if-nez v2, :cond_4

    .line 1253
    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v6, 0x10401ce

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1256
    :cond_4
    const-string/jumbo v5, "touch_image_quality_finger_offset_too_far_left"

    const-string/jumbo v6, "string"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1259
    :sswitch_3
    if-nez v2, :cond_5

    .line 1260
    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v6, 0x10401cf

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1263
    :cond_5
    const-string/jumbo v5, "spass_something_on_sensor"

    const-string/jumbo v6, "string"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1266
    :sswitch_4
    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v6, 0x10401d1

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 1269
    :sswitch_5
    if-nez v2, :cond_6

    .line 1270
    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v6, 0x10401d0

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 1273
    :cond_6
    const-string/jumbo v5, "spass_status_too_fast"

    const-string/jumbo v6, "string"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 1276
    :sswitch_6
    if-eqz v2, :cond_1

    .line 1277
    const-string/jumbo v5, "spass_image_quality_wet_finger"

    const-string/jumbo v6, "string"

    const-string v7, "com.samsung.android.fingerprint.service"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 1241
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x3e9 -> :sswitch_6
    .end sparse-switch
.end method

.method private getCurrentUserId()I
    .locals 3

    .prologue
    .line 1167
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1170
    :goto_0
    return v1

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Failed to get current user id\n"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    const/16 v1, -0x2710

    goto :goto_0
.end method

.method private getErrorString(I)Ljava/lang/String;
    .locals 2
    .param p1, "errMsg"    # I

    .prologue
    const v1, 0x10401d7

    .line 1193
    packed-switch p1, :pswitch_data_0

    .line 1220
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1195
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1198
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x10401d2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1201
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x10401d3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1204
    :pswitch_4
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x10401d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1206
    :pswitch_5
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x10401d5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1208
    :pswitch_6
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const v1, 0x10401d6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private useHandler(Landroid/os/Handler;)V
    .locals 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v2, 0x0

    .line 560
    if-eqz p1, :cond_1

    .line 561
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;Landroid/hardware/fingerprint/FingerprintManager$1;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 563
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager$MyHandler;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/Looper;Landroid/hardware/fingerprint/FingerprintManager$1;)V

    iput-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method


# virtual methods
.method public addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    .prologue
    .line 1010
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v2, :cond_0

    .line 1012
    :try_start_0
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 1013
    .local v1, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    new-instance v3, Landroid/hardware/fingerprint/FingerprintManager$1;

    invoke-direct {v3, p0, v1, p1}, Landroid/hardware/fingerprint/FingerprintManager$1;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/PowerManager;Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V

    invoke-interface {v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->addLockoutResetCallback(Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1039
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 1033
    :catch_0
    move-exception v0

    .line 1034
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintManager"

    const-string v3, "Remote exception in addLockoutResetCallback(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1037
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "FingerprintManager"

    const-string v3, "addLockoutResetCallback(): Service not connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 7
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;

    .prologue
    .line 552
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V

    .line 553
    return-void
.end method

.method public authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;I)V
    .locals 8
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I

    .prologue
    .line 574
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V

    .line 575
    return-void
.end method

.method public authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;)V
    .locals 10
    .param p1, "crypto"    # Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;

    .prologue
    .line 583
    if-nez p4, :cond_0

    .line 584
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an authentication callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_0
    if-eqz p2, :cond_3

    .line 588
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 589
    const-string v0, "FingerprintManager"

    const-string v1, "authentication already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_1
    :goto_0
    return-void

    .line 592
    :cond_2
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;

    invoke-direct {v0, p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$OnAuthenticationCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 596
    :cond_3
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_1

    .line 597
    :try_start_0
    invoke-direct {p0, p5}, Landroid/hardware/fingerprint/FingerprintManager;->useHandler(Landroid/os/Handler;)V

    .line 598
    iput-object p4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mAuthenticationCallback:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 599
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mCryptoObject:Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;

    .line 600
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;->getOpId()J

    move-result-wide v2

    .line 601
    .local v2, "sessionId":J
    :goto_1
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    move/from16 v4, p6

    move v6, p3

    move-object/from16 v8, p7

    invoke-interface/range {v0 .. v8}, Landroid/hardware/fingerprint/IFingerprintService;->authenticate(Landroid/os/IBinder;JILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 603
    .end local v2    # "sessionId":J
    :catch_0
    move-exception v9

    .line 604
    .local v9, "e":Landroid/os/RemoteException;
    const-string v0, "FingerprintManager"

    const-string v1, "Remote exception while authenticating: "

    invoke-static {v0, v1, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 605
    if-eqz p4, :cond_1

    .line 608
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 600
    .end local v9    # "e":Landroid/os/RemoteException;
    :cond_4
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;)V
    .locals 6
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .prologue
    .line 632
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;Landroid/os/Bundle;)V

    .line 633
    return-void
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;Landroid/os/Bundle;)V
    .locals 9
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;
    .param p5, "attr"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x1

    .line 639
    if-nez p4, :cond_0

    .line 640
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an enrollment callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 643
    :cond_0
    if-eqz p2, :cond_3

    .line 644
    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 645
    const-string v0, "FingerprintManager"

    const-string v1, "enrollment already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_1
    :goto_0
    return-void

    .line 648
    :cond_2
    new-instance v0, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/hardware/fingerprint/FingerprintManager$OnEnrollCancelListener;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/fingerprint/FingerprintManager$1;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 652
    :cond_3
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_1

    .line 653
    :try_start_0
    iput-object p4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mEnrollmentCallback:Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;

    .line 654
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v3

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-object v2, p1

    move v5, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Landroid/hardware/fingerprint/IFingerprintService;->enroll(Landroid/os/IBinder;[BILandroid/hardware/fingerprint/IFingerprintServiceReceiver;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 655
    :catch_0
    move-exception v7

    .line 656
    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "FingerprintManager"

    const-string v1, "Remote exception in enroll: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 657
    if-eqz p4, :cond_1

    .line 660
    invoke-direct {p0, v8}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v8, v0}, Landroid/hardware/fingerprint/FingerprintManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getAuthenticatorId()J
    .locals 4

    .prologue
    .line 975
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 977
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->getAuthenticatorId(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 984
    :goto_0
    return-wide v2

    .line 978
    :catch_0
    move-exception v0

    .line 979
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in getAuthenticatorId(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 984
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const-wide/16 v2, 0x0

    goto :goto_0

    .line 982
    :cond_0
    const-string v1, "FingerprintManager"

    const-string v2, "getAuthenticatorId(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getEnrolledFingerprints()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 765
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnrolledFingerprints(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/fingerprint/Fingerprint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 749
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 750
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Landroid/hardware/fingerprint/IFingerprintService;->getEnrolledFingerprints(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 754
    :goto_0
    return-object v1

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in getEnrolledFingerprints: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 754
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasEnrolledFingerprints()Z
    .locals 4

    .prologue
    .line 775
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 776
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->hasEnrolledFingerprints(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 781
    :goto_0
    return v1

    .line 778
    :catch_0
    move-exception v0

    .line 779
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in getEnrolledFingerprints: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 781
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnrollSession()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 829
    const/16 v1, 0x3ea

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v6

    .line 830
    .local v6, "ret":I
    if-lez v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public isHardwareDetected()Z
    .locals 5

    .prologue
    .line 791
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v3, :cond_0

    .line 793
    const-wide/16 v0, 0x0

    .line 794
    .local v0, "deviceId":J
    :try_start_0
    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v1, v4}, Landroid/hardware/fingerprint/IFingerprintService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 801
    .end local v0    # "deviceId":J
    :goto_0
    return v3

    .line 795
    .restart local v0    # "deviceId":J
    :catch_0
    move-exception v2

    .line 796
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "FingerprintManager"

    const-string v4, "Remote exception in isFingerprintHardwareDetected(): "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 801
    .end local v0    # "deviceId":J
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 799
    :cond_0
    const-string v3, "FingerprintManager"

    const-string/jumbo v4, "isFingerprintHardwareDetected(): Service not connected!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public postEnroll()I
    .locals 4

    .prologue
    .line 688
    const/4 v1, 0x0

    .line 689
    .local v1, "result":I
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v2, :cond_0

    .line 690
    :try_start_0
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->postEnroll(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 694
    :cond_0
    :goto_0
    return v1

    .line 691
    :catch_0
    move-exception v0

    .line 692
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintManager"

    const-string v3, "Remote exception in post enroll: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public preEnroll()J
    .locals 5

    .prologue
    .line 673
    const-wide/16 v2, 0x0

    .line 674
    .local v2, "result":J
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 675
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v4, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v4}, Landroid/hardware/fingerprint/IFingerprintService;->preEnroll(Landroid/os/IBinder;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 679
    :cond_0
    :goto_0
    return-wide v2

    .line 676
    :catch_0
    move-exception v0

    .line 677
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v4, "Remote exception in enroll: "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public remove(Landroid/hardware/fingerprint/Fingerprint;Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V
    .locals 7
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;
    .param p2, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .prologue
    const/4 v6, 0x1

    .line 707
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 708
    :try_start_0
    iput-object p2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    .line 709
    iput-object p1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRemovalFingerprint:Landroid/hardware/fingerprint/Fingerprint;

    .line 710
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v3

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v4

    iget-object v5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/hardware/fingerprint/IFingerprintService;->remove(Landroid/os/IBinder;IILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 711
    :catch_0
    move-exception v0

    .line 712
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in remove: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 713
    if-eqz p2, :cond_0

    .line 714
    invoke-direct {p0, v6}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v6, v1}, Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;->onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public rename(ILjava/lang/String;)V
    .locals 3
    .param p1, "fpId"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 730
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 732
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v2

    invoke-interface {v1, p1, v2, p2}, Landroid/hardware/fingerprint/IFingerprintService;->rename(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    :goto_0
    return-void

    .line 733
    :catch_0
    move-exception v0

    .line 734
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in rename(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 737
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "rename(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I
    .locals 9
    .param p1, "cmd"    # I
    .param p2, "inputBuf"    # [B
    .param p3, "outputBuf"    # [B
    .param p4, "inParam"    # I
    .param p5, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$RequestCallback;

    .prologue
    .line 807
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_2

    .line 809
    if-nez p2, :cond_0

    .line 810
    const/4 v0, 0x0

    :try_start_0
    new-array p2, v0, [B

    .line 812
    :cond_0
    if-nez p3, :cond_1

    .line 813
    const/4 v0, 0x0

    new-array p3, v0, [B

    .line 815
    :cond_1
    iput-object p5, p0, Landroid/hardware/fingerprint/FingerprintManager;->mRequestCallback:Landroid/hardware/fingerprint/FingerprintManager$RequestCallback;

    .line 816
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v6

    iget-object v7, p0, Landroid/hardware/fingerprint/FingerprintManager;->mServiceReceiver:Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v7}, Landroid/hardware/fingerprint/IFingerprintService;->request(Landroid/os/IBinder;I[B[BIILandroid/hardware/fingerprint/IFingerprintServiceReceiver;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 823
    :goto_0
    return v0

    .line 817
    :catch_0
    move-exception v8

    .line 818
    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "FingerprintManager"

    const-string v1, "Remote exception in request(): "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 823
    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v0, -0x2

    goto :goto_0

    .line 821
    :cond_2
    const-string v0, "FingerprintManager"

    const-string/jumbo v1, "request(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public requestEnumerate()[I
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 926
    const/16 v0, 0xa

    new-array v3, v0, [B

    .line 927
    .local v3, "outBuf":[B
    const/16 v1, 0xb

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v8

    .line 928
    .local v8, "size":I
    if-gtz v8, :cond_0

    .line 935
    :goto_0
    return-object v2

    .line 931
    :cond_0
    new-array v7, v8, [I

    .line 932
    .local v7, "result":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v8, :cond_1

    .line 933
    aget-byte v0, v3, v6

    aput v0, v7, v6

    .line 932
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v7

    .line 935
    goto :goto_0
.end method

.method public requestGetSensorInfo()[B
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 869
    const/16 v0, 0x100

    new-array v3, v0, [B

    .line 870
    .local v3, "outBuf":[B
    const/4 v1, 0x5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v6

    .line 871
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 874
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_0
.end method

.method public requestGetSensorStatus()I
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 880
    const/4 v1, 0x6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v0

    return v0
.end method

.method public requestGetUniqueID(ILjava/lang/String;)[B
    .locals 7
    .param p1, "fingerId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 885
    const/16 v0, 0x100

    new-array v3, v0, [B

    .line 886
    .local v3, "outBuf":[B
    const/4 v1, 0x7

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v6

    .line 887
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 890
    :goto_0
    return-object v5

    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    goto :goto_0
.end method

.method public requestGetUserIDs()[Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v2, 0x0

    .line 951
    const/16 v0, 0x100

    new-array v3, v0, [B

    .line 952
    .local v3, "outBuf":[B
    const/16 v1, 0xc

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v10

    .line 953
    .local v10, "size":I
    if-gtz v10, :cond_0

    .line 965
    :goto_0
    return-object v2

    .line 956
    :cond_0
    invoke-static {v3, v10}, Landroid/hardware/fingerprint/FingerprintManager;->bytesToString([BI)Ljava/lang/String;

    move-result-object v11

    .line 958
    .local v11, "src":Ljava/lang/String;
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v0, ":"

    invoke-direct {v12, v11, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    .local v12, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    .line 960
    .local v6, "count":I
    new-array v9, v6, [Ljava/lang/String;

    .line 961
    .local v9, "result":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 962
    .local v7, "i":I
    :goto_1
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 963
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v9, v7

    move v7, v8

    .end local v8    # "i":I
    .restart local v7    # "i":I
    goto :goto_1

    :cond_1
    move-object v2, v9

    .line 965
    goto :goto_0
.end method

.method public requestGetVersion()[B
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 859
    const/16 v0, 0x100

    new-array v3, v0, [B

    .line 860
    .local v3, "outBuf":[B
    const/4 v1, 0x4

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v6

    .line 861
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 864
    :goto_0
    return-object v2

    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_0
.end method

.method public requestPause()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 835
    move-object v0, p0

    move-object v3, v2

    move v4, v1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 838
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public requestProcessFIDO([B)[B
    .locals 7
    .param p1, "inBuf"    # [B

    .prologue
    const/4 v5, 0x0

    .line 908
    const/16 v0, 0x2800

    new-array v3, v0, [B

    .line 909
    .local v3, "outBuf":[B
    const/16 v1, 0x9

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v6

    .line 910
    .local v6, "size":I
    if-gtz v6, :cond_0

    .line 913
    :goto_0
    return-object v5

    :cond_0
    invoke-static {v3, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v5

    goto :goto_0
.end method

.method public requestResume()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 843
    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 846
    :goto_0
    return v4

    :cond_0
    move v4, v1

    goto :goto_0
.end method

.method public requestSessionOpen()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 851
    const/4 v1, 0x2

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 854
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public requestSetActiveGroup(Ljava/lang/String;)Z
    .locals 10
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x8

    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 894
    if-nez p1, :cond_0

    .line 895
    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v4

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_1

    move v0, v9

    .line 903
    :goto_0
    return v0

    .line 899
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v7

    move-object v3, p0

    move v4, v1

    move-object v6, v2

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_1

    move v0, v9

    .line 900
    goto :goto_0

    .line 903
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestUpdateSID([B)Z
    .locals 6
    .param p1, "sId"    # [B

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 918
    const/16 v1, 0xa

    move-object v0, p0

    move-object v2, p1

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/fingerprint/FingerprintManager;->request(I[B[BILandroid/hardware/fingerprint/FingerprintManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

    .line 921
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public resetTimeout([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 995
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 997
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v1, p1}, Landroid/hardware/fingerprint/IFingerprintService;->resetTimeout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    :goto_0
    return-void

    .line 998
    :catch_0
    move-exception v0

    .line 999
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in resetTimeout(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1002
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "resetTimeout(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
.method public addLockoutResetCallback(Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V
    .locals 4
    .param p1, "callback"    # Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;

    .prologue
    .line 716
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v2, :cond_0

    .line 718
    :try_start_0
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 719
    .local v1, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    new-instance v3, Landroid/hardware/fingerprint/FingerprintManager$1;

    invoke-direct {v3, p0, v1, p1}, Landroid/hardware/fingerprint/FingerprintManager$1;-><init>(Landroid/hardware/fingerprint/FingerprintManager;Landroid/os/PowerManager;Landroid/hardware/fingerprint/FingerprintManager$LockoutResetCallback;)V

    invoke-interface {v2, v3}, Landroid/hardware/fingerprint/IFingerprintService;->addLockoutResetCallback(Landroid/hardware/fingerprint/IFingerprintServiceLockoutResetCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 739
    :catch_0
    move-exception v0

    .line 740
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintManager"

    const-string v3, "Remote exception in addLockoutResetCallback(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 743
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "FingerprintManager"

    const-string v3, "addLockoutResetCallback(): Service not connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
.method public extCmd(II)I
    .locals 7
    .param p1, "cmd"    # I
    .param p2, "param"    # I

    .prologue
    .line 991
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v0, :cond_0

    .line 993
    :try_start_0
    iget-object v0, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getCurrentUserId()I

    move-result v2

    iget-object v3, p0, Landroid/hardware/fingerprint/FingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    move v3, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/hardware/fingerprint/IFingerprintService;->extCmd(Landroid/os/IBinder;IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1001
    :goto_0
    return v0

    .line 995
    :catch_0
    move-exception v6

    .line 996
    .local v6, "e":Landroid/os/RemoteException;
    const-string v0, "FingerprintManager"

    const-string v1, "Remote exception in extCmd(): "

    invoke-static {v0, v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1001
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v0, -0x1

    goto :goto_0

    .line 999
    :cond_0
    const-string v0, "FingerprintManager"

    const-string v1, "extCmd(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
.method public resetTimeout([B)V
    .locals 3
    .param p1, "token"    # [B

    .prologue
    .line 701
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    if-eqz v1, :cond_0

    .line 703
    :try_start_0
    iget-object v1, p0, Landroid/hardware/fingerprint/FingerprintManager;->mService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v1, p1}, Landroid/hardware/fingerprint/IFingerprintService;->resetTimeout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 710
    :goto_0
    return-void

    .line 704
    :catch_0
    move-exception v0

    .line 705
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintManager"

    const-string v2, "Remote exception in resetTimeout(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 708
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "FingerprintManager"

    const-string/jumbo v2, "resetTimeout(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
.method public setNavigationEnable(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x2

    .line 1008
    if-eqz p1, :cond_0

    .line 1009
    const/4 v0, 0x3

    invoke-virtual {p0, v1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->extCmd(II)I

    .line 1013
    :goto_0
    return-void

    .line 1011
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->extCmd(II)I

    goto :goto_0
.end method
.field private static final FINGERPRINT_CMD_FP_DISABLE:I = 0x4
.field private static final FINGERPRINT_CMD_FP_ENABLE:I = 0x3
.field private static final FINGERPRINT_CMD_SET_ACTIVE_MODE:I = 0x1
.field private static final FINGERPRINT_CMD_SET_DEFAULT_MODE:I = 0x2
.field private static final FINGERPRINT_CMD_SET_SECURITY_LEVEL:I = 0x7
.field private static final FINGERPRINT_CMD_START_SET_MODE:I = 0x5
.field private static final FINGERPRINT_CMD_STOP_SET_MODE:I = 0x6
.field private static final FINGERPRINT_MODE_KEY:I = 0x3
.field private static final FINGERPRINT_MODE_NAV:I = 0x2
.field private static final FINGERPRINT_MODE_SLEEP:I = 0x1
