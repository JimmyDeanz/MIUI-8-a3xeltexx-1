.class public Lcom/android/phone/EmergencyCallbackModeService;
.super Landroid/app/Service;
.source "EmergencyCallbackModeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/EmergencyCallbackModeService$LocalBinder;
    }
.end annotation


# instance fields
.field private final mBinder:Landroid/os/IBinder;

.field private mEcmReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mInEmergencyCall:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTimeLeft:J

.field private mTimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 58
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimeLeft:J

    .line 60
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mInEmergencyCall:Z

    .line 65
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeService$1;-><init>(Lcom/android/phone/EmergencyCallbackModeService;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeService$2;-><init>(Lcom/android/phone/EmergencyCallbackModeService;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mEcmReceiver:Landroid/content/BroadcastReceiver;

    .line 233
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeService$LocalBinder;-><init>(Lcom/android/phone/EmergencyCallbackModeService;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mBinder:Landroid/os/IBinder;

    .line 238
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyCallbackModeService;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/EmergencyCallbackModeService;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/phone/EmergencyCallbackModeService;->resetEcmTimer(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/EmergencyCallbackModeService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/EmergencyCallbackModeService;
    .param p1, "x1"    # J

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimeLeft:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/phone/EmergencyCallbackModeService;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/EmergencyCallbackModeService;
    .param p1, "x1"    # J

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EmergencyCallbackModeService;->showNotification(J)V

    return-void
.end method

.method private resetEcmTimer(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    .line 215
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 217
    .local v0, "isTimerCanceled":Z
    if-eqz v0, :cond_0

    .line 218
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mInEmergencyCall:Z

    .line 219
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 220
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/phone/EmergencyCallbackModeService;->showNotification(J)V

    .line 225
    :goto_0
    return-void

    .line 222
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mInEmergencyCall:Z

    .line 223
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackModeService;->startTimerNotification()V

    goto :goto_0
.end method

.method private showNotification(J)V
    .locals 15
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 172
    const-string v6, "ril.cdma.inecmmode"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 174
    .local v2, "isInEcm":Z
    if-nez v2, :cond_1

    .line 175
    const-string v6, "EmergencyCallbackModeService"

    const-string v7, "Asked to show notification but not in ECM mode"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v6, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v6, :cond_0

    .line 177
    iget-object v6, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v6}, Landroid/os/CountDownTimer;->cancel()V

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    .local v0, "builder":Landroid/app/Notification$Builder;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 183
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 184
    const v6, 0x7f02001c

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 185
    const v6, 0x7f08025f

    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyCallbackModeService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 186
    const v6, 0x7f080260

    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyCallbackModeService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 187
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f0a0000

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 191
    const/4 v6, 0x0

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.phone.action.ACTION_SHOW_ECM_EXIT_DIALOG"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {p0, v6, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 193
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 196
    const/4 v4, 0x0

    .line 197
    .local v4, "text":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/android/phone/EmergencyCallbackModeService;->mInEmergencyCall:Z

    if-eqz v6, :cond_2

    .line 198
    const v6, 0x7f080261

    invoke-virtual {p0, v6}, Lcom/android/phone/EmergencyCallbackModeService;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 205
    :goto_1
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 208
    iget-object v6, p0, Lcom/android/phone/EmergencyCallbackModeService;->mNotificationManager:Landroid/app/NotificationManager;

    const v7, 0x7f080260

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 200
    :cond_2
    const-wide/32 v6, 0xea60

    div-long v6, p1, v6

    long-to-int v3, v6

    .line 201
    .local v3, "minutes":I
    const-string v6, "%d:%02d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-wide/32 v10, 0xea60

    rem-long v10, p1, v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 202
    .local v5, "time":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/high16 v7, 0x7f0f0000

    invoke-virtual {v6, v7, v3}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method private startTimerNotification()V
    .locals 6

    .prologue
    .line 140
    const-string v0, "ro.cdma.ecmexittimer"

    const-wide/32 v4, 0x493e0

    invoke-static {v0, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 144
    .local v2, "ecmTimeout":J
    invoke-direct {p0, v2, v3}, Lcom/android/phone/EmergencyCallbackModeService;->showNotification(J)V

    .line 147
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 166
    return-void

    .line 150
    :cond_0
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeService$3;

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/EmergencyCallbackModeService$3;-><init>(Lcom/android/phone/EmergencyCallbackModeService;JJ)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    goto :goto_0
.end method


# virtual methods
.method public getEmergencyCallbackModeCallState()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mInEmergencyCall:Z

    return v0
.end method

.method public getEmergencyCallbackModeTimeout()J
    .locals 2

    .prologue
    .line 248
    iget-wide v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimeLeft:J

    return-wide v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    .line 78
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-nez v1, :cond_0

    .line 80
    const-string v1, "EmergencyCallbackModeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error! Emergency Callback Mode not supported for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phones"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeService;->stopSelf()V

    .line 86
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mEcmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/EmergencyCallbackModeService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyCallbackModeService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 94
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 95
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/EmergencyCallbackModeService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 97
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackModeService;->startTimerNotification()V

    .line 98
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mEcmReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackModeService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 105
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeService;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 108
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f080260

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 109
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeService;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 110
    return-void
.end method
