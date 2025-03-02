.class public abstract Landroid/hardware/display/DisplayManagerInternal;
.super Ljava/lang/Object;
.source "DisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;,
        Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;,
        Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addScaledPidFromWindowManager(ILjava/lang/String;)V
.end method

.method public abstract blankAllDisplaysFromPowerManager()V
.end method

.method public abstract getCurrentScreenBrightnessBeforeFinal()I
.end method

.method public abstract getDisplayInfo(I)Landroid/view/DisplayInfo;
.end method

.method public abstract initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
.end method

.method public abstract isForceUnblankDisplay()Z
.end method

.method public abstract isProximitySensorAvailable()Z
.end method

.method public abstract performTraversalInTransactionFromWindowManager()V
.end method

.method public abstract registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
.end method

.method public abstract removeScaledPidFromWindowManager(I)V
.end method

.method public abstract removeScaledPidsFromWindowManager()V
.end method

.method public abstract requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
.end method

.method public abstract setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V
.end method

.method public abstract setDisplayOffsets(III)V
.end method

.method public abstract setDisplayProperties(IZFIZ)V
.end method

.method public abstract setInputMethodDisplayEnabled(ZI)V
.end method

.method public abstract unblankAllDisplaysFromPowerManager()V
.end method

.method public abstract unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
.end method
