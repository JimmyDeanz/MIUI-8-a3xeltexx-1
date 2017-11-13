.class public Lcom/android/server/am/VirtualScreenAttrs;
.super Ljava/lang/Object;
.source "VirtualScreenAttrs.java"


# instance fields
.field private mBaseActivity:Z

.field private mBaseDisplayId:I

.field private mDisplayId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/am/VirtualScreenAttrs;->mDisplayId:I

    iput v0, p0, Lcom/android/server/am/VirtualScreenAttrs;->mBaseDisplayId:I

    iput-boolean v0, p0, Lcom/android/server/am/VirtualScreenAttrs;->mBaseActivity:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/VirtualScreenAttrs;->mDisplayId:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/VirtualScreenAttrs;)V
    .locals 0
    .param p1, "attrs"    # Lcom/android/server/am/VirtualScreenAttrs;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/am/VirtualScreenAttrs;->setTo(Lcom/android/server/am/VirtualScreenAttrs;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseActivity()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/VirtualScreenAttrs;->mBaseActivity:Z

    return v0
.end method

.method public getBaseDisplayId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/am/VirtualScreenAttrs;->mBaseDisplayId:I

    return v0
.end method

.method public getDisplayId()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/am/VirtualScreenAttrs;->mDisplayId:I

    return v0
.end method

.method public setBaseActivity(Z)V
    .locals 0
    .param p1, "baseActivity"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/am/VirtualScreenAttrs;->mBaseActivity:Z

    return-void
.end method

.method public setBaseDisplayId(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    iput p1, p0, Lcom/android/server/am/VirtualScreenAttrs;->mBaseDisplayId:I

    return-void
.end method

.method public setDisplayId(I)V
    .locals 0
    .param p1, "displayId"    # I

    .prologue
    iput p1, p0, Lcom/android/server/am/VirtualScreenAttrs;->mDisplayId:I

    return-void
.end method

.method public setTo(Lcom/android/server/am/VirtualScreenAttrs;)V
    .locals 1
    .param p1, "other"    # Lcom/android/server/am/VirtualScreenAttrs;

    .prologue
    iget v0, p1, Lcom/android/server/am/VirtualScreenAttrs;->mDisplayId:I

    iput v0, p0, Lcom/android/server/am/VirtualScreenAttrs;->mDisplayId:I

    iget v0, p1, Lcom/android/server/am/VirtualScreenAttrs;->mDisplayId:I

    iput v0, p0, Lcom/android/server/am/VirtualScreenAttrs;->mBaseDisplayId:I

    iget-boolean v0, p1, Lcom/android/server/am/VirtualScreenAttrs;->mBaseActivity:Z

    iput-boolean v0, p0, Lcom/android/server/am/VirtualScreenAttrs;->mBaseActivity:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{mDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreenAttrs;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBaseDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/VirtualScreenAttrs;->mBaseDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBaseActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/VirtualScreenAttrs;->mBaseActivity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
