.class public final Landroid/hardware/input/InputManager;
.super Ljava/lang/Object;
.source "InputManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/input/InputManager$1;,
        Landroid/hardware/input/InputManager$InputDeviceVibrator;,
        Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;,
        Landroid/hardware/input/InputManager$TabletModeChangedListener;,
        Landroid/hardware/input/InputManager$OnTabletModeChangedListener;,
        Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;,
        Landroid/hardware/input/InputManager$InputDevicesChangedListener;,
        Landroid/hardware/input/InputManager$InputDeviceListener;,
        Landroid/hardware/input/InputManager$TSP_CMDTYPE;
    }
.end annotation


# static fields
.field public static final ACTION_QUERY_KEYBOARD_LAYOUTS:Ljava/lang/String; = "android.hardware.input.action.QUERY_KEYBOARD_LAYOUTS"

.field private static final DEBUG:Z = false

.field public static final DEFAULT_POINTER_SPEED:I = 0x0

.field public static final FLAG_MONITOR_KEY_FILTER:I = 0x1

.field public static final FLAG_MONITOR_MOTION_FILTER:I = 0x2

.field public static final FLAG_MONITOR_NO_FILTER:I = 0x0

.field public static final FLAG_MONITOR_SOURCE_CLASS_POINTER_FILTER:I = 0x4

.field public static final FLAG_MONITOR_TOOL_TYPE_FINGER_FILTER:I = 0x10

.field public static final FLAG_MONITOR_TOOL_TYPE_STYLUS_FILTER:I = 0x8

.field public static final INJECT_INPUT_EVENT_MODE_ASYNC:I = 0x0

.field public static final INJECT_INPUT_EVENT_MODE_WAIT_FOR_FINISH:I = 0x2

.field public static final INJECT_INPUT_EVENT_MODE_WAIT_FOR_RESULT:I = 0x1

.field public static final MAX_POINTER_SPEED:I = 0x7

.field public static final META_DATA_KEYBOARD_LAYOUTS:Ljava/lang/String; = "android.hardware.input.metadata.KEYBOARD_LAYOUTS"

.field public static final MIN_POINTER_SPEED:I = -0x7

.field private static final MSG_DEVICE_ADDED:I = 0x1

.field private static final MSG_DEVICE_CHANGED:I = 0x3

.field private static final MSG_DEVICE_REMOVED:I = 0x2

.field public static final SWITCH_STATE_OFF:I = 0x0

.field public static final SWITCH_STATE_ON:I = 0x1

.field public static final SWITCH_STATE_UNKNOWN:I = -0x1

.field private static final TAG:Ljava/lang/String; = "InputManager"

.field private static sInstance:Landroid/hardware/input/InputManager;


# instance fields
.field private final mIm:Landroid/hardware/input/IInputManager;

.field private final mInputDeviceListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/InputDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

.field private final mInputDevicesLock:Ljava/lang/Object;

.field private mOnTabletModeChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mTabletModeChangedListener:Landroid/hardware/input/InputManager$TabletModeChangedListener;

.field private final mTabletModeLock:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/hardware/input/IInputManager;)V
    .locals 1
    .param p1, "im"    # Landroid/hardware/input/IInputManager;

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/input/InputManager;->mTabletModeLock:Ljava/lang/Object;

    .line 277
    iput-object p1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    .line 278
    return-void
.end method

.method static synthetic access$200(Landroid/hardware/input/InputManager;[I)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/input/InputManager;
    .param p1, "x1"    # [I

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->onInputDevicesChanged([I)V

    return-void
.end method

.method static synthetic access$300(Landroid/hardware/input/InputManager;JZ)V
    .locals 1
    .param p0, "x0"    # Landroid/hardware/input/InputManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/input/InputManager;->onTabletModeChanged(JZ)V

    return-void
.end method

.method static synthetic access$400(Landroid/hardware/input/InputManager;)Landroid/hardware/input/IInputManager;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/input/InputManager;

    .prologue
    .line 60
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    return-object v0
.end method

.method private static containsDeviceId([II)Z
    .locals 2
    .param p0, "deviceIdAndGeneration"    # [I
    .param p1, "deviceId"    # I

    .prologue
    .line 1104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 1105
    aget v1, p0, v0

    if-ne v1, p1, :cond_0

    .line 1106
    const/4 v1, 0x1

    .line 1109
    :goto_1
    return v1

    .line 1104
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 1109
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;

    .prologue
    .line 426
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 427
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 428
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->mListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    if-ne v2, p1, :cond_0

    .line 432
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 427
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 432
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I
    .locals 3
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    .prologue
    .line 509
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 510
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 511
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;

    iget-object v2, v2, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;->mListener:Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    if-ne v2, p1, :cond_0

    .line 515
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 510
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 515
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static getInstance()Landroid/hardware/input/InputManager;
    .locals 4

    .prologue
    .line 288
    const-class v2, Landroid/hardware/input/InputManager;

    monitor-enter v2

    .line 289
    :try_start_0
    sget-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;

    if-nez v1, :cond_0

    .line 290
    const-string/jumbo v1, "input"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 291
    .local v0, "b":Landroid/os/IBinder;
    new-instance v1, Landroid/hardware/input/InputManager;

    invoke-static {v0}, Landroid/hardware/input/IInputManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/input/IInputManager;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/hardware/input/InputManager;-><init>(Landroid/hardware/input/IInputManager;)V

    sput-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;

    .line 293
    :cond_0
    sget-object v1, Landroid/hardware/input/InputManager;->sInstance:Landroid/hardware/input/InputManager;

    monitor-exit v2

    return-object v1

    .line 294
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private initializeTabletModeListenerLocked()V
    .locals 4

    .prologue
    .line 498
    new-instance v1, Landroid/hardware/input/InputManager$TabletModeChangedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/hardware/input/InputManager$TabletModeChangedListener;-><init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$1;)V

    .line 500
    .local v1, "listener":Landroid/hardware/input/InputManager$TabletModeChangedListener;
    :try_start_0
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v2, v1}, Landroid/hardware/input/IInputManager;->registerTabletModeChangedListener(Landroid/hardware/input/ITabletModeChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    iput-object v1, p0, Landroid/hardware/input/InputManager;->mTabletModeChangedListener:Landroid/hardware/input/InputManager$TabletModeChangedListener;

    .line 505
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    .line 506
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not register tablet mode changed listener"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private onInputDevicesChanged([I)V
    .locals 8
    .param p1, "deviceIdAndGeneration"    # [I

    .prologue
    .line 1057
    iget-object v6, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v6

    .line 1058
    :try_start_0
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "i":I
    :cond_0
    :goto_0
    add-int/lit8 v3, v3, -0x1

    if-lez v3, :cond_1

    .line 1059
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1060
    .local v1, "deviceId":I
    invoke-static {p1, v1}, Landroid/hardware/input/InputManager;->containsDeviceId([II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1064
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1065
    const/4 v5, 0x2

    invoke-direct {p0, v5, v1}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V

    goto :goto_0

    .line 1092
    .end local v1    # "deviceId":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1069
    .restart local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    :goto_1
    :try_start_1
    array-length v5, p1

    if-ge v3, v5, :cond_4

    .line 1070
    aget v1, p1, v3

    .line 1071
    .restart local v1    # "deviceId":I
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    .line 1072
    .local v4, "index":I
    if-ltz v4, :cond_3

    .line 1073
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/InputDevice;

    .line 1074
    .local v0, "device":Landroid/view/InputDevice;
    if-eqz v0, :cond_2

    .line 1075
    add-int/lit8 v5, v3, 0x1

    aget v2, p1, v5

    .line 1076
    .local v2, "generation":I
    invoke-virtual {v0}, Landroid/view/InputDevice;->getGeneration()I

    move-result v5

    if-eq v5, v2, :cond_2

    .line 1080
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v7}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 1081
    const/4 v5, 0x3

    invoke-direct {p0, v5, v1}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V

    .line 1069
    .end local v0    # "device":Landroid/view/InputDevice;
    .end local v2    # "generation":I
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 1088
    :cond_3
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    const/4 v7, 0x0

    invoke-virtual {v5, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1089
    const/4 v5, 0x1

    invoke-direct {p0, v5, v1}, Landroid/hardware/input/InputManager;->sendMessageToInputDeviceListenersLocked(II)V

    goto :goto_2

    .line 1092
    .end local v1    # "deviceId":I
    .end local v4    # "index":I
    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1093
    return-void
.end method

.method private onTabletModeChanged(JZ)V
    .locals 5
    .param p1, "whenNanos"    # J
    .param p3, "inTabletMode"    # Z

    .prologue
    .line 1118
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1119
    :try_start_0
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1120
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1121
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;

    .line 1123
    .local v2, "listener":Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
    invoke-virtual {v2, p1, p2, p3}, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;->sendTabletModeChanged(JZ)V

    .line 1120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1125
    .end local v2    # "listener":Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
    :cond_0
    monitor-exit v4

    .line 1126
    return-void

    .line 1125
    .end local v0    # "N":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private populateInputDevicesLocked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1026
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    if-nez v4, :cond_0

    .line 1027
    new-instance v3, Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    invoke-direct {v3, p0, v6}, Landroid/hardware/input/InputManager$InputDevicesChangedListener;-><init>(Landroid/hardware/input/InputManager;Landroid/hardware/input/InputManager$1;)V

    .line 1029
    .local v3, "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    :try_start_0
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v4, v3}, Landroid/hardware/input/IInputManager;->registerInputDevicesChangedListener(Landroid/hardware/input/IInputDevicesChangedListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    iput-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevicesChangedListener:Landroid/hardware/input/InputManager$InputDevicesChangedListener;

    .line 1037
    .end local v3    # "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    :cond_0
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    if-nez v4, :cond_1

    .line 1040
    :try_start_1
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v4}, Landroid/hardware/input/IInputManager;->getInputDeviceIds()[I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1045
    .local v2, "ids":[I
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    .line 1046
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v2

    if-ge v1, v4, :cond_1

    .line 1047
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    aget v5, v2, v1

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1046
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1030
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    .restart local v3    # "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    :catch_0
    move-exception v0

    .line 1031
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Could not get register input device changed listener"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1041
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v3    # "listener":Landroid/hardware/input/InputManager$InputDevicesChangedListener;
    :catch_1
    move-exception v0

    .line 1042
    .restart local v0    # "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Could not get input device ids."

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1050
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    return-void
.end method

.method private sendMessageToInputDeviceListenersLocked(II)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "deviceId"    # I

    .prologue
    .line 1096
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1097
    .local v2, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1098
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    .line 1099
    .local v1, "listener":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    const/4 v3, 0x0

    invoke-virtual {v1, p1, p2, v3}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->sendMessage(Landroid/os/Message;)Z

    .line 1097
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1101
    .end local v1    # "listener":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    :cond_0
    return-void
.end method


# virtual methods
.method public addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 644
    if-nez p1, :cond_0

    .line 645
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "inputDeviceDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 647
    :cond_0
    if-nez p2, :cond_1

    .line 648
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 652
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->addKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    :goto_0
    return-void

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not add keyboard layout for input device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addOrRemoveVirtualGamePadDevice(Z)I
    .locals 3
    .param p1, "add"    # Z

    .prologue
    .line 998
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->addOrRemoveVirtualGamePadDevice(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1001
    :goto_0
    return v1

    .line 999
    :catch_0
    move-exception v0

    .line 1000
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not call addOrRemoveVirtualGamePadDevice()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public coverEventFinished()V
    .locals 3

    .prologue
    .line 908
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1}, Landroid/hardware/input/IInputManager;->coverEventFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    :goto_0
    return-void

    .line 909
    :catch_0
    move-exception v0

    .line 910
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not call coverEventFinished()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public deviceHasKeys(I[I)[Z
    .locals 3
    .param p1, "id"    # I
    .param p2, "keyCodes"    # [I

    .prologue
    .line 822
    array-length v1, p2

    new-array v0, v1, [Z

    .line 824
    .local v0, "ret":[Z
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    const/16 v2, -0x100

    invoke-interface {v1, p1, v2, p2, v0}, Landroid/hardware/input/IInputManager;->hasKeys(II[I[Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    :goto_0
    return-object v0

    .line 825
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public deviceHasKeys([I)[Z
    .locals 1
    .param p1, "keyCodes"    # [I

    .prologue
    .line 805
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/input/InputManager;->deviceHasKeys(I[I)[Z

    move-result-object v0

    return-object v0
.end method

.method public enablePatialScreen(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1144
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->enablePatialScreen(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1147
    :goto_0
    return-void

    .line 1145
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 572
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->getCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 575
    :goto_0
    return-object v1

    .line 573
    :catch_0
    move-exception v0

    .line 574
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not get current keyboard layout for input device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInboundQueueLength()I
    .locals 2

    .prologue
    .line 985
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1}, Landroid/hardware/input/IInputManager;->getInboundQueueLength()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 987
    :goto_0
    return v1

    .line 986
    :catch_0
    move-exception v0

    .line 987
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getInputDevice(I)Landroid/view/InputDevice;
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 303
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 304
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    .line 306
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    .line 307
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 308
    const/4 v2, 0x0

    monitor-exit v4

    .line 322
    :goto_0
    return-object v2

    .line 311
    :cond_0
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 312
    .local v2, "inputDevice":Landroid/view/InputDevice;
    if-nez v2, :cond_1

    .line 314
    :try_start_1
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v3, p1}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 318
    if-eqz v2, :cond_1

    .line 319
    :try_start_2
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 322
    :cond_1
    monitor-exit v4

    goto :goto_0

    .line 323
    .end local v1    # "index":I
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 315
    .restart local v1    # "index":I
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    :catch_0
    move-exception v0

    .line 316
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v5, "Could not get input device information."

    invoke-direct {v3, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public getInputDeviceByDescriptor(Ljava/lang/String;)Landroid/view/InputDevice;
    .locals 6
    .param p1, "descriptor"    # Ljava/lang/String;

    .prologue
    .line 333
    if-nez p1, :cond_0

    .line 334
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "descriptor must not be null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 337
    :cond_0
    iget-object v5, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v5

    .line 338
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    .line 340
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 341
    .local v3, "numDevices":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_4

    .line 342
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputDevice;

    .line 343
    .local v2, "inputDevice":Landroid/view/InputDevice;
    if-nez v2, :cond_3

    .line 344
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 346
    .local v1, "id":I
    :try_start_1
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v4, v1}, Landroid/hardware/input/IInputManager;->getInputDevice(I)Landroid/view/InputDevice;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 350
    :goto_1
    if-nez v2, :cond_2

    .line 341
    .end local v1    # "id":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 353
    .restart local v1    # "id":I
    :cond_2
    :try_start_2
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v4, v0, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 355
    .end local v1    # "id":I
    :cond_3
    invoke-virtual {v2}, Landroid/view/InputDevice;->getDescriptor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 356
    monitor-exit v5

    .line 359
    .end local v2    # "inputDevice":Landroid/view/InputDevice;
    :goto_2
    return-object v2

    :cond_4
    const/4 v2, 0x0

    monitor-exit v5

    goto :goto_2

    .line 360
    .end local v0    # "i":I
    .end local v3    # "numDevices":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 347
    .restart local v0    # "i":I
    .restart local v1    # "id":I
    .restart local v2    # "inputDevice":Landroid/view/InputDevice;
    .restart local v3    # "numDevices":I
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public getInputDeviceIds()[I
    .locals 5

    .prologue
    .line 368
    iget-object v4, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v4

    .line 369
    :try_start_0
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->populateInputDevicesLocked()V

    .line 371
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 372
    .local v0, "count":I
    new-array v2, v0, [I

    .line 373
    .local v2, "ids":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 374
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevices:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    :cond_0
    monitor-exit v4

    return-object v2

    .line 377
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "ids":[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getInputDeviceVibrator(I)Landroid/os/Vibrator;
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 1134
    new-instance v0, Landroid/hardware/input/InputManager$InputDeviceVibrator;

    invoke-direct {v0, p0, p1}, Landroid/hardware/input/InputManager$InputDeviceVibrator;-><init>(Landroid/hardware/input/InputManager;I)V

    return-object v0
.end method

.method public getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    .locals 3
    .param p1, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 549
    if-nez p1, :cond_0

    .line 550
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 554
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->getKeyboardLayout(Ljava/lang/String;)Landroid/hardware/input/KeyboardLayout;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 557
    :goto_0
    return-object v1

    .line 555
    :catch_0
    move-exception v0

    .line 556
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not get keyboard layout information."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    .locals 3

    .prologue
    .line 532
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1}, Landroid/hardware/input/IInputManager;->getKeyboardLayouts()[Landroid/hardware/input/KeyboardLayout;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 535
    :goto_0
    return-object v1

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not get list of keyboard layout informations."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 535
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/hardware/input/KeyboardLayout;

    goto :goto_0
.end method

.method public getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;

    .prologue
    .line 618
    if-nez p1, :cond_0

    .line 619
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "inputDeviceDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 623
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->getKeyboardLayoutsForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 626
    :goto_0
    return-object v1

    .line 624
    :catch_0
    move-exception v0

    .line 625
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not get keyboard layouts for input device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    const-class v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getPointerSpeed(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 739
    const/4 v0, 0x0

    .line 741
    .local v0, "speed":I
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "pointer_speed"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 745
    :goto_0
    return v0

    .line 743
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getScanCodeState(III)I
    .locals 2
    .param p1, "deviceId"    # I
    .param p2, "sourceMask"    # I
    .param p3, "scanCode"    # I

    .prologue
    .line 940
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/input/IInputManager;->getScanCodeState(III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 942
    :goto_0
    return v1

    .line 941
    :catch_0
    move-exception v0

    .line 942
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getSmartHallFlipState()I
    .locals 1

    .prologue
    .line 1155
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0}, Landroid/hardware/input/IInputManager;->getSmartHallFlipState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1159
    :goto_0
    return v0

    .line 1156
    :catch_0
    move-exception v0

    .line 1159
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchCalibration(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I

    .prologue
    .line 697
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->getTouchCalibrationForInputDevice(Ljava/lang/String;I)Landroid/hardware/input/TouchCalibration;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 700
    :goto_0
    return-object v1

    .line 698
    :catch_0
    move-exception v0

    .line 699
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not get calibration matrix for input device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 700
    sget-object v1, Landroid/hardware/input/TouchCalibration;->IDENTITY:Landroid/hardware/input/TouchCalibration;

    goto :goto_0
.end method

.method public injectInputEvent(Landroid/view/InputEvent;I)Z
    .locals 3
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "mode"    # I

    .prologue
    .line 854
    if-nez p1, :cond_0

    .line 855
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "event must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 857
    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    .line 860
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "mode is invalid"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 864
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 866
    :goto_0
    return v1

    .line 865
    :catch_0
    move-exception v0

    .line 866
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInTabletMode()I
    .locals 3

    .prologue
    .line 445
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1}, Landroid/hardware/input/IInputManager;->isInTabletMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 448
    :goto_0
    return v1

    .line 446
    :catch_0
    move-exception v0

    .line 447
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not get tablet mode state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 448
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    .locals 2
    .param p1, "inputChannelName"    # Ljava/lang/String;

    .prologue
    .line 955
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 957
    :goto_0
    return-object v1

    .line 956
    :catch_0
    move-exception v0

    .line 957
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 391
    if-nez p1, :cond_0

    .line 392
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "listener must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 395
    :cond_0
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v2

    .line 396
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    move-result v0

    .line 397
    .local v0, "index":I
    if-gez v0, :cond_1

    .line 398
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    new-instance v3, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    invoke-direct {v3, p1, p2}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;-><init>(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    :cond_1
    monitor-exit v2

    .line 401
    return-void

    .line 400
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnTabletModeChangedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 462
    if-nez p1, :cond_0

    .line 463
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 465
    :cond_0
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 466
    :try_start_0
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    if-nez v2, :cond_1

    .line 467
    invoke-direct {p0}, Landroid/hardware/input/InputManager;->initializeTabletModeListenerLocked()V

    .line 469
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I

    move-result v1

    .line 470
    .local v1, "idx":I
    if-gez v1, :cond_2

    .line 471
    new-instance v0, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;

    invoke-direct {v0, p1, p2}, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;-><init>(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;Landroid/os/Handler;)V

    .line 473
    .local v0, "d":Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    .end local v0    # "d":Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
    :cond_2
    monitor-exit v3

    .line 476
    return-void

    .line 475
    .end local v1    # "idx":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 672
    if-nez p1, :cond_0

    .line 673
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "inputDeviceDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 675
    :cond_0
    if-nez p2, :cond_1

    .line 676
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 680
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->removeKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :goto_0
    return-void

    .line 681
    :catch_0
    move-exception v0

    .line 682
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not remove keyboard layout for input device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCoverVerify(I)V
    .locals 3
    .param p1, "verify"    # I

    .prologue
    .line 970
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->setCoverVerify(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    :goto_0
    return-void

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not call setCoverVerify()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    .locals 3
    .param p1, "identifier"    # Landroid/hardware/input/InputDeviceIdentifier;
    .param p2, "keyboardLayoutDescriptor"    # Ljava/lang/String;

    .prologue
    .line 594
    if-nez p1, :cond_0

    .line 595
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "identifier must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 597
    :cond_0
    if-nez p2, :cond_1

    .line 598
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "keyboardLayoutDescriptor must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 602
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2}, Landroid/hardware/input/IInputManager;->setCurrentKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not set current keyboard layout for input device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setEnableTSP(Landroid/hardware/input/InputManager$TSP_CMDTYPE;Z)Z
    .locals 3
    .param p1, "cmdtype"    # Landroid/hardware/input/InputManager$TSP_CMDTYPE;
    .param p2, "enable"    # Z

    .prologue
    .line 1017
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-virtual {p1}, Landroid/hardware/input/InputManager$TSP_CMDTYPE;->getvalue()I

    move-result v2

    invoke-interface {v1, v2, p2}, Landroid/hardware/input/IInputManager;->setEnableTSP(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1020
    :goto_0
    return v1

    .line 1018
    :catch_0
    move-exception v0

    .line 1019
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not call setEnableTSPforSpayGesture()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFlipCoverTouchEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 893
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->setFlipCoverTouchEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    :goto_0
    return-void

    .line 894
    :catch_0
    move-exception v0

    .line 895
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not set setFlipCovertouchEnabled()"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLedState(Z)I
    .locals 2
    .param p1, "on"    # Z

    .prologue
    .line 925
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->setLedState(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 927
    :goto_0
    return v1

    .line 926
    :catch_0
    move-exception v0

    .line 927
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public setMonitorChannelFilter(Landroid/view/InputChannel;I)V
    .locals 1
    .param p1, "inputChannel"    # Landroid/view/InputChannel;
    .param p2, "monitorFilter"    # I

    .prologue
    .line 1186
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2}, Landroid/hardware/input/IInputManager;->setMonitorChannelFilter(Landroid/view/InputChannel;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    :goto_0
    return-void

    .line 1187
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPointerSpeed(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "speed"    # I

    .prologue
    .line 761
    const/4 v0, -0x7

    if-lt p2, v0, :cond_0

    const/4 v0, 0x7

    if-le p2, v0, :cond_1

    .line 762
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "speed out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 765
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "pointer_speed"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 767
    return-void
.end method

.method public setStartedShutdown(Z)V
    .locals 1
    .param p1, "isStarted"    # Z

    .prologue
    .line 878
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1}, Landroid/hardware/input/IInputManager;->setStartedShutdown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    :goto_0
    return-void

    .line 879
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setTouchCalibration(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    .locals 3
    .param p1, "inputDeviceDescriptor"    # Ljava/lang/String;
    .param p2, "surfaceRotation"    # I
    .param p3, "calibration"    # Landroid/hardware/input/TouchCalibration;

    .prologue
    .line 719
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/input/IInputManager;->setTouchCalibrationForInputDevice(Ljava/lang/String;ILandroid/hardware/input/TouchCalibration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 723
    :goto_0
    return-void

    .line 720
    :catch_0
    move-exception v0

    .line 721
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not set calibration matrix for input device."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "packagename"    # Ljava/lang/String;
    .param p2, "isPut"    # Z
    .param p3, "keycodes"    # Ljava/lang/String;

    .prologue
    .line 1174
    :try_start_0
    iget-object v0, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/input/IInputManager;->setWakeKeyDynamically(Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1177
    :goto_0
    return-void

    .line 1175
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public tryPointerSpeed(I)V
    .locals 3
    .param p1, "speed"    # I

    .prologue
    .line 781
    const/4 v1, -0x7

    if-lt p1, v1, :cond_0

    const/4 v1, 0x7

    if-le p1, v1, :cond_1

    .line 782
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "speed out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 786
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/hardware/input/InputManager;->mIm:Landroid/hardware/input/IInputManager;

    invoke-interface {v1, p1}, Landroid/hardware/input/IInputManager;->tryPointerSpeed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 790
    :goto_0
    return-void

    .line 787
    :catch_0
    move-exception v0

    .line 788
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "InputManager"

    const-string v2, "Could not set temporary pointer speed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$InputDeviceListener;

    .prologue
    .line 411
    if-nez p1, :cond_0

    .line 412
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 415
    :cond_0
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mInputDevicesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 416
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findInputDeviceListenerLocked(Landroid/hardware/input/InputManager$InputDeviceListener;)I

    move-result v1

    .line 417
    .local v1, "index":I
    if-ltz v1, :cond_1

    .line 418
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;

    .line 419
    .local v0, "d":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 420
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mInputDeviceListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 422
    .end local v0    # "d":Landroid/hardware/input/InputManager$InputDeviceListenerDelegate;
    :cond_1
    monitor-exit v3

    .line 423
    return-void

    .line 422
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public unregisterOnTabletModeChangedListener(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/hardware/input/InputManager$OnTabletModeChangedListener;

    .prologue
    .line 485
    if-nez p1, :cond_0

    .line 486
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "listener must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 488
    :cond_0
    iget-object v3, p0, Landroid/hardware/input/InputManager;->mTabletModeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 489
    :try_start_0
    invoke-direct {p0, p1}, Landroid/hardware/input/InputManager;->findOnTabletModeChangedListenerLocked(Landroid/hardware/input/InputManager$OnTabletModeChangedListener;)I

    move-result v1

    .line 490
    .local v1, "idx":I
    if-ltz v1, :cond_1

    .line 491
    iget-object v2, p0, Landroid/hardware/input/InputManager;->mOnTabletModeChangedListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;

    .line 492
    .local v0, "d":Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 494
    .end local v0    # "d":Landroid/hardware/input/InputManager$OnTabletModeChangedListenerDelegate;
    :cond_1
    monitor-exit v3

    .line 495
    return-void

    .line 494
    .end local v1    # "idx":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
