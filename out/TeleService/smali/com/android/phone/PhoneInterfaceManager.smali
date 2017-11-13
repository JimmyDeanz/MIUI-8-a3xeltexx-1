.class public Lcom/android/phone/PhoneInterfaceManager;
.super Lcom/android/internal/telephony/ITelephony$Stub;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneInterfaceManager$1;,
        Lcom/android/phone/PhoneInterfaceManager$UnlockSim;,
        Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;,
        Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;,
        Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/phone/PhoneInterfaceManager;


# instance fields
.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mAppOps:Landroid/app/AppOpsManager;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field private mTelephonySharedPreferences:Landroid/content/SharedPreferences;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 833
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephony$Stub;-><init>()V

    .line 834
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 835
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 836
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 837
    const-string v0, "user"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mUserManager:Landroid/os/UserManager;

    .line 838
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    .line 839
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    .line 840
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mTelephonySharedPreferences:Landroid/content/SharedPreferences;

    .line 842
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 844
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->publish()V

    .line 845
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneInterfaceManager;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager;
    .param p1, "x1"    # Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhoneFromRequest(Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneInterfaceManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneInterfaceManager;I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager;
    .param p1, "x1"    # I

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneInterfaceManager;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneInterfaceManager;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 94
    invoke-static {p0}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private answerRingingCallInternal(I)V
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 975
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_1

    move v2, v3

    .line 976
    .local v2, "hasRingingCall":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 977
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v3

    .line 978
    .local v0, "hasActiveCall":Z
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

    .line 979
    .local v1, "hasHoldingCall":Z
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 985
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 995
    .end local v0    # "hasActiveCall":Z
    .end local v1    # "hasHoldingCall":Z
    :cond_0
    :goto_3
    return-void

    .end local v2    # "hasRingingCall":Z
    :cond_1
    move v2, v4

    .line 975
    goto :goto_0

    .restart local v2    # "hasRingingCall":Z
    :cond_2
    move v0, v4

    .line 977
    goto :goto_1

    .restart local v0    # "hasActiveCall":Z
    :cond_3
    move v1, v4

    .line 978
    goto :goto_2

    .line 990
    .restart local v1    # "hasHoldingCall":Z
    :cond_4
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_3
.end method

.method private canReadPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 2774
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0xf

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1

    .line 2783
    :cond_0
    :goto_0
    return v1

    .line 2779
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2780
    :catch_0
    move-exception v0

    .line 2782
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v3, "android.permission.READ_SMS"

    invoke-virtual {v2, v3, p2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2783
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0xe

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 2751
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v3, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {v2, v3, p2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2766
    :cond_0
    :goto_0
    return v1

    .line 2756
    :catch_0
    move-exception v0

    .line 2757
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v2, v3, p2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2761
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x33

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2763
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static checkIfCallerIsSelfOrForegroundUser()Z
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 1571
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    if-ne v8, v9, :cond_2

    move v6, v7

    .line 1572
    .local v6, "self":Z
    :goto_0
    if-nez v6, :cond_3

    .line 1575
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 1576
    .local v0, "callingUser":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1580
    .local v4, "ident":J
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 1583
    .local v2, "foregroundUser":I
    if-eq v2, v0, :cond_0

    invoke-static {v0}, Lmiui/securityspace/XSpaceUserHandle;->isXSpaceUserId(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    move v3, v7

    .line 1593
    .local v3, "ok":Z
    :cond_1
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1600
    .end local v0    # "callingUser":I
    .end local v2    # "foregroundUser":I
    .end local v4    # "ident":J
    :goto_1
    return v3

    .end local v3    # "ok":Z
    .end local v6    # "self":Z
    :cond_2
    move v6, v3

    .line 1571
    goto :goto_0

    .line 1589
    .restart local v0    # "callingUser":I
    .restart local v4    # "ident":J
    .restart local v6    # "self":Z
    :catch_0
    move-exception v1

    .line 1591
    .local v1, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 1593
    .restart local v3    # "ok":Z
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v3    # "ok":Z
    :catchall_0
    move-exception v7

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v7

    .line 1597
    .end local v0    # "callingUser":I
    .end local v4    # "ident":J
    :cond_3
    const/4 v3, 0x1

    .restart local v3    # "ok":Z
    goto :goto_1
.end method

.method private createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 1659
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1660
    const/4 v0, 0x0

    .line 1663
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tel:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private enforceCallPermission()V
    .locals 3

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "android.permission.CALL_PHONE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1650
    return-void
.end method

.method private enforceCarrierPrivilege()V
    .locals 2

    .prologue
    .line 1637
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCarrierPrivilegeStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1638
    const-string v0, "No Carrier Privilege."

    invoke-static {v0}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    .line 1639
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "No Carrier Privilege."

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1641
    :cond_0
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    return-void
.end method

.method private enforceFineOrCoarseLocationPermission(Ljava/lang/String;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1458
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1467
    :goto_0
    return-void

    .line 1460
    :catch_0
    move-exception v0

    .line 1464
    .local v0, "e":Ljava/lang/SecurityException;
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2, p1}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enforceModifyPermission()V
    .locals 3

    .prologue
    .line 1609
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1610
    return-void
.end method

.method private enforceModifyPermissionOrCarrierPrivilege()V
    .locals 3

    .prologue
    .line 1618
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneGlobals;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 1620
    .local v0, "permission":I
    if-nez v0, :cond_1

    .line 1629
    :cond_0
    return-void

    .line 1624
    :cond_1
    const-string v1, "No modify permission, check carrier privilege next."

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 1625
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getCarrierPrivilegeStatus()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1626
    const-string v1, "No Carrier Privilege."

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    .line 1627
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "No modify permission or carrier privilege."

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getActiveSubscriptionInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2885
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2887
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2890
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getAllSubscriptionInfoList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2875
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2877
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getAllSubInfoList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 2880
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getDefaultSubscription()I
    .locals 1

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultSubId()I

    move-result v0

    return v0
.end method

.method private getIccId(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2425
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 2426
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v2, :cond_1

    move-object v0, v3

    .line 2427
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    :goto_0
    if-nez v0, :cond_2

    .line 2428
    const-string v4, "getIccId: No UICC"

    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    move-object v1, v3

    .line 2436
    :cond_0
    :goto_1
    return-object v1

    .line 2426
    .end local v0    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_1
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    goto :goto_0

    .line 2431
    .restart local v0    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getIccId()Ljava/lang/String;

    move-result-object v1

    .line 2432
    .local v1, "iccId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2433
    const-string v4, "getIccId: ICC ID is null or empty."

    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    move-object v1, v3

    .line 2434
    goto :goto_1
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 859
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method private getPhoneFromRequest(Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p1, "request"    # Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    .prologue
    .line 854
    iget-object v0, p1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->subId:Ljava/lang/Integer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->subId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    goto :goto_0
.end method

.method private getPreferredVoiceSubscription()I
    .locals 2

    .prologue
    .line 1964
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultVoiceSubId()I

    move-result v0

    .line 1965
    .local v0, "defaultVoiceSubId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1966
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 1968
    :cond_0
    return v0
.end method

.method static init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager;
    .locals 4
    .param p0, "app"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 822
    const-class v1, Lcom/android/phone/PhoneInterfaceManager;

    monitor-enter v1

    .line 823
    :try_start_0
    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->sInstance:Lcom/android/phone/PhoneInterfaceManager;

    if-nez v0, :cond_0

    .line 824
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/PhoneInterfaceManager;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/android/phone/PhoneInterfaceManager;->sInstance:Lcom/android/phone/PhoneInterfaceManager;

    .line 828
    :goto_0
    sget-object v0, Lcom/android/phone/PhoneInterfaceManager;->sInstance:Lcom/android/phone/PhoneInterfaceManager;

    monitor-exit v1

    return-object v0

    .line 826
    :cond_0
    const-string v0, "PhoneInterfaceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/PhoneInterfaceManager;->sInstance:Lcom/android/phone/PhoneInterfaceManager;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 829
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isRadioOnForSubscriber(I)Z
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1259
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1260
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1261
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v1, 0x1

    .line 1263
    :cond_0
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1667
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1675
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    return-void
.end method

.method private static logv(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1671
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    return-void
.end method

.method private publish()V
    .locals 1

    .prologue
    .line 850
    const-string v0, "phone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 851
    return-void
.end method

.method private returnErrorForPinPukOperation()[I
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1125
    new-array v0, v2, [I

    .line 1126
    .local v0, "resultArray":[I
    const/4 v1, 0x0

    aput v2, v0, v1

    .line 1127
    const/4 v1, 0x1

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 1128
    return-object v0
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;

    .prologue
    .line 767
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 4
    .param p1, "command"    # I
    .param p2, "argument"    # Ljava/lang/Object;
    .param p3, "subId"    # Ljava/lang/Integer;

    .prologue
    .line 776
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 777
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 780
    :cond_0
    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    invoke-direct {v1, p2, p3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;-><init>(Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 781
    .local v1, "request":Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 782
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 785
    monitor-enter v1

    .line 786
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 788
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 789
    :catch_0
    move-exception v2

    goto :goto_0

    .line 793
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 794
    iget-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 793
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private setAllPhonesDataEnabled(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2905
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2906
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    .line 2905
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2908
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private shutdownRadioUsingPhoneId(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1318
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1319
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1320
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1321
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->shutdownRadio()V

    .line 1323
    :cond_0
    return-void
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 1

    .prologue
    .line 949
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallForSubscriber(I)V

    .line 950
    return-void
.end method

.method public answerRingingCallForSubscriber(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 957
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 958
    const/4 v0, 0x4

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    .line 959
    return-void
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 890
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getPreferredVoiceSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->callForSubscriber(ILjava/lang/String;Ljava/lang/String;)V

    .line 891
    return-void
.end method

.method public callForSubscriber(ILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 899
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    .line 901
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v7, 0xd

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v6, v7, v8, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    invoke-direct {p0, p3}, Lcom/android/phone/PhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 907
    .local v5, "url":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 911
    const/4 v2, 0x0

    .line 912
    .local v2, "isValid":Z
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    .line 913
    .local v3, "slist":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v3, :cond_3

    .line 914
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 915
    .local v4, "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 916
    const/4 v2, 0x1

    .line 921
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v4    # "subInfoRecord":Landroid/telephony/SubscriptionInfo;
    :cond_3
    if-eqz v2, :cond_0

    .line 925
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 926
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "subscription"

    invoke-virtual {v1, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 927
    const/high16 v6, 0x10000000

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 928
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v6, v1}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public canChangeDtmfToneLength()Z
    .locals 2

    .prologue
    .line 2677
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "dtmf_type_enabled_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2381
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 2382
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v0, :cond_0

    .line 2383
    const-string v1, "checkCarrierPrivilegesForPackage: No UICC"

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    .line 2384
    const/4 v1, -0x1

    .line 2386
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 2391
    const/4 v2, -0x1

    .line 2392
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 2393
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 2394
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v0, :cond_1

    .line 2392
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2399
    :cond_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPrivilegeStatus(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v2

    .line 2401
    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2406
    .end local v0    # "card":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_2
    return v2
.end method

.method public dial(Ljava/lang/String;)V
    .locals 1
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 866
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getPreferredVoiceSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->dialForSubscriber(ILjava/lang/String;)V

    .line 867
    return-void
.end method

.method public dialForSubscriber(ILjava/lang/String;)V
    .locals 5
    .param p1, "subId"    # I
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 875
    invoke-direct {p0, p2}, Lcom/android/phone/PhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 876
    .local v2, "url":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 887
    :cond_0
    :goto_0
    return-void

    .line 881
    :cond_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/CallManager;->getState(I)Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .line 882
    .local v1, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v3, :cond_0

    .line 883
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 884
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 885
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public disableDataConnectivity()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1362
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1364
    invoke-direct {p0, v3}, Lcom/android/phone/PhoneInterfaceManager;->setAllPhonesDataEnabled(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1374
    :goto_0
    return v2

    .line 1368
    :cond_0
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 1369
    .local v1, "subId":I
    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1370
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 1371
    invoke-interface {v0, v3}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 1374
    goto :goto_0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 1487
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->disableLocationUpdatesForSubscriber(I)V

    .line 1488
    return-void
.end method

.method public disableLocationUpdatesForSubscriber(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 1492
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v2, "android.permission.CONTROL_LOCATION_UPDATES"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1494
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1495
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1496
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 1498
    :cond_0
    return-void
.end method

.method public enableDataConnectivity()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1343
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1345
    invoke-direct {p0, v2}, Lcom/android/phone/PhoneInterfaceManager;->setAllPhonesDataEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1355
    :goto_0
    return v2

    .line 1349
    :cond_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 1350
    .local v1, "subId":I
    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1351
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 1352
    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    goto :goto_0

    .line 1355
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 1472
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->enableLocationUpdatesForSubscriber(I)V

    .line 1473
    return-void
.end method

.method public enableLocationUpdatesForSubscriber(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 1477
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v2, "android.permission.CONTROL_LOCATION_UPDATES"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1479
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1480
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1481
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 1483
    :cond_0
    return-void
.end method

.method public enableVideoCalling(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 2654
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 2655
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mTelephonySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2656
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "enable_video_calling"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 2657
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2658
    return-void
.end method

.method public endCall()Z
    .locals 1

    .prologue
    .line 936
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->endCallForSubscriber(I)Z

    move-result v0

    return v0
.end method

.method public endCallForSubscriber(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 944
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    .line 945
    const/4 v0, 0x5

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public factoryReset(I)V
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 2790
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceConnectivityInternalPermission()V

    .line 2791
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mUserManager:Landroid/os/UserManager;

    const-string v3, "no_network_reset"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2811
    :goto_0
    return-void

    .line 2795
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2797
    .local v0, "identity":J
    :try_start_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mUserManager:Landroid/os/UserManager;

    const-string v3, "no_config_mobile_networks"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2800
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/phone/PhoneInterfaceManager;->setDataEnabled(IZ)V

    .line 2802
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->setNetworkSelectionModeAutomatic(I)V

    .line 2804
    sget v2, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-virtual {p0, p1, v2}, Lcom/android/phone/PhoneInterfaceManager;->setPreferredNetworkType(II)Z

    .line 2806
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Landroid/telephony/SubscriptionManager;->setDataRoaming(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2809
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getActivePhoneType()I
    .locals 1

    .prologue
    .line 1680
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getActivePhoneTypeForSubscriber(I)I

    move-result v0

    return v0
.end method

.method public getActivePhoneTypeForSubscriber(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1685
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1686
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 1687
    const/4 v1, 0x0

    .line 1689
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    goto :goto_0
.end method

.method public getAllCellInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1537
    const-string v6, "getAllCellInfo"

    invoke-direct {p0, v6}, Lcom/android/phone/PhoneInterfaceManager;->enforceFineOrCoarseLocationPermission(Ljava/lang/String;)V

    .line 1540
    iget-object v6, p0, Lcom/android/phone/PhoneInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v7, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v6, v7, v8, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_1

    .line 1555
    :cond_0
    return-object v1

    .line 1545
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->checkIfCallerIsSelfOrForegroundUser()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1547
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1548
    .local v1, "cellInfos":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/internal/telephony/Phone;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 1549
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object v3

    .line 1550
    .local v3, "info":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    if-eqz v3, :cond_2

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1548
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getCalculatedPreferredNetworkType(Ljava/lang/String;)I
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 2248
    const-string v0, "getCalculatedPreferredNetworkType"

    invoke-direct {p0, p1, v0}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2249
    sget v0, Lcom/android/internal/telephony/RILConstants;->PREFERRED_NETWORK_MODE:I

    .line 2252
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 1403
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getCallStateForSubscriber(I)I

    move-result v0

    return v0
.end method

.method public getCallStateForSubscriber(I)I
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1407
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/PhoneConstants$State;)I

    move-result v0

    return v0
.end method

.method public getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2411
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    .line 2420
    :goto_0
    return-object v1

    .line 2415
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 2416
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v0, :cond_1

    .line 2417
    const-string v2, "getCarrierPackageNamesForIntent: No UICC"

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 2420
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getCarrierPrivilegeStatus()I
    .locals 3

    .prologue
    .line 2370
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v0

    .line 2371
    .local v0, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-nez v0, :cond_0

    .line 2372
    const-string v1, "getCarrierPrivilegeStatus: No UICC"

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    .line 2373
    const/4 v1, -0x1

    .line 2375
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPrivilegeStatusForCurrentTransaction(Landroid/content/pm/PackageManager;)I

    move-result v1

    goto :goto_0
.end method

.method public getCdmaEriIconIndex(Ljava/lang/String;)I
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 1703
    const-string v2, "getCdmaEriIconIndexForSubscriber"

    invoke-direct {p0, p2, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1710
    :cond_0
    :goto_0
    return v1

    .line 1706
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1707
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1708
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v1

    goto :goto_0
.end method

.method public getCdmaEriIconMode(Ljava/lang/String;)I
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1721
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 1726
    const-string v2, "getCdmaEriIconModeForSubscriber"

    invoke-direct {p0, p2, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1733
    :cond_0
    :goto_0
    return v1

    .line 1729
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1730
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1731
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v1

    goto :goto_0
.end method

.method public getCdmaEriText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1742
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1747
    const-string v2, "getCdmaEriIconTextForSubscriber"

    invoke-direct {p0, p2, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1754
    :cond_0
    :goto_0
    return-object v1

    .line 1750
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1751
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1752
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getCdmaMdn(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1763
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    .line 1764
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1765
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-eqz v0, :cond_0

    .line 1766
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 1768
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCdmaMin(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1777
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    .line 1778
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1779
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1780
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v1

    .line 1782
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1432
    const-string v3, "getCellLocation"

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneInterfaceManager;->enforceFineOrCoarseLocationPermission(Ljava/lang/String;)V

    .line 1435
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1437
    const-string v3, "getCellLocation: returning null; mode != allowed"

    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    move-object v0, v2

    .line 1452
    :goto_0
    return-object v0

    .line 1441
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->checkIfCallerIsSelfOrForegroundUser()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1443
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1444
    .local v0, "data":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1445
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 1446
    goto :goto_0

    .line 1448
    :cond_1
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1451
    .end local v0    # "data":Landroid/os/Bundle;
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_2
    const-string v3, "getCellLocation: suppress non-active user"

    invoke-static {v3}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    move-object v0, v2

    .line 1452
    goto :goto_0
.end method

.method public getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 2233
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    .line 2235
    const/16 v1, 0x27

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CellNetworkScanResult;

    .line 2237
    .local v0, "result":Lcom/android/internal/telephony/CellNetworkScanResult;
    return-object v0
.end method

.method public getDataActivity()I
    .locals 2

    .prologue
    .line 1422
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1423
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1424
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v1

    .line 1426
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataEnabled(I)Z
    .locals 8
    .param p1, "subId"    # I

    .prologue
    const/4 v7, 0x0

    .line 2349
    :try_start_0
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2355
    :goto_0
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v4, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v2

    .line 2356
    .local v2, "phoneId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataEnabled: subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 2357
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 2358
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    .line 2359
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getDataEnabled()Z

    move-result v3

    .line 2360
    .local v3, "retVal":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataEnabled: subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " retVal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 2364
    .end local v3    # "retVal":Z
    :goto_1
    return v3

    .line 2351
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v2    # "phoneId":I
    :catch_0
    move-exception v0

    .line 2352
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    const-string v5, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v4, v5, v7}, Lcom/android/phone/PhoneGlobals;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2363
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .restart local v2    # "phoneId":I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDataEnabled: no phone subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " retVal=false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    .line 2364
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getDataNetworkType(Ljava/lang/String;)I
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1862
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getDataNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDataNetworkTypeForSubscriber(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1870
    const-string v2, "getDataNetworkTypeForSubscriber"

    invoke-direct {p0, p2, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1878
    :cond_0
    :goto_0
    return v1

    .line 1874
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1875
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1876
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    goto :goto_0
.end method

.method public getDataState()I
    .locals 2

    .prologue
    .line 1412
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1413
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1414
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v1

    .line 1416
    :goto_0
    return v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    invoke-static {v1}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/PhoneConstants$DataState;)I

    move-result v1

    goto :goto_0
.end method

.method public getDefaultSim()I
    .locals 1

    .prologue
    .line 2190
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2707
    const-string v2, "getDeviceId"

    invoke-direct {p0, p1, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2715
    :cond_0
    :goto_0
    return-object v1

    .line 2711
    :cond_1
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2712
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 2713
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2502
    const-string v3, "getLine1AlphaTagForDisplay"

    invoke-direct {p0, p2, v3}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2511
    :cond_0
    :goto_0
    return-object v2

    .line 2506
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getIccId(I)Ljava/lang/String;

    move-result-object v1

    .line 2507
    .local v1, "iccId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2508
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "carrier_alphtag_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2509
    .local v0, "alphaTagPrefKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mTelephonySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2488
    const-string v3, "getLine1NumberForDisplay"

    invoke-direct {p0, p2, v3}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneNumber(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2497
    :cond_0
    :goto_0
    return-object v2

    .line 2492
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getIccId(I)Ljava/lang/String;

    move-result-object v0

    .line 2493
    .local v0, "iccId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 2494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "carrier_number_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2495
    .local v1, "numberPrefKey":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mTelephonySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getLocaleFromDefaultSim()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 2818
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v9

    .line 2819
    .local v9, "slist":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2871
    :cond_0
    :goto_0
    return-object v10

    .line 2826
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v1

    .line 2827
    .local v1, "defaultSubId":I
    const/4 v3, 0x0

    .line 2828
    .local v3, "info":Landroid/telephony/SubscriptionInfo;
    const/4 v11, -0x1

    if-ne v1, v11, :cond_3

    .line 2829
    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "info":Landroid/telephony/SubscriptionInfo;
    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 2845
    .restart local v3    # "info":Landroid/telephony/SubscriptionInfo;
    :cond_2
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v6

    .line 2846
    .local v6, "mcc":I
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2847
    .local v0, "defaultPhone":Lcom/android/internal/telephony/Phone;
    const/4 v8, 0x0

    .line 2848
    .local v8, "simLanguage":Ljava/lang/String;
    if-eqz v0, :cond_7

    .line 2849
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLocaleFromSimAndCarrierPrefs()Ljava/util/Locale;

    move-result-object v5

    .line 2850
    .local v5, "localeFromDefaultSim":Ljava/util/Locale;
    if-eqz v5, :cond_7

    .line 2851
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_6

    .line 2853
    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 2831
    .end local v0    # "defaultPhone":Lcom/android/internal/telephony/Phone;
    .end local v5    # "localeFromDefaultSim":Ljava/util/Locale;
    .end local v6    # "mcc":I
    .end local v8    # "simLanguage":Ljava/lang/String;
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    .line 2832
    .local v4, "item":Landroid/telephony/SubscriptionInfo;
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v11

    if-ne v11, v1, :cond_4

    .line 2833
    move-object v3, v4

    .line 2838
    .end local v4    # "item":Landroid/telephony/SubscriptionInfo;
    :cond_5
    if-nez v3, :cond_2

    goto :goto_0

    .line 2855
    .end local v2    # "i$":Ljava/util/Iterator;
    .restart local v0    # "defaultPhone":Lcom/android/internal/telephony/Phone;
    .restart local v5    # "localeFromDefaultSim":Ljava/util/Locale;
    .restart local v6    # "mcc":I
    .restart local v8    # "simLanguage":Ljava/lang/String;
    :cond_6
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    .line 2864
    .end local v5    # "localeFromDefaultSim":Ljava/util/Locale;
    :cond_7
    iget-object v11, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11, v6, v8}, Lcom/android/internal/telephony/MccTable;->getLocaleFromMcc(Landroid/content/Context;ILjava/lang/String;)Ljava/util/Locale;

    move-result-object v7

    .line 2865
    .local v7, "mccLocale":Ljava/util/Locale;
    if-eqz v7, :cond_0

    .line 2867
    invoke-virtual {v7}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method public getLteOnCdmaMode(Ljava/lang/String;)I
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1932
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 1937
    const-string v2, "getLteOnCdmaModeForSubscriber"

    invoke-direct {p0, p2, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1945
    :cond_0
    :goto_0
    return v1

    .line 1941
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1942
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1945
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v1

    goto :goto_0
.end method

.method public getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;
    .locals 27
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 2516
    const-string v25, "getMergedSubscriberIds"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 2517
    const/16 v18, 0x0

    .line 2584
    :goto_0
    return-object v18

    .line 2519
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 2520
    .local v6, "context":Landroid/content/Context;
    invoke-static {v6}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v24

    .line 2521
    .local v24, "tele":Landroid/telephony/TelephonyManager;
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v19

    .line 2524
    .local v19, "sub":Landroid/telephony/SubscriptionManager;
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 2527
    .local v4, "activeSubscriberIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 2529
    .local v10, "identity":J
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v21

    .line 2530
    .local v21, "subIds":[I
    move-object/from16 v5, v21

    .local v5, "arr$":[I
    array-length v12, v5

    .local v12, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_1
    if-ge v7, v12, :cond_1

    aget v20, v5, v7

    .line 2531
    .local v20, "subId":I
    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2530
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2534
    .end local v20    # "subId":I
    :cond_1
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2538
    const/4 v13, 0x0

    .line 2539
    .local v13, "mergeNumber":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneInterfaceManager;->mTelephonySharedPreferences:Landroid/content/SharedPreferences;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v16

    .line 2540
    .local v16, "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2541
    .local v9, "key":Ljava/lang/String;
    const-string v25, "carrier_subscriber_"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 2542
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 2543
    .local v22, "subscriberId":Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_2

    .line 2544
    const-string v25, "carrier_subscriber_"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 2545
    .local v8, "iccId":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "carrier_number_"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2546
    .local v15, "numberKey":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "mergeNumber":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 2551
    .restart local v13    # "mergeNumber":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_2

    .line 2559
    .end local v8    # "iccId":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    .end local v15    # "numberKey":Ljava/lang/String;
    .end local v22    # "subscriberId":Ljava/lang/String;
    :cond_3
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_4

    .line 2560
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 2534
    .end local v5    # "arr$":[I
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v12    # "len$":I
    .end local v13    # "mergeNumber":Ljava/lang/String;
    .end local v16    # "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .end local v21    # "subIds":[I
    :catchall_0
    move-exception v25

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v25

    .line 2564
    .restart local v5    # "arr$":[I
    .restart local v7    # "i$":Ljava/util/Iterator;
    .restart local v12    # "len$":I
    .restart local v13    # "mergeNumber":Ljava/lang/String;
    .restart local v16    # "prefs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    .restart local v21    # "subIds":[I
    :cond_4
    new-instance v17, Landroid/util/ArraySet;

    invoke-direct/range {v17 .. v17}, Landroid/util/ArraySet;-><init>()V

    .line 2565
    .local v17, "result":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 2566
    .restart local v9    # "key":Ljava/lang/String;
    const-string v25, "carrier_number_"

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 2567
    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2568
    .local v14, "number":Ljava/lang/String;
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 2569
    const-string v25, "carrier_number_"

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 2570
    .restart local v8    # "iccId":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "carrier_subscriber_"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 2571
    .local v23, "subscriberKey":Ljava/lang/String;
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 2572
    .restart local v22    # "subscriberId":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_5

    .line 2573
    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2579
    .end local v8    # "iccId":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    .end local v14    # "number":Ljava/lang/String;
    .end local v22    # "subscriberId":Ljava/lang/String;
    .end local v23    # "subscriberKey":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v17 .. v17}, Landroid/util/ArraySet;->size()I

    move-result v25

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Ljava/lang/String;

    .line 2580
    .local v18, "resultArray":[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public getModemActivityInfo()Landroid/telephony/ModemActivityInfo;
    .locals 2

    .prologue
    .line 2900
    const/16 v0, 0x25

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ModemActivityInfo;

    return-object v0
.end method

.method public getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1503
    const-string v3, "getNeighboringCellInfo"

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneInterfaceManager;->enforceFineOrCoarseLocationPermission(Ljava/lang/String;)V

    .line 1506
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v4, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 1530
    :cond_0
    :goto_0
    return-object v1

    .line 1511
    :cond_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0xc

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v3, v4, v5, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1516
    invoke-static {}, Lcom/android/phone/PhoneInterfaceManager;->checkIfCallerIsSelfOrForegroundUser()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1519
    const/4 v1, 0x0

    .line 1522
    .local v1, "cells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-direct {p0, v3, v4, v5}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1524
    :catch_0
    move-exception v2

    .line 1525
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNeighboringCellInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getNetworkType()I
    .locals 2

    .prologue
    .line 1832
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1833
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1834
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    .line 1836
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkTypeForSubscriber(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1845
    const-string v2, "getNetworkTypeForSubscriber"

    invoke-direct {p0, p2, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1853
    :cond_0
    :goto_0
    return v1

    .line 1849
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1850
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1851
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    goto :goto_0
.end method

.method public getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 2194
    const-string v0, "getPcscfAddress"

    invoke-direct {p0, p2, v0}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2195
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 2199
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPreferredNetworkType(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 2263
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    .line 2265
    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 2266
    .local v1, "result":[I
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 2268
    .local v0, "networkType":I
    :goto_0
    return v0

    .line 2266
    .end local v0    # "networkType":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getRadioAccessFamily(ILjava/lang/String;)I
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 2645
    const-string v0, "getRadioAccessFamily"

    invoke-direct {p0, p2, v0}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2646
    const/4 v0, 0x1

    .line 2649
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/ProxyController;->getRadioAccessFamily(I)I

    move-result v0

    goto :goto_0
.end method

.method public getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    .locals 1
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccount;

    .prologue
    .line 2730
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v0

    return v0
.end method

.method public getTetherApnRequired()I
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 2301
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    .line 2302
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "tether_dun_required"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2306
    .local v0, "dunRequired":I
    if-ne v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->hasMatchedTetherApnSetting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2307
    const/4 v0, 0x1

    .line 2309
    :cond_0
    return v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 1808
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->getVoiceMessageCountForSubscriber(I)I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCountForSubscriber(I)I
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1816
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1817
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1818
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v1

    .line 1820
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1887
    const-string v2, "getDataNetworkTypeForSubscriber"

    invoke-direct {p0, p2, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1895
    :cond_0
    :goto_0
    return v1

    .line 1891
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1892
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1893
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v1

    goto :goto_0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1391
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1395
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1396
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1397
    const/4 v0, 0x0

    .line 1399
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0
.end method

.method public hasIccCard()Z
    .locals 2

    .prologue
    .line 1904
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/SubscriptionController;->getSlotId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->hasIccCardUsingSlotId(I)Z

    move-result v0

    return v0
.end method

.method public hasIccCardUsingSlotId(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1912
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingSlotId(I)[I

    move-result-object v1

    .line 1913
    .local v1, "subId":[I
    aget v3, v1, v2

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1914
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1915
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v2

    .line 1917
    :cond_0
    return v2
.end method

.method public iccCloseLogicalChannel(I)Z
    .locals 3
    .param p1, "channel"    # I

    .prologue
    .line 2007
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    .line 2010
    if-gez p1, :cond_0

    .line 2011
    const/4 v1, 0x0

    .line 2015
    :goto_0
    return v1

    .line 2013
    :cond_0
    const/16 v1, 0xb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2015
    .local v0, "success":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;)[B
    .locals 12
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "filePath"    # Ljava/lang/String;

    .prologue
    .line 2072
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    .line 2079
    const/16 v11, 0x1f

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    const/4 v1, -0x1

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-direct {p0, v11, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 2087
    .local v9, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    const/4 v10, 0x0

    .line 2088
    .local v10, "result":[B
    const/4 v8, 0x2

    .line 2089
    .local v8, "length":I
    iget-object v0, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v0, :cond_0

    .line 2090
    iget-object v0, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v0, v0

    add-int/lit8 v8, v0, 0x2

    .line 2091
    new-array v10, v8, [B

    .line 2092
    iget-object v0, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    array-length v3, v3

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2097
    :goto_0
    add-int/lit8 v0, v8, -0x1

    iget v1, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    int-to-byte v1, v1

    aput-byte v1, v10, v0

    .line 2098
    add-int/lit8 v0, v8, -0x2

    iget v1, v9, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    int-to-byte v1, v1

    aput-byte v1, v10, v0

    .line 2099
    return-object v10

    .line 2094
    :cond_0
    new-array v10, v8, [B

    goto :goto_0
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 2
    .param p1, "AID"    # Ljava/lang/String;

    .prologue
    .line 1996
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    .line 1999
    const/16 v1, 0x9

    invoke-direct {p0, v1, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/IccOpenLogicalChannelResponse;

    .line 2002
    .local v0, "response":Landroid/telephony/IccOpenLogicalChannelResponse;
    return-object v0
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "cla"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;

    .prologue
    .line 2049
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    .line 2056
    const/16 v10, 0x1d

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-direct {p0, v10, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 2061
    .local v8, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget v0, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    shl-int/lit8 v0, v0, 0x8

    iget v1, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    add-int/2addr v0, v1

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 2063
    .local v9, "s":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v0, :cond_0

    .line 2064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2066
    :cond_0
    return-object v9
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "command"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 2021
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    .line 2029
    if-gez p1, :cond_1

    .line 2030
    const-string v9, ""

    .line 2043
    :cond_0
    :goto_0
    return-object v9

    .line 2033
    :cond_1
    const/4 v10, 0x7

    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-direct {p0, v10, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 2038
    .local v8, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget v0, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    shl-int/lit8 v0, v0, 0x8

    iget v1, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    add-int/2addr v0, v1

    const/high16 v1, 0x10000

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 2040
    .local v9, "s":Ljava/lang/String;
    iget-object v0, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-eqz v0, :cond_0

    .line 2041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v8, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0
.end method

.method public invokeOemRilRequestRaw([B[B)I
    .locals 9
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B

    .prologue
    .line 2604
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 2606
    const/4 v5, 0x0

    .line 2608
    .local v5, "returnValue":I
    const/16 v6, 0x1b

    :try_start_0
    invoke-direct {p0, v6, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/AsyncResult;

    .line 2609
    .local v4, "result":Landroid/os/AsyncResult;
    iget-object v6, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_2

    .line 2610
    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v6, :cond_1

    .line 2611
    iget-object v6, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    move-object v0, v6

    check-cast v0, [B

    move-object v3, v0

    .line 2612
    .local v3, "responseData":[B
    array-length v6, v3

    array-length v7, p2

    if-le v6, v7, :cond_0

    .line 2613
    const-string v6, "PhoneInterfaceManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Buffer to copy response too small: Response length is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bytes. Buffer Size is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "bytes."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    :cond_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v3

    invoke-static {v3, v6, p2, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 2618
    array-length v5, v3

    .line 2631
    .end local v3    # "responseData":[B
    .end local v4    # "result":Landroid/os/AsyncResult;
    :cond_1
    :goto_0
    return v5

    .line 2621
    .restart local v4    # "result":Landroid/os/AsyncResult;
    :cond_2
    iget-object v2, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    .line 2622
    .local v2, "ex":Lcom/android/internal/telephony/CommandException;
    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 2623
    if-lez v5, :cond_1

    mul-int/lit8 v5, v5, -0x1

    goto :goto_0

    .line 2625
    .end local v2    # "ex":Lcom/android/internal/telephony/CommandException;
    .end local v4    # "result":Landroid/os/AsyncResult;
    :catch_0
    move-exception v1

    .line 2626
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string v6, "PhoneInterfaceManager"

    const-string v7, "sendOemRilRequestRaw: Runtime Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v5

    .line 2628
    if-lez v5, :cond_1

    mul-int/lit8 v5, v5, -0x1

    goto :goto_0
.end method

.method public isDataConnectivityPossible()Z
    .locals 3

    .prologue
    .line 1381
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 1382
    .local v1, "subId":I
    invoke-direct {p0, v1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1383
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1384
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v2

    .line 1386
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isHearingAidCompatibilitySupported()Z
    .locals 2

    .prologue
    .line 2695
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isIdle(Ljava/lang/String;)Z
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIdleForSubscriber(ILjava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1058
    const-string v2, "isIdleForSubscriber"

    invoke-direct {p0, p2, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1066
    :cond_0
    :goto_0
    return v1

    .line 1062
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1063
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1064
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isImsRegistered()Z
    .locals 1

    .prologue
    .line 2725
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isImsRegistered()Z

    move-result v0

    return v0
.end method

.method public isOffhook(Ljava/lang/String;)Z
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOffhookForSubscriber(ILjava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1016
    const-string v2, "isOffhookForSubscriber"

    invoke-direct {p0, p2, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1024
    :cond_0
    :goto_0
    return v1

    .line 1020
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1021
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1022
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isRadioOn(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1247
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isRadioOnForSubscriber(ILjava/lang/String;)Z
    .locals 1
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1252
    const-string v0, "isRadioOnForSubscriber"

    invoke-direct {p0, p2, v0}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1253
    const/4 v0, 0x0

    .line 1255
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOnForSubscriber(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isRinging(Ljava/lang/String;)Z
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRingingForSubscriber(ILjava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1037
    const-string v2, "isRingingForSubscriber"

    invoke-direct {p0, p2, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1045
    :cond_0
    :goto_0
    return v1

    .line 1041
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1042
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1043
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSimPinEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1071
    const-string v0, "isSimPinEnabled"

    invoke-direct {p0, p1, v0}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1072
    const/4 v0, 0x0

    .line 1075
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isSimPinEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method public isTtyModeSupported()Z
    .locals 4

    .prologue
    .line 2687
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 2688
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2690
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isTtySupported()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isVideoCallingEnabled(Ljava/lang/String;)Z
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2662
    const-string v2, "isVideoCallingEnabled"

    invoke-direct {p0, p1, v2}, Lcom/android/phone/PhoneInterfaceManager;->canReadPhoneState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2670
    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mTelephonySharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "enable_video_calling"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public isVolteEnabled()Z
    .locals 1

    .prologue
    .line 2746
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isVolteEnabled()Z

    move-result v0

    return v0
.end method

.method public isWifiCallingEnabled()Z
    .locals 1

    .prologue
    .line 2738
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v0

    return v0
.end method

.method public isWorldPhone()Z
    .locals 2

    .prologue
    .line 2682
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "world_phone_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public needMobileRadioShutdown()Z
    .locals 4

    .prologue
    .line 1302
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1303
    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1304
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->isRadioAvailable()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1307
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :goto_1
    return v2

    .line 1302
    .restart local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1306
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Phones are shutdown."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->logv(Ljava/lang/String;)V

    .line 1307
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 1790
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public nvReadItem(I)Ljava/lang/String;
    .locals 3
    .param p1, "itemID"    # I

    .prologue
    .line 2127
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    .line 2129
    const/16 v1, 0xd

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2131
    .local v0, "value":Ljava/lang/String;
    return-object v0
.end method

.method public nvResetConfig(I)Z
    .locals 3
    .param p1, "resetType"    # I

    .prologue
    .line 2177
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    .line 2179
    const/16 v1, 0x13

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2181
    .local v0, "success":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public nvWriteCdmaPrl([B)Z
    .locals 2
    .param p1, "preferredRoamingList"    # [B

    .prologue
    .line 2161
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    .line 2163
    const/16 v1, 0x11

    invoke-direct {p0, v1, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2165
    .local v0, "success":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public nvWriteItem(ILjava/lang/String;)Z
    .locals 4
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;

    .prologue
    .line 2144
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    .line 2146
    const/16 v1, 0xf

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v2, v3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2149
    .local v0, "success":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 2104
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    .line 2106
    const/16 v2, 0x19

    invoke-direct {p0, v2, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccIoResult;

    .line 2107
    .local v0, "response":Lcom/android/internal/telephony/uicc/IccIoResult;
    iget-object v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-nez v2, :cond_0

    .line 2108
    const-string v1, ""

    .line 2115
    :goto_0
    return-object v1

    .line 2112
    :cond_0
    iget v2, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    shl-int/lit8 v2, v2, 0x8

    iget v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    add-int/2addr v2, v3

    const/high16 v3, 0x10000

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2114
    .local v1, "s":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2115
    goto :goto_0
.end method

.method public setCellInfoListRate(I)V
    .locals 1
    .param p1, "rateInMillis"    # I

    .prologue
    .line 1561
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 1562
    return-void
.end method

.method public setDataEnabled(IZ)V
    .locals 4
    .param p1, "subId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 2320
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 2322
    invoke-direct {p0, p2}, Lcom/android/phone/PhoneInterfaceManager;->setAllPhonesDataEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2335
    :goto_0
    return-void

    .line 2326
    :cond_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/SubscriptionController;->getPhoneId(I)I

    move-result v1

    .line 2327
    .local v1, "phoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataEnabled: subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 2328
    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 2329
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_1

    .line 2330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataEnabled: subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 2331
    invoke-interface {v0, p2}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)V

    goto :goto_0

    .line 2333
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataEnabled: no phone for subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setImsRegistrationState(Z)V
    .locals 1
    .param p1, "registered"    # Z

    .prologue
    .line 2203
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 2204
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setImsRegistrationState(Z)V

    .line 2205
    return-void
.end method

.method public setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 2442
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCarrierPrivilege()V

    .line 2444
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getIccId(I)Ljava/lang/String;

    move-result-object v2

    .line 2445
    .local v2, "iccId":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    .line 2446
    .local v4, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v4, :cond_1

    .line 2482
    :cond_0
    :goto_0
    return v7

    .line 2449
    :cond_1
    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v5

    .line 2456
    .local v5, "subscriberId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 2460
    iget-object v7, p0, Lcom/android/phone/PhoneInterfaceManager;->mTelephonySharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2462
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "carrier_alphtag_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2463
    .local v0, "alphaTagPrefKey":Ljava/lang/String;
    if-nez p2, :cond_2

    .line 2464
    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2471
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "carrier_number_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2472
    .local v3, "numberPrefKey":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "carrier_subscriber_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2473
    .local v6, "subscriberPrefKey":Ljava/lang/String;
    if-nez p3, :cond_3

    .line 2474
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2475
    invoke-interface {v1, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2481
    :goto_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2482
    const/4 v7, 0x1

    goto :goto_0

    .line 2466
    .end local v3    # "numberPrefKey":Ljava/lang/String;
    .end local v6    # "subscriberPrefKey":Ljava/lang/String;
    :cond_2
    invoke-interface {v1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 2477
    .restart local v3    # "numberPrefKey":Ljava/lang/String;
    .restart local v6    # "subscriberPrefKey":Ljava/lang/String;
    :cond_3
    invoke-interface {v1, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2478
    invoke-interface {v1, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_2
.end method

.method public setNetworkSelectionModeAutomatic(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 2213
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    .line 2215
    const/16 v0, 0x23

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    .line 2216
    return-void
.end method

.method public setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "operator"    # Lcom/android/internal/telephony/OperatorInfo;

    .prologue
    .line 2223
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    .line 2225
    const/16 v0, 0x29

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p2, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 1
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 2589
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCarrierPrivilege()V

    .line 2590
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setOperatorBrandOverride(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setPreferredNetworkType(II)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 2280
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermissionOrCarrierPrivilege()V

    .line 2282
    const/16 v1, 0x17

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 2284
    .local v0, "success":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2285
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2288
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public setRadio(Z)Z
    .locals 1
    .param p1, "turnOn"    # Z

    .prologue
    .line 1281
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->setRadioForSubscriber(IZ)Z

    move-result v0

    return v0
.end method

.method public setRadioCapability([Landroid/telephony/RadioAccessFamily;)V
    .locals 3
    .param p1, "rafs"    # [Landroid/telephony/RadioAccessFamily;

    .prologue
    .line 2637
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/ProxyController;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2641
    :goto_0
    return-void

    .line 2638
    :catch_0
    move-exception v0

    .line 2639
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "PhoneInterfaceManager"

    const-string v2, "setRadioCapability: Runtime Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setRadioForSubscriber(IZ)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "turnOn"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1285
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1286
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1287
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    .line 1294
    :goto_0
    return v1

    .line 1290
    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    move v1, v2

    :cond_1
    if-eq v1, p2, :cond_2

    .line 1292
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->toggleRadioOnOffForSubscriber(I)V

    :cond_2
    move v1, v2

    .line 1294
    goto :goto_0
.end method

.method public setRadioPower(Z)Z
    .locals 1
    .param p1, "turnOn"    # Z

    .prologue
    .line 1326
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->setRadioPowerForSubscriber(IZ)Z

    move-result v0

    return v0
.end method

.method public setRadioPowerForSubscriber(IZ)Z
    .locals 2
    .param p1, "subId"    # I
    .param p2, "turnOn"    # Z

    .prologue
    .line 1330
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1331
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1332
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1333
    invoke-interface {v0, p2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1334
    const/4 v1, 0x1

    .line 1336
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 2597
    .local p1, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCarrierPrivilege()V

    .line 2598
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 1798
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCarrierPrivilege()V

    .line 1799
    const/16 v1, 0x21

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v1, v2, v3}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 1801
    .local v0, "success":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public shutdownMobileRadios()V
    .locals 3

    .prologue
    .line 1311
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shutting down Phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneInterfaceManager;->logv(Ljava/lang/String;)V

    .line 1313
    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->shutdownRadioUsingPhoneId(I)V

    .line 1311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1315
    :cond_0
    return-void
.end method

.method public silenceRinger()V
    .locals 2

    .prologue
    .line 1003
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "silenseRinger not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    return-void
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 1079
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supplyPinForSubscriber(ILjava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1083
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v0

    .line 1084
    .local v0, "resultArray":[I
    aget v2, v0, v1

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .locals 1
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 1098
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public supplyPinReportResultForSubscriber(ILjava/lang/String;)[I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 1102
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1103
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1104
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->returnErrorForPinPukOperation()[I

    move-result-object v2

    .line 1107
    :goto_0
    return-object v2

    .line 1105
    :cond_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 1106
    .local v0, "checkSimPin":Lcom/android/phone/PhoneInterfaceManager$UnlockSim;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->start()V

    .line 1107
    const/4 v2, 0x0

    invoke-virtual {v0, v2, p2}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v2

    goto :goto_0
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 1088
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1092
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/phone/PhoneInterfaceManager;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    .line 1093
    .local v0, "resultArray":[I
    aget v2, v0, v1

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 1
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 1112
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManager;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I
    .locals 3
    .param p1, "subId"    # I
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .prologue
    .line 1116
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1117
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1118
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->returnErrorForPinPukOperation()[I

    move-result-object v2

    .line 1121
    :goto_0
    return-object v2

    .line 1119
    :cond_0
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 1120
    .local v0, "checkSimPuk":Lcom/android/phone/PhoneInterfaceManager$UnlockSim;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->start()V

    .line 1121
    invoke-virtual {v0, p2, p3}, Lcom/android/phone/PhoneInterfaceManager$UnlockSim;->unlockSim(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v2

    goto :goto_0
.end method

.method public toggleRadioOnOff()V
    .locals 1

    .prologue
    .line 1268
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->toggleRadioOnOffForSubscriber(I)V

    .line 1270
    return-void
.end method

.method public toggleRadioOnOffForSubscriber(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1273
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1274
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1275
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1276
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOnForSubscriber(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1278
    :cond_0
    return-void

    .line 1276
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 1231
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->updateServiceLocationForSubscriber(I)V

    .line 1233
    return-void
.end method

.method public updateServiceLocationForSubscriber(I)V
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1239
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 1240
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    .line 1241
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 1243
    :cond_0
    return-void
.end method
