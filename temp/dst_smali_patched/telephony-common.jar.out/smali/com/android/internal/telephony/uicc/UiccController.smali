.class public Lcom/android/internal/telephony/uicc/UiccController;
.super Landroid/os/Handler;
.source "UiccController.java"


# static fields
.field public static final APP_FAM_3GPP:I = 0x1

.field public static final APP_FAM_3GPP2:I = 0x2

.field public static final APP_FAM_IMS:I = 0x3

.field private static final DBG:Z = true

.field private static final DECRYPT_STATE:Ljava/lang/String; = "trigger_restart_framework"

.field private static final EVENT_CARD_COUNT_MISMATCHED:I = 0x64

.field private static final EVENT_CARD_SWAPED:I = 0x66

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0x2

.field private static final EVENT_ICC_STATUS_CHANGED:I = 0x1

.field private static final EVENT_RADIO_UNAVAILABLE:I = 0x3

.field private static final EVENT_SIM_ICCID_NOTI:I = 0x65

.field private static final EVENT_SIM_REFRESH:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "UiccController"

.field private static final MAX_PROACTIVE_COMMANDS_TO_LOG:I = 0x14

.field private static mInstance:Lcom/android/internal/telephony/uicc/UiccController;

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mCardLogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCis:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field protected mIccChangedRegistrants:Landroid/os/RegistrantList;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mPhones:[Lcom/android/internal/telephony/PhoneBase;

.field protected mSimIccIdNotiRegistrants:[Landroid/os/RegistrantList;

.field private mSimIccIds:[Ljava/lang/String;

.field private mSimTraySwapType:[Ljava/lang/String;

.field private mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/telephony/uicc/UiccCard;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    new-array v2, v2, [Lcom/android/internal/telephony/PhoneBase;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    new-instance v2, Landroid/os/RegistrantList;

    invoke-direct {v2}, Landroid/os/RegistrantList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    new-array v2, v2, [Landroid/os/RegistrantList;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIdNotiRegistrants:[Landroid/os/RegistrantList;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIds:[Ljava/lang/String;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapType:[Ljava/lang/String;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    const-string v2, "Creating UiccController"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v2, v2

    if-ge v0, v2, :cond_3

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .local v1, "index":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x65

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimIccIdNoti(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_0

    const-string v2, "CTC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2, p0, v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x3

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x64

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimCountMismatched(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x2

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->needWaterproofSimTrayMsg()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/16 v3, 0x66

    invoke-interface {v2, p0, v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->registerForSimSwaped(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapType:[Ljava/lang/String;

    aput-object v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .end local v1    # "index":Ljava/lang/Integer;
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/UiccController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/uicc/UiccController;

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .local v1, "index":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "index":Ljava/lang/Integer;
    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Landroid/os/AsyncResult;

    if-eqz v2, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1    # "index":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "index":Ljava/lang/Integer;
    goto :goto_0
.end method

.method public static getInstance()Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3

    .prologue
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "UiccController.getInstance can\'t be called before make()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3
    .param p0, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "UiccController.getInstance can\'t be called before make()"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->setCurrentPhone(Lcom/android/internal/telephony/PhoneBase;)V

    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private isValidCardIndex(I)Z
    .locals 1
    .param p1, "index"    # I

    .prologue
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const-string v0, "UiccController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static make(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/uicc/UiccController;
    .locals 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "MSimUiccController.make() should only be called once"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccController;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;-><init>(Landroid/content/Context;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    sget-object v0, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private declared-synchronized onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const-string v0, "UiccController"

    const-string v1, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error"

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v0, v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "UiccController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetIccCardStatusDone: invalid index : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_2
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .local v3, "status":Lcom/android/internal/telephony/uicc/IccCardStatus;
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    if-nez v0, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v2, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v2, v4

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/PhoneBase;I)V

    aput-object v0, v6, v7

    :goto_1
    const-string v0, "Notifying IccChangedRegistrants"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, p2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v7

    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCard;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v2, v4

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/UiccCard;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/PhoneBase;I)V

    aput-object v0, v6, v7

    goto :goto_1

    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v2, v4

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/PhoneBase;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v2, v4

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/PhoneBase;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private onSimCountMismatched(Landroid/os/AsyncResult;)V
    .locals 12
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v11, 0x0

    const/4 v3, 0x0

    .local v3, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccController$1;

    .end local v3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    invoke-direct {v3, p0}, Lcom/android/internal/telephony/uicc/UiccController$1;-><init>(Lcom/android/internal/telephony/uicc/UiccController;)V

    .restart local v3    # "listener":Landroid/content/DialogInterface$OnClickListener;
    const/4 v7, 0x4

    .local v7, "theme":I
    const-string v9, "ro.build.scafe.cream"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "white"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v7, 0x5

    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .local v5, "r":Landroid/content/res/Resources;
    const v9, 0x104097a

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, "title":Ljava/lang/String;
    const v9, 0x10403d6

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, "buttonTxt":Ljava/lang/String;
    const v9, 0x104097b

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, "message":Ljava/lang/String;
    iget-object v9, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v9, [I

    check-cast v9, [I

    aget v6, v9, v11

    .local v6, "simCount":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSimCountMismatched: simCount = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    const/4 v9, 0x2

    if-ne v6, v9, :cond_1

    const v9, 0x104097c

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    new-instance v9, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v9, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9, v11}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .local v2, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x7d3

    invoke-virtual {v9, v10}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, "attrs":Landroid/view/WindowManager$LayoutParams;
    const/16 v9, 0x10

    iput v9, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    const-string v9, "onSimCountMismatched: dialog.show()"

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private onSimRefresh(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 11
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    const-string v4, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sim REFRESH with exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSimRefresh: invalid index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .local v3, "resp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    const-string v4, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSimRefresh: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    if-nez v4, :cond_3

    const-string v4, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSimRefresh: refresh on null card : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v4

    if-ge v1, v4, :cond_5

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v4

    iput-boolean v9, v4, Lcom/android/internal/telephony/uicc/UiccCardApplication;->mSimRefreshState:Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .local v0, "changed":Z
    iget v4, v3, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    if-eq v4, v10, :cond_6

    const-string v4, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring reset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget-object v4, v3, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCard;->resetAppTypeSim()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v4, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring reset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    iget-object v5, v3, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->aid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCard;->resetAppWithAid(Ljava/lang/String;)Z

    move-result v0

    :cond_8
    if-eqz v0, :cond_9

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1120082

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .local v2, "requirePowerOffOnSimRefreshReset":Z
    if-eqz v2, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-interface {v4, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    :goto_2
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v7, p2, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .end local v2    # "requirePowerOffOnSimRefreshReset":Z
    :cond_9
    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "SKT"

    aput-object v5, v4, v8

    invoke-static {v4}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "CMC"

    const-string v5, "CMC"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-interface {v4, v8, v7}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    goto/16 :goto_0

    .restart local v2    # "requirePowerOffOnSimRefreshReset":Z
    :cond_a
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {p0, v10, p2}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_2
.end method

.method private onSimTraySwap(II)V
    .locals 11
    .param p1, "state"    # I
    .param p2, "index"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    .local v3, "phoneCount":I
    const-string v5, "1"

    .local v5, "trayCount":Ljava/lang/String;
    const-string v6, "SIMTray"

    .local v6, "type":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "subtype":I
    const/4 v0, 0x0

    .local v0, "dismiss":Z
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSimTraySwap() : state = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    const/4 v7, 0x2

    if-eq p1, v7, :cond_0

    if-ne p1, v10, :cond_1

    :cond_0
    const-string v6, "SIMEmptyTray"

    :cond_1
    if-eq v3, v9, :cond_5

    const-string v7, "1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapType:[Ljava/lang/String;

    aput-object v6, v7, p2

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_5

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapType:[Ljava/lang/String;

    aget-object v7, v7, v1

    if-nez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSimTraySwap(), not receive noti from slot "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    .end local v1    # "i":I
    :cond_2
    return-void

    .restart local v1    # "i":I
    :cond_3
    const-string v7, "SIMTray"

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapType:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v6, "SIMTray"

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_5
    if-le v3, v9, :cond_6

    const-string v7, "1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    add-int/lit8 v4, p2, 0x1

    :cond_6
    if-eq p1, v9, :cond_7

    if-ne p1, v10, :cond_8

    :cond_7
    const/4 v0, 0x1

    :cond_8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSimTraySwap() : type = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", subtype = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dismiss = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.sec.android.app.popupuireceiver.ACTION_DIALOG"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "intent":Landroid/content/Intent;
    const-string v7, "type"

    invoke-virtual {v2, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "subtype"

    invoke-virtual {v2, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v7, "dismiss"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-le v3, v9, :cond_2

    const-string v7, "1"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimTraySwapType:[Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public addCardLog(Ljava/lang/String;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .local v0, "t":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%m-%d %H:%M:%S"

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UiccController: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mInstance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mInstance:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccChangedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mIccChangedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccCards: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUiccCards["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mUiccCards["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCard;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v1, "mCardLogs: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCardLogs:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public getIccFileHandler(II)Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "family"    # I

    .prologue
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    monitor-exit v2

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "family"    # I

    .prologue
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    monitor-exit v2

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .end local v0    # "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v0, v0, p1

    monitor-exit v1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "family"    # I

    .prologue
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->isValidCardIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v0, v1, p1

    .local v0, "c":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    monitor-exit v2

    .end local v0    # "c":Lcom/android/internal/telephony/uicc/UiccCard;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getUiccCards()[Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 2

    .prologue
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/uicc/UiccCard;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/uicc/UiccCard;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x2

    sget-object v4, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getCiIndex(Landroid/os/Message;)Ljava/lang/Integer;

    move-result-object v1

    .local v1, "index":Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    array-length v5, v5

    if-lt v3, v5, :cond_1

    :cond_0
    const-string v3, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid index : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " received with event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v4

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, "ar":Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    const-string v3, "UiccController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Unknown Event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    monitor-exit v4

    goto :goto_0

    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "index":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0    # "ar":Landroid/os/AsyncResult;
    .restart local v1    # "index":Ljava/lang/Integer;
    :sswitch_0
    :try_start_1
    const-string v3, "Received EVENT_ICC_STATUS_CHANGED, calling getIccCardStatus"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mCis:[Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v3, v3, v5

    const/4 v5, 0x2

    invoke-virtual {p0, v5, v1}, Lcom/android/internal/telephony/uicc/UiccController;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    goto :goto_1

    :sswitch_1
    const-string v3, "Received EVENT_GET_ICC_STATUS_DONE"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto :goto_1

    :sswitch_2
    const-string v3, "EVENT_RADIO_UNAVAILABLE, dispose card"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v3, v3, v5

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v3, v3, v5

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCard;->dispose()V

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mUiccCards:[Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    aput-object v6, v3, v5

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v5, v6, v1, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    :sswitch_3
    const-string v3, "Received EVENT_SIM_REFRESH"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->onSimRefresh(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    goto :goto_1

    :sswitch_4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccController;->onSimCountMismatched(Landroid/os/AsyncResult;)V

    goto :goto_1

    :sswitch_5
    sget-boolean v3, Lcom/android/internal/telephony/TelephonyFeatures;->SHIP_BUILD:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SIM_ICCID_NOTI, ICCID: ****** for Index: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    :goto_2
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIds:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    aput-object v3, v5, v6

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIdNotiRegistrants:[Landroid/os/RegistrantList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v3, v3, v5

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIdNotiRegistrants:[Landroid/os/RegistrantList;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v3, v3, v5

    invoke-virtual {v3, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SIM_ICCID_NOTI, ICCID:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " for Index: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UiccController;->log(Ljava/lang/String;)V

    goto :goto_2

    :sswitch_6
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    const/4 v5, 0x0

    aget v2, v3, v5

    .local v2, "state":I
    const-string v3, "QCOM"

    const-string v5, "QCOM"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "QCOM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_ConfigSIMswap"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    if-eq v2, v7, :cond_5

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->onSimTraySwap(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x64 -> :sswitch_4
        0x65 -> :sswitch_5
        0x66 -> :sswitch_6
    .end sparse-switch
.end method

.method public registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    sget-object v2, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    monitor-exit v2

    return-void

    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForSimIccIdNoti(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 8
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    sget-object v4, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v1, 0x0

    .local v1, "index":I
    :try_start_0
    instance-of v3, p3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    move-object v0, p3

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    if-ltz v1, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIdNotiRegistrants:[Landroid/os/RegistrantList;

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIdNotiRegistrants:[Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/RegistrantList;

    invoke-direct {v5}, Landroid/os/RegistrantList;-><init>()V

    aput-object v5, v3, v1

    :cond_1
    new-instance v2, Landroid/os/Registrant;

    invoke-direct {v2, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .local v2, "r":Landroid/os/Registrant;
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIdNotiRegistrants:[Landroid/os/RegistrantList;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIds:[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIds:[Ljava/lang/String;

    aget-object v6, v6, v1

    const/4 v7, 0x0

    invoke-direct {v3, v5, v6, v7}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .end local v2    # "r":Landroid/os/Registrant;
    :cond_2
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setCurrentPhone(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhones:[Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    aput-object p1, v0, v1

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccController;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    goto :goto_0
.end method

.method public unregisterForIccChanged(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mIccChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForSimIccIdNoti(Landroid/os/Handler;I)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "index"    # I

    .prologue
    sget-object v1, Lcom/android/internal/telephony/uicc/UiccController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-ltz p2, :cond_0

    :try_start_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccController;->mSimIccIdNotiRegistrants:[Landroid/os/RegistrantList;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
