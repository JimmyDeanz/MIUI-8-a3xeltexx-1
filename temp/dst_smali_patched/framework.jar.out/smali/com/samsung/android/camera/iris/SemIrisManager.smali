.class public Lcom/samsung/android/camera/iris/SemIrisManager;
.super Ljava/lang/Object;
.source "SemIrisManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;,
        Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;,
        Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;,
        Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationResult;,
        Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;,
        Lcom/samsung/android/camera/iris/SemIrisManager$OnAuthenticationCancelListener;,
        Lcom/samsung/android/camera/iris/SemIrisManager$OnEnrollCancelListener;
    }
.end annotation


# static fields
.field public static final CLIENT_KEY_PRIVILEGED_ATTR:Ljava/lang/String; = "privileged_attr"

.field private static final DEBUG:Z

.field public static final IRIS_ACQUIRED_CAPTURE_COMPLETED:I = 0x2713

.field public static final IRIS_ACQUIRED_CAPTURE_FAILED:I = 0x2716

.field public static final IRIS_ACQUIRED_CAPTURE_IRIS_LEAVE:I = 0x2714

.field public static final IRIS_ACQUIRED_CAPTURE_IRIS_LEAVE_TIMEOUT:I = 0x2717

.field public static final IRIS_ACQUIRED_CAPTURE_READY:I = 0x2711

.field public static final IRIS_ACQUIRED_CAPTURE_STARTED:I = 0x2712

.field public static final IRIS_ACQUIRED_CAPTURE_SUCCESS:I = 0x2715

.field public static final IRIS_ACQUIRED_DUPLICATED_SCANNED_IMAGE:I = 0x3ea

.field public static final IRIS_ACQUIRED_EYE_NOT_PRESENT:I = 0xa

.field public static final IRIS_ACQUIRED_FACTORY_TEST_SNSR_TEST_SCRIPT_END:I = 0x2719

.field public static final IRIS_ACQUIRED_FACTORY_TEST_SNSR_TEST_SCRIPT_START:I = 0x2718

.field public static final IRIS_ACQUIRED_GOOD:I = 0x0

.field public static final IRIS_ACQUIRED_INSUFFICIENT:I = 0x2

.field public static final IRIS_ACQUIRED_MOVE_CLOSER:I = 0x3

.field public static final IRIS_ACQUIRED_MOVE_DOWN:I = 0x8

.field public static final IRIS_ACQUIRED_MOVE_FARTHER:I = 0x4

.field public static final IRIS_ACQUIRED_MOVE_LEFT:I = 0x5

.field public static final IRIS_ACQUIRED_MOVE_RIGHT:I = 0x6

.field public static final IRIS_ACQUIRED_MOVE_UP:I = 0x7

.field public static final IRIS_ACQUIRED_OPEN_EYES_WIDER:I = 0x9

.field public static final IRIS_ACQUIRED_PARTIAL:I = 0x1

.field public static final IRIS_ACQUIRED_VENDOR_BASE:I = 0x3e8

.field public static final IRIS_ACQUIRED_VENDOR_EVENT_BASE:I = 0x2710

.field public static final IRIS_ERROR_CANCELED:I = 0x4

.field public static final IRIS_ERROR_DEVICE_NEED_RECAL:I = 0x3e9

.field public static final IRIS_ERROR_HW_UNAVAILABLE:I = 0x0

.field public static final IRIS_ERROR_IDENTIFY_FAILURE_BROKEN_DATABASE:I = 0x3ec

.field public static final IRIS_ERROR_IDENTIFY_FAILURE_SENSOR_CHANGED:I = 0x3ed

.field public static final IRIS_ERROR_IDENTIFY_FAILURE_SERVICE_FAILURE:I = 0x3eb

.field public static final IRIS_ERROR_IDENTIFY_FAILURE_SYSTEM_FAILURE:I = 0x3ea

.field public static final IRIS_ERROR_LOCKOUT:I = 0x6

.field public static final IRIS_ERROR_NO_SPACE:I = 0x3

.field public static final IRIS_ERROR_TIMEOUT:I = 0x2

.field public static final IRIS_ERROR_UNABLE_TO_PROCESS:I = 0x1

.field public static final IRIS_ERROR_UNABLE_TO_REMOVE:I = 0x5

.field public static final IRIS_ERROR_VENDOR_BASE:I = 0x3e8

.field public static final IRIS_REQUEST_ENROLL_SESSION:I = 0x3ea

.field public static final IRIS_REQUEST_ENUMERATE:I = 0xb

.field public static final IRIS_REQUEST_GET_SENSOR_INFO:I = 0x5

.field public static final IRIS_REQUEST_GET_SENSOR_STATUS:I = 0x6

.field public static final IRIS_REQUEST_GET_UNIQUE_ID:I = 0x7

.field public static final IRIS_REQUEST_GET_USERIDS:I = 0xc

.field public static final IRIS_REQUEST_GET_VERSION:I = 0x4

.field public static final IRIS_REQUEST_LOCKOUT:I = 0x3e9

.field public static final IRIS_REQUEST_PAUSE:I = 0x0

.field public static final IRIS_REQUEST_PROCESS_FIDO:I = 0x9

.field public static final IRIS_REQUEST_REMOVE_IRIS:I = 0x3e8

.field public static final IRIS_REQUEST_RESUME:I = 0x1

.field public static final IRIS_REQUEST_SENSOR_TEST_NORMALSCAN:I = 0x3

.field public static final IRIS_REQUEST_SESSION_OPEN:I = 0x2

.field public static final IRIS_REQUEST_SET_ACTIVE_GROUP:I = 0x8

.field public static final IRIS_REQUEST_UPDATE_SID:I = 0xa

.field private static final IR_PROPERTY_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field private static final IR_PROPERTY_CONTRAST:Ljava/lang/String; = "contrast"

.field private static final IR_PROPERTY_DAC:Ljava/lang/String; = "dac"

.field private static final IR_PROPERTY_GAIN:Ljava/lang/String; = "gain"

.field private static final IR_PROPERTY_PULSE_DELAY:Ljava/lang/String; = "pulse-delay"

.field private static final IR_PROPERTY_PULSE_WIDTH:Ljava/lang/String; = "pulse-width"

.field private static final IR_PROPERTY_SATURATION:Ljava/lang/String; = "saturation"

.field private static final IR_PROPERTY_SHARPNESS:Ljava/lang/String; = "sharpness"

.field private static final IR_PROPERTY_SHUTTER_SPEED:Ljava/lang/String; = "shutterspeed"

.field private static final MANAGE_IRIS:Ljava/lang/String; = "com.samsung.android.iris.permission.MANAGE_IRIS"

.field private static final MSG_ACQUIRED:I = 0x65

.field private static final MSG_AUTHENTICATION_FAILED:I = 0x67

.field private static final MSG_AUTHENTICATION_SUCCEEDED:I = 0x66

.field private static final MSG_ENROLL_RESULT:I = 0x64

.field private static final MSG_ERROR:I = 0x68

.field private static final MSG_REMOVED:I = 0x69

.field public static final PRIVILEGED_ATTR_EXCLUSIVE_IDENTIFY:I = 0x4

.field public static final PRIVILEGED_ATTR_IRIS_DETECTION:I = 0x8

.field public static final PRIVILEGED_ATTR_NO_LOCKOUT:I = 0x2

.field public static final PRIVILEGED_ATTR_NO_VIBRATION:I = 0x1

.field public static final PRIVILEGED_TYPE_KEYGUARD:I = -0x80000000

.field public static final SENSOR_STATUS_ERROR:I = 0x186ca

.field public static final SENSOR_STATUS_OK:I = 0x186c8

.field public static final SENSOR_STATUS_WORKING:I = 0x186c9

.field private static final TAG:Ljava/lang/String; = "SemIrisManager"

.field private static final USE_IRIS:Ljava/lang/String; = "com.samsung.android.iris.permission.USE_IRIS"


# instance fields
.field private mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

.field private mContext:Landroid/content/Context;

.field private mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

.field private mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

.field final mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

.field private mHandler:Landroid/os/Handler;

.field private mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

.field private mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

.field private mRequestCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

.field private mService:Lcom/samsung/android/camera/iris/IIrisService;

.field private mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

.field private mToken:Landroid/os/IBinder;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/camera/iris/SemIrisManager;->DEBUG:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/camera/iris/IIrisService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/android/camera/iris/IIrisService;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/iris/SemIrisManager$5;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-nez v0, :cond_0

    const-string v0, "SemIrisManager"

    const-string v1, "SemIrisManagerService was null"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/content/Context;Lcom/samsung/android/camera/iris/SemIrisManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/camera/iris/SemIrisManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->cancelEnrollment()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;
    .param p1, "x1"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->cancelAuthentication(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/Iris;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRequestCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/camera/iris/SemIrisManager;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getAcquiredString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/IIrisServiceReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/camera/iris/SemIrisManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/camera/iris/SemIrisManager;)Lcom/samsung/android/camera/iris/IIrisService;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J)V
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;
    .param p1, "x1"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "x2"    # Landroid/os/CancellationSignal;
    .param p3, "x3"    # I
    .param p4, "x4"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "x5"    # Landroid/os/Handler;
    .param p6, "x6"    # I
    .param p7, "x7"    # Landroid/os/Bundle;
    .param p8, "x8"    # Landroid/view/View;
    .param p9, "x9"    # J

    .prologue
    invoke-direct/range {p0 .. p10}, Lcom/samsung/android/camera/iris/SemIrisManager;->checkViewWindowToken(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/camera/iris/SemIrisManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/camera/iris/SemIrisManager;

    .prologue
    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method private static bytesToString([BI)Ljava/lang/String;
    .locals 6
    .param p0, "a"    # [B
    .param p1, "len"    # I

    .prologue
    array-length v2, p0

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p1, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

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

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private cancelAuthentication(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V
    .locals 4
    .param p1, "cryptoObject"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    .prologue
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->cancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception while canceling authentication"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private cancelEnrollment()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->cancelEnrollment(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception while canceling enrollment"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private checkViewWindowToken(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J)V
    .locals 17
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "irisView"    # Landroid/view/View;
    .param p9, "sessionId"    # J

    .prologue
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    new-instance v2, Lcom/samsung/android/camera/iris/SemIrisManager$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-wide/from16 v12, p9

    invoke-direct/range {v2 .. v13}, Lcom/samsung/android/camera/iris/SemIrisManager$2;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;J)V

    invoke-virtual {v14, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mGetterHandler:Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;

    invoke-virtual {v2}, Lcom/samsung/android/camera/iris/SemIrisManager$GetterHandler;->removeAllGetterCallbacks()V

    :try_start_0
    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .local v3, "mToken":Landroid/os/IBinder;
    const/4 v2, 0x2

    new-array v15, v2, [I

    .local v15, "position":[I
    move-object/from16 v0, p8

    invoke-virtual {v0, v15}, Landroid/view/View;->getLocationInWindow([I)V

    if-nez v3, :cond_1

    const-string v2, "SemIrisManager"

    const-string v4, "mToken null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    const/4 v4, 0x0

    aget v4, v15, v4

    const/4 v5, 0x1

    aget v5, v15, v5

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual/range {p8 .. p8}, Landroid/view/View;->getHeight()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v13

    move-wide/from16 v8, p9

    move/from16 v10, p6

    move/from16 v12, p3

    move-object/from16 v14, p7

    invoke-interface/range {v2 .. v14}, Lcom/samsung/android/camera/iris/IIrisService;->authenticatewithUI(Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v3    # "mToken":Landroid/os/IBinder;
    .end local v15    # "position":[I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getAcquiredString(I)Ljava/lang/String;
    .locals 8
    .param p1, "acquireInfo"    # I

    .prologue
    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .local v1, "mPm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .local v2, "mRes":Landroid/content/res/Resources;
    :try_start_0
    const-string v6, "com.samsung.android.server.iris"

    invoke-virtual {v1, v6}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-nez v2, :cond_0

    const-string v6, "SemIrisManager"

    const-string v7, "mRes is null"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/16 v6, 0x3e8

    if-lt p1, v6, :cond_1

    add-int/lit16 v4, p1, -0x3e8

    .local v4, "msgNumber":I
    iget-object v6, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107009c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .local v3, "msgArray":[Ljava/lang/String;
    array-length v6, v3

    if-ge v4, v6, :cond_1

    aget-object v5, v3, v4

    .end local v3    # "msgArray":[Ljava/lang/String;
    .end local v4    # "msgNumber":I
    :cond_1
    :goto_1
    :pswitch_0
    return-object v5

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "SemIrisManager"

    const-string v7, "getImageQualityFeedbackString, NameNotFoundException"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :pswitch_1
    if-nez v2, :cond_2

    iget-object v5, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    const v6, 0x1040aa5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const-string v5, "touch_image_quality_iris_offset_too_far_left"

    const-string v6, "string"

    const-string v7, "com.samsung.android.server.iris"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :pswitch_2
    if-nez v2, :cond_3

    iget-object v5, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    const v6, 0x1040aa6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_3
    const-string v5, "touch_image_quality_iris_offset_too_far_left"

    const-string v6, "string"

    const-string v7, "com.samsung.android.server.iris"

    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCurrentUserId()I
    .locals 3

    .prologue
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Failed to get current user id\n"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, -0x2710

    goto :goto_0
.end method

.method private getErrorString(I)Ljava/lang/String;
    .locals 2
    .param p1, "errMsg"    # I

    .prologue
    const v1, 0x1040aaf

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    const v1, 0x1040aaa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    const v1, 0x1040aab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    const v1, 0x1040aac

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    const v1, 0x1040aad

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    const v1, 0x1040aae

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
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

    if-eqz p1, :cond_1

    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/Looper;Lcom/samsung/android/camera/iris/SemIrisManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$MyHandler;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/Looper;Lcom/samsung/android/camera/iris/SemIrisManager$1;)V

    iput-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method


# virtual methods
.method public addLockoutResetCallback(Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;)V
    .locals 4
    .param p1, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;

    .prologue
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/PowerManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .local v1, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    new-instance v3, Lcom/samsung/android/camera/iris/SemIrisManager$4;

    invoke-direct {v3, p0, v1, p1}, Lcom/samsung/android/camera/iris/SemIrisManager$4;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/os/PowerManager;Lcom/samsung/android/camera/iris/SemIrisManager$LockoutResetCallback;)V

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->addLockoutResetCallback(Lcom/samsung/android/camera/iris/IIrisServiceLockoutResetCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "powerManager":Landroid/os/PowerManager;
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SemIrisManager"

    const-string v3, "Remote exception in addLockoutResetCallback(): "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v2, "SemIrisManager"

    const-string v3, "addLockoutResetCallback(): Service not connected!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V
    .locals 16
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "attr"    # Landroid/os/Bundle;
    .param p8, "irisView"    # Landroid/view/View;

    .prologue
    if-nez p4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Must supply an authentication callback"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "SemIrisManager"

    const-string v3, "authentication already canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v2, Lcom/samsung/android/camera/iris/SemIrisManager$OnAuthenticationCancelListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$OnAuthenticationCancelListener;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->useHandler(Landroid/os/Handler;)V

    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/camera/iris/SemIrisManager;->mAuthenticationCallback:Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/camera/iris/SemIrisManager;->mCryptoObject:Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;

    if-eqz p1, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;->getOpId()J

    move-result-wide v8

    .local v8, "sessionId":J
    :goto_1
    if-nez p8, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v13

    move/from16 v10, p6

    move/from16 v12, p3

    move-object/from16 v14, p7

    invoke-interface/range {v2 .. v14}, Lcom/samsung/android/camera/iris/IIrisService;->authenticate(Landroid/os/IBinder;IIIIJILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v8    # "sessionId":J
    :catch_0
    move-exception v15

    .local v15, "e":Landroid/os/RemoteException;
    const-string v2, "SemIrisManager"

    const-string v3, "Remote exception while authenticating: "

    invoke-static {v2, v3, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p4, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .end local v15    # "e":Landroid/os/RemoteException;
    :cond_4
    const-wide/16 v8, 0x0

    goto :goto_1

    .restart local v8    # "sessionId":J
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/samsung/android/camera/iris/SemIrisManager$1;

    move-object/from16 v6, p0

    move-object/from16 v7, p8

    move/from16 v10, p6

    move/from16 v11, p3

    move-object/from16 v12, p7

    invoke-direct/range {v5 .. v12}, Lcom/samsung/android/camera/iris/SemIrisManager$1;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/view/View;JIILandroid/os/Bundle;)V

    const-wide/16 v6, 0x96

    invoke-virtual {v2, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/view/View;)V
    .locals 9
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "userId"    # I
    .param p7, "irisView"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/camera/iris/SemIrisManager;->authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method public authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    .locals 8
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "irisView"    # Landroid/view/View;

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/camera/iris/SemIrisManager;->authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/view/View;)V

    return-void
.end method

.method public authenticatewithUI(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;Landroid/view/View;)V
    .locals 8
    .param p1, "crypto"    # Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;
    .param p5, "handler"    # Landroid/os/Handler;
    .param p6, "irisView"    # Landroid/view/View;

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/samsung/android/camera/iris/SemIrisManager;->authenticate(Lcom/samsung/android/camera/iris/SemIrisManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/view/View;)V

    return-void
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;)V
    .locals 7
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/camera/iris/SemIrisManager;->enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method public enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 9
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .param p5, "attr"    # Landroid/os/Bundle;
    .param p6, "irisView"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must supply an enrollment callback"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "SemIrisManager"

    const-string v1, "enrollment already canceled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$OnEnrollCancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$OnEnrollCancelListener;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Lcom/samsung/android/camera/iris/SemIrisManager$1;)V

    invoke-virtual {p2, v0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_1

    :try_start_0
    iput-object p4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mEnrollmentCallback:Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    if-nez p6, :cond_4

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move-object v2, p1

    move v5, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/samsung/android/camera/iris/IIrisService;->enroll(Landroid/os/IBinder;[BILcom/samsung/android/camera/iris/IIrisServiceReceiver;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .local v7, "e":Landroid/os/RemoteException;
    const-string v0, "SemIrisManager"

    const-string v1, "Remote exception in enroll: "

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p4, :cond_1

    invoke-direct {p0, v8}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v8, v0}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0

    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/camera/iris/SemIrisManager$3;

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager$3;-><init>(Lcom/samsung/android/camera/iris/SemIrisManager;Landroid/view/View;[BILandroid/os/Bundle;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v6, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public enrollwithUI([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/view/View;)V
    .locals 7
    .param p1, "token"    # [B
    .param p2, "cancel"    # Landroid/os/CancellationSignal;
    .param p3, "flags"    # I
    .param p4, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;
    .param p5, "irisView"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/camera/iris/SemIrisManager;->enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;Landroid/os/Bundle;Landroid/view/View;)V

    return-void
.end method

.method public getAuthenticatorId()J
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->getAuthenticatorId(Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in getAuthenticatorId(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "SemIrisManager"

    const-string v2, "getAuthenticatorId(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getEnrolledIrises()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/iris/Iris;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEnrolledIrises(I)Ljava/util/List;
    .locals 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/camera/iris/Iris;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/samsung/android/camera/iris/IIrisService;->getEnrolledIrises(ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in getEnrolledIrises: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasEnrolledIrises()Z
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->hasEnrolledIrises(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in getEnrolledIrises: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

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

    const/16 v1, 0x3ea

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v6

    .local v6, "ret":I
    if-lez v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    return v4
.end method

.method public isHardwareDetected()Z
    .locals 5

    .prologue
    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v3, :cond_0

    const-wide/16 v0, 0x0

    .local v0, "deviceId":J
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v1, v4}, Lcom/samsung/android/camera/iris/IIrisService;->isHardwareDetected(JLjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v0    # "deviceId":J
    :goto_0
    return v3

    .restart local v0    # "deviceId":J
    :catch_0
    move-exception v2

    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "SemIrisManager"

    const-string v4, "Remote exception in isIrisHardwareDetected(): "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0    # "deviceId":J
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const-string v3, "SemIrisManager"

    const-string v4, "isIrisHardwareDetected(): Service not connected!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public postEnroll()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, "result":I
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/iris/IIrisService;->postEnroll(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SemIrisManager"

    const-string v3, "Remote exception in post enroll: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public preEnroll()J
    .locals 5

    .prologue
    const-wide/16 v2, 0x0

    .local v2, "result":J
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v4}, Lcom/samsung/android/camera/iris/IIrisService;->preEnroll(Landroid/os/IBinder;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :cond_0
    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v4, "Remote exception in enroll: "

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public remove(Lcom/samsung/android/camera/iris/Iris;Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V
    .locals 7
    .param p1, "ir"    # Lcom/samsung/android/camera/iris/Iris;
    .param p2, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    .prologue
    const/4 v6, 0x0

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    :try_start_0
    iput-object p2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;

    iput-object p1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRemovalIris:Lcom/samsung/android/camera/iris/Iris;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1}, Lcom/samsung/android/camera/iris/Iris;->getIrisId()I

    move-result v3

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/samsung/android/camera/iris/IIrisService;->remove(Landroid/os/IBinder;IILcom/samsung/android/camera/iris/IIrisServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in remove: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p2, :cond_0

    invoke-direct {p0, v6}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v6, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;->onRemovalError(Lcom/samsung/android/camera/iris/Iris;ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public rename(ILjava/lang/String;)V
    .locals 3
    .param p1, "irId"    # I
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v2

    invoke-interface {v1, p1, v2, p2}, Lcom/samsung/android/camera/iris/IIrisService;->rename(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in rename(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "SemIrisManager"

    const-string v2, "rename(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I
    .locals 9
    .param p1, "cmd"    # I
    .param p2, "inputBuf"    # [B
    .param p3, "outputBuf"    # [B
    .param p4, "inParam"    # I
    .param p5, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

    .prologue
    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-array p2, v0, [B

    :cond_0
    if-nez p3, :cond_1

    const/4 v0, 0x0

    new-array p3, v0, [B

    :cond_1
    iput-object p5, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mRequestCallback:Lcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;

    iget-object v0, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v7}, Lcom/samsung/android/camera/iris/IIrisService;->request(Landroid/os/IBinder;I[B[BIILcom/samsung/android/camera/iris/IIrisServiceReceiver;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v8

    .local v8, "e":Landroid/os/RemoteException;
    const-string v0, "SemIrisManager"

    const-string v1, "Remote exception in request(): "

    invoke-static {v0, v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v8    # "e":Landroid/os/RemoteException;
    :goto_1
    const/4 v0, -0x2

    goto :goto_0

    :cond_2
    const-string v0, "SemIrisManager"

    const-string v1, "request(): Service not connected!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public requestEnumerate()[I
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0xa

    new-array v3, v0, [B

    .local v3, "outBuf":[B
    const/16 v1, 0xb

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v8

    .local v8, "size":I
    if-gtz v8, :cond_0

    :goto_0
    return-object v2

    :cond_0
    new-array v7, v8, [I

    .local v7, "result":[I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v8, :cond_1

    aget-byte v0, v3, v6

    aput v0, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v7

    goto :goto_0
.end method

.method public requestGetSensorInfo()[B
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0x100

    new-array v3, v0, [B

    .local v3, "outBuf":[B
    const/4 v1, 0x5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v6

    .local v6, "size":I
    if-gtz v6, :cond_0

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

    const/4 v1, 0x6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    return v0
.end method

.method public requestGetUniqueID(ILjava/lang/String;)[B
    .locals 7
    .param p1, "irisId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/16 v0, 0x100

    new-array v3, v0, [B

    .local v3, "outBuf":[B
    const/4 v1, 0x7

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v6

    .local v6, "size":I
    if-gtz v6, :cond_0

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

    const/16 v0, 0x100

    new-array v3, v0, [B

    .local v3, "outBuf":[B
    const/16 v1, 0xc

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v10

    .local v10, "size":I
    if-gtz v10, :cond_0

    :goto_0
    return-object v2

    :cond_0
    invoke-static {v3, v10}, Lcom/samsung/android/camera/iris/SemIrisManager;->bytesToString([BI)Ljava/lang/String;

    move-result-object v11

    .local v11, "src":Ljava/lang/String;
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v0, ":"

    invoke-direct {v12, v11, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v12, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v6

    .local v6, "count":I
    new-array v9, v6, [Ljava/lang/String;

    .local v9, "result":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_1

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

    goto :goto_0
.end method

.method public requestGetVersion()[B
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/16 v0, 0x100

    new-array v3, v0, [B

    .local v3, "outBuf":[B
    const/4 v1, 0x4

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v6

    .local v6, "size":I
    if-gtz v6, :cond_0

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

    move-object v0, p0

    move-object v3, v2

    move v4, v1

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

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

    const/16 v0, 0x2800

    new-array v3, v0, [B

    .local v3, "outBuf":[B
    const/16 v1, 0x9

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v6

    .local v6, "size":I
    if-gtz v6, :cond_0

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

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

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

    const/4 v1, 0x2

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

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

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v4

    move-object v0, p0

    move-object v3, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_1

    move v0, v9

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getCurrentUserId()I

    move-result v7

    move-object v3, p0

    move v4, v1

    move-object v6, v2

    move-object v8, v2

    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_1

    move v0, v9

    goto :goto_0

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

    const/16 v1, 0xa

    move-object v0, p0

    move-object v2, p1

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->request(I[B[BILcom/samsung/android/camera/iris/SemIrisManager$RequestCallback;)I

    move-result v0

    if-gez v0, :cond_0

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
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    invoke-interface {v1, p1}, Lcom/samsung/android/camera/iris/IIrisService;->resetTimeout([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in resetTimeout(): "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string v1, "SemIrisManager"

    const-string v2, "resetTimeout(): Service not connected!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startIRCamera(Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;)Z
    .locals 6
    .param p1, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v3, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    invoke-interface {v2, v3, v4, v5}, Lcom/samsung/android/camera/iris/IIrisService;->startIRCamera(Landroid/os/IBinder;ILcom/samsung/android/camera/iris/IIrisServiceReceiver;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "SemIrisManager"

    const-string v3, "Remote exception in startIRCamera: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p1, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public stopIRCamera(Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;

    .prologue
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mService:Lcom/samsung/android/camera/iris/IIrisService;

    iget-object v2, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mToken:Landroid/os/IBinder;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/camera/iris/SemIrisManager;->mServiceReceiver:Lcom/samsung/android/camera/iris/IIrisServiceReceiver;

    invoke-interface {v1, v2, v3, v4}, Lcom/samsung/android/camera/iris/IIrisService;->stopIRCamera(Landroid/os/IBinder;ILcom/samsung/android/camera/iris/IIrisServiceReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SemIrisManager"

    const-string v2, "Remote exception in stopIRCamera: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p1, :cond_0

    invoke-direct {p0, v5}, Lcom/samsung/android/camera/iris/SemIrisManager;->getErrorString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v5, v1}, Lcom/samsung/android/camera/iris/SemIrisManager$EnrollmentCallback;->onEnrollmentError(ILjava/lang/CharSequence;)V

    goto :goto_0
.end method
