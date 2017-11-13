.class Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;
.super Ljava/lang/Object;
.source "EditPinDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/EditPinDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IccPinStateHelper"
.end annotation


# static fields
.field private static sInitialized:[Z

.field private static sLocker:[Ljava/lang/Object;

.field private static sPin2Locked:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 601
    sget v0, Lcom/android/phone/MiuiPhoneUtils;->PHONE_COUNT:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sInitialized:[Z

    .line 602
    sget v0, Lcom/android/phone/MiuiPhoneUtils;->PHONE_COUNT:I

    new-array v0, v0, [Z

    sput-object v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sPin2Locked:[Z

    .line 603
    sget v0, Lcom/android/phone/MiuiPhoneUtils;->PHONE_COUNT:I

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sLocker:[Ljava/lang/Object;

    .line 604
    return-void
.end method

.method static synthetic access$1000()[Z
    .locals 1

    .prologue
    .line 594
    sget-object v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sPin2Locked:[Z

    return-object v0
.end method

.method static synthetic access$1100()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 594
    sget-object v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sLocker:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/os/AsyncResult;I)V
    .locals 0
    .param p0, "x0"    # Landroid/os/AsyncResult;
    .param p1, "x1"    # I

    .prologue
    .line 594
    invoke-static {p0, p1}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->handlerIccCardStatus(Landroid/os/AsyncResult;I)V

    return-void
.end method

.method static synthetic access$1300(I)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 594
    invoke-static {p0}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->getCommandsInterface(I)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()[Z
    .locals 1

    .prologue
    .line 594
    sget-object v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sInitialized:[Z

    return-object v0
.end method

.method private static getCommandsInterface(I)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 666
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneProxy;->getCommandsInterface(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    return-object v0
.end method

.method private static handlerIccCardStatus(Landroid/os/AsyncResult;I)V
    .locals 9
    .param p0, "ar"    # Landroid/os/AsyncResult;
    .param p1, "slotId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 670
    iget-object v1, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 671
    .local v1, "cardStatus":Lcom/android/internal/telephony/uicc/IccCardStatus;
    sget-object v6, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sPin2Locked:[Z

    aput-boolean v5, v6, p1

    .line 672
    if-eqz v1, :cond_1

    .line 673
    const/4 v2, -0x1

    .line 674
    .local v2, "index":I
    invoke-static {v5}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 675
    .local v3, "phoneType":I
    if-ne v3, v4, :cond_2

    .line 676
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mGsmUmtsSubscriptionAppIndex:I

    .line 680
    :cond_0
    :goto_0
    if-ltz v2, :cond_1

    iget-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v6, v6

    if-ge v2, v6, :cond_1

    .line 681
    iget-object v6, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v0, v6, v2

    .line 682
    .local v0, "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    if-eqz v0, :cond_1

    .line 683
    sget-object v6, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sPin2Locked:[Z

    iget-object v7, v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->pin2:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v7, v8, :cond_3

    :goto_1
    aput-boolean v4, v6, p1

    .line 688
    .end local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .end local v2    # "index":I
    .end local v3    # "phoneType":I
    :cond_1
    sget-object v4, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sLocker:[Ljava/lang/Object;

    aget-object v5, v4, p1

    monitor-enter v5

    .line 689
    :try_start_0
    sget-object v4, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sInitialized:[Z

    const/4 v6, 0x1

    aput-boolean v6, v4, p1

    .line 690
    sget-object v4, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sLocker:[Ljava/lang/Object;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    .line 691
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    return-void

    .line 677
    .restart local v2    # "index":I
    .restart local v3    # "phoneType":I
    :cond_2
    const/4 v6, 0x2

    if-ne v3, v6, :cond_0

    .line 678
    iget v2, v1, Lcom/android/internal/telephony/uicc/IccCardStatus;->mCdmaSubscriptionAppIndex:I

    goto :goto_0

    .restart local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    :cond_3
    move v4, v5

    .line 683
    goto :goto_1

    .line 691
    .end local v0    # "appStatus":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
    .end local v2    # "index":I
    .end local v3    # "phoneType":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public static isInitialized(I)Z
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 632
    sget-object v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sInitialized:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static isPin1Locked(I)Z
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 647
    invoke-static {p0}, Lcom/android/phone/MiuiPhoneUtils;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPin2Locked(I)Z
    .locals 1
    .param p0, "slotId"    # I

    .prologue
    .line 651
    sget-object v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sPin2Locked:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static updateIccCardStatus()V
    .locals 1

    .prologue
    .line 607
    new-instance v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper$1;

    invoke-direct {v0}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper$1;-><init>()V

    invoke-virtual {v0}, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper$1;->start()V

    .line 629
    return-void
.end method

.method public static updatePin2State(Landroid/os/AsyncResult;I)V
    .locals 3
    .param p0, "ar"    # Landroid/os/AsyncResult;
    .param p1, "slotId"    # I

    .prologue
    .line 655
    iget-object v1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 656
    sget-object v1, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sPin2Locked:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    .line 663
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    iget-object v1, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v1, v1, Lcom/android/internal/telephony/CommandException;

    if-eqz v1, :cond_0

    .line 658
    iget-object v0, p0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    .line 659
    .local v0, "ce":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v1, v2, :cond_0

    .line 660
    sget-object v1, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sPin2Locked:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    goto :goto_0
.end method

.method public static waitForInitialization(I)V
    .locals 2
    .param p0, "slotId"    # I

    .prologue
    .line 636
    sget-object v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sLocker:[Ljava/lang/Object;

    aget-object v1, v0, p0

    monitor-enter v1

    .line 637
    :try_start_0
    sget-object v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sInitialized:[Z

    aget-boolean v0, v0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 639
    :try_start_1
    sget-object v0, Lcom/android/phone/settings/EditPinDialog$IccPinStateHelper;->sLocker:[Ljava/lang/Object;

    aget-object v0, v0, p0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 643
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 644
    return-void

    .line 643
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 640
    :catch_0
    move-exception v0

    goto :goto_0
.end method
