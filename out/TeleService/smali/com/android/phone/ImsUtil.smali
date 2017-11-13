.class public Lcom/android/phone/ImsUtil;
.super Ljava/lang/Object;
.source "ImsUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static sImsPhoneSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    const-class v1, Lcom/android/phone/ImsUtil;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/phone/ImsUtil;->LOG_TAG:Ljava/lang/String;

    .line 30
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/ImsUtil;->sImsPhoneSupported:Z

    .line 36
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    .line 37
    .local v0, "app":Lcom/android/phone/PhoneGlobals;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/phone/ImsUtil;->sImsPhoneSupported:Z

    .line 38
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static isWfcEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    .line 53
    .local v0, "isEnabledByPlatform":Z
    invoke-static {p0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v1

    .line 56
    .local v1, "isEnabledByUser":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isWfcModeWifiOnly(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    invoke-static {p0}, Lcom/android/ims/ImsManager;->getWfcMode(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 67
    .local v0, "isWifiOnlyMode":Z
    :goto_0
    invoke-static {p0}, Lcom/android/phone/ImsUtil;->isWfcEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v1

    .end local v0    # "isWifiOnlyMode":Z
    :cond_0
    move v0, v2

    .line 64
    goto :goto_0

    .restart local v0    # "isWifiOnlyMode":Z
    :cond_1
    move v1, v2

    .line 67
    goto :goto_1
.end method
