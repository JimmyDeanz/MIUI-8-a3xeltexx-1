.class public Lcom/android/internal/telephony/uicc/IccIoResult;
.super Ljava/lang/Object;
.source "IccIoResult.java"


# static fields
.field private static final UNKNOWN_ERROR:Ljava/lang/String; = "unknown"


# instance fields
.field public payload:[B

.field public sw1:I

.field public sw2:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "sw1"    # I
    .param p2, "sw2"    # I
    .param p3, "hexString"    # Ljava/lang/String;

    .prologue
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0
    .param p1, "sw1"    # I
    .param p2, "sw2"    # I
    .param p3, "payload"    # [B

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    iput p2, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    return-void
.end method

.method private getErrorString()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const-string v0, "unknown"

    return-object v0

    :sswitch_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    :sswitch_1
    const-string v0, "No information given, state of non volatile memory unchanged"

    return-object v0

    :sswitch_2
    const-string v0, "Part of returned data may be corrupted"

    return-object v0

    :sswitch_3
    const-string v0, "End of file/record reached before reading Le bytes"

    return-object v0

    :sswitch_4
    const-string v0, "Selected file invalidated"

    return-object v0

    :sswitch_5
    const-string v0, "Selected file in termination state"

    return-object v0

    :sswitch_6
    const-string v0, "More data available"

    return-object v0

    :sswitch_7
    const-string v0, "More data available and proactive command pending"

    return-object v0

    :sswitch_8
    const-string v0, "Response data available"

    return-object v0

    :sswitch_9
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    shr-int/lit8 v0, v0, 0x4

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const-string v0, "Command successful but after using an internalupdate retry routine but Verification failed"

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "More data expected"

    return-object v0

    :pswitch_1
    const-string v0, "More data expected and proactive command pending"

    return-object v0

    :sswitch_a
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_2
    const-string v0, "No information given, state of non-volatile memory unchanged"

    return-object v0

    :sswitch_b
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    sparse-switch v0, :sswitch_data_2

    goto :goto_0

    :sswitch_c
    const-string v0, "No information given, state of non-volatile memory changed"

    return-object v0

    :sswitch_d
    const-string v0, "Memory problem"

    return-object v0

    :sswitch_e
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    packed-switch v0, :pswitch_data_2

    const-string v0, "The interpretation of this status word is command dependent"

    return-object v0

    :pswitch_3
    const-string v0, "incorrect parameter P3"

    return-object v0

    :sswitch_f
    const-string v0, "incorrect parameter P1 or P2"

    return-object v0

    :sswitch_10
    const-string v0, "unknown instruction code given in the command"

    return-object v0

    :sswitch_11
    const-string v0, "wrong instruction class given in the command"

    return-object v0

    :sswitch_12
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    packed-switch v0, :pswitch_data_3

    const-string v0, "The interpretation of this status word is command dependent"

    return-object v0

    :pswitch_4
    const-string v0, "technical problem with no diagnostic given"

    return-object v0

    :sswitch_13
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    sparse-switch v0, :sswitch_data_3

    goto/16 :goto_0

    :sswitch_14
    const-string v0, "No information given"

    return-object v0

    :sswitch_15
    const-string v0, "Logical channel not supported"

    return-object v0

    :sswitch_16
    const-string v0, "Secure messaging not supported"

    return-object v0

    :sswitch_17
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    sparse-switch v0, :sswitch_data_4

    goto/16 :goto_0

    :sswitch_18
    const-string v0, "No information given"

    return-object v0

    :sswitch_19
    const-string v0, "Command incompatible with file structure"

    return-object v0

    :sswitch_1a
    const-string v0, "Security status not satisfied"

    return-object v0

    :sswitch_1b
    const-string v0, "Authentication/PIN method blocked"

    return-object v0

    :sswitch_1c
    const-string v0, "Referenced data invalidated"

    return-object v0

    :sswitch_1d
    const-string v0, "Conditions of use not satisfied"

    return-object v0

    :sswitch_1e
    const-string v0, "Command not allowed (no EF selected)"

    return-object v0

    :sswitch_1f
    const-string v0, "Command not allowed - secure channel - security not satisfied"

    return-object v0

    :sswitch_20
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    packed-switch v0, :pswitch_data_4

    :pswitch_5
    goto/16 :goto_0

    :pswitch_6
    const-string v0, "Incorrect parameters in the data field"

    return-object v0

    :pswitch_7
    const-string v0, "Function not supported"

    return-object v0

    :pswitch_8
    const-string v0, "File not found"

    return-object v0

    :pswitch_9
    const-string v0, "Record not found"

    return-object v0

    :pswitch_a
    const-string v0, "Not enough memory space"

    return-object v0

    :pswitch_b
    const-string v0, "Incorrect parameters P1 to P2"

    return-object v0

    :pswitch_c
    const-string v0, "Lc inconsistent with P1 to P2"

    return-object v0

    :pswitch_d
    const-string v0, "Referenced data not found"

    return-object v0

    :sswitch_21
    return-object v1

    :sswitch_22
    return-object v1

    :sswitch_23
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    shr-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    const-string v0, "command successful but after using an internal update retry routine"

    return-object v0

    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    packed-switch v0, :pswitch_data_5

    goto/16 :goto_0

    :pswitch_e
    const-string v0, "memory problem"

    return-object v0

    :sswitch_24
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    packed-switch v0, :pswitch_data_6

    goto/16 :goto_0

    :pswitch_f
    const-string v0, "SIM Application Toolkit is busy. Command cannot be executed at present, further normal commands are allowed."

    return-object v0

    :sswitch_25
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    packed-switch v0, :pswitch_data_7

    :pswitch_10
    goto/16 :goto_0

    :pswitch_11
    const-string v0, "no EF selected"

    return-object v0

    :pswitch_12
    const-string v0, "out f range (invalid address)"

    return-object v0

    :pswitch_13
    const-string v0, "file ID not found/pattern not found"

    return-object v0

    :pswitch_14
    const-string v0, "file is inconsistent with the command"

    return-object v0

    :sswitch_26
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    sparse-switch v0, :sswitch_data_5

    goto/16 :goto_0

    :sswitch_27
    const-string v0, "no CHV initialized"

    return-object v0

    :sswitch_28
    const-string v0, "access condition not fulfilled/unsuccessful CHV verification, at least one attempt left/unsuccessful UNBLOCK CHV verification, at least one attempt left/authentication failed"

    return-object v0

    :sswitch_29
    const-string v0, "in contradiction with CHV status"

    return-object v0

    :sswitch_2a
    const-string v0, "in contradiction with invalidation status"

    return-object v0

    :sswitch_2b
    const-string v0, "unsuccessful CHV verification, no attempt left/unsuccessful UNBLOCK CHV verification, no attempt left/CHV blockedUNBLOCK CHV blocked"

    return-object v0

    :sswitch_2c
    const-string v0, "increase cannot be performed, Max value reached"

    return-object v0

    :sswitch_2d
    return-object v1

    :sswitch_2e
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x62 -> :sswitch_0
        0x63 -> :sswitch_9
        0x64 -> :sswitch_a
        0x65 -> :sswitch_b
        0x67 -> :sswitch_e
        0x68 -> :sswitch_13
        0x69 -> :sswitch_17
        0x6a -> :sswitch_20
        0x6b -> :sswitch_f
        0x6d -> :sswitch_10
        0x6e -> :sswitch_11
        0x6f -> :sswitch_12
        0x90 -> :sswitch_21
        0x91 -> :sswitch_22
        0x92 -> :sswitch_23
        0x93 -> :sswitch_24
        0x94 -> :sswitch_25
        0x98 -> :sswitch_26
        0x9e -> :sswitch_2d
        0x9f -> :sswitch_2e
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1
        0x81 -> :sswitch_2
        0x82 -> :sswitch_3
        0x83 -> :sswitch_4
        0x84 -> :sswitch_5
        0xf1 -> :sswitch_6
        0xf2 -> :sswitch_7
        0xf3 -> :sswitch_8
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        0x0 -> :sswitch_c
        0x81 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        0x0 -> :sswitch_14
        0x81 -> :sswitch_15
        0x82 -> :sswitch_16
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x0 -> :sswitch_18
        0x81 -> :sswitch_19
        0x82 -> :sswitch_1a
        0x83 -> :sswitch_1b
        0x84 -> :sswitch_1c
        0x85 -> :sswitch_1d
        0x86 -> :sswitch_1e
        0x89 -> :sswitch_1f
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x80
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_5
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x40
        :pswitch_e
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_f
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_12
        :pswitch_10
        :pswitch_13
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_14
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        0x2 -> :sswitch_27
        0x4 -> :sswitch_28
        0x8 -> :sswitch_29
        0x10 -> :sswitch_2a
        0x40 -> :sswitch_2b
        0x50 -> :sswitch_2c
    .end sparse-switch
.end method


# virtual methods
.method public getException()Lcom/android/internal/telephony/uicc/IccException;
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccIoResult;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/android/internal/telephony/uicc/IccException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sw1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sw2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    return-object v0

    :pswitch_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileNotFound;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileNotFound;-><init>()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x94
        :pswitch_0
    .end packed-switch
.end method

.method public success()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v2, 0x90

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v2, 0x91

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v2, 0x9e

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v2, 0x9f

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IccIoResult sw1:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " sw2:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccIoResult;->success()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccIoResult;->getErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method
