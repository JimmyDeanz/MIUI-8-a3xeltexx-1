.class Lcom/android/server/cover/NfcLedCoverController$Command;
.super Ljava/lang/Object;
.source "NfcLedCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cover/NfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Command"
.end annotation


# instance fields
.field code:I

.field data:[B

.field final synthetic this$0:Lcom/android/server/cover/NfcLedCoverController;


# direct methods
.method public constructor <init>(Lcom/android/server/cover/NfcLedCoverController;I[B)V
    .locals 0
    .param p2, "code"    # I
    .param p3, "data"    # [B

    .prologue
    .line 1530
    iput-object p1, p0, Lcom/android/server/cover/NfcLedCoverController$Command;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    .line 1531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1532
    iput p2, p0, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    .line 1533
    iput-object p3, p0, Lcom/android/server/cover/NfcLedCoverController$Command;->data:[B

    .line 1534
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1538
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Command [code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/cover/NfcLedCoverController$Command;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/cover/NfcLedCoverController$Command;->this$0:Lcom/android/server/cover/NfcLedCoverController;

    iget-object v2, p0, Lcom/android/server/cover/NfcLedCoverController$Command;->data:[B

    # invokes: Lcom/android/server/cover/NfcLedCoverController;->getByteDataString([B)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/cover/NfcLedCoverController;->access$1500(Lcom/android/server/cover/NfcLedCoverController;[B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
