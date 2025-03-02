.class public Lcom/google/android/mms/pdu/AcknowledgeInd;
.super Lcom/google/android/mms/pdu/GenericPdu;
.source "AcknowledgeInd.java"


# direct methods
.method public constructor <init>(I[B)V
    .locals 1
    .param p1, "mmsVersion"    # I
    .param p2, "transactionId"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setMessageType(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setMmsVersion(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setTransactionId([B)V

    return-void
.end method

.method public constructor <init>(I[BI)V
    .locals 1
    .param p1, "mmsVersion"    # I
    .param p2, "transactionId"    # [B
    .param p3, "ReportAllowed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/google/android/mms/pdu/GenericPdu;-><init>()V

    const/16 v0, 0x85

    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setMessageType(I)V

    invoke-virtual {p0, p1}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setMmsVersion(I)V

    invoke-virtual {p0, p2}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setTransactionId([B)V

    invoke-virtual {p0, p3}, Lcom/google/android/mms/pdu/AcknowledgeInd;->setReportAllowed(I)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/mms/pdu/PduHeaders;)V
    .locals 0
    .param p1, "headers"    # Lcom/google/android/mms/pdu/PduHeaders;

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/mms/pdu/GenericPdu;-><init>(Lcom/google/android/mms/pdu/PduHeaders;)V

    return-void
.end method


# virtual methods
.method public getReportAllowed()I
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/mms/pdu/AcknowledgeInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getOctet(I)I

    move-result v0

    return v0
.end method

.method public getTransactionId()[B
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/google/android/mms/pdu/AcknowledgeInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduHeaders;->getTextString(I)[B

    move-result-object v0

    return-object v0
.end method

.method public setReportAllowed(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/InvalidHeaderValueException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/mms/pdu/AcknowledgeInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x91

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setOctet(II)V

    return-void
.end method

.method public setTransactionId([B)V
    .locals 2
    .param p1, "value"    # [B

    .prologue
    iget-object v0, p0, Lcom/google/android/mms/pdu/AcknowledgeInd;->mPduHeaders:Lcom/google/android/mms/pdu/PduHeaders;

    const/16 v1, 0x98

    invoke-virtual {v0, p1, v1}, Lcom/google/android/mms/pdu/PduHeaders;->setTextString([BI)V

    return-void
.end method
