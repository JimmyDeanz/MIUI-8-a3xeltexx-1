.class public Lcom/android/phone/MtkNetworkModeManager;
.super Ljava/lang/Object;
.source "MtkNetworkModeManager.java"


# static fields
.field private static sInstance:Lcom/android/phone/MtkNetworkModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/MtkNetworkModeManager;->sInstance:Lcom/android/phone/MtkNetworkModeManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 22
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 23
    const-string v1, "miui.intent.action.ACTION_DEFAULT_DATA_SLOT_READY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    new-instance v2, Lcom/android/phone/MtkNetworkModeManager$1;

    invoke-direct {v2, p0}, Lcom/android/phone/MtkNetworkModeManager$1;-><init>(Lcom/android/phone/MtkNetworkModeManager;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 65
    return-void
.end method

.method static make()Lcom/android/phone/MtkNetworkModeManager;
    .locals 2

    .prologue
    .line 68
    sget-object v0, Lcom/android/phone/MtkNetworkModeManager;->sInstance:Lcom/android/phone/MtkNetworkModeManager;

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "DefaultCardManager.make() should only be called once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_0
    new-instance v0, Lcom/android/phone/MtkNetworkModeManager;

    invoke-direct {v0}, Lcom/android/phone/MtkNetworkModeManager;-><init>()V

    sput-object v0, Lcom/android/phone/MtkNetworkModeManager;->sInstance:Lcom/android/phone/MtkNetworkModeManager;

    .line 72
    sget-object v0, Lcom/android/phone/MtkNetworkModeManager;->sInstance:Lcom/android/phone/MtkNetworkModeManager;

    return-object v0
.end method
