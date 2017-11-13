.class final Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper$1;
.super Ljava/lang/Thread;
.source "EditPinDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->updateIccCardStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 607
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 610
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 611
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 612
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/phone/MiuiPhoneUtils;->PHONE_COUNT:I

    if-ge v0, v2, :cond_0

    .line 613
    move v1, v0

    .line 614
    .local v1, "slotId":I
    # getter for: Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sInitialized:[Z
    invoke-static {}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->access$900()[Z

    move-result-object v2

    aput-boolean v4, v2, v1

    .line 615
    # getter for: Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sPin2Locked:[Z
    invoke-static {}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->access$1000()[Z

    move-result-object v2

    aput-boolean v4, v2, v1

    .line 616
    # getter for: Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sLocker:[Ljava/lang/Object;
    invoke-static {}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->access$1100()[Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    aput-object v3, v2, v1

    .line 618
    # invokes: Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->getCommandsInterface(I)Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v1}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->access$1300(I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v2

    new-instance v3, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper$1$1;

    invoke-direct {v3, p0, v1}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper$1$1;-><init>(Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper$1;I)V

    invoke-virtual {v3}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper$1$1;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    .end local v1    # "slotId":I
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 627
    return-void
.end method
