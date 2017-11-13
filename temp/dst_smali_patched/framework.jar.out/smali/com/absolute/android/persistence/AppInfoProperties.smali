.class public Lcom/absolute/android/persistence/AppInfoProperties;
.super Ljava/util/Properties;
.source "AppInfoProperties.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static ACCESS_KEY_PROPERTY_NAME:Ljava/lang/String; = null

.field public static CHECK_RUNNING_SECS_PROPERTY_NAME:Ljava/lang/String; = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/absolute/android/persistence/AppInfoProperties;",
            ">;"
        }
    .end annotation
.end field

.field public static DIGITAL_SIGNATURE_PROPERTY_NAME:Ljava/lang/String; = null

.field public static DOWNLOAD_HOST_SPKI_HASH_PROPERTY_NAME:Ljava/lang/String; = null

.field public static DOWNLOAD_IP_ADDRESS_PROPERTY_NAME:Ljava/lang/String; = null

.field public static DOWNLOAD_URL_PROPERTY_NAME:Ljava/lang/String; = null

.field public static MAX_RESTART_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String; = null

.field public static MAX_UPDATE_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String; = null

.field public static MONITOR_INTENTS_PROPERTY_NAME:Ljava/lang/String; = null

.field public static MONITOR_PROPERTY_NAME:Ljava/lang/String; = null

.field public static PACKAGE_NAME_PROPERTY_NAME:Ljava/lang/String; = null

.field public static PERSIST_PROPERTY_NAME:Ljava/lang/String; = null

.field public static RESTART_INTENT_PROPERTY_NAME:Ljava/lang/String; = null

.field public static START_ON_INSTALL_INTENT_PROPERTY_NAME:Ljava/lang/String; = null

.field public static START_ON_INSTALL_PROPERTY_NAME:Ljava/lang/String; = null

.field public static UPDATE_HOST_SPKI_HASH_PROPERTY_NAME:Ljava/lang/String; = null

.field public static UPDATE_IP_ADDR_PROPERTY_NAME:Ljava/lang/String; = null

.field public static UPDATE_RETRY_MINS_PROPERTY_NAME:Ljava/lang/String; = null

.field public static UPDATE_URL_PROPERTY_NAME:Ljava/lang/String; = null

.field public static VERSION_CODE_PROPERTY_NAME:Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "PackageName"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->PACKAGE_NAME_PROPERTY_NAME:Ljava/lang/String;

    const-string v0, "VersionCode"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->VERSION_CODE_PROPERTY_NAME:Ljava/lang/String;

    const-string v0, "UpdateUrl"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_URL_PROPERTY_NAME:Ljava/lang/String;

    const-string v0, "UpdateIpAddress"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_IP_ADDR_PROPERTY_NAME:Ljava/lang/String;

    const-string v0, "UpdateHostSPKIHash"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_HOST_SPKI_HASH_PROPERTY_NAME:Ljava/lang/String;

    const-string v0, "AccessKey"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->ACCESS_KEY_PROPERTY_NAME:Ljava/lang/String;

    const-string v0, "MaxUpdateAttempts"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->MAX_UPDATE_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String;

    const-string v0, "UpdateRetryMinutes"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_RETRY_MINS_PROPERTY_NAME:Ljava/lang/String;

    const-string v0, "Persist"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->PERSIST_PROPERTY_NAME:Ljava/lang/String;

    const-string v0, "StartOnInstall"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->START_ON_INSTALL_PROPERTY_NAME:Ljava/lang/String;

    const-string v0, "StartOnInstallIntent"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->START_ON_INSTALL_INTENT_PROPERTY_NAME:Ljava/lang/String;

    const-string v0, "RestartIntent"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->RESTART_INTENT_PROPERTY_NAME:Ljava/lang/String;

    const-string v0, "Monitor"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->MONITOR_PROPERTY_NAME:Ljava/lang/String;

    const-string v0, "MonitorIntents"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->MONITOR_INTENTS_PROPERTY_NAME:Ljava/lang/String;

    const-string v0, "CheckRunningSecs"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->CHECK_RUNNING_SECS_PROPERTY_NAME:Ljava/lang/String;

    const-string v0, "MaxRestartAttempts"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->MAX_RESTART_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String;

    const-string v0, "DownloadUrl"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_URL_PROPERTY_NAME:Ljava/lang/String;

    const-string v0, "DownloadIpAddress"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_IP_ADDRESS_PROPERTY_NAME:Ljava/lang/String;

    const-string v0, "DownloadHostSPKIHash"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_HOST_SPKI_HASH_PROPERTY_NAME:Ljava/lang/String;

    const-string v0, "DigitalSignature"

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DIGITAL_SIGNATURE_PROPERTY_NAME:Ljava/lang/String;

    new-instance v0, Lcom/absolute/android/persistence/AppInfoProperties$1;

    invoke-direct {v0}, Lcom/absolute/android/persistence/AppInfoProperties$1;-><init>()V

    sput-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->PACKAGE_NAME_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->VERSION_CODE_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_URL_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_IP_ADDR_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->ACCESS_KEY_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->MAX_UPDATE_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_RETRY_MINS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v6, Lcom/absolute/android/persistence/AppInfoProperties;->PERSIST_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_1

    move v3, v4

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v6, Lcom/absolute/android/persistence/AppInfoProperties;->START_ON_INSTALL_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v6, v3}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->START_ON_INSTALL_INTENT_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->RESTART_INTENT_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v3, v6}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->MONITOR_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-ne v6, v4, :cond_3

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, "monitorIntentsProperty":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .local v1, "monitorIntents":[Ljava/lang/String;
    if-eqz v1, :cond_4

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    array-length v3, v1

    if-ge v0, v3, :cond_4

    if-lez v0, :cond_0

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    aget-object v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .end local v0    # "i":I
    .end local v1    # "monitorIntents":[Ljava/lang/String;
    .end local v2    # "monitorIntentsProperty":Ljava/lang/StringBuilder;
    :cond_1
    move v3, v5

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    .restart local v1    # "monitorIntents":[Ljava/lang/String;
    .restart local v2    # "monitorIntentsProperty":Ljava/lang/StringBuilder;
    :cond_4
    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->MONITOR_INTENTS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->CHECK_RUNNING_SECS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->MAX_RESTART_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_URL_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_IP_ADDRESS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v3, Lcom/absolute/android/persistence/AppInfoProperties;->DIGITAL_SIGNATURE_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/absolute/android/persistence/AppInfoProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/absolute/android/persistence/AppInfoProperties$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/absolute/android/persistence/AppInfoProperties$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/absolute/android/persistence/AppInfoProperties;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAppProfile(Lcom/absolute/android/persistence/AppProfile;)Lcom/absolute/android/persistence/AppProfile;
    .locals 23
    .param p1, "defaultAppProfile"    # Lcom/absolute/android/persistence/AppProfile;

    .prologue
    if-nez p1, :cond_0

    new-instance p1, Lcom/absolute/android/persistence/AppProfile;

    .end local p1    # "defaultAppProfile":Lcom/absolute/android/persistence/AppProfile;
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    const/4 v5, -0x1

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    new-instance v7, Ljava/lang/String;

    invoke-direct {v7}, Ljava/lang/String;-><init>()V

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/String;

    invoke-direct {v13}, Ljava/lang/String;-><init>()V

    new-instance v14, Ljava/lang/String;

    invoke-direct {v14}, Ljava/lang/String;-><init>()V

    const/4 v15, 0x0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    new-instance v22, Ljava/lang/String;

    invoke-direct/range {v22 .. v22}, Ljava/lang/String;-><init>()V

    aput-object v22, v16, v19

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v3 .. v19}, Lcom/absolute/android/persistence/AppProfile;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;IILjava/util/HashMap;)V

    .restart local p1    # "defaultAppProfile":Lcom/absolute/android/persistence/AppProfile;
    :cond_0
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->PACKAGE_NAME_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, "packageName":Ljava/lang/String;
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->VERSION_CODE_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, "versionCode":I
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->ACCESS_KEY_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getAccessKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, "accessKey":Ljava/lang/String;
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_URL_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getUpdateUrl()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "updateUrl":Ljava/lang/String;
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_IP_ADDR_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getUpdateIpAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, "updateIpAddress":Ljava/lang/String;
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_HOST_SPKI_HASH_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getUpdateHostSPKIHash()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .local v21, "updateHostSPKIHash":Ljava/lang/String;
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->MAX_UPDATE_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getMaxUpdateAttempts()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .local v9, "maxUpdateAttempts":I
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->UPDATE_RETRY_MINS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getUpdateRetryMinutes()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .local v10, "updateRetryMins":I
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->PERSIST_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    .local v11, "persist":Z
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->START_ON_INSTALL_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getStartOnInstall()Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    .local v12, "startOnInstall":Z
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->START_ON_INSTALL_INTENT_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getStartOnInstallIntent()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .local v13, "startOnInstallIntent":Ljava/lang/String;
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->RESTART_INTENT_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getRestartIntent()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "restartIntent":Ljava/lang/String;
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->MONITOR_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    .local v15, "monitor":Z
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->MONITOR_INTENTS_PROPERTY_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .local v20, "monitorIntentsProperty":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "monitorIntents":[Ljava/lang/String;
    if-eqz v20, :cond_2

    const-string v19, ","

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    :goto_0
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->CHECK_RUNNING_SECS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getCheckRunningSecs()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .local v17, "checkRunningSecs":I
    sget-object v19, Lcom/absolute/android/persistence/AppInfoProperties;->MAX_RESTART_ATTEMPTS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getMaxRestartAttempts()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .local v18, "maxRestartAttempts":I
    new-instance v3, Lcom/absolute/android/persistence/AppProfile;

    const/16 v19, 0x0

    invoke-direct/range {v3 .. v19}, Lcom/absolute/android/persistence/AppProfile;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZZLjava/lang/String;Ljava/lang/String;Z[Ljava/lang/String;IILjava/util/HashMap;)V

    .local v3, "newAppProfile":Lcom/absolute/android/persistence/AppProfile;
    if-eqz v21, :cond_1

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistence/AppProfile;->setUpdateHostSPKIHash(Ljava/lang/String;)V

    :cond_1
    return-object v3

    .end local v3    # "newAppProfile":Lcom/absolute/android/persistence/AppProfile;
    .end local v17    # "checkRunningSecs":I
    .end local v18    # "maxRestartAttempts":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/absolute/android/persistence/AppProfile;->getMonitorIntents()[Ljava/lang/String;

    move-result-object v16

    goto :goto_0
.end method

.method public getAppVersion()I
    .locals 2

    .prologue
    sget-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->VERSION_CODE_PROPERTY_NAME:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getDigitalSignature()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DIGITAL_SIGNATURE_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadHostSPKIHash()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_HOST_SPKI_HASH_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_IP_ADDRESS_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->DOWNLOAD_URL_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/absolute/android/persistence/AppInfoProperties;->PACKAGE_NAME_PROPERTY_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/absolute/android/persistence/AppInfoProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/absolute/android/persistence/AppInfoProperties;->getAppProfile(Lcom/absolute/android/persistence/AppProfile;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    .local v0, "appProfile":Lcom/absolute/android/persistence/AppProfile;
    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getVersion()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getUpdateUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getUpdateIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getAccessKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getMaxUpdateAttempts()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getUpdateRetryMinutes()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getIsPersisted()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getStartOnInstall()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getStartOnInstallIntent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getRestartIntent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getMonitorIntents()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getCheckRunningSecs()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0}, Lcom/absolute/android/persistence/AppProfile;->getMaxRestartAttempts()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0}, Lcom/absolute/android/persistence/AppInfoProperties;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/absolute/android/persistence/AppInfoProperties;->getDownloadIpAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/absolute/android/persistence/AppInfoProperties;->getDigitalSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method
