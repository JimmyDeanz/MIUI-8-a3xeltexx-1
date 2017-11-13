.class public Lcom/sec/epdg/ipc/EpdgNetReg;
.super Ljava/lang/Object;
.source "EpdgNetReg.java"


# instance fields
.field private act:B

.field private srvdomain:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v0, p0, Lcom/sec/epdg/ipc/EpdgNetReg;->act:B

    iput-byte v0, p0, Lcom/sec/epdg/ipc/EpdgNetReg;->srvdomain:B

    return-void
.end method

.method public constructor <init>(BB)V
    .locals 0
    .param p1, "act"    # B
    .param p2, "srvdomain"    # B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/sec/epdg/ipc/EpdgNetReg;->act:B

    iput-byte p2, p0, Lcom/sec/epdg/ipc/EpdgNetReg;->srvdomain:B

    return-void
.end method


# virtual methods
.method public getAct()I
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/sec/epdg/ipc/EpdgNetReg;->act:B

    return v0
.end method

.method public getSrvdomain()I
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/sec/epdg/ipc/EpdgNetReg;->srvdomain:B

    return v0
.end method

.method public setAct(B)V
    .locals 0
    .param p1, "act"    # B

    .prologue
    iput-byte p1, p0, Lcom/sec/epdg/ipc/EpdgNetReg;->act:B

    return-void
.end method

.method public setSrvdomain(B)V
    .locals 0
    .param p1, "srvdomain"    # B

    .prologue
    iput-byte p1, p0, Lcom/sec/epdg/ipc/EpdgNetReg;->srvdomain:B

    return-void
.end method
