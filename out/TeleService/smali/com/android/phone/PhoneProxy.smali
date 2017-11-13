.class public Lcom/android/phone/PhoneProxy;
.super Ljava/lang/Object;
.source "PhoneProxy.java"


# direct methods
.method private static getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 30
    instance-of v0, p0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/android/internal/telephony/PhoneProxy;

    .end local p0    # "phone":Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    check-cast v0, Lcom/android/internal/telephony/PhoneBase;

    return-object v0

    .restart local p0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public static getCommandsInterface(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 22
    invoke-static {p0}, Lcom/android/phone/PhoneProxy;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method public static getServiceStateTracker(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 26
    invoke-static {p0}, Lcom/android/phone/PhoneProxy;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    return-object v0
.end method

.method public static selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .param p0, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 53
    invoke-interface {p2, p0, p1}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 54
    return-void
.end method
