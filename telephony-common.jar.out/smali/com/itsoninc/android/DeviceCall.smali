.class public Lcom/itsoninc/android/DeviceCall;
.super Ljava/lang/Object;
.source "DeviceCall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsoninc/android/DeviceCall$CallState;
    }
.end annotation


# instance fields
.field index:I

.field isMT:Z

.field isVoice:Z

.field number:Ljava/lang/String;

.field state:Lcom/itsoninc/android/DeviceCall$CallState;


# direct methods
.method public constructor <init>(IZLcom/itsoninc/android/DeviceCall$CallState;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "isVoice"    # Z
    .param p3, "state"    # Lcom/itsoninc/android/DeviceCall$CallState;
    .param p4, "number"    # Ljava/lang/String;
    .param p5, "isMT"    # Z

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/itsoninc/android/DeviceCall;->index:I

    .line 22
    iput-boolean p2, p0, Lcom/itsoninc/android/DeviceCall;->isVoice:Z

    .line 23
    iput-object p3, p0, Lcom/itsoninc/android/DeviceCall;->state:Lcom/itsoninc/android/DeviceCall$CallState;

    .line 24
    iput-object p4, p0, Lcom/itsoninc/android/DeviceCall;->number:Ljava/lang/String;

    .line 25
    iput-boolean p5, p0, Lcom/itsoninc/android/DeviceCall;->isMT:Z

    .line 26
    return-void
.end method

.method public constructor <init>(ZLcom/itsoninc/android/DeviceCall$CallState;Ljava/lang/String;)V
    .locals 0
    .param p1, "isVoice"    # Z
    .param p2, "state"    # Lcom/itsoninc/android/DeviceCall$CallState;
    .param p3, "number"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/itsoninc/android/DeviceCall;->isVoice:Z

    .line 32
    iput-object p2, p0, Lcom/itsoninc/android/DeviceCall;->state:Lcom/itsoninc/android/DeviceCall$CallState;

    .line 33
    iput-object p3, p0, Lcom/itsoninc/android/DeviceCall;->number:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/itsoninc/android/DeviceCall;->index:I

    return v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/itsoninc/android/DeviceCall;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/itsoninc/android/DeviceCall$CallState;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/itsoninc/android/DeviceCall;->state:Lcom/itsoninc/android/DeviceCall$CallState;

    return-object v0
.end method

.method public isMT()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/itsoninc/android/DeviceCall;->isMT:Z

    return v0
.end method

.method public isVoice()Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/itsoninc/android/DeviceCall;->isVoice:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/itsoninc/android/DeviceCall;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/itsoninc/android/DeviceCall;->isVoice:Z

    if-eqz v0, :cond_0

    const-string v0, "voice"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itsoninc/android/DeviceCall;->state:Lcom/itsoninc/android/DeviceCall$CallState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lcom/itsoninc/android/DeviceCall;->isMT:Z

    if-eqz v0, :cond_1

    const-string v0, "MT"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itsoninc/android/DeviceCall;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "nonvoice"

    goto :goto_0

    :cond_1
    const-string v0, "MO"

    goto :goto_1
.end method
