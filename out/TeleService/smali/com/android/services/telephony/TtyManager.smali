.class final Lcom/android/services/telephony/TtyManager;
.super Ljava/lang/Object;
.source "TtyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mPhone:Lcom/android/internal/telephony/Phone;

.field private final mReceiver:Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;

.field private mTtyMode:I

.field private mUiTtyMode:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v3, Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;-><init>(Lcom/android/services/telephony/TtyManager;Lcom/android/services/telephony/TtyManager$1;)V

    iput-object v3, p0, Lcom/android/services/telephony/TtyManager;->mReceiver:Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;

    .line 37
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/services/telephony/TtyManager;->mUiTtyMode:I

    .line 39
    new-instance v3, Lcom/android/services/telephony/TtyManager$1;

    invoke-direct {v3, p0}, Lcom/android/services/telephony/TtyManager$1;-><init>(Lcom/android/services/telephony/TtyManager;)V

    iput-object v3, p0, Lcom/android/services/telephony/TtyManager;->mHandler:Landroid/os/Handler;

    .line 73
    iput-object p2, p0, Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    const-string v3, "android.telecom.action.CURRENT_TTY_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    iget-object v3, p0, Lcom/android/services/telephony/TtyManager;->mReceiver:Lcom/android/services/telephony/TtyManager$TtyBroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, "ttyMode":I
    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v1

    .line 82
    .local v1, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->getCurrentTtyMode()I

    move-result v2

    .line 85
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/services/telephony/TtyManager;->updateTtyMode(I)V

    .line 86
    invoke-direct {p0, v2}, Lcom/android/services/telephony/TtyManager;->updateUiTtyMode(I)V

    .line 87
    return-void
.end method

.method static synthetic access$100(Lcom/android/services/telephony/TtyManager;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/TtyManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 30
    invoke-static {p0}, Lcom/android/services/telephony/TtyManager;->phoneModeToTelecomMode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/services/telephony/TtyManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/services/telephony/TtyManager;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/services/telephony/TtyManager;->mTtyMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/services/telephony/TtyManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/TtyManager;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/services/telephony/TtyManager;->updateTtyMode(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/services/telephony/TtyManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/services/telephony/TtyManager;
    .param p1, "x1"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/services/telephony/TtyManager;->updateUiTtyMode(I)V

    return-void
.end method

.method private static phoneModeToTelecomMode(I)I
    .locals 1
    .param p0, "phoneMode"    # I

    .prologue
    .line 137
    packed-switch p0, :pswitch_data_0

    .line 146
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 139
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 141
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 143
    :pswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static telecomModeToPhoneMode(I)I
    .locals 1
    .param p0, "telecomMode"    # I

    .prologue
    .line 124
    packed-switch p0, :pswitch_data_0

    .line 132
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 130
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateTtyMode(I)V
    .locals 5
    .param p1, "ttyMode"    # I

    .prologue
    const/4 v4, 0x1

    .line 90
    const-string v0, "updateTtyMode %d -> %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/services/telephony/TtyManager;->mTtyMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iput p1, p0, Lcom/android/services/telephony/TtyManager;->mTtyMode:I

    .line 92
    iget-object v0, p0, Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p1}, Lcom/android/services/telephony/TtyManager;->telecomModeToPhoneMode(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/services/telephony/TtyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 94
    return-void
.end method

.method private updateUiTtyMode(I)V
    .locals 5
    .param p1, "ttyMode"    # I

    .prologue
    const/4 v4, 0x0

    .line 97
    const-string v0, "updateUiTtyMode %d -> %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/services/telephony/TtyManager;->mUiTtyMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget v0, p0, Lcom/android/services/telephony/TtyManager;->mUiTtyMode:I

    if-eq v0, p1, :cond_0

    .line 99
    iput p1, p0, Lcom/android/services/telephony/TtyManager;->mUiTtyMode:I

    .line 100
    iget-object v0, p0, Lcom/android/services/telephony/TtyManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {p1}, Lcom/android/services/telephony/TtyManager;->telecomModeToPhoneMode(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setUiTTYMode(ILandroid/os/Message;)V

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_0
    const-string v0, "ui tty mode didnt change"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/services/telephony/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
