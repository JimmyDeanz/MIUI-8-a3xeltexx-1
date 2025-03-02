.class public Landroid/hardware/SecExternalDisplayJNIInterface;
.super Ljava/lang/Object;
.source "SecExternalDisplayJNIInterface.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SecExternalDisplay_Java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "SecExternalDisplay_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, "SecExternalDisplay_Java"

    const-string v1, "SecExternalDisplayJNIInterface +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-direct {p0}, Landroid/hardware/SecExternalDisplayJNIInterface;->_native_setup()V

    .line 32
    return-void
.end method

.method private native _SecExternalDisplayBlankDisplay(I)Z
.end method

.method private native _SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z
.end method

.method private native _SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z
.end method

.method private native _SecExternalDisplayGet3DMode()I
.end method

.method private native _SecExternalDisplayGetResolution()I
.end method

.method private native _SecExternalDisplayGetStatus(I)Z
.end method

.method private native _SecExternalDisplayLEDDestroy()Z
.end method

.method private native _SecExternalDisplayLEDInit()Z
.end method

.method private native _SecExternalDisplayLEDOff()Z
.end method

.method private native _SecExternalDisplayLEDRefresh()Z
.end method

.method private native _SecExternalDisplayLEDSetLoop(IIIII)Z
.end method

.method private native _SecExternalDisplayLEDSetScroll(IIIII)Z
.end method

.method private native _SecExternalDisplayLEDSetframe([BII)Z
.end method

.method private native _SecExternalDisplayRegisterEVF(Z)I
.end method

.method private native _SecExternalDisplaySet3DMode(I)I
.end method

.method private native _SecExternalDisplaySetExternalUITransform(I)Z
.end method

.method private native _SecExternalDisplaySetForceMirrorMode(Z)Z
.end method

.method private native _SecExternalDisplaySetGpuLock(Ljava/lang/String;I)Z
.end method

.method private native _SecExternalDisplaySetOutputMode(I)Z
.end method

.method private native _SecExternalDisplaySetPause(Z)Z
.end method

.method private native _SecExternalDisplaySetResolution(I)Z
.end method

.method private native _SecExternalDisplaySetStatus(IZ)Z
.end method

.method private native _SecExternalDisplayStartStopVFBThread(IIZ)Z
.end method

.method private native _SecExternalDisplayType(Z)Z
.end method

.method private final native _native_setup()V
.end method

.method private final native _release()V
.end method


# virtual methods
.method public SecExternalDisplayBlankDisplay(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayBlankDisplay(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "surface"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayCreateSurface(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z
    .locals 1
    .param p1, "surface"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayDestroySurface(Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayGet3DMode()I
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayGet3DMode()I

    move-result v0

    return v0
.end method

.method public SecExternalDisplayGetResolution()I
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayGetResolution()I

    move-result v0

    return v0
.end method

.method public SecExternalDisplayGetStatus(I)Z
    .locals 1
    .param p1, "param"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayGetStatus(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayLEDDestroy()Z
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayLEDDestroy()Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayLEDInit()Z
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayLEDInit()Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayLEDOff()Z
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayLEDOff()Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayLEDRefresh()Z
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayLEDRefresh()Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayLEDSetLoop(IIIII)Z
    .locals 1
    .param p1, "enable"    # I
    .param p2, "time"    # I
    .param p3, "count"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayLEDSetLoop(IIIII)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayLEDSetScroll(IIIII)Z
    .locals 1
    .param p1, "enable"    # I
    .param p2, "time"    # I
    .param p3, "count"    # I
    .param p4, "start"    # I
    .param p5, "end"    # I

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayLEDSetScroll(IIIII)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayLEDSetframe([BII)Z
    .locals 1
    .param p1, "data"    # [B
    .param p2, "numOfFrames"    # I
    .param p3, "repeatCount"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayLEDSetframe([BII)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayRegisterEVF(Z)I
    .locals 1
    .param p1, "bStatus"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayRegisterEVF(Z)I

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySet3DMode(I)I
    .locals 1
    .param p1, "nS3DMode"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplaySet3DMode(I)I

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetExternalUITransform(I)Z
    .locals 1
    .param p1, "transform"    # I

    .prologue
    .line 73
    invoke-direct {p0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplaySetExternalUITransform(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetForceMirrorMode(Z)Z
    .locals 1
    .param p1, "bEnable"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplaySetForceMirrorMode(Z)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetGpuLock(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplaySetGpuLock(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetOutputMode(I)Z
    .locals 1
    .param p1, "nOutputMode"    # I

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplaySetOutputMode(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetPause(Z)Z
    .locals 1
    .param p1, "bStatus"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplaySetPause(Z)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetResolution(I)Z
    .locals 1
    .param p1, "nResolution"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplaySetResolution(I)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplaySetStatus(IZ)Z
    .locals 1
    .param p1, "param"    # I
    .param p2, "status"    # Z

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplaySetStatus(IZ)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayStartStopVFBThread(IIZ)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "startStopflag"    # Z

    .prologue
    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayStartStopVFBThread(IIZ)Z

    move-result v0

    return v0
.end method

.method public SecExternalDisplayType(Z)Z
    .locals 1
    .param p1, "bIsTablet"    # Z

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/hardware/SecExternalDisplayJNIInterface;->_SecExternalDisplayType(Z)Z

    move-result v0

    return v0
.end method
