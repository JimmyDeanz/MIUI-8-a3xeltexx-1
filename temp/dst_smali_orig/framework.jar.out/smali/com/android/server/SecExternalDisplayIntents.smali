.class public Lcom/android/server/SecExternalDisplayIntents;
.super Lcom/android/server/SecExternalDisplayOrientation;
.source "SecExternalDisplayIntents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SecExternalDisplayIntents$2;,
        Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;
    }
.end annotation


# static fields
.field private static final ALLSHARE_CAST_EXTRA_STATE:Ljava/lang/String; = "state"

.field private static final ALLSHARE_CAST_GETSTATE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"

.field public static final ANDROID_HDMI_SET_FORCE_MIRROR_MODE:Ljava/lang/String; = "samsung.intent.action.ANDROID_HDMI_SET_FORCE_MIRROR_MODE"

.field public static final ANDROID_HDMI_START_VFB:Ljava/lang/String; = "samsung.intent.action.ANDROID_HDMI_START_VFB"

.field public static final ANDROID_HDMI_STOP_VFB:Ljava/lang/String; = "samsung.intent.action.ANDROID_HDMI_STOP_VFB"

.field private static final CameraFrontStart:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_START_FRONT_CAMERA"

.field private static final CameraPosition:Ljava/lang/String; = "CameraPosition"

.field private static final CameraRearStart:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_START_BACK_CAMERA"

.field private static final CameraStop:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_STOP_CAMERA"

.field public static final EXTRA_IS_FORCE_MIRROR:Ljava/lang/String; = "isForceMirror"

.field private static final KDDI_auSharelink_SOURCE_CONNECT:Ljava/lang/String; = "com.kddi.android.sptab_source.SUCCESS_CONNECT_SOURCE"

.field private static final KDDI_auSharelink_SOURCE_DISCONNECT:Ljava/lang/String; = "com.kddi.android.sptab_source.SUCCESS_DISCONNECT_SOURCE"

.field private static final LOG:Z = true

.field private static final PresentationStart:Ljava/lang/String; = "com.samsung.intent.action.SEC_PRESENTATION_START"

.field private static final PresentationStateInfo:Ljava/lang/String; = "android.app.presentation.ACTION_START_PRESENTATION_STATE"

.field private static final PresentationStop:Ljava/lang/String; = "com.samsung.intent.action.SEC_PRESENTATION_STOP"

.field private static final RemoteViewFinder:Ljava/lang/String; = "com.samsung.android.app.camera.RVF"

.field private static final SCREENRECORDER_NOTIFY_EVENT:Ljava/lang/String; = "android.intent.action.SCREENRECORDER_INFORMATION"

.field private static final SCREENRECORDER_STOP_EVENT:Ljava/lang/String; = "android.intent.action.SCREENRECORDER_HDMI"

.field private static final SideSyncConnected:Ljava/lang/String; = "com.sec.android.sidesync.source.SIDESYNC_CONNECTED"

.field private static final SideSyncDestroyed:Ljava/lang/String; = "com.sec.android.sidesync.source.SERVICE_DESTROY"

.field private static final TAG:Ljava/lang/String; = "SecExternalDisplayIntents_Java"

.field private static final VIDEO_PRESENTATION_START_MODE:Ljava/lang/String; = "com.sec.android.app.videoplayer.REMOVE_BLACK_SCREEN"

.field private static final VIDEO_PRESENTATION_STOP_MODE:Ljava/lang/String; = "com.sec.android.app.videoplayer.SHOW_BLACK_SCREEN"


# instance fields
.field public final ALARM_STARTED:[Ljava/lang/String;

.field public final ALARM_STOPPED:[Ljava/lang/String;

.field private BroadcastMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver2:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/SecExternalDisplayService;)V
    .locals 6
    .param p1, "_obj"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/SecExternalDisplayOrientation;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STARTED_IN_ALERT"

    aput-object v1, v0, v2

    const-string v1, "com.android.deskclock.ALARM_ALERT"

    aput-object v1, v0, v3

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->ALARM_STARTED:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOPPED_IN_ALERT"

    aput-object v1, v0, v2

    const-string v1, "com.android.deskclock.ALARM_DONE"

    aput-object v1, v0, v3

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOP"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->ALARM_STOPPED:[Ljava/lang/String;

    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$1;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayIntents$1;-><init>(Lcom/android/server/SecExternalDisplayIntents;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->mReceiver2:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    const-string v0, "SecExternalDisplayIntents_Java"

    const-string v1, "SecExternalDisplayIntents +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/SecExternalDisplayIntents;->SecExternalDisplayRegistIntentReceiver()V

    return-void
.end method

.method public static StartEDSIntents(Lcom/android/server/SecExternalDisplayService;)V
    .locals 1
    .param p0, "edsObj"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    new-instance v0, Lcom/android/server/SecExternalDisplayIntents;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayIntents;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    .local v0, "intentObj":Lcom/android/server/SecExternalDisplayIntents;
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SecExternalDisplayIntents;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayIntents;

    .prologue
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public SecExternalDisplayRegistIntentReceiver()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    sget-boolean v0, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v0, :cond_0

    const-string v0, "SecExternalDisplayIntents_Java"

    const-string v1, "entered SecExternalDisplayRegistIntentReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.camera.ACTION_START_BACK_CAMERA"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.camera.ACTION_START_FRONT_CAMERA"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.camera.ACTION_STOP_CAMERA"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREENRECORDER_INFORMATION"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.camera.RVF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.android.sidesync.source.SIDESYNC_CONNECTED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.android.sidesync.source.SERVICE_DESTROY"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v9, :cond_1

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->ALARM_STARTED:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v9, :cond_2

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->ALARM_STOPPED:[Ljava/lang/String;

    aget-object v0, v0, v6

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "com.samsung.intent.action.SEC_PRESENTATION_START"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.videoplayer.REMOVE_BLACK_SCREEN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.videoplayer.SHOW_BLACK_SCREEN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.kddi.android.sptab_source.SUCCESS_CONNECT_SOURCE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.kddi.android.sptab_source.SUCCESS_DISCONNECT_SOURCE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v0}, Lcom/android/server/SecExternalDisplayService;->getEDSContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayIntents;->mReceiver2:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v1, "android.intent.action.HDMI_PLUGGED"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.ACTION_START_BACK_CAMERA"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.ACTION_START_FRONT_CAMERA"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.camera.ACTION_STOP_CAMERA"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.android.app.camera.RVF"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v1, "android.intent.action.WIFI_DISPLAY"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayIntents;->ALARM_STARTED:[Ljava/lang/String;

    aget-object v1, v1, v10

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayIntents;->ALARM_STARTED:[Ljava/lang/String;

    aget-object v1, v1, v7

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayIntents;->ALARM_STARTED:[Ljava/lang/String;

    aget-object v1, v1, v8

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayIntents;->ALARM_STOPPED:[Ljava/lang/String;

    aget-object v1, v1, v10

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayIntents;->ALARM_STOPPED:[Ljava/lang/String;

    aget-object v1, v1, v7

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/server/SecExternalDisplayIntents;->ALARM_STOPPED:[Ljava/lang/String;

    aget-object v1, v1, v8

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.sidesync.source.SIDESYNC_CONNECTED"

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.sidesync.source.SERVICE_DESTROY"

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v1, "android.intent.action.SCREENRECORDER_INFORMATION"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v1, "android.intent.action.USBHID_MOUSE_EVENT"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v1, "android.intent.action.SCREEN_OFF"

    const/16 v2, 0x12

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v1, "android.intent.action.USER_PRESENT"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.videoplayer.REMOVE_BLACK_SCREEN"

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v1, "com.sec.android.app.videoplayer.SHOW_BLACK_SCREEN"

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v1, "com.kddi.android.sptab_source.SUCCESS_CONNECT_SOURCE"

    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v1, "com.kddi.android.sptab_source.SUCCESS_DISCONNECT_SOURCE"

    const/16 v2, 0x17

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_START"

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v1, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    const/16 v2, 0x19

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
