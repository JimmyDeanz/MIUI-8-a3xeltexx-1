.class public Lcom/samsung/android/telephony/IccPhonebookManager;
.super Ljava/lang/Object;
.source "IccPhonebookManager.java"


# static fields
.field private static final EF_ADN:I = 0x6f3a

.field static final LOG_TAG:Ljava/lang/String; = "IccPBManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getAdnLikesInfo(II)[I
    .locals 3
    .param p0, "efid"    # I
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-static {}, Lcom/samsung/android/telephony/IccPhonebookManager;->getIccPhoneBookInterface()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 21
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 22
    invoke-static {p1}, Lcom/samsung/android/telephony/IccPhonebookManager;->getSubId(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesInfoForSubscriber(II)[I

    move-result-object v1

    .line 25
    :goto_0
    return-object v1

    .line 24
    :cond_0
    const-string v1, "IccPBManager"

    const-string v2, "IIccPhoneBook is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getAdnLikesSimStatusInfo(II)I
    .locals 3
    .param p0, "efid"    # I
    .param p1, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    invoke-static {}, Lcom/samsung/android/telephony/IccPhonebookManager;->getIccPhoneBookInterface()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 31
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_0

    .line 32
    invoke-static {p1}, Lcom/samsung/android/telephony/IccPhonebookManager;->getSubId(I)I

    move-result v1

    invoke-interface {v0, v1, p0}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnLikesSimStatusInfoForSubscriber(II)I

    move-result v1

    .line 35
    :goto_0
    return v1

    .line 34
    :cond_0
    const-string v1, "IccPBManager"

    const-string v2, "IIccPhoneBook is null"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getIccPhoneBookInterface()Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 4

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 59
    .local v1, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 64
    :goto_0
    return-object v1

    .line 61
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/SecurityException;
    const-string v2, "IccPBManager"

    const-string v3, "SecurityException occured"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static getSubId(I)I
    .locals 2
    .param p0, "phoneId"    # I

    .prologue
    .line 68
    invoke-static {p0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v0

    .line 69
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 70
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 72
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getUsimPBCapaInfo(I)[I
    .locals 5
    .param p0, "phoneId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-static {}, Lcom/samsung/android/telephony/IccPhonebookManager;->getIccPhoneBookInterface()Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v0

    .line 41
    .local v0, "iccIpb":Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v0, :cond_1

    .line 42
    invoke-static {p0}, Lcom/samsung/android/telephony/IccPhonebookManager;->getSubId(I)I

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimPBCapaInfoForSubscriber(I)Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;

    move-result-object v1

    .line 44
    .local v1, "usimPbCapaInfo":Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    if-eqz v1, :cond_0

    .line 45
    iget-object v2, v1, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->mFieldTypeInfo:[I

    .line 52
    .end local v1    # "usimPbCapaInfo":Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :goto_0
    return-object v2

    .line 47
    .restart local v1    # "usimPbCapaInfo":Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :cond_0
    const-string v3, "IccPBManager"

    const-string v4, "usimPbCapaInfo is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 51
    .end local v1    # "usimPbCapaInfo":Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
    :cond_1
    const-string v3, "IccPBManager"

    const-string v4, "IIccPhoneBook is null"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
