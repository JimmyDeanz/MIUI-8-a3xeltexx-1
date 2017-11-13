.class public Landroid/sec/enterprise/EnterpriseDeviceManager;
.super Ljava/lang/Object;
.source "EnterpriseDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;
    }
.end annotation


# static fields
.field private static final EDM_CLASS_NAME:Ljava/lang/String; = "android.app.enterprise.EnterpriseDeviceManager"

.field public static final ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "enterprise_policy"

.field public static final ENTERPRISE_PROXY_SERVICE:Ljava/lang/String; = "edm_proxy"

.field private static final KNOX_CLASS_NAME:Ljava/lang/String; = "com.sec.enterprise.knox.EnterpriseKnoxManager"

.field public static final KNOX_ENTERPRISE_POLICY_SERVICE:Ljava/lang/String; = "knox_enterprise_policy"

.field private static mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

.field private static mInstanceCreated:Z


# instance fields
.field private volatile mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

.field private volatile mAuditLog:Landroid/sec/enterprise/auditlog/AuditLog;

.field private volatile mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

.field private volatile mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

.field private volatile mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

.field private volatile mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

.field private volatile mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

.field private volatile mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

.field private volatile mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

.field private volatile mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

.field private volatile mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

.field private volatile mKnoxCustomManager:Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

.field private volatile mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

.field private volatile mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;

.field private volatile mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

.field private volatile mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

.field private volatile mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

.field private volatile mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

.field private volatile mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;

.field private volatile mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

.field private volatile mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManager:Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    :try_start_0
    const-string v3, "android.app.enterprise.EnterpriseDeviceManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "c":Ljava/lang/Class;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .local v1, "constructor":Ljava/lang/reflect/Constructor;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;
    :goto_0
    return-object v3

    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static createKnox(Landroid/content/Context;Landroid/os/Handler;)Ljava/lang/Object;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x0

    :try_start_0
    const-string v3, "com.sec.enterprise.knox.EnterpriseKnoxManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .local v0, "c":Ljava/lang/Class;
    const-string v3, "getInstance"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v3, 0x0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v3

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v3, v4

    goto :goto_0
.end method

.method public static getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    sget-boolean v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    if-nez v0, :cond_1

    const-class v1, Landroid/sec/enterprise/EnterpriseDeviceManager;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/sec/enterprise/EnterpriseDeviceManager;

    invoke-direct {v0}, Landroid/sec/enterprise/EnterpriseDeviceManager;-><init>()V

    sput-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

    const/4 v0, 0x1

    sput-boolean v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstanceCreated:Z

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mInstance:Landroid/sec/enterprise/EnterpriseDeviceManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getService()Landroid/sec/enterprise/IEDMProxy;
    .locals 1

    .prologue
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApplicationPolicy()Landroid/sec/enterprise/ApplicationPolicy;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    .local v0, "result":Landroid/sec/enterprise/ApplicationPolicy;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/ApplicationPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/ApplicationPolicy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/sec/enterprise/ApplicationPolicy;
    .local v1, "result":Landroid/sec/enterprise/ApplicationPolicy;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mApplicationPolicy:Landroid/sec/enterprise/ApplicationPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/ApplicationPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/ApplicationPolicy;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/ApplicationPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/ApplicationPolicy;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/ApplicationPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/ApplicationPolicy;
    goto :goto_0
.end method

.method public getAuditPolicy()Landroid/sec/enterprise/auditlog/AuditLog;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mAuditLog:Landroid/sec/enterprise/auditlog/AuditLog;

    .local v0, "result":Landroid/sec/enterprise/auditlog/AuditLog;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mAuditLog:Landroid/sec/enterprise/auditlog/AuditLog;

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/auditlog/AuditLog;

    invoke-direct {v1}, Landroid/sec/enterprise/auditlog/AuditLog;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/sec/enterprise/auditlog/AuditLog;
    .local v1, "result":Landroid/sec/enterprise/auditlog/AuditLog;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mAuditLog:Landroid/sec/enterprise/auditlog/AuditLog;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/auditlog/AuditLog;
    .restart local v0    # "result":Landroid/sec/enterprise/auditlog/AuditLog;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/auditlog/AuditLog;
    .restart local v1    # "result":Landroid/sec/enterprise/auditlog/AuditLog;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/auditlog/AuditLog;
    .restart local v0    # "result":Landroid/sec/enterprise/auditlog/AuditLog;
    goto :goto_0
.end method

.method public getBluetoothPolicy()Landroid/sec/enterprise/BluetoothPolicy;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    .local v0, "result":Landroid/sec/enterprise/BluetoothPolicy;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/BluetoothPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/BluetoothPolicy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/sec/enterprise/BluetoothPolicy;
    .local v1, "result":Landroid/sec/enterprise/BluetoothPolicy;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBluetoothPolicy:Landroid/sec/enterprise/BluetoothPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/BluetoothPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/BluetoothPolicy;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/BluetoothPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/BluetoothPolicy;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/BluetoothPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/BluetoothPolicy;
    goto :goto_0
.end method

.method public getBrowserPolicy()Landroid/sec/enterprise/BrowserPolicy;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    .local v0, "result":Landroid/sec/enterprise/BrowserPolicy;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/BrowserPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/BrowserPolicy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/sec/enterprise/BrowserPolicy;
    .local v1, "result":Landroid/sec/enterprise/BrowserPolicy;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mBrowserPolicy:Landroid/sec/enterprise/BrowserPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/BrowserPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/BrowserPolicy;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/BrowserPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/BrowserPolicy;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/BrowserPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/BrowserPolicy;
    goto :goto_0
.end method

.method public getCertificatePolicy()Landroid/sec/enterprise/certificate/CertificatePolicy;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    .local v0, "result":Landroid/sec/enterprise/certificate/CertificatePolicy;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/certificate/CertificatePolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/certificate/CertificatePolicy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/sec/enterprise/certificate/CertificatePolicy;
    .local v1, "result":Landroid/sec/enterprise/certificate/CertificatePolicy;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mCertificatePolicy:Landroid/sec/enterprise/certificate/CertificatePolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/certificate/CertificatePolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/certificate/CertificatePolicy;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/certificate/CertificatePolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/certificate/CertificatePolicy;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/certificate/CertificatePolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/certificate/CertificatePolicy;
    goto :goto_0
.end method

.method public getClientCertificateManager()Landroid/sec/enterprise/ClientCertificateManager;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

    .local v0, "result":Landroid/sec/enterprise/ClientCertificateManager;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/ClientCertificateManager;

    invoke-direct {v1}, Landroid/sec/enterprise/ClientCertificateManager;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/sec/enterprise/ClientCertificateManager;
    .local v1, "result":Landroid/sec/enterprise/ClientCertificateManager;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mClientCertificateManager:Landroid/sec/enterprise/ClientCertificateManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/ClientCertificateManager;
    .restart local v0    # "result":Landroid/sec/enterprise/ClientCertificateManager;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/ClientCertificateManager;
    .restart local v1    # "result":Landroid/sec/enterprise/ClientCertificateManager;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/ClientCertificateManager;
    .restart local v0    # "result":Landroid/sec/enterprise/ClientCertificateManager;
    goto :goto_0
.end method

.method public getDateTimePolicy()Landroid/sec/enterprise/DateTimePolicy;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

    .local v0, "result":Landroid/sec/enterprise/DateTimePolicy;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/DateTimePolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/DateTimePolicy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/sec/enterprise/DateTimePolicy;
    .local v1, "result":Landroid/sec/enterprise/DateTimePolicy;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/DateTimePolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/DateTimePolicy;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/DateTimePolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/DateTimePolicy;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/DateTimePolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/DateTimePolicy;
    goto :goto_0
.end method

.method public getDeviceAccountPolicy()Landroid/sec/enterprise/DeviceAccountPolicy;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

    .local v0, "result":Landroid/sec/enterprise/DeviceAccountPolicy;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/DeviceAccountPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/DeviceAccountPolicy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/sec/enterprise/DeviceAccountPolicy;
    .local v1, "result":Landroid/sec/enterprise/DeviceAccountPolicy;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceAccountPolicy:Landroid/sec/enterprise/DeviceAccountPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/DeviceAccountPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/DeviceAccountPolicy;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/DeviceAccountPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/DeviceAccountPolicy;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/DeviceAccountPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/DeviceAccountPolicy;
    goto :goto_0
.end method

.method public getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    .local v0, "result":Landroid/sec/enterprise/DeviceInventory;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/DeviceInventory;

    invoke-direct {v1}, Landroid/sec/enterprise/DeviceInventory;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/sec/enterprise/DeviceInventory;
    .local v1, "result":Landroid/sec/enterprise/DeviceInventory;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mDeviceInventory:Landroid/sec/enterprise/DeviceInventory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/DeviceInventory;
    .restart local v0    # "result":Landroid/sec/enterprise/DeviceInventory;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/DeviceInventory;
    .restart local v1    # "result":Landroid/sec/enterprise/DeviceInventory;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/DeviceInventory;
    .restart local v0    # "result":Landroid/sec/enterprise/DeviceInventory;
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
    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/sec/enterprise/IEDMProxy;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFirewallPolicy()Landroid/sec/enterprise/FirewallPolicy;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    .local v0, "result":Landroid/sec/enterprise/FirewallPolicy;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/FirewallPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/FirewallPolicy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/sec/enterprise/FirewallPolicy;
    .local v1, "result":Landroid/sec/enterprise/FirewallPolicy;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mFirewallPolicy:Landroid/sec/enterprise/FirewallPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/FirewallPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/FirewallPolicy;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/FirewallPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/FirewallPolicy;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/FirewallPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/FirewallPolicy;
    goto :goto_0
.end method

.method public getKioskMode()Landroid/sec/enterprise/kioskmode/KioskMode;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

    .local v0, "result":Landroid/sec/enterprise/kioskmode/KioskMode;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/kioskmode/KioskMode;

    invoke-direct {v1}, Landroid/sec/enterprise/kioskmode/KioskMode;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/sec/enterprise/kioskmode/KioskMode;
    .local v1, "result":Landroid/sec/enterprise/kioskmode/KioskMode;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKioskMode:Landroid/sec/enterprise/kioskmode/KioskMode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/kioskmode/KioskMode;
    .restart local v0    # "result":Landroid/sec/enterprise/kioskmode/KioskMode;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/kioskmode/KioskMode;
    .restart local v1    # "result":Landroid/sec/enterprise/kioskmode/KioskMode;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/kioskmode/KioskMode;
    .restart local v0    # "result":Landroid/sec/enterprise/kioskmode/KioskMode;
    goto :goto_0
.end method

.method public getKnoxCustomManager()Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManager:Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    .local v0, "result":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManager:Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    if-nez v0, :cond_0

    new-instance v1, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;

    invoke-direct {v1}, Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    .local v1, "result":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mKnoxCustomManager:Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    .restart local v0    # "result":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    .restart local v1    # "result":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    .restart local v0    # "result":Lcom/sec/enterprise/knoxcustom/KnoxCustomManager;
    goto :goto_0
.end method

.method public getLocationPolicy()Landroid/sec/enterprise/LocationPolicy;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

    .local v0, "result":Landroid/sec/enterprise/LocationPolicy;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/LocationPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/LocationPolicy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/sec/enterprise/LocationPolicy;
    .local v1, "result":Landroid/sec/enterprise/LocationPolicy;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mLocationPolicy:Landroid/sec/enterprise/LocationPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/LocationPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/LocationPolicy;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/LocationPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/LocationPolicy;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/LocationPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/LocationPolicy;
    goto :goto_0
.end method

.method public getMiscPolicy()Landroid/sec/enterprise/general/MiscPolicy;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;

    .local v0, "result":Landroid/sec/enterprise/general/MiscPolicy;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/general/MiscPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/general/MiscPolicy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/sec/enterprise/general/MiscPolicy;
    .local v1, "result":Landroid/sec/enterprise/general/MiscPolicy;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mMiscPolicy:Landroid/sec/enterprise/general/MiscPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/general/MiscPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/general/MiscPolicy;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/general/MiscPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/general/MiscPolicy;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/general/MiscPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/general/MiscPolicy;
    goto :goto_0
.end method

.method public getPasswordPolicy()Landroid/sec/enterprise/PasswordPolicy;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    .local v0, "result":Landroid/sec/enterprise/PasswordPolicy;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/PasswordPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/PasswordPolicy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/sec/enterprise/PasswordPolicy;
    .local v1, "result":Landroid/sec/enterprise/PasswordPolicy;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPasswordPolicy:Landroid/sec/enterprise/PasswordPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/PasswordPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/PasswordPolicy;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/PasswordPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/PasswordPolicy;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/PasswordPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/PasswordPolicy;
    goto :goto_0
.end method

.method public getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    .local v0, "result":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/PhoneRestrictionPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .local v1, "result":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mPhonePolicy:Landroid/sec/enterprise/PhoneRestrictionPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    goto :goto_0
.end method

.method public getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    .local v0, "result":Landroid/sec/enterprise/RestrictionPolicy;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/RestrictionPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/RestrictionPolicy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/sec/enterprise/RestrictionPolicy;
    .local v1, "result":Landroid/sec/enterprise/RestrictionPolicy;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRestrictionPolicy:Landroid/sec/enterprise/RestrictionPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/RestrictionPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/RestrictionPolicy;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/RestrictionPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/RestrictionPolicy;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/RestrictionPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/RestrictionPolicy;
    goto :goto_0
.end method

.method public getRoamingPolicy()Landroid/sec/enterprise/RoamingPolicy;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    .local v0, "result":Landroid/sec/enterprise/RoamingPolicy;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/RoamingPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/RoamingPolicy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/sec/enterprise/RoamingPolicy;
    .local v1, "result":Landroid/sec/enterprise/RoamingPolicy;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mRoamingPolicy:Landroid/sec/enterprise/RoamingPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/RoamingPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/RoamingPolicy;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/RoamingPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/RoamingPolicy;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/RoamingPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/RoamingPolicy;
    goto :goto_0
.end method

.method public getSmartCardAccessPolicy()Landroid/sec/enterprise/SmartCardAccessPolicy;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;

    .local v0, "result":Landroid/sec/enterprise/SmartCardAccessPolicy;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/SmartCardAccessPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/SmartCardAccessPolicy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/sec/enterprise/SmartCardAccessPolicy;
    .local v1, "result":Landroid/sec/enterprise/SmartCardAccessPolicy;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mSmartCardAccessPolicy:Landroid/sec/enterprise/SmartCardAccessPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/SmartCardAccessPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/SmartCardAccessPolicy;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/SmartCardAccessPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/SmartCardAccessPolicy;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/SmartCardAccessPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/SmartCardAccessPolicy;
    goto :goto_0
.end method

.method public getTimaKeystore()Landroid/sec/enterprise/TimaKeystore;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

    .local v0, "result":Landroid/sec/enterprise/TimaKeystore;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/TimaKeystore;

    invoke-direct {v1}, Landroid/sec/enterprise/TimaKeystore;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/sec/enterprise/TimaKeystore;
    .local v1, "result":Landroid/sec/enterprise/TimaKeystore;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mTimaKeystore:Landroid/sec/enterprise/TimaKeystore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/TimaKeystore;
    .restart local v0    # "result":Landroid/sec/enterprise/TimaKeystore;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/TimaKeystore;
    .restart local v1    # "result":Landroid/sec/enterprise/TimaKeystore;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/TimaKeystore;
    .restart local v0    # "result":Landroid/sec/enterprise/TimaKeystore;
    goto :goto_0
.end method

.method public getWifiPolicy()Landroid/sec/enterprise/WifiPolicy;
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    .local v0, "result":Landroid/sec/enterprise/WifiPolicy;
    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;

    if-nez v0, :cond_0

    new-instance v1, Landroid/sec/enterprise/WifiPolicy;

    invoke-direct {v1}, Landroid/sec/enterprise/WifiPolicy;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "result":Landroid/sec/enterprise/WifiPolicy;
    .local v1, "result":Landroid/sec/enterprise/WifiPolicy;
    :try_start_1
    iput-object v1, p0, Landroid/sec/enterprise/EnterpriseDeviceManager;->mWifiPolicy:Landroid/sec/enterprise/WifiPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/WifiPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/WifiPolicy;
    :cond_0
    :try_start_2
    monitor-exit p0

    :cond_1
    return-object v0

    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "result":Landroid/sec/enterprise/WifiPolicy;
    .restart local v1    # "result":Landroid/sec/enterprise/WifiPolicy;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "result":Landroid/sec/enterprise/WifiPolicy;
    .restart local v0    # "result":Landroid/sec/enterprise/WifiPolicy;
    goto :goto_0
.end method
