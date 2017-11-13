.class public Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;
.super Ljava/lang/Object;
.source "SensoryBargeInEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()I
    .locals 4

    .prologue
    .line 18
    const/4 v1, 0x0

    .line 21
    .local v1, "nResult":I
    :try_start_0
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->TAG:Ljava/lang/String;

    const-string v3, "Trying to load libSensoryBargeInEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    const-string v2, "SensoryBargeInEngine"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 23
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->TAG:Ljava/lang/String;

    const-string v3, "Loading libSensoryBargeInEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :goto_0
    return v1

    .line 25
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->TAG:Ljava/lang/String;

    const-string v3, "WARNING: Could not load libSensoryBargeInEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    const/4 v1, -0x1

    .line 34
    goto :goto_0

    .line 30
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/sensoryinc/fluentsoftsdk/SensoryBargeInEngine;->TAG:Ljava/lang/String;

    const-string v3, "WARNING: Could not load libSensoryBargeInEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public asyncPrint(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 14
    return-void
.end method

.method public native phrasespotClose(J)V
.end method

.method public native phrasespotInit(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method public native phrasespotPipe(J[SJJ[F)Ljava/lang/String;
.end method
