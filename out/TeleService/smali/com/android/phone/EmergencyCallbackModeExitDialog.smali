.class public Lcom/android/phone/EmergencyCallbackModeExitDialog;
.super Lmiui/app/Activity;
.source "EmergencyCallbackModeExitDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field mAlertDialog:Landroid/app/AlertDialog;

.field private mConnection:Landroid/content/ServiceConnection;

.field mDialogType:I

.field private mEcmExitReceiver:Landroid/content/BroadcastReceiver;

.field mEcmTimeout:J

.field mHandler:Landroid/os/Handler;

.field private mInEmergencyCall:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field mProgressDialog:Landroid/app/ProgressDialog;

.field mService:Lcom/android/phone/EmergencyCallbackModeService;

.field private mTask:Ljava/lang/Runnable;

.field mTimer:Landroid/os/CountDownTimer;

.field private mTimerResetHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 52
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 67
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 68
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 69
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTimer:Landroid/os/CountDownTimer;

    .line 70
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mService:Lcom/android/phone/EmergencyCallbackModeService;

    .line 71
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mHandler:Landroid/os/Handler;

    .line 72
    iput v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmTimeout:J

    .line 74
    iput-boolean v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mInEmergencyCall:Z

    .line 76
    iput-object v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 138
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$1;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTask:Ljava/lang/Runnable;

    .line 324
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$6;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$6;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    .line 346
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$7;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mConnection:Landroid/content/ServiceConnection;

    .line 363
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$8;

    invoke-direct {v0, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$8;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTimerResetHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/EmergencyCallbackModeExitDialog;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/EmergencyCallbackModeExitDialog;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/phone/EmergencyCallbackModeExitDialog;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/EmergencyCallbackModeExitDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mInEmergencyCall:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/EmergencyCallbackModeExitDialog;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->showEmergencyCallbackModeExitDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/EmergencyCallbackModeExitDialog;J)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/EmergencyCallbackModeExitDialog;
    .param p1, "x1"    # J

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getDialogText(J)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/EmergencyCallbackModeExitDialog;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/EmergencyCallbackModeExitDialog;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private getDialogText(J)Ljava/lang/CharSequence;
    .locals 11
    .param p1, "millisUntilFinished"    # J

    .prologue
    const-wide/32 v6, 0xea60

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 296
    div-long v2, p1, v6

    long-to-int v0, v2

    .line 297
    .local v0, "minutes":I
    const-string v2, "%d:%02d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    rem-long v4, p1, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 300
    .local v1, "time":Ljava/lang/String;
    iget v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    packed-switch v2, :pswitch_data_0

    .line 308
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 302
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0002

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v1, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 305
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0001

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v1, v3, v8

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showEmergencyCallbackModeExitDialog()V
    .locals 6

    .prologue
    const/4 v1, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 188
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    const-string v0, "EmergencyCallbackMode"

    const-string v1, "Tried to show dialog, but activity was already finished"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mInEmergencyCall:Z

    if-eqz v0, :cond_2

    .line 193
    iput v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    .line 194
    invoke-virtual {p0, v1}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->showDialog(I)V

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 198
    iput v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    .line 199
    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->showDialog(I)V

    .line 205
    :cond_3
    :goto_1
    new-instance v0, Lcom/android/phone/EmergencyCallbackModeExitDialog$2;

    iget-wide v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmTimeout:J

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/EmergencyCallbackModeExitDialog$2;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;JJ)V

    invoke-virtual {v0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTimer:Landroid/os/CountDownTimer;

    goto :goto_0

    .line 200
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.phone.action.ACTION_SHOW_ECM_EXIT_DIALOG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 201
    iput v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    .line 202
    invoke-virtual {p0, v3}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->showDialog(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 80
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const-string v3, "ril.cdma.inecmmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 85
    .local v1, "isInEcm":Z
    const-string v3, "EmergencyCallbackMode"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ECMModeExitDialog launched - isInEcm: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    if-nez v1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->finish()V

    .line 107
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mHandler:Landroid/os/Handler;

    .line 95
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTask:Ljava/lang/Runnable;

    const-string v4, "EcmExitDialogWaitThread"

    invoke-direct {v2, v6, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 97
    .local v2, "waitForConnectionCompleteThread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 100
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 101
    iget-object v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mTimerResetHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5, v6}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 104
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v3, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .param p1, "id"    # I

    .prologue
    const v4, 0x7f080260

    .line 225
    packed-switch p1, :pswitch_data_0

    .line 287
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 228
    :pswitch_0
    iget-wide v2, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmTimeout:J

    invoke-direct {p0, v2, v3}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getDialogText(J)Ljava/lang/CharSequence;

    move-result-object v0

    .line 231
    .local v0, "text":Ljava/lang/CharSequence;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget v2, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080264

    new-instance v3, Lcom/android/phone/EmergencyCallbackModeExitDialog$4;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$4;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080265

    new-instance v3, Lcom/android/phone/EmergencyCallbackModeExitDialog$3;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$3;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 256
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 257
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 262
    .end local v0    # "text":Ljava/lang/CharSequence;
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    sget v2, Lmiui/R$style;->Theme_Light_Dialog_Alert:I

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080262

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080266

    new-instance v3, Lcom/android/phone/EmergencyCallbackModeExitDialog$5;

    invoke-direct {v3, p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog$5;-><init>(Lcom/android/phone/EmergencyCallbackModeExitDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 276
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 277
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mAlertDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 280
    :pswitch_2
    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 281
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const v2, 0x7f080263

    invoke-virtual {p0, v2}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 283
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 284
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mProgressDialog:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mEcmExitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 121
    :cond_0
    return-void

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 316
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "exit_ecm_result"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->setResult(ILandroid/content/Intent;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/phone/EmergencyCallbackModeExitDialog;->finish()V

    .line 319
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 125
    invoke-super {p0, p1}, Lmiui/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 126
    const-string v0, "DIALOG_TYPE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    .line 127
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 131
    invoke-super {p0, p1}, Lmiui/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    const-string v0, "DIALOG_TYPE"

    iget v1, p0, Lcom/android/phone/EmergencyCallbackModeExitDialog;->mDialogType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 133
    return-void
.end method
