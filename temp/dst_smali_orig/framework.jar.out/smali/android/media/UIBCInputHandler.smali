.class public Landroid/media/UIBCInputHandler;
.super Ljava/lang/Object;
.source "UIBCInputHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UIBCInputHandler_JNI.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    :try_start_0
    const-string v1, "UIBCInputHandler_JNI.java"

    const-string v2, "try to load libuibc.so"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "uibc"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "UIBCInputHandler"

    const-string v2, "Fail to load libuibc.so library."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/UIBCInputHandler;->mContext:Landroid/content/Context;

    iput-object p1, p0, Landroid/media/UIBCInputHandler;->mContext:Landroid/content/Context;

    const-string v0, "UIBCInputHandler_JNI.java"

    const-string v1, "UIBCInputHandler construct"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static native handleDown(I[I[I[I)V
.end method

.method public static native handleMove(I[I[I[I)V
.end method

.method public static native handleRotate(II)V
.end method

.method public static native handleScroll(FF)V
.end method

.method public static native handleUp(I[I[I[I)V
.end method

.method public static native isActiveUIBC()Z
.end method

.method public static native keyDown(II)V
.end method

.method public static native keyDownASCII(II)V
.end method

.method public static native keyUp(II)V
.end method

.method public static native keyUpASCII(II)V
.end method


# virtual methods
.method public isActive()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, "isActive":Z
    :try_start_0
    invoke-static {}, Landroid/media/UIBCInputHandler;->isActiveUIBC()Z

    move-result v1

    const-string v2, "UIBCInputHandler_JNI.java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UIBC Active = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/NoSuchMethodError;
    const-string v2, "UIBCInputHandler_JNI.java"

    const-string v3, "NoSuchMethod - mWfdSinkManager.isActiveUIBC()"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
