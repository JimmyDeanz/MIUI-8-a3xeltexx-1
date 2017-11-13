.class public abstract Landroid/view/WindowManagerInternal;
.super Ljava/lang/Object;
.source "WindowManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowManagerInternal$AppTransitionListener;,
        Landroid/view/WindowManagerInternal$MagnificationCallbacks;,
        Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;
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
.method public abstract addWindowToken(Landroid/os/IBinder;I)V
.end method

.method public abstract getCompatibleMagnificationSpecForWindow(Landroid/os/IBinder;)Landroid/view/MagnificationSpec;
.end method

.method public abstract getFocusedAppToken()Landroid/os/IBinder;
.end method

.method public abstract getFocusedWindowToken()Landroid/os/IBinder;
.end method

.method public abstract getInputMethodTarget()Landroid/view/WindowManagerPolicy$WindowState;
.end method

.method public abstract getStackId(Landroid/os/IBinder;)I
.end method

.method public abstract getWindowFrame(Landroid/os/IBinder;Landroid/graphics/Rect;)V
.end method

.method public abstract isCascade(Landroid/os/IBinder;)Z
.end method

.method public abstract isGrantPermissionAppToken(Landroid/os/IBinder;)Z
.end method

.method public abstract isKeyguardLocked()Z
.end method

.method public abstract registerAppTransitionListener(Landroid/view/WindowManagerInternal$AppTransitionListener;)V
.end method

.method public abstract removeWindowToken(Landroid/os/IBinder;Z)V
.end method

.method public abstract requestTraversalFromDisplayManager()V
.end method

.method public abstract setInputFilter(Landroid/view/IInputFilter;)V
.end method

.method public abstract setMagnificationCallbacks(Landroid/view/WindowManagerInternal$MagnificationCallbacks;I)V
.end method

.method public abstract setMagnificationSpec(Landroid/view/MagnificationSpec;I)V
.end method

.method public abstract setScreenRotationAnimation(II)V
.end method

.method public abstract setTouchExplorationEnabled(Z)V
.end method

.method public abstract setWindowsForAccessibilityCallback(Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;I)V
.end method

.method public abstract showGlobalActions()V
.end method

.method public abstract showStatusBarByNotification()V
.end method

.method public abstract waitForAllWindowsDrawn(Ljava/lang/Runnable;JI)V
.end method
