.class public abstract Landroid/os/Vibrator;
.super Ljava/lang/Object;
.source "Vibrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/Vibrator$MagnitudeTypes;
    }
.end annotation


# static fields
.field public static final SEM_TYPE_MOTOR_COIN_DC:I = 0x1

.field public static final SEM_TYPE_MOTOR_COIN_DC_PMIC_LDO:I = 0x3

.field public static final SEM_TYPE_MOTOR_LINEAR:I = 0x2

.field public static final SEM_TYPE_MOTOR_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Vibrator"


# instance fields
.field protected final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public getMaxMagnitude()I
    .locals 1

    .prologue
    const/16 v0, 0x270f

    return v0
.end method

.method public abstract hasVibrator()Z
.end method

.method public isEnableIntensity()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public resetMagnitude()V
    .locals 0

    .prologue
    return-void
.end method

.method public semGetMotorType()I
    .locals 1

    .prologue
    const/4 v0, -0x2

    return v0
.end method

.method public setMagnitude(I)V
    .locals 0
    .param p1, "magnitude"    # I

    .prologue
    return-void
.end method

.method public vibrate(IILandroid/media/AudioAttributes;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "repeat"    # I
    .param p3, "attributes"    # Landroid/media/AudioAttributes;
    .param p4, "magnitude"    # I

    .prologue
    return-void
.end method

.method public vibrate(IILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "repeat"    # I
    .param p3, "attributes"    # Landroid/media/AudioAttributes;
    .param p4, "magnitudeType"    # Landroid/os/Vibrator$MagnitudeTypes;

    .prologue
    return-void
.end method

.method public vibrate(ILandroid/media/AudioAttributes;I)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "attributes"    # Landroid/media/AudioAttributes;
    .param p3, "magnitude"    # I

    .prologue
    return-void
.end method

.method public vibrate(ILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "attributes"    # Landroid/media/AudioAttributes;
    .param p3, "magnitudeType"    # Landroid/os/Vibrator$MagnitudeTypes;

    .prologue
    return-void
.end method

.method public abstract vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V
.end method

.method public abstract vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
.end method

.method public vibrate(J)V
    .locals 3
    .param p1, "milliseconds"    # J

    .prologue
    const-string v0, "Vibrator"

    const-string v1, "Called vibrate(long) API!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    check-cast v0, Landroid/media/AudioAttributes;

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    return-void
.end method

.method public vibrate(JLandroid/media/AudioAttributes;)V
    .locals 7
    .param p1, "milliseconds"    # J
    .param p3, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    const-string v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vibrate(long, AudioAttributes) API - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", AudioAttr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    iget-object v3, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    move-object v1, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V

    return-void
.end method

.method public vibrate(JLandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V
    .locals 0
    .param p1, "milliseconds"    # J
    .param p3, "attributes"    # Landroid/media/AudioAttributes;
    .param p4, "magnitudeType"    # Landroid/os/Vibrator$MagnitudeTypes;

    .prologue
    return-void
.end method

.method public vibrate(JLandroid/os/Vibrator$MagnitudeTypes;)V
    .locals 0
    .param p1, "milliseconds"    # J
    .param p3, "magnitudeType"    # Landroid/os/Vibrator$MagnitudeTypes;

    .prologue
    return-void
.end method

.method public vibrate([JI)V
    .locals 2
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I

    .prologue
    const-string v0, "Vibrator"

    const-string v1, "Called vibrate(long[], int) API!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    check-cast v0, Landroid/media/AudioAttributes;

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Vibrator;->vibrate([JILandroid/media/AudioAttributes;)V

    return-void
.end method

.method public vibrate([JII)V
    .locals 0
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I
    .param p3, "magnitude"    # I

    .prologue
    return-void
.end method

.method public vibrate([JILandroid/media/AudioAttributes;)V
    .locals 6
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I
    .param p3, "attributes"    # Landroid/media/AudioAttributes;

    .prologue
    const-string v0, "Vibrator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "vibrate(long[], int, AudioAttributes) API - PUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", PackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", repeat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", AudioAttr: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iget-object v2, p0, Landroid/os/Vibrator;->mPackageName:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/os/Vibrator;->vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V

    return-void
.end method

.method public vibrate([JILandroid/media/AudioAttributes;Landroid/os/Vibrator$MagnitudeTypes;)V
    .locals 0
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I
    .param p3, "attributes"    # Landroid/media/AudioAttributes;
    .param p4, "magnitudeType"    # Landroid/os/Vibrator$MagnitudeTypes;

    .prologue
    return-void
.end method

.method public vibrate([JILandroid/os/Vibrator$MagnitudeTypes;)V
    .locals 0
    .param p1, "pattern"    # [J
    .param p2, "repeat"    # I
    .param p3, "magnitudeType"    # Landroid/os/Vibrator$MagnitudeTypes;

    .prologue
    return-void
.end method

.method public vibrateImmVibe(II)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "magnitude"    # I

    .prologue
    return-void
.end method

.method public vibrateImmVibe(ILandroid/os/Vibrator$MagnitudeTypes;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "magnitudeType"    # Landroid/os/Vibrator$MagnitudeTypes;

    .prologue
    return-void
.end method

.method public vibrateImmVibe([BI)V
    .locals 0
    .param p1, "pattern"    # [B
    .param p2, "magnitude"    # I

    .prologue
    return-void
.end method

.method public vibrateImmVibe([BLandroid/os/Vibrator$MagnitudeTypes;)V
    .locals 0
    .param p1, "pattern"    # [B
    .param p2, "magnitudeType"    # Landroid/os/Vibrator$MagnitudeTypes;

    .prologue
    return-void
.end method
