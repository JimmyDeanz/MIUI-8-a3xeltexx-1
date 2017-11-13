.class public Lcom/android/server/enterprise/EDMProxyService;
.super Landroid/sec/enterprise/IEDMProxy$Stub;
.source "EDMProxyService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 131
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
    .line 771
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 772
    .local v0, "auditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-nez v0, :cond_0

    .line 777
    :goto_0
    return-void

    .line 775
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
    .line 781
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 782
    .local v0, "auditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-nez v0, :cond_0

    .line 787
    :goto_0
    return-void

    .line 785
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
    .line 791
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 792
    .local v0, "auditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-nez v0, :cond_0

    .line 797
    :goto_0
    return-void

    .line 795
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
    .line 801
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 802
    .local v0, "auditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-nez v0, :cond_0

    .line 807
    :goto_0
    return-void

    .line 805
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
    .line 134
    const-string/jumbo v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 136
    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/device/DeviceInfo;->addCallsCount(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addNumberOfIncomingCalls()Z
    .locals 2

    .prologue
    .line 468
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 470
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    .line 471
    const/4 v1, 0x0

    .line 473
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
    .line 496
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 498
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    .line 499
    const/4 v1, 0x0

    .line 501
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
    .line 477
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 479
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    .line 480
    const/4 v1, 0x0

    .line 482
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
    .line 505
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 507
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    .line 508
    const/4 v1, 0x0

    .line 510
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
    .line 680
    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 682
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    .line 687
    :goto_0
    return-void

    .line 685
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
    .line 440
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 442
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    .line 443
    const/4 v1, 0x1

    .line 445
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
    .line 532
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 534
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    .line 535
    const/4 v1, 0x1

    .line 537
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
    .line 449
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 451
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    .line 452
    const/4 v1, 0x1

    .line 454
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
    .line 523
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 525
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    .line 526
    const/4 v1, 0x1

    .line 528
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
    .line 514
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 516
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    .line 517
    const/4 v1, 0x0

    .line 519
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
    .line 597
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 598
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    .line 602
    :goto_0
    return-void

    .line 601
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->edmAddOrUpdate(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAddHomeShorcutRequested()Z
    .locals 2

    .prologue
    .line 216
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 218
    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_0

    .line 219
    const/4 v1, 0x0

    .line 221
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
    .line 1495
    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 1497
    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_0

    .line 1498
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 1500
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
    .line 1521
    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 1523
    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_0

    .line 1524
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 1526
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
    .line 234
    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 236
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    .line 237
    const/4 v1, 0x1

    .line 239
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
    .line 557
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 558
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    .line 559
    const/4 v1, 0x1

    .line 561
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
    .line 565
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 566
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    .line 567
    const/4 v1, 0x1

    .line 569
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
    .line 206
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 208
    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_0

    .line 209
    const/4 v1, 0x0

    .line 211
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
    .line 1120
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 1122
    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_0

    .line 1123
    const/4 v1, 0x0

    .line 1125
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
    .line 650
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 652
    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_0

    .line 653
    const/4 v1, 0x1

    .line 655
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
    .line 660
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 662
    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_0

    .line 663
    const/4 v1, 0x1

    .line 665
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
    .line 938
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 939
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    .line 940
    const/4 v1, 0x1

    .line 942
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
    .line 549
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 550
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    .line 551
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 553
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
    .line 324
    const-string v1, "browser_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .line 326
    .local v0, "browserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    if-nez v0, :cond_0

    .line 327
    const/4 v1, 0x1

    .line 329
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
    .line 1533
    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 1535
    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_0

    .line 1536
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    .line 1538
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
    .line 1431
    const-string v2, "com.samsung.ucs.ucsservice"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 1432
    .local v1, "ucmService":Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    if-eqz v1, :cond_0

    .line 1433
    invoke-virtual {v1, p1}, Lcom/samsung/ucm/ucmservice/CredentialManagerService;->getCertificateChain(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;

    move-result-object v0

    .line 1434
    .local v0, "ret":Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;
    if-eqz v0, :cond_0

    .line 1435
    iget-object v2, v0, Lcom/sec/enterprise/knox/ucm/core/ucmRetParcelable;->mData:[B

    .line 1437
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
    .line 1442
    const-string/jumbo v1, "enterprise_license_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    .line 1444
    .local v0, "enterpriseLicenseService":Lcom/android/server/enterprise/license/EnterpriseLicenseService;
    if-nez v0, :cond_0

    .line 1445
    const/4 v1, 0x0

    .line 1447
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
    .line 458
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 460
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    .line 461
    const/4 v1, 0x0

    .line 463
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
    .line 1354
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1356
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    .line 1357
    const/4 v1, 0x0

    .line 1359
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
    .line 581
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 582
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    .line 583
    const/4 v1, 0x0

    .line 585
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
    .line 541
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 542
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    .line 543
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 545
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
    .line 573
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 574
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    .line 575
    const/4 v1, 0x1

    .line 577
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
    .line 1200
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1202
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    .line 1203
    const/4 v1, 0x0

    .line 1205
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
    .line 1189
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1191
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    .line 1192
    const/4 v1, 0x1

    .line 1194
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
    .line 1178
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1180
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    .line 1181
    const/4 v1, 0x0

    .line 1183
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
    .line 1244
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1246
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    .line 1247
    const/4 v1, 0x0

    .line 1249
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
    .line 1462
    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 1464
    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_0

    .line 1465
    const-wide/16 v2, -0x1

    .line 1467
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
    .line 1482
    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 1484
    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_0

    .line 1485
    const-wide/16 v2, -0x1

    .line 1487
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
    .line 1222
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1224
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    .line 1225
    const/4 v1, 0x1

    .line 1227
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
    .line 1321
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1323
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    .line 1324
    const/4 v1, 0x0

    .line 1326
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
    .line 1310
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1312
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    .line 1313
    const/4 v1, 0x0

    .line 1315
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
    .line 1332
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1334
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    .line 1335
    const/4 v1, 0x0

    .line 1337
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
    .line 1343
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1345
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    .line 1346
    const/4 v1, 0x0

    .line 1348
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
    .line 1233
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1235
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    .line 1236
    const/4 v1, 0x0

    .line 1238
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
    .line 1266
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1268
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    .line 1269
    const/4 v1, 0x0

    .line 1271
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
    .line 1211
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1213
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    .line 1214
    const/4 v1, 0x0

    .line 1216
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
    .line 1255
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1257
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    .line 1258
    const/4 v1, 0x1

    .line 1260
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
    .line 1299
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1301
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    .line 1302
    const/16 v1, 0x14

    .line 1304
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
    .line 1277
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1279
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    .line 1280
    const/4 v1, 0x0

    .line 1282
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
    .line 1288
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1290
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    .line 1291
    const/16 v1, -0xc8

    .line 1293
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
    .line 1109
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 1111
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    .line 1112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1114
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
    .line 1365
    const-string/jumbo v1, "knoxcustom"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;

    .line 1367
    .local v0, "knoxCustomManagerService":Lcom/sec/server/enterprise/knoxcustom/KnoxCustomManagerService;
    if-nez v0, :cond_0

    .line 1368
    const/4 v1, 0x0

    .line 1370
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
    .line 1508
    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 1510
    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_0

    .line 1511
    const/4 v1, 0x0

    .line 1513
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
    .line 1090
    const-string/jumbo v1, "device_account_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 1092
    .local v0, "deviceAccountPolicy":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-nez v0, :cond_0

    .line 1093
    const/4 v1, 0x1

    .line 1095
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
    .line 1081
    const-string/jumbo v1, "device_account_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/DeviceAccountPolicy;

    .line 1083
    .local v0, "deviceAccountPolicy":Lcom/android/server/enterprise/security/DeviceAccountPolicy;
    if-nez v0, :cond_0

    .line 1084
    const/4 v1, 0x1

    .line 1086
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
    .line 1072
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 1074
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    .line 1075
    const/4 v1, 0x1

    .line 1077
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
    .line 748
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 750
    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_0

    .line 751
    const/4 v1, 0x0

    .line 753
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
    .line 917
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 919
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    .line 920
    const/4 v1, 0x1

    .line 922
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
    .line 810
    const-string v1, "auditlog"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 811
    .local v0, "auditLogService":Lcom/android/server/enterprise/auditlog/AuditLogService;
    if-nez v0, :cond_0

    .line 812
    const/4 v1, 0x0

    .line 814
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
    .line 1376
    const-string/jumbo v1, "smartcard_access_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;

    .line 1378
    .local v0, "smartCardAccessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    if-nez v0, :cond_0

    .line 1379
    const/4 v1, 0x0

    .line 1381
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
    .line 986
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 988
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    .line 989
    const/4 v1, 0x1

    .line 991
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
    .line 641
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 643
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    .line 644
    const/4 v1, 0x1

    .line 646
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
    .line 1023
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 1025
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    .line 1026
    const/4 v1, 0x0

    .line 1028
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
    .line 1013
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 1015
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    .line 1016
    const/4 v1, 0x0

    .line 1018
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

    .line 279
    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 281
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    .line 284
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

    .line 315
    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 317
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    .line 320
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
    .line 671
    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 673
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    .line 674
    const/4 v1, 0x0

    .line 676
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
    .line 262
    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 264
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    .line 265
    const/4 v1, 0x1

    .line 267
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
    .line 1452
    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 1454
    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_0

    .line 1455
    const/4 v1, 0x0

    .line 1457
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
    .line 1472
    const-string/jumbo v1, "knox_ccm_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .line 1474
    .local v0, "clientCertificateManager":Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    if-nez v0, :cond_0

    .line 1475
    const/4 v1, 0x0

    .line 1477
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
    .line 838
    const-string v12, "certificate_policy"

    invoke-static {v12}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 840
    .local v6, "certPolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v6, :cond_1

    .line 841
    const/4 v11, 0x1

    .line 872
    :cond_0
    :goto_0
    return v11

    .line 843
    :cond_1
    const/4 v11, 0x1

    .line 844
    .local v11, "ret":Z
    const/4 v10, 0x0

    .line 845
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-nez p1, :cond_2

    .line 846
    const/4 v11, 0x1

    goto :goto_0

    .line 849
    :cond_2
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v10

    .line 861
    if-nez v10, :cond_3

    .line 862
    const-string v12, "EDMProxyService"

    const-string v13, "Could not convert one certificate."

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const/4 v11, 0x1

    goto :goto_0

    .line 850
    :catch_0
    move-exception v7

    .line 851
    .local v7, "e":Ljava/io/IOException;
    const-string v12, "EDMProxyService"

    const-string v13, "Could not convert certificate."

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const/4 v11, 0x1

    goto :goto_0

    .line 853
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 854
    .local v3, "cer":Ljava/security/cert/CertificateException;
    const-string v12, "EDMProxyService"

    const-string v13, "Could not convert certificate."

    invoke-static {v12, v13}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const/4 v11, 0x1

    goto :goto_0

    .line 856
    .end local v3    # "cer":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v9

    .line 857
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

    .line 858
    const/4 v11, 0x1

    goto :goto_0

    .line 867
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

    .line 868
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    new-instance v5, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v5, v4}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    .line 869
    .local v5, "certInfo":Landroid/app/enterprise/CertificateInfo;
    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v6, v5, v0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateTrustedAsUser(Landroid/app/enterprise/CertificateInfo;ZZI)Z

    move-result v12

    and-int/2addr v11, v12

    .line 870
    if-nez v11, :cond_4

    const/4 v11, 0x0

    goto :goto_0
.end method

.method public isCallingCaptureEnabled()Z
    .locals 3

    .prologue
    .line 143
    const-string/jumbo v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 145
    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_0

    .line 146
    const/4 v1, 0x0

    .line 148
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
    .line 382
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 384
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    .line 385
    const/4 v1, 0x1

    .line 387
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
    .line 334
    const-string/jumbo v1, "password_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 336
    .local v0, "passwordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-nez v0, :cond_0

    .line 337
    const/4 v1, 0x0

    .line 339
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
    .line 410
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 412
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    .line 413
    const/4 v1, 0x1

    .line 415
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
    .line 1004
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 1006
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    .line 1007
    const/4 v1, 0x1

    .line 1009
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
    .line 1129
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 1131
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    .line 1132
    const/4 v1, 0x1

    .line 1134
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
    .line 605
    const-string/jumbo v1, "date_time_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    .line 607
    .local v0, "dateTimePolicy":Lcom/android/server/enterprise/datetime/DateTimePolicy;
    if-nez v0, :cond_0

    .line 608
    const/4 v1, 0x1

    .line 610
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

    .line 253
    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 255
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    .line 258
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
    .line 297
    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 299
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    .line 300
    const/4 v1, 0x1

    .line 302
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
    .line 623
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 625
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    .line 626
    const/4 v1, 0x1

    .line 628
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
    .line 690
    const-string/jumbo v1, "kioskmode"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 691
    .local v0, "kioskModeService":Lcom/android/server/enterprise/kioskmode/KioskModeService;
    if-nez v0, :cond_0

    .line 692
    const/4 v1, 0x1

    .line 694
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
    .line 758
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 760
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    .line 761
    const/4 v1, 0x1

    .line 763
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
    .line 718
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 720
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    .line 721
    const/4 v1, 0x1

    .line 723
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
    .line 225
    const-string v1, "application_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 227
    .local v0, "applicationPolicy":Lcom/android/server/enterprise/application/ApplicationPolicy;
    if-nez v0, :cond_0

    .line 228
    const/4 v1, 0x0

    .line 230
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
    .line 995
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 997
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    .line 998
    const/4 v1, 0x1

    .line 1000
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

    .line 1409
    const-string/jumbo v2, "mum_container_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 1411
    .local v0, "knoxMUMContainerPolicy":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    if-nez v0, :cond_0

    .line 1414
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
    .line 486
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 488
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    .line 489
    const/4 v1, 0x0

    .line 491
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
    .line 306
    const-string v1, "bluetooth_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 308
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    .line 309
    const/4 v1, 0x1

    .line 311
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
    .line 197
    const-string/jumbo v1, "location_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/location/LocationPolicy;

    .line 199
    .local v0, "locationPolicy":Lcom/android/server/enterprise/location/LocationPolicy;
    if-nez v0, :cond_0

    .line 200
    const/4 v1, 0x0

    .line 202
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
    .line 179
    const-string/jumbo v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 181
    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_0

    .line 182
    const/4 v1, 0x0

    .line 184
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
    .line 420
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 422
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    .line 423
    const/4 v1, 0x1

    .line 425
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
    .line 392
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 394
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    .line 395
    const/4 v1, 0x1

    .line 397
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
    .line 401
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 403
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    .line 404
    const/4 v1, 0x1

    .line 406
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
    .line 1138
    const-string/jumbo v1, "misc_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/MiscPolicy;

    .line 1140
    .local v0, "miscPolicy":Lcom/android/server/enterprise/general/MiscPolicy;
    if-nez v0, :cond_0

    .line 1141
    const/4 v1, 0x1

    .line 1143
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
    .line 372
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 374
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    .line 375
    const/4 v1, 0x1

    .line 377
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
    .line 956
    const-string v1, "certificate_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 958
    .local v0, "certificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_0

    .line 959
    const/4 v1, 0x0

    .line 961
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

    .line 244
    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 246
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    .line 249
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
    .line 728
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 730
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    .line 731
    const/4 v1, 0x1

    .line 733
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

    .line 1419
    const-string/jumbo v2, "mum_container_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;

    .line 1421
    .local v0, "knoxMUMContainerPolicy":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy;
    if-nez v0, :cond_0

    .line 1424
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
    .line 1386
    const-string/jumbo v1, "smartcard_access_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;

    .line 1388
    .local v0, "smartCardAccessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    if-nez v0, :cond_0

    .line 1389
    const/4 v1, 0x1

    .line 1391
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
    .line 1396
    const-string/jumbo v1, "smartcard_access_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/container/SmartCardAccessPolicy;

    .line 1398
    .local v0, "smartCardAccessPolicy":Lcom/android/server/enterprise/container/SmartCardAccessPolicy;
    if-nez v0, :cond_0

    .line 1399
    const/4 v1, 0x1

    .line 1401
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

    .line 288
    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 290
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    .line 293
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
    .line 708
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 710
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    .line 711
    const/4 v1, 0x1

    .line 713
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

    .line 271
    const-string v2, "bluetooth_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    .line 273
    .local v0, "bluetoothPolicy":Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;
    if-nez v0, :cond_0

    .line 275
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
    .line 946
    const-string v1, "certificate_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 948
    .local v0, "certificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_0

    .line 949
    const/4 v1, 0x0

    .line 951
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
    .line 344
    const-string/jumbo v1, "roaming_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .line 346
    .local v0, "roamingPolicy":Lcom/android/server/enterprise/restriction/RoamingPolicy;
    if-nez v0, :cond_0

    .line 347
    const/4 v1, 0x1

    .line 349
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
    .line 353
    const-string/jumbo v1, "roaming_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    .line 355
    .local v0, "roamingPolicy":Lcom/android/server/enterprise/restriction/RoamingPolicy;
    if-nez v0, :cond_0

    .line 356
    const/4 v1, 0x1

    .line 358
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
    .line 1063
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 1065
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    .line 1066
    const/4 v1, 0x1

    .line 1068
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
    .line 161
    const-string/jumbo v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 163
    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_0

    .line 164
    const/4 v1, 0x0

    .line 166
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
    .line 1044
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 1046
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    .line 1047
    const/4 v1, 0x1

    .line 1049
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
    .line 430
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 432
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    .line 433
    const/4 v1, 0x1

    .line 435
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
    .line 614
    const-string/jumbo v1, "password_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/security/PasswordPolicy;

    .line 616
    .local v0, "passwordPolicy":Lcom/android/server/enterprise/security/PasswordPolicy;
    if-nez v0, :cond_0

    .line 617
    const/4 v1, 0x1

    .line 619
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
    .line 362
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 364
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    .line 365
    const/4 v1, 0x1

    .line 367
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
    .line 1099
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 1101
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    .line 1102
    const/4 v1, 0x0

    .line 1104
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
    .line 699
    const-string/jumbo v1, "kioskmode"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/kioskmode/KioskModeService;

    .line 700
    .local v0, "kioskModeService":Lcom/android/server/enterprise/kioskmode/KioskModeService;
    if-nez v0, :cond_0

    .line 701
    const/4 v1, 0x1

    .line 703
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
    .line 1545
    const-string/jumbo v1, "knox_timakeystore_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .line 1547
    .local v0, "timaKeystoreService":Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    if-nez v0, :cond_0

    .line 1548
    const/4 v1, 0x0

    .line 1550
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
    .line 1554
    const-string/jumbo v1, "knox_timakeystore_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    .line 1556
    .local v0, "timaKeystoreService":Lcom/android/server/enterprise/keystore/TimaKeystoreService;
    if-nez v0, :cond_0

    .line 1557
    const/4 v1, 0x0

    .line 1559
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
    .line 738
    const-string v1, "browser_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/browser/BrowserPolicy;

    .line 740
    .local v0, "browserPolicy":Lcom/android/server/enterprise/browser/BrowserPolicy;
    if-nez v0, :cond_0

    .line 741
    const/4 v1, 0x0

    .line 743
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
    .line 1147
    const-string v1, "certificate_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 1149
    .local v0, "certificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_0

    .line 1150
    const/4 v1, 0x1

    .line 1152
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
    .line 927
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 929
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    .line 930
    const/4 v1, 0x1

    .line 932
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
    .line 1054
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 1056
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    .line 1057
    const/4 v1, 0x1

    .line 1059
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
    .line 977
    const-string/jumbo v1, "restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    .line 979
    .local v0, "restrictionPolicy":Lcom/android/server/enterprise/restriction/RestrictionPolicy;
    if-nez v0, :cond_0

    .line 980
    const/4 v1, 0x1

    .line 982
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
    .line 633
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 634
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    .line 635
    const/4 v1, 0x1

    .line 637
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
    .line 818
    const-string v1, "certificate_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 820
    .local v0, "certificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_0

    .line 825
    :goto_0
    return-void

    .line 823
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
    .line 828
    const-string v1, "certificate_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 830
    .local v0, "certificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_0

    .line 835
    :goto_0
    return-void

    .line 833
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailureAsUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0
.end method

.method public notifyCertificateRemovedAsUser(Ljava/lang/String;I)V
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 966
    const-string v1, "certificate_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 968
    .local v0, "certificatePolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_0

    .line 972
    :goto_0
    return-void

    .line 971
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateRemovedAsUser(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public notifyUserKeystoreUnlocked(I)V
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 1156
    const-string v3, "certificate_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 1158
    .local v1, "certipolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-eqz v1, :cond_0

    .line 1159
    invoke-virtual {v1, p1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyUserKeystoreUnlocked(I)V

    .line 1162
    :cond_0
    const-string/jumbo v3, "knox_scep_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;

    .line 1163
    .local v0, "cepPolicy":Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;
    if-eqz v0, :cond_1

    .line 1164
    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/scep/EnterpriseCertEnrollPolicy;->notifyUserKeystoreUnlocked(I)V

    .line 1166
    :cond_1
    const-string/jumbo v3, "knox_vpn_policy"

    invoke-static {v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    .line 1167
    .local v2, "knoxvpnPolicy":Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
    if-eqz v2, :cond_2

    .line 1168
    invoke-virtual {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->notifyUserKeystoreUnlocked(I)V

    .line 1170
    :cond_2
    return-void
.end method

.method public removeNetworkConfiguration(Ljava/lang/String;)Z
    .locals 3
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 589
    const-string/jumbo v1, "wifi_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/wifi/WifiPolicy;

    .line 590
    .local v0, "wifiPolicy":Lcom/android/server/enterprise/wifi/WifiPolicy;
    if-nez v0, :cond_0

    .line 591
    const/4 v1, 0x0

    .line 593
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
    .line 1034
    const-string/jumbo v1, "phone_restriction_policy"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;

    .line 1036
    .local v0, "phoneRestrictionPolicy":Lcom/android/server/enterprise/restriction/PhoneRestrictionPolicy;
    if-nez v0, :cond_0

    .line 1041
    :goto_0
    return-void

    :cond_0
    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 1039
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
    .line 153
    const-string/jumbo v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 154
    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 157
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
    .line 189
    const-string/jumbo v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 190
    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 193
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
    .line 171
    const-string/jumbo v1, "device_info"

    invoke-static {v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/device/DeviceInfo;

    .line 172
    .local v0, "deviceInfo":Lcom/android/server/enterprise/device/DeviceInfo;
    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 175
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

    .line 876
    const-string v10, "certificate_policy"

    invoke-static {v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    .line 879
    .local v3, "certPolicy":Lcom/android/server/enterprise/certificate/CertificatePolicy;
    if-eqz v3, :cond_0

    invoke-virtual {v3, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabledAsUser(I)Z

    move-result v10

    if-nez v10, :cond_2

    :cond_0
    move v8, v9

    .line 913
    :cond_1
    :goto_0
    return v8

    .line 883
    :cond_2
    const/4 v7, 0x0

    .line 884
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    if-eqz p1, :cond_1

    .line 888
    :try_start_0
    invoke-static {p1}, Landroid/security/Credentials;->convertFromPem([B)Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v7

    .line 900
    if-nez v7, :cond_3

    .line 901
    const-string v9, "EDMProxyService"

    const-string v10, "Could not convert one certificate."

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 889
    :catch_0
    move-exception v4

    .line 890
    .local v4, "e":Ljava/io/IOException;
    const-string v9, "EDMProxyService"

    const-string v10, "Could not convert certificate."

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 892
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 893
    .local v0, "cer":Ljava/security/cert/CertificateException;
    const-string v9, "EDMProxyService"

    const-string v10, "Could not convert certificate."

    invoke-static {v9, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 895
    .end local v0    # "cer":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v6

    .line 896
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

    .line 906
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

    .line 907
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    new-instance v2, Landroid/app/enterprise/CertificateInfo;

    invoke-direct {v2, v1}, Landroid/app/enterprise/CertificateInfo;-><init>(Ljava/security/cert/Certificate;)V

    .line 908
    .local v2, "certInfo":Landroid/app/enterprise/CertificateInfo;
    invoke-virtual {v3, v2, p2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstallAsUser(Landroid/app/enterprise/CertificateInfo;I)I

    move-result v8

    .line 909
    .local v8, "ret":I
    if-eq v8, v9, :cond_4

    goto :goto_0

    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "certInfo":Landroid/app/enterprise/CertificateInfo;
    .end local v8    # "ret":I
    :cond_5
    move v8, v9

    .line 913
    goto :goto_0
.end method
