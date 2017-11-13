.class public Lcom/android/internal/telephony/cat/CatService;
.super Landroid/os/Handler;
.source "CatService.java"

# interfaces
.implements Lcom/android/internal/telephony/cat/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatService$2;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field static final EVENT_RIL_CONNECTED:I = 0x6f

.field static final EVENT_SEND_CALL_SCREEN_INTENT:I = 0x6e

.field static final EVENT_USSD_COMPLETE:I = 0x64

.field protected static final MSG_ID_ALPHA_NOTIFY:I = 0x9

.field static final MSG_ID_BIP_TERMINAL_RESPONSE:I = 0x6d

.field static final MSG_ID_CALL_CONTROL_RESULT:I = 0x69

.field protected static final MSG_ID_CALL_SETUP:I = 0x4

.field static final MSG_ID_CALL_STATUS:I = 0x18

.field static final MSG_ID_EVENT:I = 0x6a

.field protected static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field protected static final MSG_ID_ICC_CHANGED:I = 0x8

.field private static final MSG_ID_ICC_RECORDS_LOADED:I = 0x14

.field private static final MSG_ID_ICC_REFRESH:I = 0x1e

.field static final MSG_ID_PHONE_DISCONNECT:I = 0x6b

.field protected static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RELEASE_COMPLETE_MESSAGE:I = 0x65

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_SEND_DTMF_PAUSE:I = 0x6c

.field static final MSG_ID_SEND_DTMF_RESULT:I = 0x67

.field static final MSG_ID_SEND_SMS_RESULT:I = 0x68

.field protected static final MSG_ID_SESSION_END:I = 0x1

.field static final MSG_ID_SIM_READY:I = 0x7

.field static final MSG_ID_STK_ALPHA_ID:I = 0x70

.field static final MSG_ID_TIMEOUT:I = 0x66

.field private static final NOT_IN_USE:I = 0x0

.field static final SIMNUM:Ljava/lang/String; = "simnum"

.field static final SIM_FILE_UPDATE:I = 0x0

.field static final SIM_INIT:I = 0x1

.field static final SIM_NUM1:I = 0x1

.field static final SIM_NUM2:I = 0x2

.field static final SIM_RESET:I = 0x2

.field static final SIM_RESET_FOR_SAP:I = 0x3

.field static final SIM_SLOT1:I = 0x0

.field static final SIM_SLOT2:I = 0x1

.field private static final STK2_NOTIFICATION_ID:I = 0x1bc

.field static final STK_DEFAULT:Ljava/lang/String; = "Default Message"

.field private static final STK_NOTIFICATION_ID:I = 0x14d

.field static final STK_REFRESH:Ljava/lang/String; = "default refresh..."

.field static final STK_RESET:Ljava/lang/String; = "default reset..."

.field static final STK_SENDING:Ljava/lang/String; = "null alphaId, default sending..."

.field public static final TYPE_STK:I = 0x0

.field public static final TYPE_STK2:I = 0x1

.field public static final TYPE_UTK:I = 0x2

.field public static final TYPE_UTK2:I = 0x3

.field private static final WAITING_ACTIVATE_RESULT:I = 0x6

.field private static final WAITING_ACTIVATE_RESULT_TIME:I = 0x2710

.field private static final WAITING_RELEASE_COMPLETE:I = 0x1

.field private static final WAITING_RELEASE_COMPLETE_TIME:I = 0x7530

.field static final WAITING_SEND_DTMF:I = 0x5

.field static final WAITING_SEND_DTMF_TIME:I = 0xdac

.field private static final WAITING_SETUP_CALL:I = 0x4

.field private static final WAITING_SETUP_CALL_CONNECTED_RESULT:I = 0x8

.field private static final WAITING_SETUP_CALL_CONNECTED_TIME:I = 0x7d0

.field private static final WAITING_SETUP_CALL_DISCONNECT_RESULT:I = 0x7

.field private static final WAITING_SETUP_CALL_DISCONNECT_TIME:I = 0x7d0

.field private static final WAITING_SETUP_CALL_HOLD_RESULT:I = 0x3

.field private static final WAITING_SETUP_CALL_HOLD_RESULT_TIME:I = 0x1388

.field private static final WAITING_SETUP_CALL_TIME:I = 0x2710

.field private static final WAITING_SMS_RESULT:I = 0x2

.field private static final WAITING_SMS_RESULT_TIME:I = 0xea60

.field private static final WAITING_USSD_ACTION_REQUIRE_TIME:I = 0xea60

.field private static final WAKE_LOCK_TIMEOUT:I = 0xfde8

.field private static is_stk_icon_label_update:Z

.field static mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

.field private static mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

.field private static mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private static mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private static sInstance:[Lcom/android/internal/telephony/cat/CatService;

.field private static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field alpha_id_display:Ljava/lang/String;

.field private bBIPSuccess:Z

.field disabledCmdList:[Ljava/lang/String;

.field disabledProactiveCmd:Ljava/lang/String;

.field private isSetupMenuByUser:Z

.field private isTerminalResponseForSEUPMENU:Z

.field private isUsingBackUpCmd:Z

.field private mCallControlResultCode:I

.field private mCallType:I

.field private mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

.field private mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

.field private mGetUiccVerHandler:Landroid/os/Handler;

.field private mGetUiccVerRunnable:Ljava/lang/Runnable;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsAPHandlingBip:Z

.field private mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mSendTerminalResponseExpectedByCallSetup:Z

.field private mSetupCallDisc:Z

.field private mSlotId:I

.field private mStkAppInstalled:Z

.field private mTimeoutDest:I

.field private mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private stkRefreshReset:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccRecords;

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/UiccCardApplication;

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    new-array v0, v0, [Lcom/android/internal/telephony/IccSmsInterfaceManager;

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/cat/CatService;->is_stk_icon_label_update:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/PhoneBase;I)V
    .locals 7
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "ca"    # Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .param p3, "ir"    # Lcom/android/internal/telephony/uicc/IccRecords;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "fh"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p6, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p7, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p8, "slotId"    # I

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSetupCallDisc:Z

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    iput v4, p0, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->bBIPSuccess:Z

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->isSetupMenuByUser:Z

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->stkRefreshReset:Z

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->isUsingBackUpCmd:Z

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->disabledCmdList:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mIsAPHandlingBip:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mGetUiccVerHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/internal/telephony/cat/CatService$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/CatService$1;-><init>(Lcom/android/internal/telephony/cat/CatService;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mGetUiccVerRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    if-nez p7, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Service: Input parameters must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iput p8, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cat Telephony service"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    iput-object p7, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-static {p0, p5, p8}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/uicc/IccFileHandler;I)Lcom/android/internal/telephony/cat/RilMessageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    if-nez v0, :cond_2

    const-string v0, "Null RilMessageDecoder instance"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->start()V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v6, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1e

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForIccRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x9

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCcAlphaNotify(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x65

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnReleaseCompleteMessageRegistrant(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x67

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnSendDTMFResult(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x68

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSendSmsResult(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x69

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatCallControlResult(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x6f

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v1, 0x6b

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/PhoneBase;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v0

    if-eq v5, v0, :cond_3

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v0

    if-ne v6, v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x18

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkCallStatusResult(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCallControlResult(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneBase;->unregisterForDisconnect(Landroid/os/Handler;)V

    :cond_4
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aput-object p3, v0, v1

    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aput-object p2, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/IPPhoneProxy;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhoneProxy;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    aput-object v0, v1, v2

    :goto_1
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v0, v0, v1

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mIccSms should not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_1

    :cond_6
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->isSetupMenuByUser:Z

    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v0, v0, v1

    const/16 v1, 0x14

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerForRecordsLoaded slotid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " instance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v0, v0, v1

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->createWakelock()V

    new-instance v0, Lcom/android/internal/telephony/cat/CatBIPManager;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-direct {v0, p4, p7, p0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cat/CatService;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->isStkAppInstalled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Running CAT service on Slotid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". PackageType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". STK app installed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->mStkAppInstalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_DisableSimToolKitCmds"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->disabledProactiveCmd:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->disabledProactiveCmd:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->disabledCmdList:[Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v0, "TMO"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatService;->mIsAPHandlingBip:Z

    goto/16 :goto_0
.end method

.method private SetupCallFromStk(Ljava/lang/String;)V
    .locals 14
    .param p1, "dialNum"    # Ljava/lang/String;

    .prologue
    const/16 v13, 0x2710

    const/4 v12, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    const-string v0, "SetupCallFromStk()"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    :cond_0
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    invoke-static {v1, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v9, "intent":Landroid/content/Intent;
    if-nez v9, :cond_1

    const-string v0, "fail to make call intent"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    .end local v9    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .restart local v9    # "intent":Landroid/content/Intent;
    :cond_1
    const-string v0, "simSlot"

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "simnum"

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telecom/TelecomManager;

    .local v11, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v11}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v6

    .local v6, "accountHandle":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    const-string v1, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v9, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v12, v13}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    :try_start_0
    const-string v0, "*************call intent for CDMA 2"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "accountHandle":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "telecomManager":Landroid/telecom/TelecomManager;
    :goto_1
    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    invoke-virtual {p0, v12, v13}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    goto :goto_0

    .restart local v6    # "accountHandle":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .restart local v9    # "intent":Landroid/content/Intent;
    .restart local v11    # "telecomManager":Landroid/telecom/TelecomManager;
    :catch_0
    move-exception v7

    .local v7, "e":Landroid/content/ActivityNotFoundException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityNotFoundException 3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .end local v6    # "accountHandle":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v11    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v5}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.CALL_PRIVILEGED"

    const-string v1, "tel"

    invoke-static {v1, p1, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v9    # "intent":Landroid/content/Intent;
    if-nez v9, :cond_3

    const-string v0, "fail to make call intent from stk"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "simSlot"

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v7

    .restart local v7    # "e":Landroid/content/ActivityNotFoundException;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityNotFoundException 3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    .end local v9    # "intent":Landroid/content/Intent;
    :cond_4
    const/4 v8, 0x0

    .local v8, "errorMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v1, 0x1040279

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    .local v10, "message":Ljava/lang/CharSequence;
    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-static {v0, v8, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method private StkAppUnstall()V
    .locals 3

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StkAppUnstall on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    const/4 v0, 0x0

    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.intent.action.stk2.remove"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    const-string v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.intent.action.stk.remove"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method static synthetic access$000()[Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/cat/CatService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/cat/CatService;

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    return v0
.end method

.method private broadcastAlphaMessage(Ljava/lang/String;)V
    .locals 3
    .param p1, "alphaString"    # Ljava/lang/String;

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting CAT Alpha message from card: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.alpha_notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "alpha_string"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V
    .locals 6
    .param p1, "cardState"    # Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    .param p2, "iccRefreshState"    # Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .prologue
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.stk.icc_status_change"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "intent":Landroid/content/Intent;
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p1, v3, :cond_4

    const/4 v0, 0x1

    .local v0, "cardPresent":Z
    :goto_0
    if-eqz p2, :cond_0

    const-string v3, "refresh_result"

    iget v4, p2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending IccResult with Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const-string v3, "card_status"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sending Card Status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "cardPresent: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "NOT_RESTART"

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "NOT_RESTART"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_RIL_ConfigOPstyleSIMdetectDialog"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne p1, v3, :cond_3

    if-nez v0, :cond_3

    const/4 v2, 0x0

    .local v2, "stkProp":Ljava/lang/String;
    const-string v3, "SIM Remove or absent. STK menu removing..."

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "gsm.STK_SETUP_MENU"

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->StkAppUnstall()V

    .end local v2    # "stkProp":Ljava/lang/String;
    :cond_3
    const-string v3, "SLOT_ID"

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    .end local v0    # "cardPresent":Z
    :cond_4
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V
    .locals 3
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v0, 0x0

    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.intent.action.stk2.command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    const-string v1, "STK CMD"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending CmdMsg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on slotid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PackageType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.stk.command"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method private byteToBCD(I)B
    .locals 2
    .param p1, "value"    # I

    .prologue
    if-ltz p1, :cond_0

    const/16 v0, 0x63

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Err: byteToBCD conversion Value is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Value has to be between 0 and 99"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v1, p1, 0xa

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    int-to-byte v0, v0

    goto :goto_0
.end method

.method private cancelTimeOut()V
    .locals 1

    .prologue
    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->removeMessages(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    return-void
.end method

.method private createWakelock()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "STKService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private displayChannelStatusParams(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 2
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Channel ID is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lcom/android/internal/telephony/cat/GetChannelDataParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/cat/GetChannelDataParams;->mChannelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private displayCloseChannelParams(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 2
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Channel ID is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/CloseChannelParams;

    iget v0, v0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mChannelId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Close Channel Mode is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/CloseChannelParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mCloseChannelMode:Lcom/android/internal/telephony/cat/CloseChannelMode;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Text Message is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lcom/android/internal/telephony/cat/CloseChannelParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CloseChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private displayOpenChannelParams(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 7
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v1, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    .local v1, "bearerDesc":Lcom/android/internal/telephony/cat/BearerDescription;
    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v4, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    .local v4, "transportLevel":Lcom/android/internal/telephony/cat/TransportLevel;
    if-eqz v1, :cond_1

    const-string v5, "The BearerDescription is: "

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Bearer Type is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-byte v5, v5, Lcom/android/internal/telephony/cat/BearerDescription;->bearerType:B

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerDesc:Lcom/android/internal/telephony/cat/BearerDescription;

    iget-boolean v0, v5, Lcom/android/internal/telephony/cat/BearerDescription;->bearerDefault:Z

    .local v0, "bearerDefault":Z
    if-nez v0, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Buffer Size is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBufferSize:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Network Access Name is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "The Bearer Mode Parameters are :"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is On Demand : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is Auto Reconnect: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/BearerMode;->isAutoReconnect:Z

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is Background Mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mBearerMode:Lcom/android/internal/telephony/cat/BearerMode;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The User Name is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mUsernameTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The User Password is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mPasswordTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v0    # "bearerDefault":Z
    :goto_0
    if-eqz v4, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Transport Level Protocol is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    iget-byte v5, v5, Lcom/android/internal/telephony/cat/TransportLevel;->transportProtocol:B

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Port Number is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    iget v5, v5, Lcom/android/internal/telephony/cat/TransportLevel;->portNumber:I

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v2, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    .local v2, "dataDestinationAddress":Lcom/android/internal/telephony/cat/DataDestinationAddress;
    if-eqz v2, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Data Destination Address Type is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    iget-byte v5, v5, Lcom/android/internal/telephony/cat/DataDestinationAddress;->addressType:B

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mDataDestinationAddress:Lcom/android/internal/telephony/cat/DataDestinationAddress;

    iget-object v3, v5, Lcom/android/internal/telephony/cat/DataDestinationAddress;->address:[B

    .local v3, "dd":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Data Destination Address is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v2    # "dataDestinationAddress":Lcom/android/internal/telephony/cat/DataDestinationAddress;
    .end local v3    # "dd":[B
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Text Message is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    check-cast p1, Lcom/android/internal/telephony/cat/OpenChannelParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v6, p1, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .restart local v0    # "bearerDefault":Z
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The Network Access Name for defaultbearer is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/OpenChannelParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/OpenChannelParams;->mNetworkAccessName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "bearerDefault":Z
    :cond_1
    const-string v5, "The BearerDescription is: null"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v2    # "dataDestinationAddress":Lcom/android/internal/telephony/cat/DataDestinationAddress;
    :cond_2
    const-string v5, "The Data Destination Address is: null"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .end local v2    # "dataDestinationAddress":Lcom/android/internal/telephony/cat/DataDestinationAddress;
    :cond_3
    const-string v5, "The Transport Level is: null"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private displayReceiveDataParams(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 2
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Channel ID is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    iget v0, v0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelId:I

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Channel Data Length is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    iget-byte v0, v0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mChannelDataLength:B

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Text Message is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private displaySendDataParams(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 2
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Channel ID is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/SendDataParams;

    iget v0, v0, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelId:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Channel Data is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/SendDataParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/SendDataParams;->mChannelData:[B

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Send Immediate is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    check-cast p1, Lcom/android/internal/telephony/cat/SendDataParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-boolean v1, p1, Lcom/android/internal/telephony/cat/SendDataParams;->mSendImmediate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V
    .locals 3
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "cmdInput"    # Lcom/android/internal/telephony/cat/Input;
    .param p4, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    .local v0, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() Unsupported Cmd details="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p3, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    if-eqz v1, :cond_0

    invoke-direct {p0, p4, p3}, Lcom/android/internal/telephony/cat/CatService;->getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V

    goto :goto_0

    :sswitch_1
    iget v1, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/cat/CatService;->getPliResponse(Ljava/io/ByteArrayOutputStream;)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encodeOptionalTags() bad Cmd details="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private eventDownload(III[BZ)V
    .locals 11
    .param p1, "event"    # I
    .param p2, "sourceId"    # I
    .param p3, "destinationId"    # I
    .param p4, "additionalInfo"    # [B
    .param p5, "oneShot"    # Z

    .prologue
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v2, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0xd6

    .local v8, "tag":I
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_NTTSTK"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit8 v8, v9, 0x0

    :goto_0
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    packed-switch p1, :pswitch_data_0

    :goto_1
    :pswitch_0
    if-eqz p4, :cond_1

    move-object v0, p4

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v6, :cond_1

    aget-byte v1, v0, v4

    .local v1, "b":B
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v0    # "arr$":[B
    .end local v1    # "b":B
    .end local v4    # "i$":I
    .end local v6    # "len$":I
    :cond_0
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    goto :goto_0

    :pswitch_1
    sget-object v9, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    const-string v10, " Sending Idle Screen Available event download to ICC"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    sget-object v9, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    const-string v10, " Sending Language Selection event download to ICC"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .local v7, "rawData":[B
    array-length v9, v7

    add-int/lit8 v5, v9, -0x2

    .local v5, "len":I
    const/4 v9, 0x1

    int-to-byte v10, v5

    aput-byte v10, v7, v9

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .local v3, "hexString":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ENVELOPE COMMAND: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getInKeyResponse(Ljava/io/ByteArrayOutputStream;Lcom/android/internal/telephony/cat/Input;)V
    .locals 2
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;
    .param p2, "cmdInput"    # Lcom/android/internal/telephony/cat/Input;

    .prologue
    sget-object v1, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    .local v0, "tag":I
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeUnit:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    sget-object v1, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/cat/Duration$TimeUnit;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/Duration$TimeUnit;->value()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p2, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    iget v1, v1, Lcom/android/internal/telephony/cat/Duration;->timeInterval:I

    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/cat/AppInterface;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .local v1, "slotId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .local v0, "sControl":Lcom/android/internal/telephony/SubscriptionController;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v1

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v1, 0x0

    :cond_2
    invoke-static {v4, v4, v4, v4, v1}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/PhoneBase;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v2

    return-object v2
.end method

.method public static getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0, p0}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/PhoneBase;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/cat/CatService;
    .locals 4
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const/4 v1, 0x0

    .local v1, "slotId":I
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .local v0, "sControl":Lcom/android/internal/telephony/SubscriptionController;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    invoke-static {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cat/CatService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/PhoneBase;I)Lcom/android/internal/telephony/cat/CatService;

    move-result-object v2

    return-object v2
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/PhoneBase;I)Lcom/android/internal/telephony/cat/CatService;
    .locals 14
    .param p0, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;
    .param p3, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p4, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .local v3, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v6, 0x0

    .local v6, "fh":Lcom/android/internal/telephony/uicc/IccFileHandler;
    const/4 v4, 0x0

    .local v4, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz p2, :cond_0

    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v4

    :cond_0
    if-ltz p4, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    move/from16 v0, p4

    if-lt v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_2
    sget-object v12, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    if-nez v1, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v11

    .local v11, "simCount":I
    new-array v1, v11, [Lcom/android/internal/telephony/cat/CatService;

    sput-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v11, :cond_3

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    const/4 v2, 0x0

    aput-object v2, v1, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .end local v10    # "i":I
    .end local v11    # "simCount":I
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p4

    if-nez v1, :cond_7

    if-eqz p0, :cond_4

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    if-eqz p1, :cond_4

    if-eqz v6, :cond_4

    if-eqz p2, :cond_4

    if-nez p3, :cond_5

    :cond_4
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_5
    :try_start_1
    sget-object v13, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    new-instance v1, Lcom/android/internal/telephony/cat/CatService;

    move-object v2, p0

    move-object v5, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    invoke-direct/range {v1 .. v9}, Lcom/android/internal/telephony/cat/CatService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/UiccCardApplication;Lcom/android/internal/telephony/uicc/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/PhoneBase;I)V

    aput-object v1, v13, p4

    :cond_6
    :goto_2
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p4

    monitor-exit v12

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_6

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v1, v1, p4

    if-eq v1, v4, :cond_6

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v1, v1, p4

    if-eqz v1, :cond_8

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v1, v1, p4

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v2, v2, p4

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    :cond_8
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p4

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p4

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v2, v2, p4

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    :cond_9
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aput-object v4, v1, p4

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aput-object v3, v1, p4

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    aget-object v1, v1, p4

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v2, v2, p4

    const/16 v5, 0x14

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v5, v7}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v1, v1, p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerForRecordsLoaded slotid="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " instance:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v5, v5, p4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    aget-object v1, v1, p4

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v2, v2, p4

    const/4 v5, 0x7

    const/4 v7, 0x0

    invoke-virtual {v1, v2, v5, v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public static getPackageType(I)I
    .locals 5
    .param p0, "slot"    # I

    .prologue
    const/4 v4, 0x1

    const-string v2, "ril.ICC_TYPE"

    const-string v3, ""

    invoke-static {p0, v2, v3}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "mIccType":Ljava/lang/String;
    move v1, p0

    .local v1, "mPackageType":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-le v2, v4, :cond_8

    const-string v2, "CTC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p0, :cond_1

    const/4 v1, 0x2

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ne p0, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p0, :cond_5

    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    goto :goto_0

    :cond_8
    const-string v2, "CTC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "2"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_9
    const/4 v1, 0x0

    goto :goto_0

    :cond_a
    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_b
    const/4 v1, 0x2

    goto :goto_0

    :cond_c
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "3"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "4"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    const/4 v1, 0x2

    goto/16 :goto_0

    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private getPliResponse(Ljava/io/ByteArrayOutputStream;)V
    .locals 5
    .param p1, "buf"    # Ljava/io/ByteArrayOutputStream;

    .prologue
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .local v0, "lang":Ljava/lang/String;
    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v1

    .local v1, "tag":I
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {p1, v2}, Lcom/android/internal/telephony/cat/ResponseData;->writeLength(Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .end local v1    # "tag":I
    :cond_0
    return-void
.end method

.method private getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTZOffSetByte(J)B
    .locals 9
    .param p1, "offSetVal"    # J

    .prologue
    const/4 v3, 0x1

    const-wide/16 v6, 0x0

    cmp-long v6, p1, v6

    if-gez v6, :cond_1

    move v2, v3

    .local v2, "isNegative":Z
    :goto_0
    const-wide/32 v6, 0xdbba0

    div-long v4, p1, v6

    .local v4, "tzOffset":J
    if-eqz v2, :cond_0

    const/4 v3, -0x1

    :cond_0
    int-to-long v6, v3

    mul-long/2addr v4, v6

    long-to-int v3, v4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cat/CatService;->byteToBCD(I)B

    move-result v0

    .local v0, "bcdVal":B
    if-eqz v2, :cond_2

    or-int/lit8 v3, v0, 0x8

    int-to-byte v0, v3

    move v1, v0

    .end local v0    # "bcdVal":B
    .local v1, "bcdVal":B
    :goto_1
    return v0

    .end local v1    # "bcdVal":B
    .end local v2    # "isNegative":Z
    .end local v4    # "tzOffset":J
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .restart local v0    # "bcdVal":B
    .restart local v2    # "isNegative":Z
    .restart local v4    # "tzOffset":J
    :cond_2
    move v1, v0

    .end local v0    # "bcdVal":B
    .restart local v1    # "bcdVal":B
    goto :goto_1
.end method

.method private handleCallControlResultNoti(Ljava/lang/String;)V
    .locals 22
    .param p1, "callcontrol_result"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x0

    .local v12, "call_type":I
    const/4 v11, 0x0

    .local v11, "callControlResultCode":I
    const/4 v9, 0x0

    .local v9, "alphaidpresent":Z
    const/4 v8, 0x0

    .local v8, "alphaid_len":I
    const/16 v1, 0x40

    new-array v7, v1, [B

    .local v7, "alpha_id":[B
    const/4 v15, 0x0

    .local v15, "length_of_mod":B
    const/16 v21, 0x0

    .local v21, "voicecall_ss_modified_address":Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "modified_ussd_string":Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "modified_sms_dest_address":Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "callControlResult":Ljava/lang/String;
    const/16 v19, 0x0

    .local v19, "rawData":[B
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v19

    const/4 v1, 0x0

    aget-byte v1, v19, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    const/4 v1, 0x1

    aget-byte v1, v19, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    const/4 v1, 0x1

    aget-byte v11, v19, v1

    const/4 v1, 0x0

    aget-byte v12, v19, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The call control result by SIM = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    :try_start_0
    aget-byte v1, v19, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v9, 0x1

    const/4 v1, 0x3

    aget-byte v1, v19, v1

    if-lez v1, :cond_0

    const/4 v1, 0x4

    const/4 v2, 0x3

    aget-byte v2, v19, v2

    move-object/from16 v0, v19

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The call control result by SIM : alpha_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The call control result by SIM : alphaidpresent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    invoke-static {v11}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_ALLOWED_WITH_MOD:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v1, v2, :cond_b

    new-instance v20, Ljava/lang/StringBuffer;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuffer;-><init>()V

    .local v20, "sb":Ljava/lang/StringBuffer;
    sget-object v1, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$CallType:[I

    invoke-static {v12}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CallType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_2
    invoke-static {v12}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/cat/CallType;

    if-eq v1, v2, :cond_1

    invoke-static {v12}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_SMS:Lcom/android/internal/telephony/cat/CallType;

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_EnableNotiPopupWhenStkCallControl"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const-string v1, "CLN"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "KDO"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "TLS"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CA"

    sget-object v2, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    if-ne v9, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    if-nez v1, :cond_9

    .end local v20    # "sb":Ljava/lang/StringBuffer;
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    if-eqz v1, :cond_10

    invoke-static {v12}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/cat/CallType;

    if-ne v1, v2, :cond_10

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v1, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    :cond_3
    :goto_4
    return-void

    :cond_4
    const/4 v9, 0x0

    goto/16 :goto_0

    .restart local v20    # "sb":Ljava/lang/StringBuffer;
    :pswitch_0
    const/16 v1, 0x46

    :try_start_1
    aget-byte v1, v19, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_EnableNotiPopupWhenStkCallControl"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Brazil Feature - Remove \'+\' from voicecall_ss_modified_address "

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_5
    :goto_5
    const/16 v1, 0x48

    aget-byte v15, v19, v1

    const/4 v14, 0x0

    .local v14, "i":I
    :goto_6
    if-ge v14, v15, :cond_7

    add-int/lit8 v1, v14, 0x49

    aget-byte v1, v19, v1

    packed-switch v1, :pswitch_data_1

    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .end local v14    # "i":I
    :cond_6
    const-string v1, "+"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    :cond_7
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Modified number by SIM : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v2, 0x1040916

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .local v16, "message":Ljava/lang/CharSequence;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .end local v16    # "message":Ljava/lang/CharSequence;
    .restart local v14    # "i":I
    :pswitch_1
    add-int/lit8 v1, v14, 0x49

    :try_start_2
    aget-byte v2, v19, v1

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    aput-byte v2, v19, v1

    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, v14, 0x49

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :pswitch_2
    const-string v1, "*"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7

    :pswitch_3
    const-string v1, "#"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    .end local v14    # "i":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v2, 0x1040916

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .restart local v16    # "message":Ljava/lang/CharSequence;
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .end local v16    # "message":Ljava/lang/CharSequence;
    :pswitch_5
    const/16 v1, 0x48

    aget-byte v15, v19, v1

    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_8
    if-ge v14, v15, :cond_8

    add-int/lit8 v1, v14, 0x49

    aget-byte v1, v19, v1

    packed-switch v1, :pswitch_data_2

    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :pswitch_6
    add-int/lit8 v1, v14, 0x49

    aget-byte v2, v19, v1

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    aput-byte v2, v19, v1

    new-instance v1, Ljava/lang/String;

    add-int/lit8 v2, v14, 0x49

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-direct {v1, v0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    :pswitch_7
    const-string v1, "*"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    :pswitch_8
    const-string v1, "#"

    move-object/from16 v0, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_9

    :cond_8
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/PhoneBase;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v2, 0x1040917

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .restart local v16    # "message":Ljava/lang/CharSequence;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, v21

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .end local v16    # "message":Ljava/lang/CharSequence;
    :catch_1
    move-exception v13

    .local v13, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v1, "fail to send SS"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_4

    .end local v13    # "e":Lcom/android/internal/telephony/CallStateException;
    .end local v14    # "i":I
    :cond_9
    const/4 v1, 0x1

    if-ne v9, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v10, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .end local v20    # "sb":Ljava/lang/StringBuffer;
    :cond_b
    invoke-static {v11}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v1, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v2, 0x1040918

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v16

    .restart local v16    # "message":Ljava/lang/CharSequence;
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v1, 0x1

    if-ne v9, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    if-eqz v1, :cond_2

    :cond_c
    const/4 v1, 0x1

    if-ne v9, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v10, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .end local v16    # "message":Ljava/lang/CharSequence;
    :cond_e
    const/4 v1, 0x1

    if-ne v9, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    if-eqz v1, :cond_2

    :cond_f
    const/4 v1, 0x1

    if-ne v9, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->alpha_id_display:Ljava/lang/String;

    const/4 v9, 0x0

    goto/16 :goto_3

    :cond_10
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    if-eqz v1, :cond_3

    invoke-static {v12}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_VOICE:Lcom/android/internal/telephony/cat/CallType;

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_11

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v1, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    :goto_a
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    goto/16 :goto_4

    :cond_11
    const-string v1, "mCurrntCmd = null error handle is needed"

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    :catch_2
    move-exception v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 24
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v7, 0x0

    .local v7, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    const/16 v18, 0x0

    .local v18, "helpRequired":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/cat/CommandDetails;

    move-result-object v3

    .local v3, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    iget v2, v3, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v23

    .local v23, "type":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    const/4 v15, 0x0

    .local v15, "calldisabledNoti":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    const-string v2, "Get terminal response of ACTIVATE and cancel timer"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$ResultCode:[I

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/ResultCode;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v18, 0x1

    :pswitch_1
    sget-object v2, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_1

    :cond_3
    :goto_1
    :pswitch_2
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:Z

    if-nez v2, :cond_1e

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    :cond_4
    :goto_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->isUsingBackUpCmd:Z

    if-nez v2, :cond_5

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->isUsingBackUpCmd:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    goto :goto_0

    :cond_6
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v2, v4, :cond_7

    const/16 v18, 0x1

    :goto_3
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/cat/CatService;->sendMenuSelection(IZ)V

    goto/16 :goto_0

    :cond_7
    const/16 v18, 0x0

    goto :goto_3

    :pswitch_4
    new-instance v7, Lcom/android/internal/telephony/cat/SelectItemResponseData;

    .end local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersMenuSelection:I

    invoke-direct {v7, v2}, Lcom/android/internal/telephony/cat/SelectItemResponseData;-><init>(I)V

    .restart local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto :goto_1

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v19

    .local v19, "input":Lcom/android/internal/telephony/cat/Input;
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-nez v2, :cond_8

    if-nez v18, :cond_3

    new-instance v7, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersInput:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/android/internal/telephony/cat/Input;->ucs2:Z

    move-object/from16 v0, v19

    iget-boolean v5, v0, Lcom/android/internal/telephony/cat/Input;->packed:Z

    invoke-direct {v7, v2, v4, v5}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .restart local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto/16 :goto_1

    :cond_8
    new-instance v7, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersYesNoSelection:Z

    invoke-direct {v7, v2}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Z)V

    .restart local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto/16 :goto_1

    .end local v19    # "input":Lcom/android/internal/telephony/cat/Input;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v2, v4, :cond_9

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setAdditionalInfo(Z)V

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mIncludeAdditionalInfo:Z

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:Z

    goto/16 :goto_1

    :pswitch_7
    const/4 v7, 0x0

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resMsg.mResCode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " Openchannel : Sending TR :user did not accept"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    new-instance v7, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    .end local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    invoke-direct {v7}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>()V

    .restart local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast v2, Lcom/android/internal/telephony/cat/OpenChannelParams;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleOpenChannel(Lcom/android/internal/telephony/cat/OpenChannelParams;)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    if-nez v2, :cond_b

    const-string v2, "setup call address is null"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_b
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    if-nez v2, :cond_c

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_c
    const-string v2, "setup call in handleCmdResponse"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->hasIMSCall()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_d

    const-string v2, "show Notification - Can\'t call by InIMScall"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v4, 0x1040915

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    .local v21, "message":Ljava/lang/CharSequence;
    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v2, v15, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .end local v21    # "message":Ljava/lang/CharSequence;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->isInCall()Z

    move-result v2

    if-nez v2, :cond_10

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-eq v2, v4, :cond_e

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-ne v2, v4, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->SetupCallFromStk(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getState() "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v9, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    new-instance v20, Landroid/content/Intent;

    const-string v2, "android.intent.action.SetupCallFail"

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v20, "intentSetupcall":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v20    # "intentSetupcall":Landroid/content/Intent;
    :catch_0
    move-exception v16

    .local v16, "e":Ljava/lang/Exception;
    const-string v2, "exception happened"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v9, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .end local v16    # "e":Ljava/lang/Exception;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->SetupCallFromStk(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    if-ne v2, v4, :cond_11

    const-string v2, "show Notification - Can\'t call by Incall"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v4, 0x1040915

    invoke-virtual {v2, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v21

    .restart local v21    # "message":Ljava/lang/CharSequence;
    invoke-interface/range {v21 .. v21}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v2, v15, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .end local v21    # "message":Ljava/lang/CharSequence;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_PUTTING_ALL_OTHER_CALLS_ON_HOLD:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    if-ne v2, v4, :cond_12

    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->switchHoldingAndActive()V

    const/4 v2, 0x3

    const/16 v4, 0x1388

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v16

    .local v16, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "fail to setup call"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .end local v16    # "e":Lcom/android/internal/telephony/CallStateException;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_DISCONNECTING_ALL_OTHER_CALLS:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    if-ne v2, v4, :cond_18

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v22

    .local v22, "ringing":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v17

    .local v17, "fg":Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v14

    .local v14, "bg":Lcom/android/internal/telephony/Call;
    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_15

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/Call;->hangup()V

    :cond_13
    :goto_4
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-eq v2, v4, :cond_14

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-ne v2, v4, :cond_17

    :cond_14
    const/4 v2, 0x7

    const/16 v4, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .end local v14    # "bg":Lcom/android/internal/telephony/Call;
    .end local v17    # "fg":Lcom/android/internal/telephony/Call;
    .end local v22    # "ringing":Lcom/android/internal/telephony/Call;
    :catch_2
    move-exception v16

    .restart local v16    # "e":Lcom/android/internal/telephony/CallStateException;
    const-string v2, "fail to setup call"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .end local v16    # "e":Lcom/android/internal/telephony/CallStateException;
    .restart local v14    # "bg":Lcom/android/internal/telephony/Call;
    .restart local v17    # "fg":Lcom/android/internal/telephony/Call;
    .restart local v22    # "ringing":Lcom/android/internal/telephony/Call;
    :cond_15
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/Call;->hangup()V

    goto :goto_4

    :cond_16
    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {v14}, Lcom/android/internal/telephony/Call;->hangup()V

    goto :goto_4

    :cond_17
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSetupCallDisc:Z
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .end local v14    # "bg":Lcom/android/internal/telephony/Call;
    .end local v17    # "fg":Lcom/android/internal/telephony/Call;
    .end local v22    # "ringing":Lcom/android/internal/telephony/Call;
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->SetupCallFromStk(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mUsersConfirm:Z

    if-nez v2, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resMsg.mResCode = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " CLOSE_CHANNEL : Sending TR :user did not accept"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    check-cast v2, Lcom/android/internal/telephony/cat/CloseChannelParams;

    invoke-virtual {v4, v2}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleCloseChannel(Lcom/android/internal/telephony/cat/CloseChannelParams;)V

    goto/16 :goto_0

    :pswitch_b
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-eq v2, v4, :cond_1a

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-ne v2, v4, :cond_3

    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    goto/16 :goto_1

    :pswitch_c
    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-object/from16 v0, v23

    if-eq v0, v2, :cond_1b

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-object/from16 v0, v23

    if-ne v0, v2, :cond_1c

    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    :cond_1c
    const/4 v7, 0x0

    goto/16 :goto_1

    :pswitch_d
    sget-object v2, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget v4, v3, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_2

    const/4 v7, 0x0

    goto/16 :goto_1

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v19

    .restart local v19    # "input":Lcom/android/internal/telephony/cat/Input;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    if-eqz v2, :cond_1d

    new-instance v7, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;

    .end local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/telephony/cat/Input;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-direct {v7, v2}, Lcom/android/internal/telephony/cat/GetInkeyInputResponseData;-><init>(Lcom/android/internal/telephony/cat/Duration;)V

    .restart local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    goto/16 :goto_1

    :cond_1d
    const/4 v7, 0x0

    goto/16 :goto_1

    .end local v19    # "input":Lcom/android/internal/telephony/cat/Input;
    :pswitch_f
    const/4 v7, 0x0

    goto/16 :goto_1

    :cond_1e
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfo:Z

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/internal/telephony/cat/CatResponseMessage;->mAdditionalInfoData:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_f
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_7
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x9
        :pswitch_e
        :pswitch_e
    .end packed-switch
.end method

.method private handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V
    .locals 37
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;
    .param p2, "isProactiveCmd"    # Z

    .prologue
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ProactiveCommand mSlotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " cmdParams="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->addCardLog(Ljava/lang/String;)V

    :cond_0
    new-instance v18, Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;-><init>(Lcom/android/internal/telephony/cat/CommandParams;)V

    .local v18, "cmdMsg":Lcom/android/internal/telephony/cat/CatCmdMessage;
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    .local v33, "sessionEnd":Ljava/lang/Boolean;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    .local v32, "sendIntent":Ljava/lang/Boolean;
    sget-object v2, Lcom/android/internal/telephony/cat/CatService$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/cat/CommandParams;->getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    const-string v2, "Unsupported command"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_1
    :goto_0
    return-void

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_0
    const-string v2, "SetupMenu"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    :cond_2
    const/16 v34, 0x0

    .local v34, "stkProp":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-ne v2, v3, :cond_7

    const-string v34, "gsm.UTK_SETUP_MENU"

    :goto_1
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-eq v2, v3, :cond_3

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-ne v2, v3, :cond_4

    :cond_3
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    :cond_4
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    const-string v2, ""

    move-object/from16 v0, v34

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "CTC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string v2, "Send set up menu TR Alpha Id length ==0 ."

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->isUsingBackUpCmd:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z

    .end local v34    # "stkProp":Ljava/lang/String;
    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_6
    :goto_2
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->broadcastCatCmdIntent(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    goto/16 :goto_0

    .restart local v34    # "stkProp":Ljava/lang/String;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_7
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-ne v2, v3, :cond_8

    const-string v34, "gsm.UTK_SETUP_MENU2"

    goto/16 :goto_1

    :cond_8
    const-string v2, "gsm.STK_SETUP_MENU"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v34

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    const-string v2, "Feature for is_stk_icon_label_update is enabled"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, v34

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .local v26, "oldSysProp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    iget-object v0, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    move-object/from16 v25, v0

    .local v25, "newSysProp":Ljava/lang/String;
    if-eqz v25, :cond_f

    const-string v2, ""

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, ""

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "Condition for STK refresh detected enabling the intent to be fired"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/telephony/cat/CatService;->is_stk_icon_label_update:Z

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    if-eqz v2, :cond_11

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_ConfigSTKNameLength"

    const/16 v4, 0x14

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v22

    .local v22, "maxNameLen":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " property Setting. -AAA mSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move/from16 v0, v22

    if-le v2, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    const/4 v3, 0x0

    add-int/lit8 v4, v22, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SETUP_MENU setted : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {v34 .. v34}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -AAA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v22    # "maxNameLen":I
    :goto_5
    const-string v2, "CTC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_SupportAllRat"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const-string v2, "Send set up menu TR."

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->isUsingBackUpCmd:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z

    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_FixedStkMenu"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_c

    sget-boolean v2, Lcom/android/internal/telephony/cat/CatService;->is_stk_icon_label_update:Z

    if-nez v2, :cond_c

    const-string v2, "China"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_c
    const-string v14, "android.intent.action.STK_TITLE_IS_LOADED"

    .local v14, "action":Ljava/lang/String;
    const/16 v28, 0x0

    .local v28, "pkg":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-ne v2, v3, :cond_14

    const-string v28, "com.sec.android.app.utk"

    :goto_6
    new-instance v21, Landroid/content/Intent;

    const-string v2, "package"

    const/4 v3, 0x0

    move-object/from16 v0, v28

    invoke-static {v2, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-direct {v0, v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v21, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .end local v14    # "action":Ljava/lang/String;
    .end local v21    # "intent":Landroid/content/Intent;
    .end local v28    # "pkg":Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "Condition for STK refresh detected enabling the intent to be fired"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/internal/telephony/cat/CatService;->is_stk_icon_label_update:Z

    goto/16 :goto_3

    :cond_e
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/telephony/cat/CatService;->is_stk_icon_label_update:Z

    goto/16 :goto_3

    :cond_f
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/telephony/cat/CatService;->is_stk_icon_label_update:Z

    goto/16 :goto_3

    .restart local v22    # "maxNameLen":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .end local v22    # "maxNameLen":I
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SETUP_MENU property Setting. -BBB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-ne v2, v3, :cond_12

    const-string v2, "UIM Toolkit"

    move-object/from16 v0, v34

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_12
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-ne v2, v3, :cond_13

    const-string v2, "UIM Toolkit2"

    move-object/from16 v0, v34

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_13
    const-string v2, "SIM Toolkit"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v34

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .restart local v14    # "action":Ljava/lang/String;
    .restart local v28    # "pkg":Ljava/lang/String;
    :cond_14
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-ne v2, v3, :cond_15

    const-string v28, "com.sec.android.app.utk2"

    goto/16 :goto_6

    :cond_15
    const-string v2, "com.android.stk"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_6

    .end local v14    # "action":Ljava/lang/String;
    .end local v25    # "newSysProp":Ljava/lang/String;
    .end local v26    # "oldSysProp":Ljava/lang/String;
    .end local v28    # "pkg":Ljava/lang/String;
    .end local v34    # "stkProp":Ljava/lang/String;
    :pswitch_1
    const-string v2, "DisplayText"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v2, "DisplayText not supported"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_16
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_2

    :pswitch_2
    const-string v2, "CTC"

    sget-object v3, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    :cond_17
    const-string v2, "KOREA"

    const-string v3, "ro.csc.country_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    goto/16 :goto_2

    :pswitch_3
    const-string v2, "SetupIdleModeText"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_2

    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->launchIdleText()V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_2

    :pswitch_4
    const-string v2, "SetupEventList"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_19

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_2

    :cond_19
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "SKT"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const-string v2, "CMC"

    const-string v3, "CMC"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_1a
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LGT"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "KOO"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1b
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .local v15, "args":Landroid/os/Bundle;
    const-string v2, "op"

    const/4 v3, 0x1

    invoke-virtual {v15, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "cmd message"

    move-object/from16 v0, v18

    invoke-virtual {v15, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    new-instance v21, Landroid/content/Intent;

    invoke-direct/range {v21 .. v21}, Landroid/content/Intent;-><init>()V

    .restart local v21    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.stk"

    const-string v3, "com.android.stk.StkAppService"

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_2

    .end local v15    # "args":Landroid/os/Bundle;
    .end local v21    # "intent":Landroid/content/Intent;
    :pswitch_5
    const-string v2, "ProvideLocalInformation"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_2

    :cond_1c
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommandProvideLocalInfo(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto/16 :goto_0

    :pswitch_6
    const-string v2, "LaunchBrowser"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_2

    :cond_1d
    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_1e

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x10404c4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    .local v23, "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .end local v23    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_7
    const-string v2, "SelectItem"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_2

    :pswitch_8
    const-string v2, "GetInput"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_2

    :pswitch_9
    const-string v2, "GetInkey"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_2

    :pswitch_a
    const-string v2, "SendDtmf"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_20

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v20

    .local v20, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_21

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x7

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_21
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommandSendDTMF(Lcom/android/internal/telephony/cat/CommandParams;)V

    const-string v2, "Default Message"

    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "wakelock for Send DTMF"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0xfde8

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_0

    .end local v20    # "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_b
    const-string v2, "SendSms"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_22

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v2

    if-nez v2, :cond_23

    :cond_22
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_24

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_24
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommandSendSMS(Lcom/android/internal/telephony/cat/CommandParams;)V

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v2, :cond_26

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_26

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_26

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-eq v2, v3, :cond_25

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-ne v2, v3, :cond_6

    :cond_25
    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "null alphaId, default sending..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x10404c3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    .restart local v23    # "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending sms "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v23    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_26
    const-string v2, "wakelock for SMS"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0xfde8

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_0

    :pswitch_c
    const-string v2, "SendSs"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_27
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_28

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_28
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommandSendSS(Lcom/android/internal/telephony/cat/CommandParams;)V

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v2, :cond_29

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_29

    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_29
    const-string v2, "wakelock for SS"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0xfde8

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_0

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :pswitch_d
    const-string v2, "SendUssd"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_2a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eqz v2, :cond_2b

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_2b
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->handleProactiveCommandSendUSSD(Lcom/android/internal/telephony/cat/CommandParams;)V

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz v2, :cond_2c

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_2c

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "null alphaId, default sending..."

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x10404c3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    .restart local v23    # "message":Ljava/lang/CharSequence;
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sending ussd "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v23    # "message":Ljava/lang/CharSequence;
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_2c
    const-string v2, "wakelock for USSD"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0xfde8

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    goto/16 :goto_0

    :pswitch_e
    const-string v2, "PlayTone"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_2

    :pswitch_f
    const-string v2, "SetupCall"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    if-nez v2, :cond_2e

    :cond_2d
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    :cond_2e
    const-string v2, "setup call"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->isInCall()Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->hasIMSCall()Z

    move-result v2

    if-eqz v2, :cond_30

    :cond_2f
    const/16 v16, 0x0

    .local v16, "calldisabledNoti":Ljava/lang/String;
    const-string v2, "phone is in call"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->fromInt(I)Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;->SET_UP_CALL_BUT_ONLY_IF_NOT_CURRENTLY_BUSY_ON_ANOTHER_CALL:Lcom/android/internal/telephony/cat/SetupCallCommandQualifiers;

    if-ne v2, v3, :cond_30

    const-string v2, "show Notification - Can\'t call by Incall"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x1040915

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    .restart local v23    # "message":Ljava/lang/CharSequence;
    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .end local v16    # "calldisabledNoti":Ljava/lang/String;
    .end local v23    # "message":Ljava/lang/CharSequence;
    :cond_30
    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_32

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x10404c5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    .restart local v23    # "message":Ljava/lang/CharSequence;
    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    .end local v23    # "message":Ljava/lang/CharSequence;
    :cond_31
    :goto_7
    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const-string v3, "Default Message"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CallSetupParams;->mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto/16 :goto_2

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_32
    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_31

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-eq v2, v3, :cond_31

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-eq v2, v3, :cond_31

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x10404c5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v23

    .restart local v23    # "message":Ljava/lang/CharSequence;
    move-object/from16 v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-interface/range {v23 .. v23}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_7

    .end local v23    # "message":Ljava/lang/CharSequence;
    :pswitch_10
    const-string v2, "OPEN_CHANNEL"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "OpenChannel"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_2

    :cond_33
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/telephony/TelephonyManager;

    .local v36, "tm":Landroid/telephony/TelephonyManager;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tm.getNetworkType() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v36 .. v36}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v35

    .local v35, "subIds":[I
    const/4 v2, 0x0

    aget v2, v35, v2

    move-object/from16 v0, v36

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v24

    .local v24, "networkType":I
    move-object/from16 v27, p1

    check-cast v27, Lcom/android/internal/telephony/cat/OpenChannelParams;

    .local v27, "op":Lcom/android/internal/telephony/cat/OpenChannelParams;
    if-nez v24, :cond_34

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTransportLevel:Lcom/android/internal/telephony/cat/TransportLevel;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/TransportLevel;->isServer()Z

    move-result v2

    if-nez v2, :cond_34

    const-string v2, "NETWORK_TYPE_UNKNOWN "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_34
    sput-object v27, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->displayOpenChannelParams(Lcom/android/internal/telephony/cat/CommandParams;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v29

    .local v29, "radioTechnology":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get current radio techonology = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    move/from16 v0, v29

    if-eq v0, v2, :cond_35

    const/4 v2, 0x2

    move/from16 v0, v29

    if-ne v0, v2, :cond_36

    :cond_35
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->isInCall()Z

    move-result v2

    if-eqz v2, :cond_36

    const-string v2, "send terminal response, TERMINAL_CRNTLY_UNABLE_TO_PROCESS, ME_CURRENTLY_BUSY_ON_CALL"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/android/internal/telephony/cat/OpenChannelResponseData;

    invoke-direct {v7}, Lcom/android/internal/telephony/cat/OpenChannelResponseData;-><init>()V

    .local v7, "resp":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x1

    const/4 v6, 0x2

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .end local v7    # "resp":Lcom/android/internal/telephony/cat/ResponseData;
    :cond_36
    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v2, :cond_37

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_6

    :cond_37
    const-string v2, "no alphaID or alphaID 0 : no user confirm"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleOpenChannel(Lcom/android/internal/telephony/cat/OpenChannelParams;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_RemoveToastDuringBipOperation"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, v27

    iget-object v2, v0, Lcom/android/internal/telephony/cat/OpenChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v3, "open channel for BIP"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .end local v24    # "networkType":I
    .end local v27    # "op":Lcom/android/internal/telephony/cat/OpenChannelParams;
    .end local v29    # "radioTechnology":I
    .end local v35    # "subIds":[I
    .end local v36    # "tm":Landroid/telephony/TelephonyManager;
    :pswitch_11
    const-string v2, "CloseChannel"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_2

    :cond_38
    move-object/from16 v19, p1

    check-cast v19, Lcom/android/internal/telephony/cat/CloseChannelParams;

    .local v19, "cp":Lcom/android/internal/telephony/cat/CloseChannelParams;
    sput-object v19, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LGT"

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    const-string v2, "true"

    const-string v3, "ril.domesticOtaStart"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_39

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mGetUiccVerHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CatService;->mGetUiccVerRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->bBIPSuccess:Z

    :cond_39
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->displayCloseChannelParams(Lcom/android/internal/telephony/cat/CommandParams;)V

    const-string v2, "After Displaying Params Close Channel...Calling CatBIPMgr.handleCloseChannel: "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CloseChannelParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleCloseChannel(Lcom/android/internal/telephony/cat/CloseChannelParams;)V

    goto/16 :goto_0

    .end local v19    # "cp":Lcom/android/internal/telephony/cat/CloseChannelParams;
    :pswitch_12
    const-string v2, "ReceiveData"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3a

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_2

    :cond_3a
    move-object/from16 v30, p1

    check-cast v30, Lcom/android/internal/telephony/cat/ReceiveDataParams;

    .local v30, "rd":Lcom/android/internal/telephony/cat/ReceiveDataParams;
    sput-object v30, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->displayReceiveDataParams(Lcom/android/internal/telephony/cat/CommandParams;)V

    const-string v2, "After Displaying Params RECEIVE_DATA...Calling CatBIPMgr.handleReceiveData: "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleReceiveData(Lcom/android/internal/telephony/cat/ReceiveDataParams;)V

    move-object/from16 v0, v30

    iget-object v2, v0, Lcom/android/internal/telephony/cat/ReceiveDataParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_6

    goto/16 :goto_0

    .end local v30    # "rd":Lcom/android/internal/telephony/cat/ReceiveDataParams;
    :pswitch_13
    const-string v2, "SendData"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_2

    :cond_3b
    move-object/from16 v31, p1

    check-cast v31, Lcom/android/internal/telephony/cat/SendDataParams;

    .local v31, "sd":Lcom/android/internal/telephony/cat/SendDataParams;
    sput-object v31, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatService;->displaySendDataParams(Lcom/android/internal/telephony/cat/CommandParams;)V

    const-string v2, "After Displaying Params SEND_DATA...Calling CatBIPMgr.handleSendData: "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->handleSendData(Lcom/android/internal/telephony/cat/SendDataParams;)V

    move-object/from16 v0, v31

    iget-object v2, v0, Lcom/android/internal/telephony/cat/SendDataParams;->mTextMessage:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_6

    goto/16 :goto_0

    .end local v31    # "sd":Lcom/android/internal/telephony/cat/SendDataParams;
    :pswitch_14
    const-string v2, "GetChannelStatus"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3c

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_0

    :cond_3c
    move-object/from16 v17, p1

    check-cast v17, Lcom/android/internal/telephony/cat/GetChannelDataParams;

    .local v17, "cd":Lcom/android/internal/telephony/cat/GetChannelDataParams;
    sput-object v17, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/cat/CatService;->displayChannelStatusParams(Lcom/android/internal/telephony/cat/CommandParams;)V

    const-string v2, "After Displaying Params GET_CHANNEL_STATUS"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/cat/CatBIPManager;->getChannelStatus(Lcom/android/internal/telephony/cat/CommandParams;)V

    goto/16 :goto_0

    .end local v17    # "cd":Lcom/android/internal/telephony/cat/GetChannelDataParams;
    :pswitch_15
    const-string v2, "LanguageNotification"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->isDisabledCmd(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_2

    :pswitch_16
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v10, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private handleProactiveCommandProvideLocalInfo(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 24
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v3, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    move/from16 v17, v0

    .local v17, "commandQualifier":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provide local info command Qualifier : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v17, :pswitch_data_0

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v12, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v15}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .local v16, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x0

    .local v2, "res":Lcom/android/internal/telephony/cat/ResponseData;
    if-nez v16, :cond_0

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v4, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    :cond_0
    const-string v3, "persist.sys.timezone"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .local v21, "tz":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-eq v3, v4, :cond_1

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    if-ne v3, v4, :cond_3

    :cond_1
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v18

    .local v18, "daylight":Z
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    if-eqz v18, :cond_2

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    :goto_1
    add-int/2addr v3, v4

    div-int/lit16 v3, v3, 0x3e8

    div-int/lit8 v20, v3, 0x3c

    .local v20, "timeZone":I
    div-int/lit8 v3, v20, 0x3c

    mul-int/lit8 v20, v3, 0x4

    move/from16 v0, v20

    int-to-byte v9, v0

    .end local v18    # "daylight":Z
    .end local v20    # "timeZone":I
    .local v9, "timezone":B
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " d : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " hh : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mm : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ss : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xd

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " zone : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AM_PM : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x9

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;

    .end local v2    # "res":Lcom/android/internal/telephony/cat/ResponseData;
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v6, 0x9

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-nez v6, :cond_5

    const/16 v6, 0xa

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    :goto_3
    const/16 v7, 0xc

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v10, 0xd

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v8

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/cat/ProvideLocalInfoTimeResponseData;-><init>(IIIIIII)V

    .restart local v2    # "res":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .end local v9    # "timezone":B
    .restart local v18    # "daylight":Z
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_1

    .end local v18    # "daylight":Z
    :cond_3
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v9, -0x1

    .restart local v9    # "timezone":B
    goto/16 :goto_2

    .end local v9    # "timezone":B
    :cond_4
    invoke-static/range {v21 .. v21}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v22

    .local v22, "zone":Ljava/util/TimeZone;
    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    invoke-virtual/range {v22 .. v22}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v4

    add-int v23, v3, v4

    .local v23, "zoneOffset":I
    move/from16 v0, v23

    int-to-long v4, v0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/telephony/cat/CatService;->getTZOffSetByte(J)B

    move-result v9

    .restart local v9    # "timezone":B
    goto/16 :goto_2

    .end local v2    # "res":Lcom/android/internal/telephony/cat/ResponseData;
    .end local v22    # "zone":Ljava/util/TimeZone;
    .end local v23    # "zoneOffset":I
    :cond_5
    const/16 v6, 0xa

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    add-int/lit8 v6, v6, 0xc

    goto :goto_3

    .end local v9    # "timezone":B
    .end local v16    # "calendar":Ljava/util/Calendar;
    .end local v21    # "tz":Ljava/lang/String;
    :pswitch_2
    const/4 v8, 0x0

    .local v8, "response":Lcom/android/internal/telephony/cat/ResponseData;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v19

    .local v19, "loc":Ljava/util/Locale;
    if-nez v19, :cond_6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_6
    new-instance v8, Lcom/android/internal/telephony/cat/ProvideLocalInfoLangSetting;

    .end local v8    # "response":Lcom/android/internal/telephony/cat/ResponseData;
    invoke-virtual/range {v19 .. v19}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/cat/ProvideLocalInfoLangSetting;-><init>(Ljava/lang/String;)V

    .restart local v8    # "response":Lcom/android/internal/telephony/cat/ResponseData;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v5, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private handleProactiveCommandSendDTMF(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 12
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    const/16 v11, 0xc

    const/16 v10, 0xb

    const/16 v9, 0xa

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DTMF String is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v7, p1

    check-cast v7, Lcom/android/internal/telephony/cat/SendDTMFParams;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/SendDTMFParams;->dtmfString:[B

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, p1

    check-cast v7, Lcom/android/internal/telephony/cat/SendDTMFParams;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/SendDTMFParams;->dtmfString:[B

    const/4 v8, 0x0

    aget-byte v1, v7, v8

    .local v1, "rawDataLength":I
    mul-int/lit8 v7, v1, 0x2

    new-array v3, v7, [B

    .local v3, "tempDTMFString":[B
    const/4 v4, 0x0

    .local v4, "tempDTMFStringLength":I
    const/4 v5, 0x0

    .local v5, "workingPtr":I
    const/4 v0, 0x0

    .local v0, "i":I
    move v6, v5

    .end local v5    # "workingPtr":I
    .local v6, "workingPtr":I
    :goto_0
    if-ge v0, v1, :cond_7

    move-object v7, p1

    check-cast v7, Lcom/android/internal/telephony/cat/SendDTMFParams;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/SendDTMFParams;->dtmfString:[B

    add-int/lit8 v8, v0, 0x1

    aget-byte v7, v7, v8

    and-int/lit8 v7, v7, 0xf

    int-to-byte v2, v7

    .local v2, "temp":B
    if-ne v2, v11, :cond_1

    const/16 v2, 0x70

    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "workingPtr":I
    .restart local v5    # "workingPtr":I
    aput-byte v2, v3, v6

    add-int/lit8 v4, v4, 0x1

    move-object v7, p1

    check-cast v7, Lcom/android/internal/telephony/cat/SendDTMFParams;

    iget-object v7, v7, Lcom/android/internal/telephony/cat/SendDTMFParams;->dtmfString:[B

    add-int/lit8 v8, v0, 0x1

    aget-byte v7, v7, v8

    shr-int/lit8 v7, v7, 0x4

    and-int/lit8 v7, v7, 0xf

    int-to-byte v2, v7

    const/16 v7, 0xf

    if-eq v2, v7, :cond_0

    if-ne v2, v11, :cond_4

    const/16 v2, 0x70

    :goto_2
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "workingPtr":I
    .restart local v6    # "workingPtr":I
    aput-byte v2, v3, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    .end local v6    # "workingPtr":I
    .restart local v5    # "workingPtr":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v6, v5

    .end local v5    # "workingPtr":I
    .restart local v6    # "workingPtr":I
    goto :goto_0

    :cond_1
    if-ne v2, v9, :cond_2

    const/16 v2, 0x2a

    goto :goto_1

    :cond_2
    if-ne v2, v10, :cond_3

    const/16 v2, 0x23

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v2, 0x30

    int-to-byte v2, v7

    goto :goto_1

    .end local v6    # "workingPtr":I
    .restart local v5    # "workingPtr":I
    :cond_4
    if-ne v2, v9, :cond_5

    const/16 v2, 0x2a

    goto :goto_2

    :cond_5
    if-ne v2, v10, :cond_6

    const/16 v2, 0x23

    goto :goto_2

    :cond_6
    add-int/lit8 v7, v2, 0x30

    int-to-byte v2, v7

    goto :goto_2

    .end local v2    # "temp":B
    .end local v5    # "workingPtr":I
    .restart local v6    # "workingPtr":I
    :cond_7
    const-string v7, "wakelock for DTMF"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v8, 0xfde8

    invoke-virtual {v7, v8, v9}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    new-instance v7, Lcom/android/internal/telephony/cat/DtmfString;

    invoke-direct {v7, v4, v3}, Lcom/android/internal/telephony/cat/DtmfString;-><init>(I[B)V

    iput-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatService;->processDTMFString()V

    return-void
.end method

.method private handleProactiveCommandSendSMS(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 7
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Smscaddress is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/SendSMSParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/SendSMSParams;->SmscAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The Sms Pdu is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/SendSMSParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/SendSMSParams;->Pdu:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    instance-of v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v0

    if-eq v6, v0, :cond_0

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_RIL_STKHandlingSendSMSbyAP"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "NEW handleProactiveCommandSendSMS set"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_SupportMovialWFC"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/movial/ipphone/IPPhoneProxy;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhoneProxy;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    aput-object v0, v1, v2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v4}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v0, v0, v1

    move-object v1, p1

    check-cast v1, Lcom/android/internal/telephony/cat/SendSMSParams;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/SendSMSParams;->SmscAddress:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcom/android/internal/telephony/cat/SendSMSParams;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/SendSMSParams;->Pdu:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    check-cast p1, Lcom/android/internal/telephony/cat/SendSMSParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v3, p1, Lcom/android/internal/telephony/cat/SendSMSParams;->Format:Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->sendRawPduSat([B[BLjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    const v0, 0xea60

    invoke-virtual {p0, v6, v0}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    return-void

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccSms:[Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    iget v0, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneProxy;->getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_0
.end method

.method private handleProactiveCommandSendSS(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 7
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ssString is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/cat/SendSSParams;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/SendSSParams;->ssString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    :try_start_0
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v1

    if-eq v0, v1, :cond_1

    const-string v0, "ORO"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XFA"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "XFM"

    sget-object v1, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setmMmiInitBySTK(Z)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    check-cast p1, Lcom/android/internal/telephony/cat/SendSSParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/SendSSParams;->ssString:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->dial(Ljava/lang/String;I)Lcom/android/internal/telephony/Connection;

    const/4 v0, 0x1

    const/16 v1, 0x7530

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    :goto_1
    return-void

    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneBase;->setmMmiInitBySTK(Z)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :catch_0
    move-exception v6

    .local v6, "e":Lcom/android/internal/telephony/CallStateException;
    const-string v0, "fail to send SS"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1
.end method

.method private handleProactiveCommandSendUSSD(Lcom/android/internal/telephony/cat/CommandParams;)V
    .locals 9
    .param p1, "cmdParams"    # Lcom/android/internal/telephony/cat/CommandParams;

    .prologue
    const/4 v8, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ussdString is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/SendUSSDParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/SendUSSDParams;->ussdString:[B

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/SendUSSDParams;

    iget v0, v5, Lcom/android/internal/telephony/cat/SendUSSDParams;->dcsCode:I

    .local v0, "dcsCode":I
    const-string v5, "XXV"

    sget-object v6, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const/4 v5, 0x0

    const-string v6, "gsm.sim.operator.numeric"

    const-string v7, "0"

    invoke-static {v5, v6, v7}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, "operator1":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    const-string v5, "gsm.sim.operator.numeric"

    const-string v6, "0"

    invoke-static {v8, v5, v6}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "operator2":Ljava/lang/String;
    const-string v5, "45205"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "45205"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    add-int/lit8 v5, v0, 0x10

    if-nez v5, :cond_1

    const-string v5, "change DCS F0 to 0F in STK Module"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xf

    .end local v1    # "operator1":Ljava/lang/String;
    .end local v2    # "operator2":Ljava/lang/String;
    :cond_1
    const-string v5, "ATT"

    invoke-static {}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "hide release complete msg"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/PhoneBase;->setmMmiInitBySTK(Z)V

    :cond_2
    :goto_0
    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/SendUSSDParams;

    iget v3, v5, Lcom/android/internal/telephony/cat/SendUSSDParams;->ussdLength:I

    .local v3, "ussdLength":I
    check-cast p1, Lcom/android/internal/telephony/cat/SendUSSDParams;

    .end local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget-object v4, p1, Lcom/android/internal/telephony/cat/SendUSSDParams;->ussdString:[B

    .local v4, "ussdString":[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dcsCode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5, v4, v3, v0}, Lcom/android/internal/telephony/PhoneBase;->sendEncodedUssd([BII)V

    const/16 v5, 0x7530

    invoke-virtual {p0, v8, v5}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    return-void

    .end local v3    # "ussdLength":I
    .end local v4    # "ussdString":[B
    .restart local p1    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    :cond_3
    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/SendUSSDParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/SendUSSDParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v5, :cond_4

    move-object v5, p1

    check-cast v5, Lcom/android/internal/telephony/cat/SendUSSDParams;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/SendUSSDParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5, v8}, Lcom/android/internal/telephony/PhoneBase;->setmMmiInitBySTK(Z)V

    goto :goto_0
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 13
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v9, 0x0

    .local v9, "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    iget v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->handleSessionEnd()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v3, :cond_0

    iget-object v9, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v9    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v9, Lcom/android/internal/telephony/cat/CommandParams;

    .restart local v9    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v9, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v9, v1}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    :pswitch_3
    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/cat/CommandParams;

    move-object v9, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne v1, v3, :cond_3

    const/4 v1, 0x1

    invoke-direct {p0, v9, v1}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto :goto_0

    :catch_0
    move-exception v10

    .local v10, "e":Ljava/lang/ClassCastException;
    const-string v1, "Fail to parse proactive command"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v2}, Lcom/android/internal/telephony/cat/CommandDetails;-><init>()V

    .local v2, "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    iget-object v1, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v12

    .local v12, "rawData":[B
    const/4 v11, 0x0

    .local v11, "lengthOffset":I
    const/4 v1, 0x1

    aget-byte v1, v12, v1

    const/16 v3, -0x7f

    if-ne v1, v3, :cond_2

    const/4 v11, 0x1

    :cond_2
    add-int/lit8 v1, v11, 0x4

    aget-byte v1, v12, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    add-int/lit8 v1, v11, 0x5

    aget-byte v1, v12, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    add-int/lit8 v1, v11, 0x6

    aget-byte v1, v12, v1

    and-int/lit16 v1, v1, 0xff

    iput v1, v2, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    sget-object v3, Lcom/android/internal/telephony/cat/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    .end local v2    # "cmdDet":Lcom/android/internal/telephony/cat/CommandDetails;
    .end local v10    # "e":Ljava/lang/ClassCastException;
    .end local v11    # "lengthOffset":I
    .end local v12    # "rawData":[B
    :cond_3
    iget-object v4, v9, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v5, p1, Lcom/android/internal/telephony/cat/RilMessage;->mResCode:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_0

    :pswitch_4
    iget-object v9, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    .end local v9    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    check-cast v9, Lcom/android/internal/telephony/cat/CommandParams;

    .restart local v9    # "cmdParams":Lcom/android/internal/telephony/cat/CommandParams;
    if-eqz v9, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v9, v1}, Lcom/android/internal/telephony/cat/CatService;->handleCommand(Lcom/android/internal/telephony/cat/CommandParams;Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SESSION END on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    const/4 v0, 0x0

    .local v0, "intent":Landroid/content/Intent;
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v1

    if-eq v3, v1, :cond_0

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.intent.action.stk2.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    const-string v1, "SLOT_ID"

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_STK_COMMANDS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "LGT"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/CatService;->bBIPSuccess:Z

    if-ne v1, v3, :cond_1

    const-string v1, "broadcasting com.sec.android.lgt.bip.SUCCESS"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "com.sec.android.lgt.bip.SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iput-boolean v4, p0, Lcom/android/internal/telephony/cat/CatService;->bBIPSuccess:Z

    :cond_1
    return-void

    :cond_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.stk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method

.method public static isBIPCmdBeingProcessed()Z
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDisabledCmd(Ljava/lang/String;)Z
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->disabledCmdList:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->disabledCmdList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->disabledCmdList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .end local v0    # "i":I
    :cond_0
    return v1

    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isInCall()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    .local v1, "callState":Z
    const/4 v2, 0x0

    .local v2, "foregroundCallState":Lcom/android/internal/telephony/Call$State;
    const/4 v0, 0x0

    .local v0, "backgroundCallState":Lcom/android/internal/telephony/Call$State;
    const/4 v4, 0x0

    .local v4, "ringingCallState":Lcom/android/internal/telephony/Call$State;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    sget-object v5, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v5, v5, v3

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v5, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v5, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    if-nez v1, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Is in call: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    return v1
.end method

.method private isSetUpMenu(Ljava/lang/String;)Z
    .locals 5
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, "rawData":[B
    const/4 v0, 0x0

    .local v0, "lengthOffset":I
    aget-byte v3, v1, v2

    const/16 v4, -0x7f

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v3, v0, 0x5

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x25

    if-ne v3, v4, :cond_1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isStkAppInstalled()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x0

    .local v1, "intent":Landroid/content/Intent;
    iget v6, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v6}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v6

    if-eq v4, v6, :cond_0

    const/4 v6, 0x3

    iget v7, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v7}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v7

    if-ne v6, v7, :cond_1

    :cond_0
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v6, "com.samsung.intent.action.stk2.command"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v3, v1, v6}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .local v0, "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-nez v0, :cond_2

    move v2, v5

    .local v2, "numReceiver":I
    :goto_1
    if-lez v2, :cond_3

    :goto_2
    return v4

    .end local v0    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "numReceiver":I
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    .end local v1    # "intent":Landroid/content/Intent;
    const-string v6, "android.intent.action.stk.command"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v1    # "intent":Landroid/content/Intent;
    goto :goto_0

    .restart local v0    # "broadcastReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    .restart local v2    # "numReceiver":I
    :cond_3
    move v4, v5

    goto :goto_2
.end method

.method private isSupportedSetupEventCommand(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 7
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/CatCmdMessage;

    .prologue
    const/4 v2, 0x1

    .local v2, "flag":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v5

    iget-object v5, v5, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    if-nez v5, :cond_1

    const-string v5, "EventList is null"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_0
    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v5

    iget-object v0, v5, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, v0, v3

    .local v1, "eventVal":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x0

    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private launchIdleText()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v6, "launchIdleText"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    .local v0, "msg":Lcom/android/internal/telephony/cat/TextMessage;
    const/16 v2, 0x14d

    .local v2, "notificationId":I
    iget v6, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    if-ne v6, v10, :cond_0

    const/16 v2, 0x1bc

    :cond_0
    iget-object v6, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v6, :cond_1

    const-string v6, "REMOVE IDLE TEXT "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v2}, Landroid/app/NotificationManager;->cancel(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v6, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "REMOVE IDLE TEXT  due to text length is 0"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-class v9, Lcom/android/internal/telephony/cat/CatService;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v6, v11, v7, v11}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .local v1, "notificationBuilder":Landroid/app/Notification$Builder;
    const-string v6, "gsm.STK_SETUP_MENU"

    iget v7, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v7}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v7

    invoke-static {v6, v7}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .local v4, "stkProp":Ljava/lang/String;
    const-string v6, ""

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "title":Ljava/lang/String;
    if-eqz v5, :cond_4

    invoke-virtual {v1, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_1
    const v6, 0x108077e

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    iget-boolean v6, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v6, :cond_3

    iget-object v6, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v6, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1060059

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    :cond_4
    const-string v6, ""

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method

.method private launchSimRefreshMsgAndCancelNoti(I)V
    .locals 8
    .param p1, "refreshResult"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0xfde8

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    const/16 v1, 0x14d

    .local v1, "notificationId":I
    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    if-ne v2, v6, :cond_1

    const/16 v1, 0x1bc

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget v2, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v2

    if-eq v7, v2, :cond_2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v3

    if-eq v2, v3, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_RemoveToastDuringStkRefresh"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v0, 0x0

    .local v0, "message":Ljava/lang/String;
    if-eq p1, v6, :cond_4

    if-nez p1, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/String;

    .end local v0    # "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x1040943

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v0    # "message":Ljava/lang/String;
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_5
    if-ne p1, v7, :cond_2

    new-instance v0, Ljava/lang/String;

    .end local v0    # "message":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const v3, 0x1040944

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v0    # "message":Ljava/lang/String;
    goto :goto_1
.end method

.method private loadBackUpProactiveCmd()Lcom/android/internal/telephony/cat/RilMessage;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v4, "backUpProactiveCmd"

    iget v5, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v5}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .local v2, "lPrefName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .local v3, "pref":Landroid/content/SharedPreferences;
    if-nez v3, :cond_0

    const-string v4, "load back up SharedPreferences open error"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    const-string v4, "id"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .local v1, "id":I
    const-string v4, "data"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "data":Ljava/lang/String;
    new-instance v4, Lcom/android/internal/telephony/cat/RilMessage;

    invoke-direct {v4, v1, v0}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private removeMenu(Lcom/android/internal/telephony/cat/Menu;)Z
    .locals 5
    .param p1, "menu"    # Lcom/android/internal/telephony/cat/Menu;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v3, v1, :cond_0

    iget-object v3, p1, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-nez v3, :cond_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "Unable to get Menu\'s items size"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private saveBackUpProactiveCmd(Lcom/android/internal/telephony/cat/RilMessage;)V
    .locals 5
    .param p1, "rilMsg"    # Lcom/android/internal/telephony/cat/RilMessage;

    .prologue
    const-string v3, "backUpProactiveCmd"

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v4}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/samsung/android/telephony/MultiSimManager;->appendSimSlot(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .local v1, "lPrefName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .local v2, "pref":Landroid/content/SharedPreferences;
    if-nez v2, :cond_0

    const-string v3, "save back up SharedPreferences open error"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const-string v3, "id"

    iget v4, p1, Lcom/android/internal/telephony/cat/RilMessage;->mId:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v4, "data"

    iget-object v3, p1, Lcom/android/internal/telephony/cat/RilMessage;->mData:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private sendMenuSelection(IZ)V
    .locals 9
    .param p1, "menuId"    # I
    .param p2, "helpRequired"    # Z

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .local v4, "tag":I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_RIL_NTTSTK"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit8 v4, v5, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p2, :cond_0

    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .local v3, "rawData":[B
    array-length v5, v3

    add-int/lit8 v2, v5, -0x2

    .local v2, "len":I
    int-to-byte v5, v2

    aput-byte v5, v3, v7

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .local v1, "hexString":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    return-void

    .end local v1    # "hexString":Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "rawData":[B
    :cond_1
    sget-object v5, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    goto :goto_0
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/SSReleaseCompleteNotification;Lcom/android/internal/telephony/cat/ResponseData;)V
    .locals 8
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "data"    # Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    .param p4, "resp"    # Lcom/android/internal/telephony/cat/ResponseData;

    .prologue
    const-string v6, " sendTerminalResponse"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v6, "(cmdDet == null) "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v5

    .local v5, "tag":I
    iget-boolean v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v6, :cond_1

    or-int/lit16 v5, v5, 0x80

    :cond_1
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v6, 0x82

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v6, 0x81

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v3, 0x0

    .local v3, "length":I
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v7, 0x11

    if-ne v6, v7, :cond_8

    const-string v6, " making Send SS Terminal Response "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v6, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->dataLen:I

    if-eqz v6, :cond_2

    iget v6, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->dataLen:I

    add-int/lit8 v3, v6, 0x1

    :cond_2
    if-nez v3, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v6, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->params:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    const-string v6, " SS Release complete error info "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x34

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    const/4 v4, 0x0

    .local v4, "rawData":[B
    :try_start_0
    iget-object v6, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_2
    if-eqz v4, :cond_4

    const/4 v6, 0x0

    iget v7, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v0, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .end local v4    # "rawData":[B
    :cond_4
    :goto_3
    if-eqz p4, :cond_5

    invoke-virtual {p4, v0}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .restart local v4    # "rawData":[B
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .local v2, "hexString":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TERMINAL RESPONSE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto/16 :goto_0

    .end local v2    # "hexString":Ljava/lang/String;
    .end local v4    # "rawData":[B
    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne p2, v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getHasIcon()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_7

    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    :cond_7
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    .restart local v4    # "rawData":[B
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "fail make additionalInfo"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "rawData":[B
    :cond_8
    iget v6, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v7, 0x12

    if-ne v6, v7, :cond_4

    const-string v6, " making Send USSD Terminal Response "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v6, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->params:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_a

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v6, " USSD result error "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v6, 0x37

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v4, 0x0

    .restart local v4    # "rawData":[B
    :try_start_1
    iget-object v6, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :goto_4
    if-eqz v4, :cond_4

    const/4 v6, 0x0

    aget-byte v6, v4, v6

    const/16 v7, 0x12

    if-ne v6, v7, :cond_9

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-byte v7, v4, v6

    :cond_9
    const/4 v6, 0x0

    iget v7, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v0, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_3

    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    const-string v6, "fail make additionalInfo"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "rawData":[B
    :cond_a
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v6, :cond_b

    sget-object v6, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne p2, v6, :cond_b

    iget-object v6, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getHasIcon()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    :cond_b
    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v6, 0xd

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v4, 0x0

    .restart local v4    # "rawData":[B
    :try_start_2
    iget-object v6, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->data:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v4

    :goto_5
    if-eqz v4, :cond_4

    array-length v6, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_4

    const/4 v6, 0x1

    aget-byte v6, v4, v6

    add-int/lit8 v6, v6, 0x1

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0x7f

    if-le v6, v7, :cond_c

    const/16 v6, 0x81

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_c
    const/4 v6, 0x1

    aget-byte v6, v4, v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v6, 0x0

    aget-byte v6, v4, v6

    const/16 v7, 0x11

    if-ne v6, v7, :cond_e

    const/4 v6, 0x0

    const/16 v7, 0x8

    aput-byte v7, v4, v6

    :cond_d
    :goto_6
    const/4 v6, 0x0

    aget-byte v6, v4, v6

    and-int/lit8 v6, v6, 0xf

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v6, 0x2

    :try_start_3
    iget v7, p3, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->dataLen:I

    invoke-virtual {v0, v4, v6, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    :catch_2
    move-exception v1

    .local v1, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v6, "fail make ussd string"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .end local v1    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :catch_3
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "fail make additionalInfo"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_e
    const/4 v6, 0x0

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xf0

    if-nez v6, :cond_d

    const-string v6, "CBS DCS for GSM 7bit will be changed to SMS DCS for GSM 7bit!!! "

    invoke-static {p0, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput-byte v7, v4, v6

    goto :goto_6
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V
    .locals 12
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "resultCode"    # Lcom/android/internal/telephony/cat/ResultCode;
    .param p3, "includeAdditionalInfo"    # Z
    .param p4, "additionalInfo"    # I
    .param p5, "resp"    # Lcom/android/internal/telephony/cat/ResponseData;

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .local v2, "cmdInput":Lcom/android/internal/telephony/cat/Input;
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v2

    :cond_2
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v8

    .local v8, "tag":I
    iget-boolean v9, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v9, :cond_3

    or-int/lit16 v8, v8, 0x80

    :cond_3
    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v9, 0x3

    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v9, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandNumber:I

    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v9, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v9, p1, Lcom/android/internal/telephony/cat/CommandDetails;->commandQualifier:I

    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_NTTSTK"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit8 v8, v9, 0x0

    :goto_1
    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v9, 0x82

    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v9, 0x81

    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v9, :cond_4

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne p2, v9, :cond_4

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasTextAttribute()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_4

    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_WITH_PARTIAL_COMPREHENSION:Lcom/android/internal/telephony/cat/ResultCode;

    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v9, :cond_5

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne p2, v9, :cond_5

    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getHasIcon()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    sget-object p2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    :cond_5
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v8

    iget-boolean v9, p1, Lcom/android/internal/telephony/cat/CommandDetails;->compRequired:Z

    if-eqz v9, :cond_6

    or-int/lit16 v8, v8, 0x80

    :cond_6
    invoke-virtual {v1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p3, :cond_b

    const/4 v6, 0x2

    .local v6, "length":I
    :goto_2
    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/ResultCode;->value()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p3, :cond_7

    move/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_7
    if-eqz p5, :cond_c

    move-object/from16 v0, p5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    :goto_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .local v7, "rawData":[B
    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .local v4, "hexString":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    invoke-interface {v9, v4, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    const/4 v9, 0x0

    sput-object v9, Lcom/android/internal/telephony/cat/CatService;->mBIPCurrntCmd:Lcom/android/internal/telephony/cat/CommandParams;

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_RIL_BIPOTAUsimRegistration"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "LGT"

    aput-object v11, v9, v10

    invoke-static {v9}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    const-string v9, "true"

    const-string v10, "ril.domesticOtaStart"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget v9, p1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v9}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    .local v3, "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cmdType : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "resultCode : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v9, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-eq v3, v9, :cond_8

    sget-object v9, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne v3, v9, :cond_0

    :cond_8
    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/cat/ResultCode;

    if-eq p2, v9, :cond_9

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->BIP_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    if-ne p2, v9, :cond_0

    :cond_9
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.sec.android.sktota.usim.FAIL"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v3    # "cmdType":Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .end local v4    # "hexString":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "length":I
    .end local v7    # "rawData":[B
    :cond_a
    sget-object v9, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v8

    goto/16 :goto_1

    :cond_b
    const/4 v6, 0x1

    goto/16 :goto_2

    .restart local v6    # "length":I
    :cond_c
    invoke-direct {p0, p1, p2, v2, v1}, Lcom/android/internal/telephony/cat/CatService;->encodeOptionalTags(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/cat/Input;Ljava/io/ByteArrayOutputStream;)V

    goto/16 :goto_3
.end method

.method private validateResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)Z
    .locals 3
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    const/4 v0, 0x0

    .local v0, "validResponse":Z
    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-eq v1, v2, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v1, v1, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    sget-object v2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    if-ne v1, v2, :cond_2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CmdType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/internal/telephony/cat/CatResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CommandDetails;->compareTo(Lcom/android/internal/telephony/cat/CommandDetails;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isResponse for last valid cmd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 5

    .prologue
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v1, "Disposing CatService object"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x14d

    .local v0, "notificationId":I
    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/16 v0, 0x1bc

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v1, v1, v3

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSessionEnd(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatProactiveCmd(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatEvent(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCallSetUp(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCcAlphaNotify(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForIccRefresh(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnReleaseCompleteMessageRegistrant(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSendDTMFResult(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSendSmsResult(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatCallControlResult(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/PhoneBase;->unregisterForDisconnect(Landroid/os/Handler;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v1, v1, v3

    if-eqz v1, :cond_2

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v1, v1, v3

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->dispose()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->dispose()V

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/cat/CatService;->sInstance:[Lcom/android/internal/telephony/cat/CatService;

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    const/4 v4, 0x0

    aput-object v4, v1, v3

    :cond_3
    :goto_0
    monitor-exit v2

    return-void

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: invaild slot id: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "notificationId":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 1

    .prologue
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 27
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleMessage["

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "]"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    new-instance v2, Ljava/lang/AssertionError;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unrecognized CAT command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ril message arrived,slotid:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v19, 0x0

    .local v19, "data":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .local v14, "ar":Landroid/os/AsyncResult;
    if-eqz v14, :cond_0

    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v19, v0

    .end local v19    # "data":Ljava/lang/String;
    check-cast v19, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v14    # "ar":Landroid/os/AsyncResult;
    .restart local v19    # "data":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance v7, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v19

    invoke-direct {v7, v8, v0}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    .end local v19    # "data":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .restart local v14    # "ar":Landroid/os/AsyncResult;
    :catch_0
    move-exception v20

    .local v20, "e":Ljava/lang/ClassCastException;
    goto :goto_0

    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "e":Ljava/lang/ClassCastException;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mMsgDecoder:Lcom/android/internal/telephony/cat/RilMessageDecoder;

    new-instance v7, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->what:I

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/android/internal/telephony/cat/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/cat/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    :sswitch_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "LGT"

    aput-object v8, v2, v7

    invoke-static {v2}, Lcom/android/internal/telephony/TelephonyFeatures;->isMainOperatorSpecific([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatSessionEnd(Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatProactiveCmd(Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, p0

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnCatEvent(Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-interface {v2, v0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->setOnCatEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0

    :sswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/RilMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->handleRilMsg(Lcom/android/internal/telephony/cat/RilMessage;)V

    goto :goto_0

    :sswitch_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatResponseMessage;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->handleCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    goto :goto_0

    :sswitch_5
    const-string v2, "MSG_ID_ICC_CHANGED"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->updateIccAvailability()V

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "MSG_ID_ICC_REFRESH"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_4

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .restart local v14    # "ar":Landroid/os/AsyncResult;
    if-eqz v14, :cond_3

    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_3

    sget-object v7, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    :try_start_1
    iget-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    .local v22, "refreshRsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    const-string v2, "send refresh"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->stkRefreshReset:Z

    :cond_2
    move-object/from16 v0, v22

    iget v2, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->launchSimRefreshMsgAndCancelNoti(I)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .end local v22    # "refreshRsp":Lcom/android/internal/telephony/uicc/IccRefreshResponse;
    :catch_1
    move-exception v20

    .restart local v20    # "e":Ljava/lang/ClassCastException;
    const-string v2, "ClassCastException from SIM_REFRESH"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v20    # "e":Ljava/lang/ClassCastException;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Icc REFRESH with exception: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v14    # "ar":Landroid/os/AsyncResult;
    :cond_4
    const-string v2, "IccRefresh Message is null"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "Received CAT CC Alpha message from card"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .restart local v14    # "ar":Landroid/os/AsyncResult;
    if-eqz v14, :cond_5

    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->broadcastAlphaMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v2, "CAT Alpha message: ar.result is null"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v14    # "ar":Landroid/os/AsyncResult;
    :cond_6
    const-string v2, "CAT Alpha message: msg.obj is null"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "MSG_ID_PHONE_DISCONNECT"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSetupCallDisc:Z

    const/4 v7, 0x1

    if-ne v2, v7, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSetupCallDisc:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatService;->SetupCallFromStk(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    iget v3, v2, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->event:I

    .local v3, "event":I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    iget v4, v2, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->sourceID:I

    .local v4, "sourceId":I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    iget v5, v2, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->destinationID:I

    .local v5, "destinationId":I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    iget-object v6, v2, Lcom/android/internal/telephony/cat/CatEnvelopeMessage;->additionalInfo:[B

    .local v6, "additionalInfo":[B
    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/cat/CatService;->eventDownload(III[BZ)V

    goto/16 :goto_0

    .end local v3    # "event":I
    .end local v4    # "sourceId":I
    .end local v5    # "destinationId":I
    .end local v6    # "additionalInfo":[B
    :sswitch_a
    const-string v2, "handleMsg : MSG_ID_RELEASE_COMPLETE_MESSAGE"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    const/16 v25, 0x0

    .local v25, "ssReleaseCompleteNotification":Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_7

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .restart local v14    # "ar":Landroid/os/AsyncResult;
    if-eqz v14, :cond_7

    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_7

    :try_start_2
    iget-object v0, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v25, v0

    .end local v25    # "ssReleaseCompleteNotification":Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    check-cast v25, Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    .end local v14    # "ar":Landroid/os/AsyncResult;
    .restart local v25    # "ssReleaseCompleteNotification":Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    :cond_7
    if-nez v25, :cond_8

    new-instance v25, Lcom/android/internal/telephony/SSReleaseCompleteNotification;

    .end local v25    # "ssReleaseCompleteNotification":Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    invoke-direct/range {v25 .. v25}, Lcom/android/internal/telephony/SSReleaseCompleteNotification;-><init>()V

    .restart local v25    # "ssReleaseCompleteNotification":Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    :cond_8
    const-string v2, "got ReleaseComplete and need it"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCallType : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v7, 0x12

    if-ne v2, v7, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SSReleaseCompleteNotification.status : "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v25

    iget v7, v0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->status:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->status:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_9

    const/4 v2, 0x1

    const v7, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    const-string v2, " WAITING_USSD_ACTION_REQUIRE_TIME "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v25    # "ssReleaseCompleteNotification":Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    :catch_2
    move-exception v20

    .restart local v20    # "e":Ljava/lang/ClassCastException;
    goto/16 :goto_0

    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "e":Ljava/lang/ClassCastException;
    .restart local v25    # "ssReleaseCompleteNotification":Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    :cond_9
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->status:I

    const/16 v7, 0x64

    if-ne v2, v7, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USSD_SS_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->status:I

    if-eqz v2, :cond_b

    move-object/from16 v0, v25

    iget v2, v0, Lcom/android/internal/telephony/SSReleaseCompleteNotification;->status:I

    const/4 v7, 0x6

    if-le v2, v7, :cond_c

    :cond_b
    const-string v2, "XSE"

    sget-object v7, Lcom/android/internal/telephony/TelephonyFeatures;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "XMM6262"

    const-string v7, "ril.modem.board"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    const v7, 0xea60

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    const-string v2, " No need to send TR to CP "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v2, v7, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_SS:Lcom/android/internal/telephony/cat/CallType;

    if-eq v2, v7, :cond_d

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallType:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallType;->fromInt(I)Lcom/android/internal/telephony/cat/CallType;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallType;->CALL_TYPE_MO_USSD:Lcom/android/internal/telephony/cat/CallType;

    if-ne v2, v7, :cond_e

    :cond_d
    const-string v2, "send fail TR "

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v7, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v2, v7, v1, v8}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;Lcom/android/internal/telephony/SSReleaseCompleteNotification;Lcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_f
    const-string v2, "mCurrntCmd = null error handle is needed"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v25    # "ssReleaseCompleteNotification":Lcom/android/internal/telephony/SSReleaseCompleteNotification;
    :pswitch_2
    const-string v2, "mWaitingSetupCallHoldResult = true"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "MSG_ID_TIMEOUT timeout!!!"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v2, :cond_10

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    packed-switch v2, :pswitch_data_1

    :cond_11
    :goto_1
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v7, 0x11

    if-ne v2, v7, :cond_13

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v2, v7, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->SS_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1

    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v2, v2, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v7, 0x12

    if-ne v2, v7, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v2, v7, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USSD_RETURN_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto :goto_1

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x7

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    :pswitch_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v2, v7, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    if-nez v2, :cond_16

    const-string v2, "setup call address is null"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_16
    new-instance v21, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v8

    iget-object v8, v8, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->address:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    move-object/from16 v0, v21

    invoke-direct {v0, v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v21, "intent":Landroid/content/Intent;
    if-nez v21, :cond_17

    const-string v2, "fail to make call intent"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_17
    const/high16 v2, 0x10000000

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v7}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v7

    if-eq v2, v7, :cond_18

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v7}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v7

    if-ne v2, v7, :cond_1a

    :cond_18
    const-string v2, "simSlot"

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "simnum"

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    const-string v7, "telecom"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/telecom/TelecomManager;

    .local v26, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual/range {v26 .. v26}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v13

    .local v13, "accountHandle":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    const-string v7, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    const/4 v7, 0x3

    if-ne v2, v7, :cond_19

    const-string v2, "startTimeOut(WAITING_SETUP_CALL_CONNECTED_RESULT)"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    const/16 v7, 0x7d0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    :goto_2
    :try_start_3
    const-string v2, "*************call intent for CDMA 1"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v20

    .local v20, "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ActivityNotFoundException 1"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v20    # "e":Landroid/content/ActivityNotFoundException;
    :cond_19
    const-string v2, "WAITING_SETUP_CALL_DISCONNECT_RESULT startTimeOut(WAITING_SETUP_CALL)"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x4

    const/16 v7, 0x2710

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v7}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    goto :goto_2

    .end local v13    # "accountHandle":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/PhoneAccountHandle;>;"
    .end local v26    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_1a
    const-string v2, "*************call intent"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->setSimInitEvent(Landroid/os/Message;)V

    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v20

    .restart local v20    # "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ActivityNotFoundException 2"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .end local v20    # "e":Landroid/content/ActivityNotFoundException;
    .end local v21    # "intent":Landroid/content/Intent;
    :pswitch_7
    const-string v2, "WAITING_SETUP_CALL_CONNECTED_RESULT"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    goto/16 :goto_1

    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    :pswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_1

    :sswitch_c
    const-string v2, "MSG_ID_SEND_DTMF_RESULT"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .restart local v14    # "ar":Landroid/os/AsyncResult;
    iget-object v2, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1c

    iget-object v0, v14, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    check-cast v18, Lcom/android/internal/telephony/CommandException;

    .local v18, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v7, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x7

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_1b
    const-string v2, "send DTMF Error except GENERIC_FAILURE!!!"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .end local v18    # "ce":Lcom/android/internal/telephony/CommandException;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .end local v14    # "ar":Landroid/os/AsyncResult;
    :sswitch_d
    const-string v2, "handleMsg : MSG_ID_SEND_SMS_RESULT"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The Msg ID data:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v24, v0

    .local v24, "result":[I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .restart local v14    # "ar":Landroid/os/AsyncResult;
    if-eqz v14, :cond_1d

    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1d

    :try_start_5
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v24, v0
    :try_end_5
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_5} :catch_5

    .end local v14    # "ar":Landroid/os/AsyncResult;
    :cond_1d
    const/4 v2, 0x0

    aget v2, v24, v2

    sparse-switch v2, :sswitch_data_1

    const-string v2, "SMS SEND GENERIC FAIL"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v2, v7, :cond_22

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .restart local v14    # "ar":Landroid/os/AsyncResult;
    :catch_5
    move-exception v20

    .local v20, "e":Ljava/lang/ClassCastException;
    goto/16 :goto_0

    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "e":Ljava/lang/ClassCastException;
    :sswitch_e
    const-string v2, "SMS SEND OK"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v2, v7, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :sswitch_f
    const-string v2, "SMS SEND FAIL - MEMORY NOT AVAILABLE"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v2, v7, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :sswitch_10
    const-string v2, "SMS SEND FAIL RETRY"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v2, v7, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :sswitch_11
    const-string v2, "NO RP-ACK"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCallControlResultCode:I

    invoke-static {v2}, Lcom/android/internal/telephony/cat/CallControlResult;->fromInt(I)Lcom/android/internal/telephony/cat/CallControlResult;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/cat/CallControlResult;

    if-ne v2, v7, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->USIM_CALL_CONTROL_PERMANENT:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .end local v24    # "result":[I
    :sswitch_12
    const-string v2, "handleMsg : MSG_ID_CALL_CONTROL_RESULT"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v15, 0x0

    .local v15, "callcontrol_result":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_23

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .restart local v14    # "ar":Landroid/os/AsyncResult;
    if-eqz v14, :cond_23

    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_23

    :try_start_6
    iget-object v15, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v15    # "callcontrol_result":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_6 .. :try_end_6} :catch_6

    .end local v14    # "ar":Landroid/os/AsyncResult;
    .restart local v15    # "callcontrol_result":Ljava/lang/String;
    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call control result data"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/cat/CatService;->handleCallControlResultNoti(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v15    # "callcontrol_result":Ljava/lang/String;
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    :catch_6
    move-exception v20

    .restart local v20    # "e":Ljava/lang/ClassCastException;
    goto/16 :goto_0

    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v20    # "e":Ljava/lang/ClassCastException;
    :sswitch_13
    const-string v2, "pause 3 secs"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->processDTMFString()V

    goto/16 :goto_0

    :sswitch_14
    const/16 v23, 0x0

    .local v23, "res":Lcom/android/internal/telephony/cat/CatBIPResponseMessage;
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    .end local v23    # "res":Lcom/android/internal/telephony/cat/CatBIPResponseMessage;
    check-cast v23, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;

    .restart local v23    # "res":Lcom/android/internal/telephony/cat/CatBIPResponseMessage;
    move-object/from16 v0, v23

    iget-object v8, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    move-object/from16 v0, v23

    iget-object v9, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->resCode:Lcom/android/internal/telephony/cat/ResultCode;

    move-object/from16 v0, v23

    iget-boolean v10, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->hasAdditionalInfo:Z

    move-object/from16 v0, v23

    iget v11, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->AdditionalInfo:I

    move-object/from16 v0, v23

    iget-object v12, v0, Lcom/android/internal/telephony/cat/CatBIPResponseMessage;->data:Lcom/android/internal/telephony/cat/ResponseData;

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    goto/16 :goto_0

    .end local v23    # "res":Lcom/android/internal/telephony/cat/CatBIPResponseMessage;
    :sswitch_15
    const-string v2, "Send InCallScreen Intent"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_7
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/cat/CatService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/content/Intent;

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v20

    .local v20, "e":Landroid/content/ActivityNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ActivityNotFoundException"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v20    # "e":Landroid/content/ActivityNotFoundException;
    :sswitch_16
    const-string v2, "handleMsg : MSG_ID_CALL_STATUS"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    const/4 v7, 0x4

    if-ne v2, v7, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The Msg ID data:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->what:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .local v17, "callstatus":[I
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_24

    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/AsyncResult;

    .restart local v14    # "ar":Landroid/os/AsyncResult;
    if-eqz v14, :cond_24

    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_24

    :try_start_8
    iget-object v2, v14, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v0, v2

    check-cast v0, [I

    move-object/from16 v17, v0
    :try_end_8
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_8} :catch_8

    .end local v14    # "ar":Landroid/os/AsyncResult;
    :cond_24
    const/4 v2, 0x0

    aget v16, v17, v2

    .local v16, "callstat":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Call status result data"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    if-eqz v2, :cond_25

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/cat/CallStatus;->fromInt(I)Lcom/android/internal/telephony/cat/CallStatus;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallStatus;->CALL_STATUS_CONNECTED:Lcom/android/internal/telephony/cat/CallStatus;

    if-ne v2, v7, :cond_25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    :cond_25
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    if-eqz v2, :cond_1

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/cat/CallStatus;->fromInt(I)Lcom/android/internal/telephony/cat/CallStatus;

    move-result-object v2

    sget-object v7, Lcom/android/internal/telephony/cat/CallStatus;->CALL_STATUS_RELEASED:Lcom/android/internal/telephony/cat/CallStatus;

    if-ne v2, v7, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v8, v2, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v9, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/telephony/cat/CatService;->mSendTerminalResponseExpectedByCallSetup:Z

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    goto/16 :goto_0

    .end local v16    # "callstat":I
    .restart local v14    # "ar":Landroid/os/AsyncResult;
    :catch_8
    move-exception v20

    .local v20, "e":Ljava/lang/ClassCastException;
    goto/16 :goto_0

    .end local v14    # "ar":Landroid/os/AsyncResult;
    .end local v17    # "callstatus":[I
    .end local v20    # "e":Ljava/lang/ClassCastException;
    :sswitch_17
    const-string v2, "Ril Connected so we send Stk Running Request"

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_18
    const-string v2, "SIM ready. Reporting STK service running now..."

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v2, v7}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x5 -> :sswitch_0
        0x6 -> :sswitch_4
        0x7 -> :sswitch_18
        0x8 -> :sswitch_5
        0x9 -> :sswitch_7
        0xa -> :sswitch_3
        0x14 -> :sswitch_2
        0x18 -> :sswitch_16
        0x1e -> :sswitch_6
        0x65 -> :sswitch_a
        0x66 -> :sswitch_b
        0x67 -> :sswitch_c
        0x68 -> :sswitch_d
        0x69 -> :sswitch_12
        0x6a -> :sswitch_9
        0x6b -> :sswitch_8
        0x6c -> :sswitch_13
        0x6d -> :sswitch_14
        0x6e -> :sswitch_15
        0x6f -> :sswitch_17
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_e
        0x8016 -> :sswitch_f
        0x802a -> :sswitch_10
        0x806f -> :sswitch_11
    .end sparse-switch
.end method

.method public hasIMSCall()Z
    .locals 14

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .local v6, "defaultPhone":Lcom/android/internal/telephony/Phone;
    const/4 v10, 0x0

    .local v10, "retValue":Z
    if-eqz v6, :cond_2

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .local v0, "activeCall":Lcom/android/internal/telephony/Call;
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .local v7, "holdCall":Lcom/android/internal/telephony/Call;
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    .local v11, "ringingCall":Lcom/android/internal/telephony/Call;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Call;

    .local v1, "call":Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    .local v5, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Connection;

    .local v4, "connection":Lcom/android/internal/telephony/Connection;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getCallDetails()Lcom/android/internal/telephony/CallDetails;

    move-result-object v2

    .local v2, "callDetails":Lcom/android/internal/telephony/CallDetails;
    if-eqz v2, :cond_1

    iget v12, v2, Lcom/android/internal/telephony/CallDetails;->call_domain:I

    const/4 v13, 0x2

    if-ne v12, v13, :cond_1

    const/4 v10, 0x1

    goto :goto_0

    .end local v0    # "activeCall":Lcom/android/internal/telephony/Call;
    .end local v1    # "call":Lcom/android/internal/telephony/Call;
    .end local v2    # "callDetails":Lcom/android/internal/telephony/CallDetails;
    .end local v3    # "calls":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    .end local v4    # "connection":Lcom/android/internal/telephony/Connection;
    .end local v5    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v7    # "holdCall":Lcom/android/internal/telephony/Call;
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "ringingCall":Lcom/android/internal/telephony/Call;
    :cond_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hasIMSCall : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v10
.end method

.method public isAirplaneMode()Z
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhone.mCM.getRadioState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V
    .locals 2
    .param p1, "resMsg"    # Lcom/android/internal/telephony/cat/CatResponseMessage;

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized onEventDownload(Lcom/android/internal/telephony/cat/CatEnvelopeMessage;)V
    .locals 2
    .param p1, "eventMsg"    # Lcom/android/internal/telephony/cat/CatEnvelopeMessage;

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v1, "onEventDownload()"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/16 v1, 0x6a

    :try_start_1
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method processDTMFString()V
    .locals 4

    .prologue
    const/16 v3, 0x70

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dtmfStringLength : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/cat/DtmfString;->dtmfStringLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "    DTMFString : <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/DtmfString;->dtfmString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, "countP":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v1, v1, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/cat/DtmfString;->dtmfStringLength:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v1, v1, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/cat/DtmfString;->dtmfStringLength:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->sendDtmfLastRequest(C)V

    :cond_0
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/cat/DtmfString;->dtmfStringLength:I

    mul-int/lit16 v2, v2, 0xdac

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/cat/CatService;->startTimeOut(II)V

    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_3

    add-int/lit8 v0, v0, 0x1

    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v1, v1, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/cat/DtmfString;->dtmfStringLength:I

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delay time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit16 v2, v0, 0xbb8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    mul-int/lit16 v2, v0, 0xbb8

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/cat/CatService;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v1, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    add-int/2addr v2, v0

    iput v2, v1, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget-object v1, v1, Lcom/android/internal/telephony/cat/DtmfString;->dtfmString:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v2, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->sendDtmfRequest(C)V

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mDtmfString:Lcom/android/internal/telephony/cat/DtmfString;

    iget v2, v1, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    goto/16 :goto_0
.end method

.method public registerPhone(Lcom/android/internal/telephony/PhoneBase;)Z
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    const-string v0, "CatService phone reloaded!"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x3

    iget v1, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->getPackageType(I)I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->registerPhone(Lcom/android/internal/telephony/PhoneBase;)V

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/PhoneBase;->unregisterForDisconnect(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v1, 0x6b

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    iget-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatBIPManager;->registerPhone(Lcom/android/internal/telephony/PhoneBase;)V

    goto :goto_0
.end method

.method sendDtmfLastRequest(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmfLastRequest ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x67

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    return-void
.end method

.method sendDtmfRequest(C)V
    .locals 2
    .param p1, "c"    # C

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendDtmfRequest ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    return-void
.end method

.method public declared-synchronized sendEnvelopeToTriggerBip()V
    .locals 7

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd6

    .local v4, "tag":I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v4, 0x19

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x2f

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v4, 0x82

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x82

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .local v3, "rawData":[B
    array-length v5, v3

    add-int/lit8 v2, v5, -0x2

    .local v2, "len":I
    const/4 v5, 0x1

    int-to-byte v6, v2

    aput-byte v6, v3, v5

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .local v1, "hexString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendEnvelopeToTriggerBip cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "hexString":Ljava/lang/String;
    .end local v2    # "len":I
    .end local v3    # "rawData":[B
    .end local v4    # "tag":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized sendEnvelopeToTriggerBipforOTA(Z)V
    .locals 7
    .param p1, "unreg"    # Z

    .prologue
    monitor-enter p0

    const/16 v5, 0x25

    :try_start_0
    new-array v3, v5, [B

    fill-array-data v3, :array_0

    .local v3, "sms_tpdu":[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd1

    .local v4, "tag":I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x34

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x83

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x98

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x33

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x26

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v5, 0x0

    const/16 v6, 0x25

    invoke-virtual {v0, v3, v5, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-eqz p1, :cond_0

    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .local v2, "rawData":[B
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .local v1, "hexString":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendEnvelopeToTriggerBipforOTA cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v1    # "hexString":Ljava/lang/String;
    .end local v2    # "rawData":[B
    :cond_0
    const/4 v5, 0x5

    :try_start_1
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "sms_tpdu":[B
    .end local v4    # "tag":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    nop

    :array_0
    .array-data 1
        -0x1ct
        0xat
        -0x68t
        0x33t
        0x11t
        0x11t
        0x11t
        0x11t
        0x7ft
        0x16t
        0xct
        0x1t
        0x9t
        0x15t
        0x57t
        0x32t
        0x36t
        0x14t
        0x2t
        0x70t
        0x0t
        0x0t
        0xft
        0xdt
        0x0t
        0x1t
        0x20t
        0x20t
        -0x50t
        0x0t
        0x6t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public declared-synchronized sendEnvelopeforSMSPPdownload([B[B)V
    .locals 9
    .param p1, "addr"    # [B
    .param p2, "tpdu"    # [B

    .prologue
    const/4 v7, 0x0

    monitor-enter p0

    if-eqz p2, :cond_0

    const/4 v8, 0x0

    :try_start_0
    aget-byte v6, p2, v8

    .local v6, "tpdu_len":I
    :goto_0
    if-gtz v6, :cond_1

    const-string v7, "sendEnvelopeforSMSPPdownload : tpdu is not exist!"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    .end local v6    # "tpdu_len":I
    :cond_0
    move v6, v7

    goto :goto_0

    .restart local v6    # "tpdu_len":I
    :cond_1
    if-eqz p1, :cond_4

    const/4 v8, 0x0

    :try_start_1
    aget-byte v0, p1, v8

    .local v0, "addr_len":I
    :goto_2
    if-lez v0, :cond_2

    add-int/lit8 v7, v0, 0x2

    :cond_2
    add-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v6, 0x2

    add-int v2, v7, v8

    .local v2, "data_len":I
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v1, "buf":Ljava/io/ByteArrayOutputStream;
    const/16 v5, 0xd1

    .local v5, "tag":I
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v7, 0x2

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v7, 0x83

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v7, 0x81

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-lez v0, :cond_3

    const/4 v7, 0x6

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v7, 0x1

    invoke-virtual {v1, p1, v7, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_3
    const/16 v7, 0xb

    invoke-virtual {v1, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v7, 0x1

    invoke-virtual {v1, p2, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .local v4, "rawData":[B
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .local v3, "hexString":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendEnvelopeforSMSPPdownload cmd: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p0, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v8, 0x0

    invoke-interface {v7, v3, v8}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0    # "addr_len":I
    .end local v1    # "buf":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "data_len":I
    .end local v3    # "hexString":Ljava/lang/String;
    .end local v4    # "rawData":[B
    .end local v5    # "tag":I
    .end local v6    # "tpdu_len":I
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .restart local v6    # "tpdu_len":I
    :cond_4
    move v0, v7

    goto :goto_2
.end method

.method public sendSessionEndTerminalResponseForAirplaneMode()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCurrntCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cat/CatService;->sendTerminalResponse(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/ResultCode;ZILcom/android/internal/telephony/cat/ResponseData;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized sentTerminalResponseForSetupMenu(Z)V
    .locals 1
    .param p1, "value"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/CatService;->isTerminalResponseForSEUPMENU:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEventListChannelStatus(Z)V
    .locals 1
    .param p1, "val"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    iput-boolean p1, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->monitorChannelStatusEvent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setEventListDataAvailable(Z)V
    .locals 1
    .param p1, "val"    # Z

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CatService;->mCatBIPMgr:Lcom/android/internal/telephony/cat/CatBIPManager;

    iput-boolean p1, v0, Lcom/android/internal/telephony/cat/CatBIPManager;->monitorDataDownloadEvent:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method startTimeOut(II)V
    .locals 4
    .param p1, "timeDest"    # I
    .param p2, "duration"    # I

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/CatService;->cancelTimeOut()V

    iput p1, p0, Lcom/android/internal/telephony/cat/CatService;->mTimeoutDest:I

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/cat/CatService;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/cat/CatService;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public update(Lcom/android/internal/telephony/CommandsInterface;Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 6
    .param p1, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "ic"    # Lcom/android/internal/telephony/uicc/UiccCard;

    .prologue
    const/4 v0, 0x0

    .local v0, "ca":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v1, 0x0

    .local v1, "ir":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz p3, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/cat/CatService;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v1, :cond_3

    :try_start_0
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v2, v2, v4

    if-eq v2, v1, :cond_3

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v2, v2, v4

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v2, v2, v4

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v2, v2, v4

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterForReady slotid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "instance : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v2, v2, v4

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    :cond_2
    const-string v2, "Reinitialize the Service with SIMRecords and UiccCardApplication"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aput-object v1, v2, v4

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aput-object v0, v2, v4

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mIccRecords:[Lcom/android/internal/telephony/uicc/IccRecords;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v2, v2, v4

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-virtual {v2, p0, v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v2, Lcom/android/internal/telephony/cat/CatService;->mUiccApplication:[Lcom/android/internal/telephony/uicc/UiccCardApplication;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    aget-object v2, v2, v4

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-virtual {v2, p0, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "registerForRecordsLoaded slotid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " instance:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method updateIccAvailability()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .local v1, "newState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    iget v4, p0, Lcom/android/internal/telephony/cat/CatService;->mSlotId:I

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .local v0, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v1

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    .local v2, "oldState":Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;
    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatService;->mCardState:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New Card State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Old Card State = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v2, v3, :cond_3

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v1, v3, :cond_3

    invoke-direct {p0, v1, v5}, Lcom/android/internal/telephony/cat/CatService;->broadcastCardStateAndIccRefreshResp(Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccRefreshResponse;)V

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->stkRefreshReset:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_PRESENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/cat/CatService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/cat/CatService;->stkRefreshReset:Z

    goto :goto_0
.end method
