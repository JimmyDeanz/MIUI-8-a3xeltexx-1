.class public Landroid/hardware/scontext/SContextHallSensorAttribute;
.super Landroid/hardware/scontext/SContextAttribute;
.source "SContextHallSensorAttribute.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SContextHallSensorAttribute"


# instance fields
.field private mDisplayStatus:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextHallSensorAttribute;->mDisplayStatus:I

    .line 35
    invoke-direct {p0}, Landroid/hardware/scontext/SContextHallSensorAttribute;->setAttribute()V

    .line 36
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "displayStatus"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/hardware/scontext/SContextAttribute;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextHallSensorAttribute;->mDisplayStatus:I

    .line 52
    iput p1, p0, Landroid/hardware/scontext/SContextHallSensorAttribute;->mDisplayStatus:I

    .line 53
    invoke-direct {p0}, Landroid/hardware/scontext/SContextHallSensorAttribute;->setAttribute()V

    .line 54
    const-string v0, "SContextHallSensorAttribute"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "constructor + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
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
    const-string v1, "display_status"

    iget v2, p0, Landroid/hardware/scontext/SContextHallSensorAttribute;->mDisplayStatus:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    const-string v1, "SContextHallSensorAttribute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "hall sensor status   + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "display_status"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/16 v1, 0x2b

    invoke-super {p0, v1, v0}, Landroid/hardware/scontext/SContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 82
    return-void
.end method


# virtual methods
.method checkAttribute()Z
    .locals 2

    .prologue
    .line 70
    iget v0, p0, Landroid/hardware/scontext/SContextHallSensorAttribute;->mDisplayStatus:I

    if-gez v0, :cond_0

    .line 71
    const-string v0, "SContextHallSensorAttribute"

    const-string v1, "The display status is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDisplayStatus()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Landroid/hardware/scontext/SContextHallSensorAttribute;->mDisplayStatus:I

    return v0
.end method
