.class public Lcom/android/phone/MiuiLog;
.super Ljava/lang/Object;
.source "MiuiLog.java"


# static fields
.field private static VERBOSE_DEBUG_OFF:I

.field private static VERBOSE_DEBUG_ON:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/MiuiLog;->VERBOSE_DEBUG_OFF:I

    .line 21
    const/4 v0, 0x1

    sput v0, Lcom/android/phone/MiuiLog;->VERBOSE_DEBUG_ON:I

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/android/phone/MiuiLog;->VERBOSE_DEBUG_OFF:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/android/phone/MiuiLog;->VERBOSE_DEBUG_ON:I

    return v0
.end method

.method static register()V
    .locals 3

    .prologue
    .line 26
    new-instance v2, Lcom/android/phone/MiuiLog$1;

    invoke-direct {v2}, Lcom/android/phone/MiuiLog$1;-><init>()V

    invoke-static {v2}, Lmiui/telephony/PhoneDebug;->addListener(Lmiui/telephony/PhoneDebug$Listener;)Lmiui/telephony/PhoneDebug$Listener;

    .line 37
    new-instance v1, Lcom/android/phone/MiuiLog$2;

    invoke-direct {v1}, Lcom/android/phone/MiuiLog$2;-><init>()V

    .line 56
    .local v1, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android_secret_code"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 59
    return-void
.end method
