.class public Lcom/android/phone/PhoneAdapter;
.super Ljava/lang/Object;
.source "PhoneAdapter.java"


# direct methods
.method public static convertPlmnList(ILjava/lang/Object;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "slotId"    # I
    .param p1, "result"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "plmnList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    return-object v0
.end method

.method public static getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 37
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

.method public static getCallBarringOption(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 28
    invoke-static {p0}, Lcom/android/phone/PhoneAdapter;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 29
    return-void
.end method

.method public static getPlmnList(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/IccFileHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "iccFileHandler"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 51
    return-void
.end method

.method public static getRadioTech(Lcom/android/internal/telephony/OperatorInfo;)Ljava/lang/String;
    .locals 1
    .param p0, "ni"    # Lcom/android/internal/telephony/OperatorInfo;

    .prologue
    .line 42
    const-string v0, ""

    return-object v0
.end method

.method public static getVoiceRoaming(Landroid/telephony/ServiceState;)Z
    .locals 1
    .param p0, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v0

    return v0
.end method

.method public static isManualNetSelAllowed(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public static isUtEnabled(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public static registerForVoiceRoaming(Landroid/os/Handler;II)V
    .locals 5
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "whatOn"    # I
    .param p2, "whatOff"    # I

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-static {}, Lcom/android/phone/MiuiPhoneUtils;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 68
    .local v1, "phones":[Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 69
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/android/phone/PhoneProxy;->getServiceStateTracker(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v2

    .line 70
    .local v2, "serviceStateTracker":Lcom/android/internal/telephony/ServiceStateTracker;
    invoke-virtual {v2, p0, p1, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForVoiceRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 71
    invoke-virtual {v2, p0, p2, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForVoiceRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "serviceStateTracker":Lcom/android/internal/telephony/ServiceStateTracker;
    :cond_0
    return-void
.end method

.method public static setCallBarringOption(Lcom/android/internal/telephony/Phone;Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 33
    invoke-static {p0}, Lcom/android/phone/PhoneAdapter;->getBasePhone(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 34
    return-void
.end method

.method public static setPlmnList(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/uicc/IccFileHandler;Ljava/util/ArrayList;Landroid/os/Message;)V
    .locals 0
    .param p0, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p1, "iccFileHandler"    # Lcom/android/internal/telephony/uicc/IccFileHandler;
    .param p3, "response"    # Landroid/os/Message;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Lcom/android/internal/telephony/uicc/IccFileHandler;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/phone/settings/UserPLMNListPreference$UPLMNInfoWithEf;>;"
    return-void
.end method
