.class public Lcom/android/server/desktop/DesktopNative;
.super Ljava/lang/Object;
.source "DesktopNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native checkDevice()Z
.end method

.method public static native isConnected()Z
.end method

.method public static native readDevice()B
.end method

.method public static native setConnected(Z)V
.end method

.method public static native writeDevice(I)Z
.end method
