.class public Lcom/android/server/enterprise/EDMProxyService;
.super Landroid/sec/enterprise/IEDMProxy$Stub;
.source "EDMProxyService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/sec/enterprise/IEDMProxy$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public AuditLogger(IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "severityGrade"    # I
    .param p2, "moduleGroup"    # I
    .param p3, "outcome"    # Z
    .param p4, "uid"    # I
    .param p5, "swComponent"    # Ljava/lang/String;
    .param p6, "logMessage"    # Ljava/lang/String;

    .prologue
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .local v0, "auditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public AuditLoggerAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "severityGrade"    # I
    .param p2, "moduleGroup"    # I
    .param p3, "outcome"    # Z
    .param p4, "uid"    # I
    .param p5, "swComponent"    # Ljava/lang/String;
    .param p6, "logMessage"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .prologue
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .local v0, "auditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public AuditLoggerPrivileged(IIZILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "severityGrade"    # I
    .param p2, "moduleGroup"    # I
    .param p3, "outcome"    # Z
    .param p4, "pid"    # I
    .param p5, "swComponent"    # Ljava/lang/String;
    .param p6, "logMessage"    # Ljava/lang/String;

    .prologue
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .local v0, "auditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerPrivileged(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public AuditLoggerPrivilegedAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p1, "severityGrade"    # I
    .param p2, "moduleGroup"    # I
    .param p3, "outcome"    # Z
    .param p4, "pid"    # I
    .param p5, "swComponent"    # Ljava/lang/String;
    .param p6, "logMessage"    # Ljava/lang/String;
    .param p7, "userId"    # I

    .prologue
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .local v0, "auditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerPrivilegedAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public addCallsCount(Ljava/lang/String;)V
    .locals 2
    .param p1, "callType"    # Ljava/lang/String;

    .prologue
    const-string v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->addCallsCount(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addNumberOfIncomingCalls()Z
    .locals 2

    .prologue
    const-string v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->addNumberOfIncomingCalls()Z

    move-result v1

    goto :goto_0
.end method

.method public addNumberOfIncomingSms()Z
    .locals 2

    .prologue
    const-string v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->addNumberOfIncomingSms()Z

    move-result v1

    goto :goto_0
.end method

.method public addNumberOfOutgoingCalls()Z
    .locals 2

    .prologue
    const-string v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->addNumberOfOutgoingCalls()Z

    move-result v1

    goto :goto_0
.end method

.method public addNumberOfOutgoingSms()Z
    .locals 2

    .prologue
    const-string v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->addNumberOfOutgoingSms()Z

    move-result v1

    goto :goto_0
.end method

.method public bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->bluetoothLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public canIncomingCall(Ljava/lang/String;)Z
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const-string v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingCall(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public canIncomingSms(Ljava/lang/String;)Z
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const-string v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public canOutgoingCall(Ljava/lang/String;)Z
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const-string v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingCall(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public canOutgoingSms(Ljava/lang/String;)Z
    .locals 2
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const-string v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public decreaseNumberOfOutgoingSms()Z
    .locals 2

    .prologue
    const-string v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->decreaseNumberOfOutgoingSms()Z

    move-result v1

    goto :goto_0
.end method

.method public edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "netSSID"    # Ljava/lang/String;

    .prologue
    const-string v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAddHomeShorcutRequested()Z
    .locals 2

    .prologue
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getAddHomeShorcutRequested()Z

    move-result v1

    goto :goto_0
.end method

.method public getAliasesForPackage(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAliasesForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getAliasesForWiFi()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getAliasesForWiFi()Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getAllowBluetoothDataTransfer(Z)Z
    .locals 2
    .param p1, "showMsg"    # Z

    .prologue
    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->getAllowBluetoothDataTransfer(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public getAllowUserPolicyChanges()Z
    .locals 2

    .prologue
    const-string v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserPolicyChanges(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAllowUserProfiles(ZI)Z
    .locals 2
    .param p1, "showMsg"    # Z
    .param p2, "userId"    # I

    .prologue
    const-string v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAllowUserProfiles(Landroid/app/enterprise/ContextInfo;ZI)Z

    move-result v1

    goto :goto_0
.end method

.method public getApplicationIconFromDb(Ljava/lang/String;I)[B
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationIconFromDbAsUser(Ljava/lang/String;I)[B

    move-result-object v1

    goto :goto_0
.end method

.method public getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "showMsg"    # Z

    .prologue
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "showMsg"    # Z
    .param p3, "userId"    # I

    .prologue
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->getApplicationStateEnabledAsUser(Ljava/lang/String;ZI)Z

    move-result v1

    goto :goto_0
.end method

.method public getAutomaticConnectionToWifi()Z
    .locals 2

    .prologue
    const-string v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getAutomaticConnectionToWifi(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public getBlockedNetworks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getBlockedNetworks(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getBrowserSettingStatus(I)Z
    .locals 3
    .param p1, "setting"    # I

    .prologue
    const-string v1, "browser_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .local v0, "browserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    goto :goto_0
.end method

.method public getCertificateAliasesHavingPrivateKey()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getCertificateAliasesHavingPrivateKey(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getCertificateChain(Ljava/lang/String;)[B
    .locals 3
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-string v2, "com.samsung.ucs.ucsservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .local v1, "ucmService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getCertificateChain(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    .local v0, "ret":Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;->mData:[B

    .end local v0    # "ret":Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v1, "enterprise_license_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .local v0, "enterpriseLicenseService":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getEmergencyCallOnly(Z)Z
    .locals 3
    .param p1, "allAdmins"    # Z

    .prologue
    const-string v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->getEmergencyCallOnly(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public getKeyboardMode()I
    .locals 2

    .prologue
    const-string v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getKeyboardMode()I

    move-result v1

    goto :goto_0
.end method

.method public getMinimumRequiredSecurity()I
    .locals 2

    .prologue
    const-string v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getMinimumRequiredSecurity(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    goto :goto_0
.end method

.method public getNetworkSSIDList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getNetworkSSIDList(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getPromptCredentialsEnabled()Z
    .locals 2

    .prologue
    const-string v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getPromptCredentialsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public getSealedHideNotificationMessages()I
    .locals 2

    .prologue
    const-string v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getHideNotificationMessages()I

    move-result v1

    goto :goto_0
.end method

.method public getSealedNotificationMessagesState()Z
    .locals 2

    .prologue
    const-string v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSealedNotificationMessagesState()Z

    move-result v1

    goto :goto_0
.end method

.method public getSealedState()Z
    .locals 2

    .prologue
    const-string v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getProKioskState()Z

    move-result v1

    goto :goto_0
.end method

.method public getSensorDisabled()I
    .locals 2

    .prologue
    const-string v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getSensorDisabled()I

    move-result v1

    goto :goto_0
.end method

.method public getSlotIdForCaller(Ljava/lang/String;)J
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const-string v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotIdForCaller(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getSlotIdForPackage(Ljava/lang/String;Ljava/lang/String;)J
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    const-string v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_0

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->getSlotIdForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getToastEnabledState()Z
    .locals 2

    .prologue
    const-string v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getToastEnabledState()Z

    move-result v1

    goto :goto_0
.end method

.method public getToastGravity()I
    .locals 2

    .prologue
    const-string v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getToastGravity()I

    move-result v1

    goto :goto_0
.end method

.method public getToastGravityEnabledState()Z
    .locals 2

    .prologue
    const-string v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getToastGravityEnabledState()Z

    move-result v1

    goto :goto_0
.end method

.method public getToastGravityXOffset()I
    .locals 2

    .prologue
    const-string v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getToastGravityXOffset()I

    move-result v1

    goto :goto_0
.end method

.method public getToastGravityYOffset()I
    .locals 2

    .prologue
    const-string v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getToastGravityYOffset()I

    move-result v1

    goto :goto_0
.end method

.method public getToastShowPackageNameState()Z
    .locals 2

    .prologue
    const-string v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getToastShowPackageNameState()Z

    move-result v1

    goto :goto_0
.end method

.method public getVolumeButtonRotationState()Z
    .locals 2

    .prologue
    const-string v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getVolumeButtonRotationState()Z

    move-result v1

    goto :goto_0
.end method

.method public getVolumeControlStream()I
    .locals 2

    .prologue
    const-string v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getVolumeControlStream()I

    move-result v1

    goto :goto_0
.end method

.method public getVolumePanelEnabledState()Z
    .locals 2

    .prologue
    const-string v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getVolumePanelEnabledState()Z

    move-result v1

    goto :goto_0
.end method

.method public getWifiAutoSwitchDelay()I
    .locals 2

    .prologue
    const-string v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    const/16 v1, 0x14

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getWifiAutoSwitchDelay()I

    move-result v1

    goto :goto_0
.end method

.method public getWifiAutoSwitchState()Z
    .locals 2

    .prologue
    const-string v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getWifiAutoSwitchState()Z

    move-result v1

    goto :goto_0
.end method

.method public getWifiAutoSwitchThreshold()I
    .locals 2

    .prologue
    const-string v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    const/16 v1, -0xc8

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getWifiAutoSwitchThreshold()I

    move-result v1

    goto :goto_0
.end method

.method public getWifiSsidRestrictionList(I)Ljava/util/List;
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->getWifiSsidRestrictionList(Landroid/app/enterprise/ContextInfo;I)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getWifiState()Z
    .locals 2

    .prologue
    const-string v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;->getWifiState()Z

    move-result v1

    goto :goto_0
.end method

.method public isAccessControlMethodPassword()Z
    .locals 3

    .prologue
    const-string v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isAccessControlMethodPassword(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    const-string v1, "device_account_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .local v0, "deviceAccountPolicy":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountAdditionAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "account"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    const-string v1, "device_account_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .local v0, "deviceAccountPolicy":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/security/DeviceAccountPolicy;->isAccountRemovalAllowed(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isAndroidBeamAllowed(Z)Z
    .locals 2
    .param p1, "showMsg"    # Z

    .prologue
    const-string v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAndroidBeamAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "errorType"    # Ljava/lang/String;
    .param p4, "errorClass"    # Ljava/lang/String;
    .param p5, "errorReason"    # Ljava/lang/String;
    .param p6, "showMsg"    # Z

    .prologue
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isAudioRecordAllowed(Z)Z
    .locals 3
    .param p1, "showMsg"    # Z

    .prologue
    const-string v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isAuditLogEnabledAsUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .local v0, "auditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledAsUser(I)Z

    move-result v1

    goto :goto_0
.end method

.method public isBTSecureAccessAllowedAsUser(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const-string v1, "smartcard_access_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;

    .local v0, "smartCardAccessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->isBTSecureAccessAllowedAsUser(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    goto :goto_0
.end method

.method public isBackgroundProcessLimitAllowed()Z
    .locals 2

    .prologue
    const-string v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundProcessLimitAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isBackupAllowed(Z)Z
    .locals 2
    .param p1, "showMsg"    # Z

    .prologue
    const-string v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackupAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isBlockMmsWithStorageEnabled()Z
    .locals 3

    .prologue
    const-string v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockMmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isBlockSmsWithStorageEnabled()Z
    .locals 3

    .prologue
    const-string v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isBluetoothDeviceAllowed(Ljava/lang/String;)Z
    .locals 3
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothDeviceAllowed(Ljava/lang/String;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isBluetoothEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isBluetoothLogEnabled()Z
    .locals 2

    .prologue
    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isBluetoothUUIDAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothUUIDAllowedInternal(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isCCMPolicyEnabledForCaller()Z
    .locals 3

    .prologue
    const-string v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isCCMPolicyEnabledForPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const-string v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/ccm/ClientCertificateManager;->isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isCaCertificateTrustedAsUser([BZZI)Z
    .locals 15
    .param p1, "certBytes"    # [B
    .param p2, "showMsg"    # Z
    .param p3, "checkTrusted"    # Z
    .param p4, "userId"    # I

    .prologue
    const-string v12, "certificate_policy"

    invoke-static {v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .local v6, "certPolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v6, :cond_1

    const/4 v11, 0x1

    :cond_0
    :goto_0
    return v11

    :cond_1
    const/4 v11, 0x1

    .local v11, "ret":Z
    const/4 v10, 0x0

    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-nez p1, :cond_2

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    if-nez v10, :cond_3

    const-string v12, "EDMProxyService"

    const-string v13, "Could not convert one certificate."

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    goto :goto_0

    :catch_0
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    const-string v12, "EDMProxyService"

    const-string v13, "Could not convert certificate."

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    goto :goto_0

    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .local v3, "cer":Ljava/security/cert/CertificateException;
    const-string v12, "EDMProxyService"

    const-string v13, "Could not convert certificate."

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    goto :goto_0

    .end local v3    # "cer":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v9

    .local v9, "ile":Ljava/lang/IllegalArgumentException;
    const-string v12, "EDMProxyService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Not a certificate "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x1

    goto :goto_0

    .end local v9    # "ile":Ljava/lang/IllegalArgumentException;
    :cond_3
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .local v4, "cert":Ljava/security/cert/X509Certificate;
    new-instance v5, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v5, v4}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    .local v5, "certInfo":Landroid/app/enterprise/CertificateInfo;
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v6, v5, v0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser(Landroid/app/enterprise/CertificateInfo;ZZI)Z

    move-result v12

    and-int/2addr v11, v12

    if-nez v11, :cond_4

    const/4 v11, 0x0

    goto :goto_0
.end method

.method public isCallingCaptureEnabled()Z
    .locals 3

    .prologue
    const-string v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->isCallingCaptureEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isCameraEnabled(Z)Z
    .locals 3
    .param p1, "showMsg"    # Z

    .prologue
    const-string v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isChangeRequested()I
    .locals 3

    .prologue
    const-string v1, "password_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/PasswordPolicy;

    .local v0, "passwordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequested(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    goto :goto_0
.end method

.method public isClipboardAllowed(Z)Z
    .locals 3
    .param p1, "showMsg"    # Z

    .prologue
    const-string v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isClipboardShareAllowed()Z
    .locals 3

    .prologue
    const-string v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isCopyContactToSimAllowed(I)Z
    .locals 2
    .param p1, "message"    # I

    .prologue
    const-string v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isCopyContactToSimAllowed(I)Z

    move-result v1

    goto :goto_0
.end method

.method public isDateTimeChangeEnabled()Z
    .locals 3

    .prologue
    const-string v1, "date_time_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .local v0, "dateTimePolicy":Lcom/android/server/enterprise/datetime/DateTimePolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isDesktopConnectivityEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isDiscoverableEnabled()Z
    .locals 2

    .prologue
    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isGoogleCrashReportAllowed()Z
    .locals 3

    .prologue
    const-string v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleCrashReportAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isHardwareKeyAllowed(IZ)Z
    .locals 3
    .param p1, "hwKeyId"    # I
    .param p2, "showMsg"    # Z

    .prologue
    const-string v1, "kioskmode"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .local v0, "kioskModeService":Lcom/android/server/enterprise/kioskmode/KioskModeService;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isHardwareKeyAllowed(Landroid/app/enterprise/ContextInfo;IZ)Z

    move-result v1

    goto :goto_0
.end method

.method public isIncomingMmsAllowed()Z
    .locals 2

    .prologue
    const-string v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingMmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isIncomingSmsAllowed()Z
    .locals 3

    .prologue
    const-string v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isIncomingSmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v1

    goto :goto_0
.end method

.method public isKillingActivitiesOnLeaveAllowed()Z
    .locals 2

    .prologue
    const-string v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isKnoxBluetoothEnabled(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    const-string v2, "mum_container_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .local v0, "knoxMUMContainerPolicy":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v1, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isBluetoothEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isLimitNumberOfSmsEnabled()Z
    .locals 3

    .prologue
    const-string v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isLimitedDiscoverableEnabled()Z
    .locals 2

    .prologue
    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isLimitedDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isLocationProviderBlocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const-string v1, "location_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/location/LocationPolicy;

    .local v0, "locationPolicy":Lcom/android/server/enterprise/location/LocationPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isMMSCaptureEnabled()Z
    .locals 3

    .prologue
    const-string v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->isMMSCaptureEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isMicrophoneEnabled(Z)Z
    .locals 3
    .param p1, "showMsg"    # Z

    .prologue
    const-string v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isNFCEnabled()Z
    .locals 2

    .prologue
    const-string v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabled()Z

    move-result v1

    goto :goto_0
.end method

.method public isNFCEnabledWithMsg(Z)Z
    .locals 2
    .param p1, "showMsg"    # Z

    .prologue
    const-string v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabledWithMsg(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isNFCStateChangeAllowed()Z
    .locals 2

    .prologue
    const-string v1, "misc_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/MiscPolicy;

    .local v0, "miscPolicy":Lcom/android/server/enterprise/general/MiscPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/enterprise/general/MiscPolicy;->isNFCStateChangeAllowed()Z

    move-result v1

    goto :goto_0
.end method

.method public isNonMarketAppAllowed()Z
    .locals 3

    .prologue
    const-string v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isOcspCheckEnabled()Z
    .locals 3

    .prologue
    const-string v1, "certificate_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .local v0, "certificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isOcspCheckEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isOutgoingCallsAllowed()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isOutgoingSmsAllowed()Z
    .locals 3

    .prologue
    const-string v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isOutgoingSmsAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isPackageAllowedToAccessExternalSdcard(II)Z
    .locals 3
    .param p1, "userId"    # I
    .param p2, "packageUid"    # I

    .prologue
    const/4 v1, 0x0

    const-string v2, "mum_container_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .local v0, "knoxMUMContainerPolicy":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v1, p1}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    invoke-virtual {v0, v2, p2}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;->isPackageAllowedToAccessExternalSdcard(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    goto :goto_0
.end method

.method public isPackageWhitelistedFromBTSecureAccess(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const-string v1, "smartcard_access_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;

    .local v0, "smartCardAccessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->isPackageWhitelistedFromBTSecureAccess(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isPackageWhitelistedFromBTSecureAccessUid(I)Z
    .locals 3
    .param p1, "calling_Uid"    # I

    .prologue
    const-string v1, "smartcard_access_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;

    .local v0, "smartCardAccessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;->isPackageWhitelistedFromBTSecureAccessUid(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v1

    goto :goto_0
.end method

.method public isPairingEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isPairingEnabled(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isPowerOffAllowed(Z)Z
    .locals 3
    .param p1, "showMsg"    # Z

    .prologue
    const-string v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerOffAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isProfileEnabled(I)Z
    .locals 3
    .param p1, "setting"    # I

    .prologue
    const/4 v1, 0x1

    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isProfileEnabledInternal(IZ)Z

    move-result v1

    goto :goto_0
.end method

.method public isRevocationCheckEnabled()Z
    .locals 3

    .prologue
    const-string v1, "certificate_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .local v0, "certificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isRoamingPushEnabled()Z
    .locals 2

    .prologue
    const-string v1, "roaming_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .local v0, "roamingPolicy":Lcom/android/server/enterprise/restriction/RoamingPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingPushEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isRoamingSyncEnabled()Z
    .locals 2

    .prologue
    const-string v1, "roaming_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .local v0, "roamingPolicy":Lcom/android/server/enterprise/restriction/RoamingPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isSBeamAllowed(Z)Z
    .locals 2
    .param p1, "showMsg"    # Z

    .prologue
    const-string v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSBeamAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isSMSCaptureEnabled()Z
    .locals 3

    .prologue
    const-string v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/device/DeviceInfo;->isSMSCaptureEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isSVoiceAllowed(Z)Z
    .locals 3
    .param p1, "showMsg"    # Z

    .prologue
    const-string v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isScreenCaptureEnabled(Z)Z
    .locals 3
    .param p1, "showMsg"    # Z

    .prologue
    const-string v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isScreenLockPatternVisibilityEnabled()Z
    .locals 3

    .prologue
    const-string v1, "password_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/PasswordPolicy;

    .local v0, "passwordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isScreenLockPatternVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isSettingsChangesAllowed(Z)Z
    .locals 3
    .param p1, "showMsg"    # Z

    .prologue
    const-string v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isSimLockedByAdmin(Ljava/lang/String;)Z
    .locals 2
    .param p1, "iccId"    # Ljava/lang/String;

    .prologue
    const-string v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isSimLockedByAdmin(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isTaskManagerAllowed(Z)Z
    .locals 3
    .param p1, "showMsg"    # Z

    .prologue
    const-string v1, "kioskmode"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .local v0, "kioskModeService":Lcom/android/server/enterprise/kioskmode/KioskModeService;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/kioskmode/KioskModeService;->isTaskManagerAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isTimaKeystoreEnabled()Z
    .locals 3

    .prologue
    const-string v1, "knox_timakeystore_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .local v0, "timaKeystoreService":Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isTimaKeystoreEnabledForPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const-string v1, "knox_timakeystore_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .local v0, "timaKeystoreService":Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->isTimaKeystoreEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isUrlBlocked(Ljava/lang/String;)Z
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const-string v1, "browser_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .local v0, "browserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->isUrlBlocked(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public isUserRemoveCertificatesAllowedAsUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const-string v1, "certificate_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .local v0, "certificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowedAsUser(I)Z

    move-result v1

    goto :goto_0
.end method

.method public isVideoRecordAllowed(Z)Z
    .locals 3
    .param p1, "showMsg"    # Z

    .prologue
    const-string v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVideoRecordAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isWapPushAllowed()Z
    .locals 2

    .prologue
    const-string v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->isWapPushAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public isWifiDirectAllowed(Z)Z
    .locals 2
    .param p1, "showMsg"    # Z

    .prologue
    const-string v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v1

    goto :goto_0
.end method

.method public isWifiStateChangeAllowed()Z
    .locals 2

    .prologue
    const-string v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiStateChangeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v1

    goto :goto_0
.end method

.method public notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z

    .prologue
    const-string v1, "certificate_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .local v0, "certificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 2
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "showMsg"    # Z
    .param p4, "userId"    # I

    .prologue
    const-string v1, "certificate_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .local v0, "certificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0
.end method

.method public notifyCertificateRemovedAsUser(Ljava/lang/String;I)V
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const-string v1, "certificate_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .local v0, "certificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateRemovedAsUser(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyUserKeystoreUnlocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const-string v3, "certificate_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .local v1, "certipolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyUserKeystoreUnlocked(I)V

    :cond_0
    const-string v3, "knox_scep_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    .local v0, "cepPolicy":Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->notifyUserKeystoreUnlocked(I)V

    :cond_1
    const-string v3, "knox_vpn_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .local v2, "knoxvpnPolicy":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->notifyUserKeystoreUnlocked(I)V

    :cond_2
    return-void
.end method

.method public removeNetworkConfiguration(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    const-string v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Lcom/android/server/enterprise/wifi/WifiPolicy;->removeNetworkConfiguration(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method public storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "isSms"    # Z
    .param p2, "pdu"    # [B
    .param p3, "srcAddress"    # Ljava/lang/String;
    .param p4, "sendType"    # I
    .param p5, "timeStamp"    # Ljava/lang/String;

    .prologue
    const-string v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "duration"    # Ljava/lang/String;
    .param p4, "status"    # Ljava/lang/String;
    .param p5, "isIncoming"    # Z

    .prologue
    const-string v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/device/DeviceInfo;->storeCalling(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "isInbound"    # Z

    .prologue
    const-string v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/device/DeviceInfo;->storeMMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "isInbound"    # Z

    .prologue
    const-string v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/device/DeviceInfo;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public validateCertificateAtInstallAsUser([BI)I
    .locals 12
    .param p1, "certBytes"    # [B
    .param p2, "userId"    # I

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x7

    const-string v10, "certificate_policy"

    invoke-static {v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .local v3, "certPolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_0
    move v8, v9

    :cond_1
    :goto_0
    return v8

    :cond_2
    const/4 v7, 0x0

    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p1}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    if-nez v7, :cond_3

    const-string v9, "EDMProxyService"

    const-string v10, "Could not convert one certificate."

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    const-string v9, "EDMProxyService"

    const-string v10, "Could not convert certificate."

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .local v0, "cer":Ljava/security/cert/CertificateException;
    const-string v9, "EDMProxyService"

    const-string v10, "Could not convert certificate."

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "cer":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v6

    .local v6, "ile":Ljava/lang/IllegalArgumentException;
    const-string v9, "EDMProxyService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Not a certificate "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v6    # "ile":Ljava/lang/IllegalArgumentException;
    :cond_3
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .local v1, "cert":Ljava/security/cert/X509Certificate;
    new-instance v2, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v2, v1}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    .local v2, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v3, v2, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstallAsUser(Landroid/app/enterprise/CertificateInfo;I)I

    move-result v8

    .local v8, "ret":I
    if-eq v8, v9, :cond_4

    goto :goto_0

    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .end local v8    # "ret":I
    :cond_5
    move v8, v9

    goto :goto_0
.end method
