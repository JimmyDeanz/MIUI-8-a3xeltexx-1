.class public Lcom/movial/ipphone/IPPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "IPPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/movial/ipphone/IPPhone$6;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final DEFAULT_OOBE_WIFION_TIMEOUT:J = 0x12cL

.field private static final DEFAULT_TIMEOUT:I = 0xbb8

.field public static final EVENT_IP_USSD:I = 0x4

.field private static final EVENT_OOBE_WIFION_TIMEOUT:I = 0x1

.field public static final EVENT_SHOW_DIALOG:I = 0x5

.field private static final PHONE_TYPE_IPPHONE:I = 0x3

.field public static final SEND_IP_USSD_COMPLETE:I = 0x3

.field public static final SET_CALL_FORWARD:I = 0x0

.field public static final SET_CALL_WAITING:I = 0x1

.field public static final SET_CLIR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "IPPhone"

.field private static mCid:I

.field private static mLac:I

.field private static mNetworkOperator:Ljava/lang/String;

.field private static mNetworkType:I

.field private static mState:I

.field private static mTime:J


# instance fields
.field private final binded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

.field private mCT:Lcom/movial/ipphone/IPCallTracker;

.field private mCallWaitingDone:Z

.field private mCallWaitingOnPregress:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDialogHandler:Landroid/os/Handler;

.field private mEcmExitRespRegistrant:Landroid/os/Registrant;

.field private mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private mHandler:Landroid/os/Handler;

.field private mIPService:Lcom/movial/ipphone/IIPService;

.field private mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

.field private mLooper:Landroid/os/Looper;

.field private mMmiMessages:[Landroid/os/Message;

.field private mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/movial/ipphone/IPMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field mPostDialHandler:Landroid/os/Registrant;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

.field protected mRingbackToneRegistrants:Landroid/os/RegistrantList;

.field mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field private mUnitTestMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x3

    sput v0, Lcom/movial/ipphone/IPPhone;->mState:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;ZI)V
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "unitTestMode"    # Z
    .param p5, "phoneId"    # I

    .prologue
    const/4 v8, 0x0

    .line 511
    const-string v1, "WFC"

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object v0, p0

    move-object v2, p3

    move-object v4, p2

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;ZI)V

    .line 142
    iput-boolean v8, p0, Lcom/movial/ipphone/IPPhone;->mRegistered:Z

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    .line 154
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    .line 158
    const/16 v0, 0x8

    new-array v0, v0, [Landroid/os/Message;

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;

    .line 161
    iput-boolean v8, p0, Lcom/movial/ipphone/IPPhone;->mCallWaitingOnPregress:Z

    .line 162
    iput-boolean v8, p0, Lcom/movial/ipphone/IPPhone;->mCallWaitingDone:Z

    .line 183
    new-instance v0, Lcom/movial/ipphone/IPPhone$1;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPPhone$1;-><init>(Lcom/movial/ipphone/IPPhone;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->mHandler:Landroid/os/Handler;

    .line 288
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 289
    new-instance v0, Ljava/util/concurrent/CyclicBarrier;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    .line 290
    new-instance v0, Lcom/movial/ipphone/IPPhone$2;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPPhone$2;-><init>(Lcom/movial/ipphone/IPPhone;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->mConnection:Landroid/content/ServiceConnection;

    .line 362
    new-instance v0, Lcom/movial/ipphone/IPPhone$3;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPPhone$3;-><init>(Lcom/movial/ipphone/IPPhone;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 485
    new-instance v0, Lcom/movial/ipphone/IPPhone$4;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPPhone$4;-><init>(Lcom/movial/ipphone/IPPhone;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->mDialogHandler:Landroid/os/Handler;

    .line 513
    move-object v7, p1

    .line 514
    .local v7, "pbase":Lcom/android/internal/telephony/PhoneBase;
    iget-object v0, v7, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-interface {v0, v7, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setOnCallRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 516
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    .line 517
    iput-object p1, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 518
    const-string v0, "telephony.registry"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 519
    new-instance v0, Lcom/movial/ipphone/IPCallTracker;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPCallTracker;-><init>(Lcom/movial/ipphone/IPPhone;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    .line 520
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->mLooper:Landroid/os/Looper;

    .line 522
    new-instance v1, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 523
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 524
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPPhone;->registerReceiver(Landroid/content/Context;)V

    .line 525
    return-void
.end method

.method static synthetic access$000(Lcom/movial/ipphone/IPPhone;)[Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000()J
    .locals 2

    .prologue
    .line 129
    sget-wide v0, Lcom/movial/ipphone/IPPhone;->mTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/movial/ipphone/IPPhone;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/movial/ipphone/IPPhone;->mCallWaitingDone:Z

    return p1
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/movial/ipphone/IPPhone;->mLac:I

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/movial/ipphone/IPPhone;->mCid:I

    return v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/movial/ipphone/IPPhone;->mNetworkType:I

    return v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/movial/ipphone/IPPhone;->mNetworkOperator:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/movial/ipphone/IPPhone;)Ljava/util/concurrent/CyclicBarrier;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/movial/ipphone/IPPhone;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;
    .param p1, "x1"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/movial/ipphone/IPPhone;->mRegistered:Z

    return p1
.end method

.method static synthetic access$1700()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/movial/ipphone/IPPhone;->mState:I

    return v0
.end method

.method static synthetic access$1702(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 129
    sput p0, Lcom/movial/ipphone/IPPhone;->mState:I

    return p0
.end method

.method static synthetic access$1800(Lcom/movial/ipphone/IPPhone;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhone;->updateCellLocation()V

    return-void
.end method

.method static synthetic access$1900(Lcom/movial/ipphone/IPPhone;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/movial/ipphone/IPPhone;)Z
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/movial/ipphone/IPPhone;->mCallWaitingOnPregress:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/movial/ipphone/IPPhone;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/movial/ipphone/IPPhone;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhone;->bindToIPService()V

    return-void
.end method

.method static synthetic access$300(Lcom/movial/ipphone/IPPhone;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/movial/ipphone/IPPhone;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/movial/ipphone/IPPhone;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/movial/ipphone/IPPhone;->onIncomingUSSD(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/movial/ipphone/IPPhone;II)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Lcom/movial/ipphone/IPPhone;->showDialog(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/movial/ipphone/IPPhone;)Landroid/os/RegistrantList;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/movial/ipphone/IPPhone;)Lcom/movial/ipphone/IIPService;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;

    return-object v0
.end method

.method static synthetic access$802(Lcom/movial/ipphone/IPPhone;Lcom/movial/ipphone/IIPService;)Lcom/movial/ipphone/IIPService;
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;
    .param p1, "x1"    # Lcom/movial/ipphone/IIPService;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;

    return-object p1
.end method

.method static synthetic access$900(Lcom/movial/ipphone/IPPhone;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhone;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private bindToIPService()V
    .locals 6

    .prologue
    .line 563
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 564
    :try_start_0
    iget-object v2, p0, Lcom/movial/ipphone/IPPhone;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 565
    iget-object v2, p0, Lcom/movial/ipphone/IPPhone;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v2}, Ljava/util/concurrent/CyclicBarrier;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 567
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/movial/ipphone/IIPService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 568
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.movial.ipservice"

    const-string v4, "com.movial.ipservice.IPService"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/movial/ipphone/IPPhone;->mConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 570
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPPhone;->waitConnectionResponse(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 575
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 576
    return-void

    .line 571
    :catch_0
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IPPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindService FAILED. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 575
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private checkCorrectThread(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1447
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mLooper:Landroid/os/Looper;

    if-eq v0, v1, :cond_0

    .line 1448
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "com.android.internal.telephony.Phone must be used from within one thread"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1451
    :cond_0
    return-void
.end method

.method private convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 1549
    sget-object v0, Lcom/movial/ipphone/IPPhone$6;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1555
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1551
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1553
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1549
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isAirplaneModeOn()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1560
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isPackageAvailable(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 321
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    const/16 v3, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eqz v3, :cond_0

    .line 322
    const/4 v2, 0x1

    .line 327
    :cond_0
    :goto_0
    return v2

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 1564
    const-string v0, "IPPhone"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    return-void
.end method

.method private onIncomingUSSD(ILjava/lang/String;)V
    .locals 7
    .param p1, "ussdMode"    # I
    .param p2, "ussdMessage"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 677
    if-ne p1, v2, :cond_2

    move v3, v2

    .line 680
    .local v3, "isUssdRequest":Z
    :goto_0
    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_3

    .line 687
    .local v2, "isUssdError":Z
    :goto_1
    const/4 v0, 0x0

    .line 688
    .local v0, "found":Lcom/movial/ipphone/IPMmiCode;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v6, p0, Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, "s":I
    :goto_2
    if-ge v1, v5, :cond_0

    .line 689
    iget-object v6, p0, Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/movial/ipphone/IPMmiCode;

    invoke-virtual {v6}, Lcom/movial/ipphone/IPMmiCode;->isPendingUSSD()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 690
    iget-object v6, p0, Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "found":Lcom/movial/ipphone/IPMmiCode;
    check-cast v0, Lcom/movial/ipphone/IPMmiCode;

    .line 695
    .restart local v0    # "found":Lcom/movial/ipphone/IPMmiCode;
    :cond_0
    if-eqz v0, :cond_6

    .line 698
    if-eqz v2, :cond_5

    .line 699
    invoke-virtual {v0}, Lcom/movial/ipphone/IPMmiCode;->onUssdFinishedError()V

    .line 716
    :cond_1
    :goto_3
    return-void

    .end local v0    # "found":Lcom/movial/ipphone/IPMmiCode;
    .end local v1    # "i":I
    .end local v2    # "isUssdError":Z
    .end local v3    # "isUssdRequest":Z
    .end local v5    # "s":I
    :cond_2
    move v3, v6

    .line 677
    goto :goto_0

    .restart local v3    # "isUssdRequest":Z
    :cond_3
    move v2, v6

    .line 680
    goto :goto_1

    .line 688
    .restart local v0    # "found":Lcom/movial/ipphone/IPMmiCode;
    .restart local v1    # "i":I
    .restart local v2    # "isUssdError":Z
    .restart local v5    # "s":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 701
    :cond_5
    invoke-virtual {v0, p2, v3}, Lcom/movial/ipphone/IPMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    goto :goto_3

    .line 708
    :cond_6
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    .line 710
    invoke-static {p2, v3, p0}, Lcom/movial/ipphone/IPMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/movial/ipphone/IPPhone;)Lcom/movial/ipphone/IPMmiCode;

    move-result-object v4

    .line 713
    .local v4, "mmi":Lcom/movial/ipphone/IPMmiCode;
    invoke-direct {p0, v4}, Lcom/movial/ipphone/IPPhone;->onNetworkInitiatedUssd(Lcom/movial/ipphone/IPMmiCode;)V

    goto :goto_3
.end method

.method private onNetworkInitiatedUssd(Lcom/movial/ipphone/IPMmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/movial/ipphone/IPMmiCode;

    .prologue
    const/4 v2, 0x0

    .line 669
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 670
    return-void
.end method

.method private preProcessDialString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1224
    move-object v0, p1

    .line 1225
    .local v0, "processedDialString":Ljava/lang/String;
    const-string v1, "*82"

    const-string v2, "*31#"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 1227
    const-string v1, "IPPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preProcessDialString old:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    return-object v0
.end method

.method private processWifiChanged(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x1

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processWifiChanged(): state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 456
    packed-switch p1, :pswitch_data_0

    .line 484
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 469
    :pswitch_1
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "WIFI_FIRST_TURNON"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mDialogHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 471
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mDialogHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 477
    :pswitch_2
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mDialogHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mDialogHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerForSimRecordEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1572
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1573
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 1580
    :goto_0
    return-void

    .line 1576
    :cond_0
    const/16 v1, 0x1c

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1578
    const/16 v1, 0x1d

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1579
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 553
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 554
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "com.movial.ACTION_RADIO_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 555
    const-string v1, "com.movial.IMS_REGISTRATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 556
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "WIFI_FIRST_TURNON"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 557
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 558
    :cond_0
    const-string v1, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 560
    return-void
.end method

.method private showDialog(II)V
    .locals 6
    .param p1, "type"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 332
    const-string v2, "IPPhone"

    const-string v3, "showDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sparse-switch p1, :sswitch_data_0

    .line 344
    :cond_0
    :goto_0
    const-string v2, "com.movial.ipservice"

    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPPhone;->isPackageAvailable(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v5, :cond_3

    .line 345
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .local v1, "newintent":Landroid/content/Intent;
    const-string v2, "com.movial.ipservice"

    const-string v3, "com.movial.ipservice.IPDialog"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string v2, "dialog_type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 348
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 350
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 351
    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 353
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v1    # "newintent":Landroid/content/Intent;
    :cond_2
    :goto_1
    return-void

    .line 335
    :sswitch_0
    const/4 v2, 0x3

    if-ne p2, v2, :cond_2

    .line 336
    iget-object v2, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "WIFI_FIRST_TURNON"

    invoke-static {v2, v3, v4}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 337
    iget-object v2, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "WIFI_FIRST_TURNON"

    invoke-static {v2, v3, v5}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 340
    :sswitch_1
    iget-object v2, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "FIRST_WIFI_CALL"

    invoke-static {v2, v3, v4}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 354
    .restart local v1    # "newintent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "IPPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 358
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "newintent":Landroid/content/Intent;
    :cond_3
    const-string v2, "IPPhone"

    const-string v3, "showDialog: com.movial.ipservice not loaded"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 333
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method private unregisterForSimRecordEvents()V
    .locals 2

    .prologue
    .line 1583
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1584
    .local v0, "r":Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 1590
    :goto_0
    return-void

    .line 1587
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V

    .line 1588
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 1589
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private updateCellLocation()V
    .locals 19

    .prologue
    .line 392
    sget v3, Lcom/movial/ipphone/IPPhone;->mState:I

    if-nez v3, :cond_1

    .line 393
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v16

    .line 394
    .local v16, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    .line 395
    .local v8, "networkType":I
    const/4 v6, 0x0

    .line 396
    .local v6, "lac":I
    const/4 v7, 0x0

    .line 398
    .local v7, "cid":I
    sparse-switch v8, :sswitch_data_0

    .line 425
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    check-cast v3, Landroid/telephony/gsm/GsmCellLocation;

    move-object v13, v3

    check-cast v13, Landroid/telephony/gsm/GsmCellLocation;

    .line 426
    .local v13, "gsmLocation":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v13, :cond_0

    .line 427
    invoke-virtual {v13}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v6

    .line 428
    invoke-virtual {v13}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v7

    .line 433
    .end local v13    # "gsmLocation":Landroid/telephony/gsm/GsmCellLocation;
    :cond_0
    :goto_0
    :sswitch_0
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v9

    .line 435
    .local v9, "networkOp":Ljava/lang/String;
    const/4 v3, -0x1

    if-eq v3, v6, :cond_1

    if-eqz v6, :cond_1

    if-eqz v8, :cond_1

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 436
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 437
    .local v4, "currentTime":J
    sput v6, Lcom/movial/ipphone/IPPhone;->mLac:I

    .line 438
    sput v7, Lcom/movial/ipphone/IPPhone;->mCid:I

    .line 439
    sput v8, Lcom/movial/ipphone/IPPhone;->mNetworkType:I

    .line 440
    sput-object v9, Lcom/movial/ipphone/IPPhone;->mNetworkOperator:Ljava/lang/String;

    .line 441
    sput-wide v4, Lcom/movial/ipphone/IPPhone;->mTime:J

    .line 445
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;

    if-eqz v3, :cond_1

    .line 446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;

    invoke-interface/range {v3 .. v9}, Lcom/movial/ipphone/IIPService;->setCellLocation(JIIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v4    # "currentTime":J
    .end local v6    # "lac":I
    .end local v7    # "cid":I
    .end local v8    # "networkType":I
    .end local v9    # "networkOp":Ljava/lang/String;
    .end local v16    # "tm":Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_1
    return-void

    .line 403
    .restart local v6    # "lac":I
    .restart local v7    # "cid":I
    .restart local v8    # "networkType":I
    .restart local v16    # "tm":Landroid/telephony/TelephonyManager;
    :sswitch_1
    const/4 v15, 0x0

    .line 404
    .local v15, "lteInfo":Landroid/telephony/CellInfo;
    invoke-virtual/range {v16 .. v16}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    move-result-object v10

    .line 406
    .local v10, "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-nez v10, :cond_2

    .line 407
    const-string v3, "IPPhone"

    const-string v17, "updateCellLocation CellInfo failed: null cellInfoList"

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 411
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CellInfo;

    .line 412
    .local v2, "cellInfo":Landroid/telephony/CellInfo;
    instance-of v3, v2, Landroid/telephony/CellInfoLte;

    if-eqz v3, :cond_3

    .line 413
    move-object v15, v2

    goto :goto_2

    .line 416
    .end local v2    # "cellInfo":Landroid/telephony/CellInfo;
    :cond_4
    if-eqz v15, :cond_0

    .line 417
    check-cast v15, Landroid/telephony/CellInfoLte;

    .end local v15    # "lteInfo":Landroid/telephony/CellInfo;
    invoke-virtual {v15}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v11

    .line 418
    .local v11, "cidLte":Landroid/telephony/CellIdentityLte;
    if-eqz v11, :cond_0

    .line 419
    invoke-virtual {v11}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v6

    .line 420
    invoke-virtual {v11}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v7

    goto :goto_0

    .line 447
    .end local v10    # "cellInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    .end local v11    # "cidLte":Landroid/telephony/CellIdentityLte;
    .end local v14    # "i$":Ljava/util/Iterator;
    .restart local v4    # "currentTime":J
    .restart local v9    # "networkOp":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 448
    .local v12, "e":Ljava/lang/Exception;
    const-string v3, "IPPhone"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "setCellLocation FAILED: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 398
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0xd -> :sswitch_1
    .end sparse-switch
.end method

.method private waitConnectionResponse(Z)V
    .locals 5
    .param p1, "timeout"    # Z

    .prologue
    .line 580
    if-eqz p1, :cond_0

    .line 581
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    const-wide/16 v2, 0xbb8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CyclicBarrier;->await(JLjava/util/concurrent/TimeUnit;)I

    .line 587
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v1}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 584
    :catch_0
    move-exception v0

    .line 585
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IPPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitConnectionResponse FAILED. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 1
    .param p1, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1141
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPCallTracker;->acceptCall(I)V

    .line 1142
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 963
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 964
    return-void
.end method

.method public addUserToConfCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1677
    const/4 v0, 0x0

    return-object v0
.end method

.method public akaAuthenticate([B[BLandroid/os/Message;)V
    .locals 2
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1115
    const-string v0, "IPPhone"

    const-string v1, "akaAuthenticate()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->akaAuthenticate([B[BLandroid/os/Message;)V

    .line 1117
    return-void
.end method

.method bindService()V
    .locals 1

    .prologue
    .line 590
    new-instance v0, Lcom/movial/ipphone/IPPhone$5;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPPhone$5;-><init>(Lcom/movial/ipphone/IPPhone;)V

    .line 595
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 596
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCallTracker;->canConference()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 1165
    const/4 v0, 0x0

    return v0
.end method

.method public cancelPendingUssd(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 653
    return-void
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1636
    const/4 v0, 0x0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "newPwdAgain"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1644
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCallTracker;->clearDisconnected()V

    .line 1175
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCallTracker;->conference()V

    .line 1161
    return-void
.end method

.method public dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1267
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/movial/ipphone/IPPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;
    .locals 7
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1236
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1239
    .local v2, "newDialString":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/movial/ipphone/IPPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1261
    :goto_0
    return-object v3

    .line 1244
    :cond_0
    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPPhone;->preProcessDialString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1247
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1248
    .local v1, "networkPortion":Ljava/lang/String;
    invoke-static {v1, p0}, Lcom/movial/ipphone/IPMmiCode;->newFromDialString(Ljava/lang/String;Lcom/movial/ipphone/IPPhone;)Lcom/movial/ipphone/IPMmiCode;

    move-result-object v0

    .line 1249
    .local v0, "mmi":Lcom/movial/ipphone/IPMmiCode;
    const-string v4, "IPPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialing w/ mmi \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    if-nez v0, :cond_1

    .line 1252
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v3, v2}, Lcom/movial/ipphone/IPCallTracker;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 1253
    :cond_1
    invoke-virtual {v0}, Lcom/movial/ipphone/IPMmiCode;->isTemporaryModeCLIR()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1254
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    iget-object v4, v0, Lcom/movial/ipphone/IPMmiCode;->dialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPMmiCode;->getCLIRMode()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/movial/ipphone/IPCallTracker;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 1256
    :cond_2
    iget-object v4, p0, Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1257
    iget-object v4, p0, Lcom/movial/ipphone/IPPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1258
    invoke-virtual {v0}, Lcom/movial/ipphone/IPMmiCode;->processCode()V

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;II[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .param p3, "videoState"    # I
    .param p4, "intentExtras"    # Landroid/os/Bundle;
    .param p5, "callType"    # I
    .param p6, "callDomain"    # I
    .param p7, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1273
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/movial/ipphone/IPPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;ILandroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dialConferenceCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1673
    const/4 v0, 0x0

    return-object v0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->disableLocationUpdates()V

    .line 889
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 529
    sget-object v1, Lcom/movial/ipphone/IPPhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 530
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 531
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 533
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhone;->unregisterForSimRecordEvents()V

    .line 536
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCallTracker;->dispose()V

    .line 537
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->dispose()V

    .line 538
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    .line 539
    monitor-exit v1

    .line 540
    return-void

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 884
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->enableLocationUpdates()V

    .line 885
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 0

    .prologue
    .line 1424
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1171
    return-void
.end method

.method public gbaAuthenticateBootstrap([B[BLandroid/os/Message;)V
    .locals 1
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->gbaAuthenticateBootstrap([B[BLandroid/os/Message;)V

    .line 1121
    return-void
.end method

.method public gbaAuthenticateNaf([BLandroid/os/Message;)V
    .locals 1
    .param p1, "nafId"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1124
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->gbaAuthenticateNaf([BLandroid/os/Message;)V

    .line 1125
    return-void
.end method

.method public getACBarring(Landroid/os/Message;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1778
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1080
    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    iget-object v0, v0, Lcom/movial/ipphone/IPCallTracker;->backgroundCall:Lcom/movial/ipphone/IPCall;

    return-object v0
.end method

.method public getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1606
    return-void
.end method

.method public getCallBarringOption(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 0
    .param p1, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1614
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 1407
    const/4 v0, 0x0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 1024
    new-array v2, v5, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1025
    .local v2, "cfl":[Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v1, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 1026
    .local v1, "cf":Lcom/android/internal/telephony/CallForwardInfo;
    const-string v4, "0000"

    iput-object v4, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1027
    iput v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1028
    const/4 v4, 0x0

    aput-object v1, v2, v4

    .line 1031
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1033
    .local v3, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p2, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1034
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1035
    return-void
.end method

.method public getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "dialingNumber"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 1042
    new-array v2, v5, [Lcom/android/internal/telephony/CallForwardInfo;

    .line 1043
    .local v2, "cfl":[Lcom/android/internal/telephony/CallForwardInfo;
    new-instance v1, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 1044
    .local v1, "cf":Lcom/android/internal/telephony/CallForwardInfo;
    const-string v4, "0000"

    iput-object v4, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 1045
    iput v5, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 1046
    const/4 v4, 0x0

    aput-object v1, v2, v4

    .line 1049
    new-instance v3, Lcom/android/internal/telephony/CommandException;

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1051
    .local v3, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p4, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1052
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 1053
    return-void
.end method

.method public getCallWaiting(ILandroid/os/Message;)V
    .locals 0
    .param p1, "serviceClass"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1792
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 6
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1068
    new-array v1, v3, [I

    .line 1069
    .local v1, "cw":[I
    iget-boolean v5, p0, Lcom/movial/ipphone/IPPhone;->mCallWaitingDone:Z

    if-eqz v5, :cond_0

    :goto_0
    aput v3, v1, v4

    .line 1072
    new-instance v2, Lcom/android/internal/telephony/CommandException;

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    .line 1074
    .local v2, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-static {p1, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1075
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1076
    return-void

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "ex":Lcom/android/internal/telephony/CommandException;
    :cond_0
    move v3, v4

    .line 1069
    goto :goto_0
.end method

.method public getCatService()Lcom/android/internal/telephony/cat/CatService;
    .locals 1

    .prologue
    .line 1688
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 967
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 968
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 860
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentGprsState()I
    .locals 1

    .prologue
    .line 1716
    const/4 v0, -0x1

    return v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 868
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 876
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getDataCallList(Landroid/os/Message;)V

    .line 877
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 864
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataDunEnabled()Z
    .locals 1

    .prologue
    .line 1749
    const/4 v0, 0x0

    return v0
.end method

.method public getDataEnabled()Z
    .locals 1

    .prologue
    .line 1759
    const/4 v0, 0x0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataServiceState()I
    .locals 1

    .prologue
    .line 857
    const/4 v0, 0x0

    return v0
.end method

.method public getDesiredPowerState()Z
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    if-nez v0, :cond_0

    .line 980
    const/4 v0, 0x0

    .line 981
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    goto :goto_0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 911
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDunDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 1741
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    return-object v0
.end method

.method public getDunNetworkType()I
    .locals 1

    .prologue
    .line 1745
    const/4 v0, 0x0

    return v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 939
    const-string v0, "0"

    return-object v0
.end method

.method public getFDNavailable()Z
    .locals 1

    .prologue
    .line 1651
    const/4 v0, 0x0

    return v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1178
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    iget-object v0, v0, Lcom/movial/ipphone/IPCallTracker;->foregroundCall:Lcom/movial/ipphone/IPCall;

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupIdLevel2()Ljava/lang/String;
    .locals 2

    .prologue
    .line 930
    const-string v0, "IPPhone"

    const-string v1, "GID2 is not available in CDMA"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGsmPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ID"    # Ljava/lang/String;

    .prologue
    .line 1655
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getICBarring(Landroid/os/Message;)V
    .locals 0
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1784
    return-void
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    return-object v0
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 1

    .prologue
    .line 829
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 951
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 908
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 985
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMdnavailable()Z
    .locals 1

    .prologue
    .line 1005
    const/4 v0, 0x0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 943
    const-string v0, "0"

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 993
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdnavailable()Z
    .locals 1

    .prologue
    .line 1001
    const/4 v0, 0x0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1419
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getNeighboringCids(Landroid/os/Message;)V

    .line 873
    return-void
.end method

.method public getOCSGLAvailable()Z
    .locals 2

    .prologue
    .line 1726
    const-string v0, "IPPhone"

    const-string v1, "Not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    const/4 v0, 0x0

    return v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 7
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 1057
    iget-object v4, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1058
    .local v3, "sp":Landroid/content/SharedPreferences;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "clir_key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhone;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1060
    .local v2, "clirSetting":I
    const/4 v4, 0x2

    new-array v1, v4, [I

    .line 1061
    .local v1, "clirArray":[I
    const/4 v4, 0x0

    aput v2, v1, v4

    .line 1062
    aput v6, v1, v6

    .line 1063
    const/4 v4, 0x0

    invoke-static {p1, v1, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1064
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1065
    return-void
.end method

.method public getPSISMSCavailable()Z
    .locals 1

    .prologue
    .line 1736
    const/4 v0, 0x0

    return v0
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 833
    iget-boolean v0, p0, Lcom/movial/ipphone/IPPhone;->mRegistered:Z

    if-eqz v0, :cond_0

    const-string v0, "IP_WFC"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v0, :cond_0

    .line 838
    const/4 v0, 0x1

    .line 839
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    goto :goto_0
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1661
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 766
    return-void
.end method

.method public getPsismsc()[B
    .locals 1

    .prologue
    .line 1732
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    iget-object v0, v0, Lcom/movial/ipphone/IPCallTracker;->ringingCall:Lcom/movial/ipphone/IPCall;

    return-object v0
.end method

.method public getRuimid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 947
    const-string v0, "0"

    return-object v0
.end method

.method public getSMSPavailable()Z
    .locals 1

    .prologue
    .line 1600
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSMSPavailable()Z

    move-result v0

    return v0
.end method

.method public getSMSavailable()Z
    .locals 1

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSMSavailable()Z

    move-result v0

    return v0
.end method

.method public getSelectedApn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1768
    const/4 v0, 0x0

    return-object v0
.end method

.method getService()Lcom/movial/ipphone/IIPService;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;

    .line 609
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1383
    new-instance v0, Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/ServiceState;-><init>(Landroid/telephony/ServiceState;)V

    .line 1385
    .local v0, "ss":Landroid/telephony/ServiceState;
    const-string v1, "IPPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceState: ss="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isAirplaneModeOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/movial/ipphone/IPPhone;->isAirplaneModeOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    const-string v1, "IPPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getServiceState: mRegistered="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/movial/ipphone/IPPhone;->mRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhone;->isAirplaneModeOn()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1388
    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->setRoaming(Z)V

    .line 1389
    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->setState(I)V

    .line 1398
    :cond_0
    :goto_0
    return-object v0

    .line 1390
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_ConfigOpBrandingForWFC"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MetroPCS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1392
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhone;->isAirplaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/movial/ipphone/IPPhone;->mRegistered:Z

    if-eqz v1, :cond_0

    .line 1395
    invoke-virtual {v0, v4}, Landroid/telephony/ServiceState;->setState(I)V

    goto :goto_0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSktImsiM()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1096
    const-string v0, "IPPhone"

    const-string v1, "IPPhone.getSktImsiM(): Not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSktIrm()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1105
    const-string v0, "IPPhone"

    const-string v1, "IPPhone.getSktIrm(): Not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 0
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 769
    return-void
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1683
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    iget-object v0, v0, Lcom/movial/ipphone/IPCallTracker;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdDm(I)Ljava/lang/String;
    .locals 1
    .param p1, "networkType"    # I

    .prologue
    .line 920
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->getSubscriberIdDm(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1283
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1204
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 1218
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    .line 1220
    :goto_0
    return-void

    .line 1206
    :sswitch_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    if-eqz v1, :cond_0

    .line 1208
    const-string v1, "IPPhone"

    const-string v2, "received EVENT_SIM_RECORDS_LOADED of IsimUiccRecords"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "GBA_INIT"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 1210
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.movial.gba_initialized"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1211
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1214
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :sswitch_1
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1204
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x1d -> :sswitch_1
    .end sparse-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1278
    const/4 v0, 0x0

    return v0
.end method

.method public hasIsim()Z
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->hasIsim()Z

    move-result v0

    return v0
.end method

.method public holdCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 1154
    return-void
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 0
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 781
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 784
    return-void
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method isInCall()Z
    .locals 4

    .prologue
    .line 1190
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 1191
    .local v1, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1192
    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 1194
    .local v2, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isMMICode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1694
    const/4 v0, 0x0

    return v0
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1515
    const-string v0, "notifyDisconnect"

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1516
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 1517
    return-void
.end method

.method notifyIncomingRing()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1534
    const-string v1, "notifyIncomingRing"

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1535
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, p0, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1536
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1537
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 1504
    const-string v0, "notifyNewRingingConnection"

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1505
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 1506
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 5

    .prologue
    .line 1484
    const-string v3, "notifyPhoneStateChanged"

    invoke-direct {p0, v3}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1486
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 1487
    .local v2, "ringingCall":Lcom/android/internal/telephony/Call;
    const-string v1, ""

    .line 1488
    .local v1, "incomingNumber":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1489
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 1492
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/movial/ipphone/IPPhone;->convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I

    move-result v4

    invoke-interface {v3, v4, v1}, Lcom/android/internal/telephony/ITelephonyRegistry;->notifyCallState(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1496
    :goto_0
    return-void

    .line 1493
    :catch_0
    move-exception v0

    .line 1494
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "IPPhone"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method notifyPreciseCallStateChanged()V
    .locals 1

    .prologue
    .line 1499
    const-string v0, "notifyPreciseCallStateChanged"

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1500
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 1501
    return-void
.end method

.method notifyRingbackTone(Z)V
    .locals 4
    .param p1, "playtone"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1540
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1541
    return-void
.end method

.method notifyServiceStateChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1520
    const-string v3, "notifyServiceStateChanged"

    invoke-direct {p0, v3}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1521
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    .line 1523
    .local v2, "mSS":Landroid/telephony/ServiceState;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v4, v2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1524
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mServiceStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v3, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1527
    :try_start_0
    invoke-super {p0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1531
    :goto_0
    return-void

    .line 1528
    :catch_0
    move-exception v1

    .line 1529
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "IPPhone"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method notifyToShowDialog()V
    .locals 4

    .prologue
    .line 1544
    const-string v0, "notifyToShowDialog"

    invoke-direct {p0, v0}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1545
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1546
    return-void
.end method

.method notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    const/4 v2, 0x0

    .line 1509
    const-string v1, "notifyUnknownRingingConnection"

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1510
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1511
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1512
    return-void
.end method

.method onMMIDone(Lcom/movial/ipphone/IPMmiCode;)V
    .locals 3
    .param p1, "mmi"    # Lcom/movial/ipphone/IPMmiCode;

    .prologue
    const/4 v2, 0x0

    .line 645
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/movial/ipphone/IPMmiCode;->isUssdRequest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 649
    :cond_1
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1454
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhone;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1481
    :cond_0
    :goto_0
    return-void

    .line 1456
    :cond_1
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhone;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationByType(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 1457
    .local v1, "newUiccApplication":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getApplicationByType(AppType.APPTYPE_ISIM) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1459
    iget-object v2, p0, Lcom/movial/ipphone/IPPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1460
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v0, v1, :cond_0

    .line 1461
    if-eqz v0, :cond_3

    .line 1462
    const-string v2, "Removing stale icc objects."

    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1463
    iget-object v2, p0, Lcom/movial/ipphone/IPPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1464
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhone;->unregisterForSimRecordEvents()V

    .line 1465
    iget-object v2, p0, Lcom/movial/ipphone/IPPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 1467
    :cond_2
    iget-object v2, p0, Lcom/movial/ipphone/IPPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1468
    iput-object v4, p0, Lcom/movial/ipphone/IPPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 1469
    iget-object v2, p0, Lcom/movial/ipphone/IPPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1471
    :cond_3
    if-eqz v1, :cond_0

    .line 1472
    const-string v2, "New Uicc application found"

    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPPhone;->log(Ljava/lang/String;)V

    .line 1473
    iget-object v2, p0, Lcom/movial/ipphone/IPPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1474
    iget-object v2, p0, Lcom/movial/ipphone/IPPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1475
    iget-object v2, p0, Lcom/movial/ipphone/IPPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    if-eqz v2, :cond_4

    .line 1476
    iget-object v2, p0, Lcom/movial/ipphone/IPPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    iput-object v2, p0, Lcom/movial/ipphone/IPPhone;->mIsimUiccRecords:Lcom/android/internal/telephony/uicc/IsimUiccRecords;

    .line 1477
    :cond_4
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhone;->registerForSimRecordEvents()V

    .line 1478
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    iget-object v2, p0, Lcom/movial/ipphone/IPPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v3, v2}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V

    goto/16 :goto_0
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 778
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 754
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 817
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 793
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1428
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1429
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 623
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 617
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 811
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 799
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 805
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 747
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 736
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 737
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 738
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 787
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 728
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 720
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 823
    return-void
.end method

.method registerHandler()V
    .locals 4

    .prologue
    .line 1132
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPCallTracker;->registerHandler()V

    .line 1134
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;

    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-interface {v1, v2}, Lcom/movial/ipphone/IIPService;->registerForIncomingUSSD(Landroid/os/Messenger;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1138
    :goto_0
    return-void

    .line 1135
    :catch_0
    move-exception v0

    .line 1136
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IPPhone"

    const-string v2, "register for ussd fail"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCallTracker;->rejectCall()V

    .line 1146
    return-void
.end method

.method public removeReferences()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 544
    const-string v0, "IPPhone"

    const-string v1, "removeReferences"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iput-object v2, p0, Lcom/movial/ipphone/IPPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 546
    iput-object v2, p0, Lcom/movial/ipphone/IPPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 547
    iput-object v2, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    .line 548
    iput-object v2, p0, Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;

    .line 549
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 550
    return-void
.end method

.method public selectCsg(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1721
    const-string v0, "IPPhone"

    const-string v1, "selectCsg: not possible"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 2
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/internal/telephony/PhoneBase;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;ZLandroid/os/Message;)V

    .line 1088
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 2
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1308
    const-string v0, "IPPhone"

    const-string v1, "sendBurstDtmf is CDMA method"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 1287
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1288
    const-string v0, "IPPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :goto_0
    return-void

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPCallTracker;->sendDtmf(C)V

    goto :goto_0
.end method

.method public sendEncodedUssd([BII)V
    .locals 0
    .param p1, "ussdMessage"    # [B
    .param p2, "ussdLength"    # I
    .param p3, "dcsCode"    # I

    .prologue
    .line 1704
    return-void
.end method

.method public sendUSSD(Ljava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "ussdString"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 657
    :try_start_0
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;

    new-instance v4, Landroid/os/Messenger;

    iget-object v5, p0, Lcom/movial/ipphone/IPPhone;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-interface {v3, p1, v4}, Lcom/movial/ipphone/IIPService;->sendUssd(Ljava/lang/String;Landroid/os/Messenger;)I

    move-result v1

    .line 658
    .local v1, "index":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 659
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x7

    invoke-static {v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 660
    .local v2, "m":Landroid/os/Message;
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;

    const/4 v4, 0x7

    aput-object p2, v3, v4

    .line 661
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 666
    .end local v1    # "index":I
    .end local v2    # "m":Landroid/os/Message;
    :goto_0
    return-void

    .line 663
    .restart local v1    # "index":I
    :cond_0
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;

    aput-object p2, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 664
    .end local v1    # "index":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "IPPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "ussdMessge"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 633
    invoke-static {p1, p0}, Lcom/movial/ipphone/IPMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/movial/ipphone/IPPhone;)Lcom/movial/ipphone/IPMmiCode;

    move-result-object v0

    .line 634
    .local v0, "mmi":Lcom/movial/ipphone/IPMmiCode;
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 636
    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method public setACBarring(ZLandroid/os/Message;)V
    .locals 0
    .param p1, "cbAction"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1781
    return-void
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 0
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 775
    return-void
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .locals 1
    .param p1, "cbAction"    # Z
    .param p2, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1629
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "cbAction"    # Z
    .param p2, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1621
    const/4 v0, 0x0

    return v0
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "serviceClass"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1346
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1347
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "serviceClass"    # I
    .param p6, "startTime"    # Ljava/lang/String;
    .param p7, "endTime"    # Ljava/lang/String;
    .param p8, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1358
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1359
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 10
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "commandInterfaceCFAction"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1323
    move-object v9, p5

    .line 1326
    .local v9, "resp":Landroid/os/Message;
    :try_start_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;

    new-instance v5, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/movial/ipphone/IIPService;->setCallForward(IILjava/lang/String;ILandroid/os/Messenger;)I

    move-result v7

    .line 1331
    .local v7, "index":I
    const/4 v0, -0x1

    if-ne v7, v0, :cond_0

    .line 1332
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v8

    .line 1333
    .local v8, "m":Landroid/os/Message;
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;

    const/4 v1, 0x7

    aput-object p5, v0, v1

    .line 1334
    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    .line 1338
    .end local v7    # "index":I
    .end local v8    # "m":Landroid/os/Message;
    :goto_0
    return-void

    .line 1336
    .restart local v7    # "index":I
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;

    aput-object p5, v0, v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1337
    .end local v7    # "index":I
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "IPPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCallWaiting(ZILandroid/os/Message;)V
    .locals 0
    .param p1, "enable"    # Z
    .param p2, "serviceClass"    # I
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1795
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 7
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1371
    :try_start_0
    iput-boolean p1, p0, Lcom/movial/ipphone/IPPhone;->mCallWaitingOnPregress:Z

    .line 1372
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;

    new-instance v4, Landroid/os/Messenger;

    iget-object v5, p0, Lcom/movial/ipphone/IPPhone;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, v5}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-interface {v3, p1, v4}, Lcom/movial/ipphone/IIPService;->setCW(ZLandroid/os/Messenger;)I

    move-result v1

    .line 1373
    .local v1, "index":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    .line 1374
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x7

    invoke-static {v3, v4, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v2

    .line 1375
    .local v2, "m":Landroid/os/Message;
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;

    const/4 v4, 0x7

    aput-object p2, v3, v4

    .line 1376
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1380
    .end local v1    # "index":I
    .end local v2    # "m":Landroid/os/Message;
    :goto_0
    return-void

    .line 1378
    .restart local v1    # "index":I
    :cond_0
    iget-object v3, p0, Lcom/movial/ipphone/IPPhone;->mMmiMessages:[Landroid/os/Message;

    aput-object p2, v3, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1379
    .end local v1    # "index":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "IPPhone"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 757
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 0
    .param p1, "cdmaSubscriptionType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 760
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 971
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 972
    return-void
.end method

.method public setDataDunEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1754
    return-void
.end method

.method public setDataEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1764
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 896
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setDataRoamingEnabled(Z)V

    .line 897
    return-void
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/PhoneBase;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1129
    return-void
.end method

.method public setICBarring(ILjava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "cbAction"    # I
    .param p2, "iCBNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1787
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 997
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 1415
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPCallTracker;->setMute(Z)V

    .line 1416
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1083
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1084
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1438
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    .line 1439
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1411
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 1412
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 3
    .param p1, "clirmode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 1363
    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    .line 1365
    invoke-static {p2, v2, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    move-result-object v0

    .line 1366
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1367
    return-void
.end method

.method public setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "operator"    # Ljava/lang/String;
    .param p3, "plmn"    # Ljava/lang/String;
    .param p4, "gsmAct"    # I
    .param p5, "gsmCompactAct"    # I
    .param p6, "utranAct"    # I
    .param p7, "mode"    # I
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 1667
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 0
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 763
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .param p1, "power"    # Z

    .prologue
    .line 975
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->setRadioPower(Z)V

    .line 976
    return-void
.end method

.method public setSelectedApn()V
    .locals 0

    .prologue
    .line 1773
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 772
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1021
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 1295
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1296
    const-string v0, "IPPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    :goto_0
    return-void

    .line 1298
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPCallTracker;->startDtmf(C)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCallTracker;->stopDtmf()V

    .line 1304
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mCT:Lcom/movial/ipphone/IPCallTracker;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 1150
    return-void
.end method

.method unbindService()V
    .locals 3

    .prologue
    .line 599
    const-string v0, "IPPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindService. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPPhone;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/movial/ipphone/IPPhone;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 601
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/movial/ipphone/IPPhone;->mIPService:Lcom/movial/ipphone/IIPService;

    .line 602
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 603
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 796
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 1434
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 626
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 620
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 814
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 802
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 808
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 751
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 742
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 743
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 790
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 732
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 724
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 826
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 820
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1443
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mEcmExitRespRegistrant:Landroid/os/Registrant;

    invoke-virtual {v0}, Landroid/os/Registrant;->clear()V

    .line 1444
    return-void
.end method

.method updateCurrentCarrierInProvider()Z
    .locals 1

    .prologue
    .line 1712
    const/4 v0, 0x0

    return v0
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/movial/ipphone/IPPhone;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->updateServiceLocation()V

    .line 881
    return-void
.end method
