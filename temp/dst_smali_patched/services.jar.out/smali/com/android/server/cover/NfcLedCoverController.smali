.class final Lcom/android/server/cover/NfcLedCoverController;
.super Ljava/lang/Object;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/NfcLedCoverController$1;,
        Lcom/android/server/cover/NfcLedCoverController$Command;,
        Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;,
        Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;,
        Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    }
.end annotation


# static fields
.field private static final CMD_INTERNAL_LED_ACCEPT_REJECT:I = 0x11

.field private static final CMD_INTERNAL_LED_CALL_INPROGRESS:I = 0x3

.field private static final CMD_INTERNAL_LED_REPLY:I = 0xd1

.field private static final CMD_LED_ALARM:I = 0x6

.field private static final CMD_LED_BATTERY_CHARGING:I = 0xc

.field private static final CMD_LED_BATTERY_CHARGING_WIRELESS:I = 0x13

.field private static final CMD_LED_BATTERY_CHARGING_WIRELESS_DELAY:J = 0x96L

.field private static final CMD_LED_BATTERY_LOW:I = 0xb

.field private static final CMD_LED_CALL_END:I = 0x4

.field private static final CMD_LED_CALL_INCOMING:I = 0x2

.field private static final CMD_LED_CALL_INPROGRESS:I = 0xfffe

.field private static final CMD_LED_CLEAR_ONGOING_EVENT:I = 0xfff0

.field private static final CMD_LED_CLOCK:I = 0xf

.field private static final CMD_LED_CLOCK_TIME_TICK:I = 0xffff

.field private static final CMD_LED_FACTORY_MODE:I = 0xe0

.field private static final CMD_LED_INDICATOR:I = 0x10

.field private static final CMD_LED_MISSED_EVENT:I = 0x9

.field private static final CMD_LED_MUSIC:I = 0xd

.field private static final CMD_LED_NEW_MESSAGE:I = 0x5

.field private static final CMD_LED_OFF:I = 0x12

.field private static final CMD_LED_POWER_ON:I = 0x1

.field private static final CMD_LED_VIDEO_CALL_INCOMING:I = 0x14

.field private static final CMD_LED_VOICE_RECORDER:I = 0xe

.field private static final CMD_LED_VOLUME:I = 0xa

.field private static final DEBUG:Z = true

.field private static final EVENT_RESULT_ACCEPT:B = 0x1t

.field private static final EVENT_RESULT_REJECT:B = 0x2t

.field private static final EVENT_TOUCH_POLL_INTERVAL:J = 0x64L

.field private static final EVENT_TYPE_ALARM:I = 0x1

.field private static final EVENT_TYPE_CALL:I = 0x0

.field private static final EVENT_TYPE_MAX:I = 0x4

.field private static final EVENT_TYPE_SCHEDULE:I = 0x3

.field private static final EVENT_TYPE_SYSTEM_INTERNAL_EVENT:I = 0x4

.field private static final EVENT_TYPE_TIMER:I = 0x2

.field private static final LED_COVER_RETRY_COUNT_MAX:I = 0xd

.field private static final LED_COVER_RETRY_DELAY:J = 0x1f4L

.field private static final LED_COVER_RETRY_DONE_INTENT_ACTION:Ljava/lang/String; = "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

.field private static final MSG_CLEAR_ONGOING_EVENT:I = 0x5

.field private static final MSG_LED_OFF_BY_SELF:I = 0x1

.field private static final MSG_NFC_LED_HANDLE_EVENT_RESPONSE:I = 0x3

.field private static final MSG_NFC_LED_POLL_EVENT_TOUCH:I = 0x2

.field private static final MSG_SEND_NFC_LED_DATA:I = 0x0

.field private static final MSG_SEND_NFC_LED_DATA_DELAYED:I = 0x4

.field private static final MSG_SEND_POWER_KEY_TO_COVER:I = 0x6

.field private static final RESPONSE_COMMAND_POS:I = 0x3

.field private static final RESPONSE_LEN_POS:I = 0x1

.field private static final SAFE_DEBUG:Z = true

.field private static final SYSTEM_EVENT_LED_OFF:I = 0x0

.field private static final SYSTEM_EVENT_POWER_BUTTON_OFF:I = 0x2

.field private static final SYSTEM_EVENT_POWER_BUTTON_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CoverManager.NfcLedCoverController"

.field private static TEST:I

.field private static final mResponsePattern:[B


# instance fields
.field private mCallDurationTimer:Ljava/util/Timer;

.field private mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

.field private mCallInProgressDisplay:Z

.field private mCallStartTime:J

.field private mCallTimerLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

.field private mIsLedCoverAttached:Z

.field private mIsLedOn:Z

.field private mLedCoverStartRetryCount:I

.field private mLedCoverTransceiveRetryCount:I

.field private mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

.field private mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPollingTouchEvents:Z

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPrevCommand:I

.field private mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

.field private testCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x10t
        0x6t
        -0x2ft
        0x0t
        -0x1t
        -0x1t
    .end array-data
.end method

.method constructor <init>(Landroid/os/Looper;Landroid/content/Context;)V
    .locals 4
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    iput-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    iput v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    iput v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    iput-object p2, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {p2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;-><init>(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "send leddata"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "pollTouch ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "touchResponse ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "onoff ledcover"

    invoke-virtual {v0, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_led_cover_test"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/cover/NfcLedCoverController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/cover/NfcLedCoverController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    iget v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/cover/NfcLedCoverController;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/cover/NfcLedCoverController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/cover/NfcLedCoverController;)[B
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->getCallDuration()[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/cover/NfcLedCoverController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/cover/NfcLedCoverController;[B)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # [B

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/cover/NfcLedCoverController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->sendCurrentClockCommand()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/cover/NfcLedCoverController;I[B)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # I
    .param p2, "x2"    # [B

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->handleSendDataToNfcLedCover(I[B)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/cover/NfcLedCoverController;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/cover/NfcLedCoverController;)Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;

    .prologue
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/cover/NfcLedCoverController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->handlePollEventTouch(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/cover/NfcLedCoverController;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController;->handleEventResponse(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/cover/NfcLedCoverController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/cover/NfcLedCoverController;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/NfcLedCoverController;->handleClearOngoingEvent(I)V

    return-void
.end method

.method private buildNfcCoverLedData(I[B)[B
    .locals 7
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez p2, :cond_0

    new-array p2, v5, [B

    .end local p2    # "data":[B
    aput-byte v6, p2, v6

    .restart local p2    # "data":[B
    :cond_0
    const/4 v2, 0x5

    .local v2, "nfcCommandLength":I
    invoke-direct {p0, p2}, Lcom/android/server/cover/NfcLedCoverController;->getLenByteValue([B)I

    move-result v1

    .local v1, "ledPacketLength":I
    add-int v3, v2, v1

    .local v3, "size":I
    add-int v4, v2, v1

    new-array v0, v4, [B

    .local v0, "genData":[B
    aput-byte v6, v0, v6

    const/16 v4, -0x5e

    aput-byte v4, v0, v5

    const/4 v4, 0x2

    aput-byte v6, v0, v4

    const/4 v4, 0x3

    aput-byte v6, v0, v4

    const/4 v4, 0x4

    int-to-byte v5, v1

    aput-byte v5, v0, v4

    const/4 v4, 0x5

    const/16 v5, 0x10

    aput-byte v5, v0, v4

    const/4 v4, 0x6

    int-to-byte v5, v1

    aput-byte v5, v0, v4

    const/4 v4, 0x7

    int-to-byte v5, p1

    aput-byte v5, v0, v4

    const/16 v4, 0x8

    array-length v5, p2

    invoke-static {p2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    add-int/lit8 v4, v3, -0x1

    add-int/lit8 v5, v3, -0x2

    const/4 v6, -0x1

    aput-byte v6, v0, v5

    aput-byte v6, v0, v4

    const-string v4, "CoverManager.NfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "byte data to send to cover: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private clearOngoingEvent()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    return-void
.end method

.method private clearRetryCountDelayedMsg()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    iput v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private getByteDataString([B)Ljava/lang/String;
    .locals 6
    .param p1, "data"    # [B

    .prologue
    if-nez p1, :cond_0

    const-string v2, "null"

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    const-string v2, "%02X"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p1, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getCallDuration()[B
    .locals 14

    .prologue
    const/4 v6, 0x4

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    .local v0, "duration":[B
    iget-wide v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x3e8

    div-long v4, v6, v8

    .local v4, "time":J
    const/4 v1, 0x0

    .local v1, "locale":Ljava/util/Locale;
    const-string v6, "%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide/16 v10, 0x3c

    div-long v10, v4, v10

    const-wide/16 v12, 0x64

    rem-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .local v2, "minutes":[B
    const-string v6, "%02d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-wide/16 v10, 0x3c

    rem-long v10, v4, v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v1, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .local v3, "seconds":[B
    const/4 v6, 0x0

    const/4 v7, 0x0

    aget-byte v7, v2, v7

    aput-byte v7, v0, v6

    const/4 v6, 0x1

    const/4 v7, 0x1

    aget-byte v7, v2, v7

    aput-byte v7, v0, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aget-byte v7, v3, v7

    aput-byte v7, v0, v6

    const/4 v6, 0x3

    const/4 v7, 0x1

    aget-byte v7, v3, v7

    aput-byte v7, v0, v6

    goto :goto_0

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private getCurrentClockData()[B
    .locals 13

    .prologue
    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v4, 0x0

    .local v4, "curTimeStr":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "locale":Ljava/util/Locale;
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v9

    invoke-static {v8, v9}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    .local v0, "bIs24HTime":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, "curTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .local v1, "c":Ljava/util/Calendar;
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v8, 0xb

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .local v5, "hours":I
    const/16 v8, 0xc

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .local v7, "minutes":I
    if-eqz v0, :cond_0

    const-string v8, "%02d%02d"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v6, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v8, "CoverManager.NfcLedCoverController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCurrentClockData : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    return-object v8

    :cond_0
    rem-int/lit8 v5, v5, 0xc

    if-nez v5, :cond_1

    const/16 v5, 0xc

    :cond_1
    const-string v8, "%2d%02d"

    new-array v9, v10, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v6, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getLenByteValue([B)I
    .locals 2
    .param p1, "data"    # [B

    .prologue
    const/4 v0, 0x5

    .local v0, "len":I
    if-eqz p1, :cond_0

    array-length v1, p1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getListenerTypeForCommand(I[B)I
    .locals 2
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    :pswitch_0
    :sswitch_0
    return v0

    :sswitch_1
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    aget-byte v1, p2, v0

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    goto :goto_0

    :sswitch_2
    if-eqz p2, :cond_0

    array-length v1, p2

    if-lez v1, :cond_0

    aget-byte v0, p2, v0

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_3
    const/4 v0, 0x2

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_2
        0xe0 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleClearOngoingEvent(I)V
    .locals 1
    .param p1, "code"    # I

    .prologue
    const v0, 0xfffe

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget v0, v0, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    if-ne v0, p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearOngoingEvent()V

    :cond_2
    return-void
.end method

.method private handleEventResponse(II)V
    .locals 6
    .param p1, "eventType"    # I
    .param p2, "eventAction"    # I

    .prologue
    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HandleEventResponse: type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "Event touch: accept"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .local v2, "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_0

    invoke-virtual {v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchAccept()V

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    return-void

    :cond_3
    const/4 v3, 0x2

    if-ne p2, v3, :cond_6

    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "Event touch: reject"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_3
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .restart local v2    # "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v3, v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    if-ne p1, v3, :cond_4

    invoke-virtual {v2}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onCoverTouchReject()V

    goto :goto_3

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_6
    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown event action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2
.end method

.method private handleInvalidCommand(I[B[B)V
    .locals 8
    .param p1, "command"    # I
    .param p2, "data"    # [B
    .param p3, "returnValue"    # [B

    .prologue
    const/4 v7, 0x0

    iput p1, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    if-eqz p3, :cond_0

    const/16 v4, 0x12

    if-eq p1, v4, :cond_0

    array-length v4, p3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    aget-byte v4, p3, v7

    sparse-switch v4, :sswitch_data_0

    const-string v4, "CoverManager.NfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Transceive error - unknown error value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, "doneIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "Sent done intent, fail transceive"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_1

    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopLedCover()V

    iput-boolean v7, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "doneIntent":Landroid/content/Intent;
    :cond_2
    :goto_2
    return-void

    :sswitch_0
    iget v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const/16 v5, 0xd

    if-ge v4, v5, :cond_3

    const-string v4, "CoverManager.NfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Repeat command "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    move-result v3

    .local v3, "stopCoverResult":Z
    const-string v4, "CoverManager.NfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stop result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x4

    iput v4, v2, Landroid/os/Message;->what:I

    iput p1, v2, Landroid/os/Message;->arg1:I

    iput-object p2, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v6, 0x1f4

    invoke-virtual {v4, v2, v6, v7}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    goto :goto_2

    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "stopCoverResult":Z
    :cond_3
    iput v7, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "Could not transceive command to cover so turn off led cover"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v0    # "doneIntent":Landroid/content/Intent;
    :sswitch_1
    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    if-eqz v4, :cond_1

    iput-boolean v7, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    goto/16 :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x50 -> :sswitch_0
        -0x4f -> :sswitch_0
        -0x4e -> :sswitch_0
        -0x20 -> :sswitch_0
        0x1 -> :sswitch_0
        0x3 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_1
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method private handlePollEventTouch(I)V
    .locals 12
    .param p1, "event"    # I

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    if-nez v4, :cond_1

    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "Stop polling touch events"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-lez v4, :cond_2

    iget v4, p0, Lcom/android/server/cover/NfcLedCoverController;->testCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/cover/NfcLedCoverController;->testCount:I

    :cond_2
    const/16 v4, 0x11

    new-array v5, v8, [B

    aput-byte v7, v5, v7

    invoke-direct {p0, v4, v5}, Lcom/android/server/cover/NfcLedCoverController;->buildNfcCoverLedData(I[B)[B

    move-result-object v2

    .local v2, "pollData":[B
    const/4 v3, 0x0

    .local v3, "returnData":[B
    :try_start_1
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v4, v2}, Landroid/nfc/NfcAdapter;->TransceiveLedCover([B)[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    :cond_3
    :goto_1
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-lez v4, :cond_4

    iget v4, p0, Lcom/android/server/cover/NfcLedCoverController;->testCount:I

    const/16 v5, 0x13

    if-le v4, v5, :cond_4

    const/4 v4, 0x5

    new-array v3, v4, [B

    aput-byte v7, v3, v8

    aput-byte v7, v3, v7

    const/16 v4, -0x2f

    aput-byte v4, v3, v9

    const/16 v4, 0x11

    aput-byte v4, v3, v11

    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-ne v4, v9, :cond_6

    aput-byte v8, v3, v10

    :cond_4
    :goto_2
    invoke-direct {p0, v3}, Lcom/android/server/cover/NfcLedCoverController;->isFinishedTouchReply([B)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v5, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TouchEvent from led cover: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v4, v3, v10

    if-ne v4, v8, :cond_8

    const-string v4, "accept"

    :goto_3
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_5
    :goto_4
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    iput v11, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    aget-byte v4, v3, v10

    iput v4, v1, Landroid/os/Message;->arg2:I

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v4, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    iput-boolean v7, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    :try_start_3
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "msg":Landroid/os/Message;
    :catch_2
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "Error sending data to NFC"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6
    sget v4, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-ne v4, v8, :cond_7

    aput-byte v9, v3, v10

    goto :goto_2

    :cond_7
    const-string v4, "CoverManager.NfcLedCoverController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown test value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", reject by default"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    aput-byte v9, v3, v10

    goto/16 :goto_2

    :cond_8
    const-string v4, "reject"

    goto :goto_3

    :catch_3
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_4

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_9
    const-string v4, "CoverManager.NfcLedCoverController"

    const-string v5, "No touch event from LED cover, keep listening"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .restart local v1    # "msg":Landroid/os/Message;
    iput v9, v1, Landroid/os/Message;->what:I

    iput p1, v1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v6, 0x64

    invoke-virtual {v4, v1, v6, v7}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method private handleSendDataToNfcLedCover(I[B)V
    .locals 18
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    const-string v13, "CoverManager.NfcLedCoverController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "handleSendDataToLedCover : command : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x4

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/cover/NfcLedCoverController;->stopCallInProgressDisplayTimer()V

    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    array-length v13, v0

    if-lez v13, :cond_1

    const/4 v13, 0x0

    aget-byte v13, p2, v13

    if-nez v13, :cond_1

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    const/4 v15, 0x4

    if-ne v13, v15, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "CoverManager.NfcLedCoverController"

    const-string v15, "CMD_LED_CALL_END was already processed so return"

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v14

    :goto_0
    return-void

    :cond_0
    const-string v13, "CoverManager.NfcLedCoverController"

    const-string v15, "CMD_LED_CALL_END called but with dummy data, switch to LED_OFF and stop CallTimer"

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x12

    :cond_1
    const v13, 0xfffe

    move/from16 v0, p1

    if-ne v0, v13, :cond_5

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/server/cover/NfcLedCoverController;->startCallInProgressDisplayTimer([B)V

    const/16 p1, 0x3

    :goto_1
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    .local v10, "previousCommand":I
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    const/4 v13, 0x3

    move/from16 v0, p1

    if-eq v0, v13, :cond_2

    const/16 v13, 0xd

    move/from16 v0, p1

    if-eq v0, v13, :cond_2

    const/16 v13, 0xe

    move/from16 v0, p1

    if-eq v0, v13, :cond_2

    const/4 v13, 0x2

    move/from16 v0, p1

    if-eq v0, v13, :cond_2

    const/16 v13, 0x14

    move/from16 v0, p1

    if-ne v0, v13, :cond_3

    :cond_2
    invoke-direct/range {p0 .. p2}, Lcom/android/server/cover/NfcLedCoverController;->setOngoingEvent(I[B)V

    :cond_3
    sparse-switch p1, :sswitch_data_0

    :goto_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v13

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_3
    :try_start_2
    monitor-exit v14

    goto :goto_0

    .end local v10    # "previousCommand":I
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v13

    :cond_5
    const/16 v13, 0x12

    move/from16 v0, p1

    if-ne v0, v13, :cond_6

    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-nez v13, :cond_6

    const-string v13, "CoverManager.NfcLedCoverController"

    const-string v15, "NfcLedCover not started, Start wireless charger"

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    const-string v13, "CoverManager.NfcLedCoverController"

    const-string v15, "Led cover already off"

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    monitor-exit v14

    goto/16 :goto_0

    :cond_6
    const-string v13, "CoverManager.NfcLedCoverController"

    const-string v15, "Ensuring NFC LED Cover started"

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .local v4, "coverStarted":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cover/NfcLedCoverController;->tryStartLedCover()Z

    move-result v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    const/16 v15, 0xd

    if-ge v13, v15, :cond_7

    const-string v13, "CoverManager.NfcLedCoverController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Repeat command after LED_COVER_RETRY_DELAY: 500 count: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .local v9, "msg":Landroid/os/Message;
    const/4 v13, 0x4

    iput v13, v9, Landroid/os/Message;->what:I

    move/from16 v0, p1

    iput v0, v9, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p2

    iput-object v0, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v16, 0x1f4

    move-wide/from16 v0, v16

    invoke-virtual {v13, v9, v0, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v13}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    move-result v12

    .local v12, "stopCoverResult":Z
    const-string v13, "CoverManager.NfcLedCoverController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Stop result: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v9    # "msg":Landroid/os/Message;
    .end local v12    # "stopCoverResult":Z
    :goto_4
    monitor-exit v14

    goto/16 :goto_0

    :cond_7
    const-string v13, "CoverManager.NfcLedCoverController"

    const-string v15, "Could not start NFC LED Cover"

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v5, "doneIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v5, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v13, "CoverManager.NfcLedCoverController"

    const-string v15, "Sent done intent, fail start"

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/cover/NfcLedCoverController;->stopLedCover()V

    goto :goto_4

    .end local v5    # "doneIntent":Landroid/content/Intent;
    :cond_8
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    invoke-direct/range {p0 .. p2}, Lcom/android/server/cover/NfcLedCoverController;->buildNfcCoverLedData(I[B)[B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    .local v7, "genData":[B
    const/4 v11, 0x0

    .local v11, "returnValue":[B
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v13, v7}, Landroid/nfc/NfcAdapter;->TransceiveLedCover([B)[B

    move-result-object v11

    if-eqz v11, :cond_9

    const-string v13, "CoverManager.NfcLedCoverController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Response data: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    :goto_5
    :try_start_5
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lcom/android/server/cover/NfcLedCoverController;->isValidResponse(I[B)Z

    move-result v13

    if-nez v13, :cond_b

    const-string v13, "CoverManager.NfcLedCoverController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error parsing response for command "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v11}, Lcom/android/server/cover/NfcLedCoverController;->handleInvalidCommand(I[B[B)V

    sget v13, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-nez v13, :cond_a

    monitor-exit v14

    goto/16 :goto_0

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    const-string v13, "CoverManager.NfcLedCoverController"

    const-string v15, "Error in trancieve command"

    invoke-static {v13, v15, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_a
    const-string v13, "CoverManager.NfcLedCoverController"

    const-string v15, "TEST mode enabled, ignore NFC Led Cover response"

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.intent.action.NFC_LED_COVER_MAX_RETRY_DONE"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v5    # "doneIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v13, v5, v15}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v13, "CoverManager.NfcLedCoverController"

    const-string v15, "Sent done intent, sucess"

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverTransceiveRetryCount:I

    invoke-direct/range {p0 .. p2}, Lcom/android/server/cover/NfcLedCoverController;->scheduleLedOffTimeout(I[B)V

    goto/16 :goto_1

    .end local v4    # "coverStarted":Z
    .end local v5    # "doneIntent":Landroid/content/Intent;
    .end local v7    # "genData":[B
    .end local v11    # "returnValue":[B
    .restart local v10    # "previousCommand":I
    :sswitch_0
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    :sswitch_1
    sget v13, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    if-lez v13, :cond_c

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/cover/NfcLedCoverController;->testCount:I

    :cond_c
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    .restart local v9    # "msg":Landroid/os/Message;
    const/4 v13, 0x2

    iput v13, v9, Landroid/os/Message;->what:I

    invoke-direct/range {p0 .. p2}, Lcom/android/server/cover/NfcLedCoverController;->getListenerTypeForCommand(I[B)I

    move-result v8

    .local v8, "listenerType":I
    if-gez v8, :cond_d

    const-string v13, "CoverManager.NfcLedCoverController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Wrong listener type requested for command:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; return"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :cond_d
    :try_start_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v13

    if-nez v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v13}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_6
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_e
    :goto_6
    :try_start_7
    iput v8, v9, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    if-eqz v13, :cond_f

    const-string v13, "CoverManager.NfcLedCoverController"

    const-string v15, "Already polling for touch events"

    invoke-static {v13, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v15, 0x2

    invoke-virtual {v13, v15}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v13, v9, v0, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3

    :catch_1
    move-exception v6

    .local v6, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_6

    .end local v6    # "e":Ljava/lang/IllegalStateException;
    :cond_f
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    goto :goto_7

    .end local v8    # "listenerType":I
    .end local v9    # "msg":Landroid/os/Message;
    :sswitch_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/cover/NfcLedCoverController;->stopLedCover()V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/cover/NfcLedCoverController;->notifyLedOffListeners(I)V

    :sswitch_3
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    goto/16 :goto_2

    :catch_2
    move-exception v6

    .restart local v6    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v6}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
        0xa -> :sswitch_3
        0x12 -> :sswitch_2
        0xe0 -> :sswitch_1
    .end sparse-switch
.end method

.method private isFinishedTouchReply([B)Z
    .locals 5
    .param p1, "returnData"    # [B

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    aget-byte v1, p1, v3

    const/16 v2, -0x2f

    if-ne v1, v2, :cond_1

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    aget-byte v1, p1, v4

    if-eq v1, v0, :cond_0

    aget-byte v1, p1, v4

    if-ne v1, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSingleMissedEvent([B)Z
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/16 v4, 0x30

    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    aget-byte v2, p1, v1

    if-ne v2, v4, :cond_2

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    if-eq v2, v4, :cond_3

    :cond_2
    const/4 v2, 0x3

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_0

    const/4 v2, 0x4

    aget-byte v2, p1, v2

    if-ne v2, v4, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private isValidCoverStartData([B)Z
    .locals 2
    .param p1, "coverStartData"    # [B

    .prologue
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    array-length v1, p1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidResponse(I[B)Z
    .locals 10
    .param p1, "command"    # I
    .param p2, "response"    # [B

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    array-length v7, p2

    sget-object v8, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    array-length v8, v8

    if-lt v7, v8, :cond_0

    sget-object v7, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    const/4 v8, 0x3

    int-to-byte v9, p1

    aput-byte v9, v7, v8

    const-string v7, "CoverManager.NfcLedCoverController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Expected response data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    invoke-direct {p0, v9}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .local v4, "patternCount":I
    move-object v0, p2

    .local v0, "arr$":[B
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-byte v1, v0, v2

    .local v1, "b":B
    sget-object v7, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    aget-byte v7, v7, v4

    if-eq v1, v7, :cond_2

    if-ne v4, v6, :cond_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    sget-object v7, Lcom/android/server/cover/NfcLedCoverController;->mResponsePattern:[B

    array-length v7, v7

    if-ne v4, v7, :cond_4

    move v5, v6

    goto :goto_0

    :cond_3
    if-nez v4, :cond_0

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private notifyLedOffListeners(I)V
    .locals 7
    .param p1, "turnedOffCommand"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "event":I
    const/4 v4, 0x1

    new-array v3, v4, [I

    const/4 v4, 0x0

    aput p1, v3, v4

    .local v3, "offCommand":[I
    iget-object v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v5

    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .local v2, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    iget v4, v2, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_0

    invoke-virtual {v2, v0, v3}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->onSystemCoverEvent(I[I)V

    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private scheduleLedOffTimeout(I[B)V
    .locals 10
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const-wide/16 v8, 0xe74

    const/16 v6, 0xf

    const/4 v5, 0x1

    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scheduleLedOffTimerout, command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sparse-switch p1, :sswitch_data_0

    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v2, :cond_4

    if-eq p1, v6, :cond_0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    :cond_0
    iget v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v2, p1, :cond_4

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4

    if-ne p1, v6, :cond_3

    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Time update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :sswitch_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_3
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Call InProgress duration time update"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    :cond_6
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, "msgLedOff":Landroid/os/Message;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v5, v1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1, v8, v9}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .end local v1    # "msgLedOff":Landroid/os/Message;
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "msgLedOff":Landroid/os/Message;
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x11f8

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/cover/NfcLedCoverController;->isSingleMissedEvent([B)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1, v8, v9}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x13ec

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_3
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x2328

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x12 -> :sswitch_0
        0x14 -> :sswitch_0
        0xe0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private sendCurrentClockCommand()V
    .locals 2

    .prologue
    const/16 v0, 0xf

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    return-void
.end method

.method private setOngoingEvent(I[B)V
    .locals 1
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$Command;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/cover/NfcLedCoverController$Command;-><init>(Lcom/android/server/cover/NfcLedCoverController;I[B)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iput p1, v0, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iput-object p2, v0, Lcom/android/server/cover/NfcLedCoverController$Command;->data:[B

    goto :goto_0
.end method

.method private startCallInProgressDisplayTimer([B)V
    .locals 9
    .param p1, "data"    # [B

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .local v6, "buffer":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v6, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v0, "CoverManager.NfcLedCoverController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CallStartTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    iput-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    :cond_0
    iput-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0, v4}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    invoke-direct {v0, p0, v8}, Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;-><init>(Lcom/android/server/cover/NfcLedCoverController;Lcom/android/server/cover/NfcLedCoverController$1;)V

    iput-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    :try_start_1
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/nio/BufferUnderflowException;
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "CallStartTime incorrect"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v7    # "e":Ljava/nio/BufferUnderflowException;
    :catch_1
    move-exception v7

    .local v7, "e":Ljava/nio/BufferOverflowException;
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "CallStartTime incorrect"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v7    # "e":Ljava/nio/BufferOverflowException;
    :catch_2
    move-exception v7

    .local v7, "e":Ljava/util/concurrent/RejectedExecutionException;
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "Error while scheduling TimerTask"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    iput-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    iput-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    goto :goto_0
.end method

.method private stopCallInProgressDisplayTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    iput-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    iput-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    :goto_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallStartTime:J

    return-void

    :cond_0
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "Call duration should not be null in stop or was already stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopLedCover()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->StopLedCover()Z

    move-result v0

    .local v0, "stopCoverResult":Z
    const-string v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop LedCover, result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    const-string v1, "CoverManager.NfcLedCoverController"

    const-string v2, "LED_OFF, Start wireless charger"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    return-void
.end method

.method private tryStartLedCover()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to start NFC LED Cover mIsLedOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    if-nez v3, :cond_0

    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "Disable Wireless Charger"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3, v1}, Landroid/nfc/NfcAdapter;->SetWcControl(I)Z

    :cond_0
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->StartLedCover()[B

    move-result-object v0

    .local v0, "coverStartData":[B
    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0}, Lcom/android/server/cover/NfcLedCoverController;->isValidCoverStartData([B)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "Started NFC LED Cover"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedCoverStartRetryCount:I

    iput-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    .end local v0    # "coverStartData":[B
    :goto_0
    move v1, v2

    :goto_1
    return v1

    .restart local v0    # "coverStartData":[B
    :cond_1
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Failed to start NFC LED Cover"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0    # "coverStartData":[B
    :cond_2
    const-string v1, "CoverManager.NfcLedCoverController"

    const-string v3, "NFC LED Cover already started"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addLedNotification(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "addLedNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const-string v2, " Current NfcLedCoverController state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  mIsLEDCoverAttached="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, " Current NFC Callback state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Live callbacks ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "):"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .local v1, "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " (pid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " uid="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " type="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->type:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    const-string v2, "  "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public handleSendPowerKeyToCover()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    .local v0, "data":[B
    aput-byte v2, v0, v2

    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v2, :cond_1

    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsLedOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". should be off"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/16 v2, 0x12

    invoke-virtual {p0, v2, v0}, Lcom/android/server/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    :goto_1
    return-void

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsLedOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". should be on"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mOngoingEvent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget v2, v2, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationTimer:Ljava/util/Timer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallDurationUpdateTask:Lcom/android/server/cover/NfcLedCoverController$CallDurationTask;

    if-nez v2, :cond_3

    :cond_2
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v4, "There is no time update task but we\'ve got call duration ongoing event... displaying clock instead"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearOngoingEvent()V

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->sendCurrentClockCommand()V

    :goto_2
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_3
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallInProgressDisplay:Z

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget v2, v2, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    iget-object v4, v4, Lcom/android/server/cover/NfcLedCoverController$Command;->data:[B

    invoke-virtual {p0, v2, v4}, Lcom/android/server/cover/NfcLedCoverController;->sendDataToNfcLedCover(I[B)V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->sendCurrentClockCommand()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method registerNfcTouchListenerCallback(ILandroid/os/IBinder;Landroid/content/ComponentName;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "component"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerNfcTouchListenerCallback: binder = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", command : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p1, :cond_0

    const/4 v1, 0x4

    if-le p1, v1, :cond_1

    :cond_0
    const-string v1, "CoverManager.NfcLedCoverController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported touch listener type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_1
    iget-object v8, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    :try_start_0
    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .local v0, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "CoverManager.NfcLedCoverController"

    const-string v2, "sendDataToNfcLedCover : duplicated listener handle"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    goto :goto_0

    .end local v0    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :try_start_1
    new-instance v0, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .end local v0    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;-><init>(Lcom/android/server/cover/NfcLedCoverController;Landroid/os/IBinder;Landroid/content/ComponentName;III)V

    .restart local v0    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeLedNotification(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "CoverManager.NfcLedCoverController"

    const-string v1, "removeLedNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method sendDataToNfcLedCover(I[B)V
    .locals 8
    .param p1, "command"    # I
    .param p2, "data"    # [B

    .prologue
    const/16 v7, 0xf

    const/4 v6, 0x4

    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v2, :cond_1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "sendDataToLedCover : Not attached LED Cover"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendDataToNfcLedCover: command: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " data: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0xffff

    if-ne p1, v2, :cond_2

    iget v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    if-ne v2, v7, :cond_4

    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedOn:Z

    if-eqz v2, :cond_4

    const/16 p1, 0xf

    :cond_2
    if-ne p1, v7, :cond_3

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->getCurrentClockData()[B

    move-result-object p2

    :cond_3
    const/16 v2, 0xc

    if-ne p1, v2, :cond_5

    iget v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    const/16 v3, 0xb

    if-ne v2, v3, :cond_5

    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Ignore battery chargin, battery low already shown"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "Time tick: clock not displayed, ignore"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    iput-object p2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const v2, 0xfff0

    if-ne p1, v2, :cond_7

    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    const/4 v2, 0x5

    iput v2, v1, Landroid/os/Message;->what:I

    aget-byte v2, p2, v5

    iput v2, v1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_7
    const/16 v2, 0x13

    if-ne p1, v2, :cond_8

    iput v6, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v6}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const-wide/16 v4, 0x96

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_8
    iput v5, v1, Landroid/os/Message;->what:I

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public sendPowerKeyToCover()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public unRegisterNfcTouchListenerCallback(Landroid/os/IBinder;)Z
    .locals 6
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    const-string v3, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unRegisterNfcTouchListenerCallback: binder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", pid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;

    .local v1, "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->token:Landroid/os/IBinder;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "CoverManager.NfcLedCoverController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove listener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v2, 0x1

    monitor-exit v3

    .end local v1    # "listener":Lcom/android/server/cover/NfcLedCoverController$NfcLedTouchListenerInfo;
    :goto_0
    return v2

    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "CoverManager.NfcLedCoverController"

    const-string v4, "UnregisterNfcTouchListener: listener does not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method updateNfcLedCoverAttachStateLocked(ZLcom/samsung/android/cover/CoverState;)V
    .locals 5
    .param p1, "attached"    # Z
    .param p2, "coverState"    # Lcom/samsung/android/cover/CoverState;

    .prologue
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p2}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    const/4 v3, 0x7

    if-ne v2, v3, :cond_5

    const/4 v0, 0x1

    .local v0, "isCoverAttached":Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    if-eq v2, v0, :cond_4

    iput-boolean v0, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    iget-boolean v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mIsLedCoverAttached:Z

    if-nez v2, :cond_4

    const-string v2, "CoverManager.NfcLedCoverController"

    const-string v3, "NfcLedCover detached, start clearing all flags, messages, wakelocks"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mCallTimerLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopCallInProgressDisplayTimer()V

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mHandler:Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/cover/NfcLedCoverController$NfcLedCoverControllerHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mSendLedDataWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollTouchWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mTouchResponseWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mLedOnOffWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mPollingTouchEvents:Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mPrevCommand:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/cover/NfcLedCoverController;->mOngoingEvent:Lcom/android/server/cover/NfcLedCoverController$Command;

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->clearRetryCountDelayedMsg()V

    invoke-direct {p0}, Lcom/android/server/cover/NfcLedCoverController;->stopLedCover()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nfc_led_cover_test"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/android/server/cover/NfcLedCoverController;->TEST:I

    return-void

    .end local v0    # "isCoverAttached":Z
    :cond_5
    move v0, v1

    goto :goto_0

    .restart local v0    # "isCoverAttached":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
