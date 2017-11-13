.class public Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextDualDisplayAngleAttribute.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextDualDisplayAngleAttribute"


# instance fields
.field private mOffAngle:I

.field private mOnAngle:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 29
    const/16 v0, 0xd2

    iput v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    .line 31
    const/16 v0, 0xf0

    iput v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    .line 37
    invoke-direct {p0}, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->setAttribute()V

    .line 38
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "onAngle"    # I
    .param p2, "offAngle"    # I

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 29
    const/16 v0, 0xd2

    iput v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    .line 31
    const/16 v0, 0xf0

    iput v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    .line 54
    iput p1, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    .line 55
    iput p2, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    .line 56
    invoke-direct {p0}, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->setAttribute()V

    .line 57
    return-void
.end method

.method private setAttribute()V
    .locals 4

    .prologue
    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 79
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "onAngle"

    iget v2, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string/jumbo v1, "offAngle"

    iget v2, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 81
    const-string v1, "SContextDualDisplayAngleAttribute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onAngle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "onAngle"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    const-string v1, "SContextDualDisplayAngleAttribute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "offAngle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "offAngle"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const/16 v1, 0x2d

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 84
    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .locals 3

    .prologue
    const/16 v2, 0x168

    const/4 v0, 0x0

    .line 62
    iget v1, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    if-le v1, v2, :cond_1

    .line 63
    :cond_0
    const-string v1, "SContextDualDisplayAngleAttribute"

    const-string v2, "Value of onAngle is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    return v0

    .line 66
    :cond_1
    iget v1, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    if-ltz v1, :cond_2

    iget v1, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    if-le v1, v2, :cond_3

    .line 67
    :cond_2
    const-string v1, "SContextDualDisplayAngleAttribute"

    const-string v2, "Value of offAngle is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 70
    :cond_3
    iget v1, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    iget v2, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    if-le v1, v2, :cond_4

    .line 71
    const-string v1, "SContextDualDisplayAngleAttribute"

    const-string/jumbo v2, "onAngle is above offAngle!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 74
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
