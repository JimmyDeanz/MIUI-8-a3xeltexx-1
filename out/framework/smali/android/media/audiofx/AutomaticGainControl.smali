.class public Landroid/media/audiofx/AutomaticGainControl;
.super Landroid/media/audiofx/AudioEffect;
.source "AutomaticGainControl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AutomaticGainControl"


# direct methods
.method private constructor <init>(I)V
    .locals 3
    .param p1, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 106
    sget-object v0, Landroid/media/audiofx/AutomaticGainControl;->EFFECT_TYPE_AGC:Ljava/util/UUID;

    sget-object v1, Landroid/media/audiofx/AutomaticGainControl;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, p1}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    .line 107
    return-void
.end method

.method public static create(I)Landroid/media/audiofx/AutomaticGainControl;
    .locals 4
    .param p0, "audioSession"    # I

    .prologue
    .line 69
    const/4 v0, 0x0

    .line 72
    .local v0, "agc":Landroid/media/audiofx/AutomaticGainControl;
    const-string v1, "AutomaticGainControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "not implemented on this device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-object v0
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method
