.class public Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
.super Ljava/lang/Object;
.source "EpdgPdpContextInfo.java"


# instance fields
.field private mCid:I

.field private mDataCallReason:I

.field private mDataCallType:I

.field private mState:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->mCid:I

    .line 11
    const/4 v0, 0x6

    iput v0, p0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->mState:I

    .line 12
    return-void
.end method

.method public static getNewEpdgContextInfo()Lcom/sec/epdg/ipc/EpdgPdpContextInfo;
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;

    invoke-direct {v0}, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getCid()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->mCid:I

    return v0
.end method

.method public getDataCallRsn()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->mDataCallReason:I

    return v0
.end method

.method public getDataCallType()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->mDataCallType:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->mState:I

    return v0
.end method

.method public setCid(I)V
    .locals 0
    .param p1, "cid"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->mCid:I

    .line 24
    return-void
.end method

.method public setDataCallRsn(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->mDataCallReason:I

    .line 36
    return-void
.end method

.method public setDataCallType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->mDataCallType:I

    .line 44
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/sec/epdg/ipc/EpdgPdpContextInfo;->mState:I

    .line 20
    return-void
.end method
