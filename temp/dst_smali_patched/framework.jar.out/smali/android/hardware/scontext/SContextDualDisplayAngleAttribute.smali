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
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/16 v0, 0xd2

    iput v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    const/16 v0, 0xf0

    iput v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->setAttribute()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "onAngle"    # I
    .param p2, "offAngle"    # I

    .prologue
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    const/16 v0, 0xd2

    iput v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    const/16 v0, 0xf0

    iput v0, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    iput p1, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    iput p2, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    invoke-direct {p0}, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->setAttribute()V

    return-void
.end method

.method private setAttribute()V
    .locals 4

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "attribute":Landroid/os/Bundle;
    const-string v1, "onAngle"

    iget v2, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "offAngle"

    iget v2, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "SContextDualDisplayAngleAttribute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAngle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "onAngle"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "SContextDualDisplayAngleAttribute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offAngle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "offAngle"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2d

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .locals 3

    .prologue
    const/16 v2, 0x168

    const/4 v0, 0x0

    iget v1, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    if-le v1, v2, :cond_1

    :cond_0
    const-string v1, "SContextDualDisplayAngleAttribute"

    const-string v2, "Value of onAngle is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    if-ltz v1, :cond_2

    iget v1, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    if-le v1, v2, :cond_3

    :cond_2
    const-string v1, "SContextDualDisplayAngleAttribute"

    const-string v2, "Value of offAngle is wrong!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v1, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOnAngle:I

    iget v2, p0, Landroid/hardware/scontext/SContextDualDisplayAngleAttribute;->mOffAngle:I

    if-le v1, v2, :cond_4

    const-string v1, "SContextDualDisplayAngleAttribute"

    const-string v2, "onAngle is above offAngle!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method
