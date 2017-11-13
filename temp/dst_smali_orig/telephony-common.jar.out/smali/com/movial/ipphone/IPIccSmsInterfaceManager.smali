.class public Lcom/movial/ipphone/IPIccSmsInterfaceManager;
.super Lcom/android/internal/telephony/IccSmsInterfaceManager;
.source "IPIccSmsInterfaceManager.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IPSmsInterfaceManager"


# instance fields
.field private mImsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iget-object v0, p0, Lcom/movial/ipphone/IPIccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iput-object v0, p0, Lcom/movial/ipphone/IPIccSmsInterfaceManager;->mImsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    return-void
.end method


# virtual methods
.method protected dispose()V
    .locals 2

    .prologue
    const-string v0, "IPSmsInterfaceManager"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/movial/ipphone/IPIccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    const-string v0, "IPSmsInterfaceManager"

    const-string v1, "IccSmsInterfaceManager finalized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected getIMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/movial/ipphone/IPIccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    return-object v0
.end method

.method public setIPSMSDispatcher(Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 2
    .param p1, "ipSMSDispatcher"    # Lcom/android/internal/telephony/SMSDispatcher;

    .prologue
    if-nez p1, :cond_0

    const-string v0, "IPSmsInterfaceManager"

    const-string v1, "Switching dispatcher to Normal Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/movial/ipphone/IPIccSmsInterfaceManager;->mImsDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    iput-object v0, p0, Lcom/movial/ipphone/IPIccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    :goto_0
    return-void

    :cond_0
    const-string v0, "IPSmsInterfaceManager"

    const-string v1, "Switching dispatcher to WFC Mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/movial/ipphone/IPIccSmsInterfaceManager;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    goto :goto_0
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 0
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    return-void
.end method
