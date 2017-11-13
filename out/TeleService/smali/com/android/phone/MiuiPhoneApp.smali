.class public Lcom/android/phone/MiuiPhoneApp;
.super Lmiui/external/Application;
.source "MiuiPhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/MiuiPhoneApp$1;,
        Lcom/android/phone/MiuiPhoneApp$MiuiPhoneAppBroadcastReceiver;,
        Lcom/android/phone/MiuiPhoneApp$Delegate;
    }
.end annotation


# instance fields
.field private mDcStatMonitor:Lcom/android/phone/utils/DcStatMonitor;

.field mMiuiNotificationMgr:Lcom/android/phone/MiuiNotificationMgr;

.field mPhoneGlobals:Lcom/android/phone/PhoneGlobals;

.field private mSimCardStatMonitor:Lcom/android/phone/utils/SimCardStatMonitor;

.field mTelephonyGlobals:Lcom/android/services/telephony/TelephonyGlobals;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lmiui/external/Application;-><init>()V

    .line 36
    return-void
.end method

.method static synthetic access$102(Lcom/android/phone/MiuiPhoneApp;Lcom/android/phone/utils/SimCardStatMonitor;)Lcom/android/phone/utils/SimCardStatMonitor;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MiuiPhoneApp;
    .param p1, "x1"    # Lcom/android/phone/utils/SimCardStatMonitor;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/phone/MiuiPhoneApp;->mSimCardStatMonitor:Lcom/android/phone/utils/SimCardStatMonitor;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/phone/MiuiPhoneApp;Lcom/android/phone/utils/DcStatMonitor;)Lcom/android/phone/utils/DcStatMonitor;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/MiuiPhoneApp;
    .param p1, "x1"    # Lcom/android/phone/utils/DcStatMonitor;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/phone/MiuiPhoneApp;->mDcStatMonitor:Lcom/android/phone/utils/DcStatMonitor;

    return-object p1
.end method


# virtual methods
.method public onCreateApplicationDelegate()Lmiui/external/ApplicationDelegate;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/android/phone/MiuiPhoneApp$Delegate;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/MiuiPhoneApp$Delegate;-><init>(Lcom/android/phone/MiuiPhoneApp;Lcom/android/phone/MiuiPhoneApp$1;)V

    return-object v0
.end method
