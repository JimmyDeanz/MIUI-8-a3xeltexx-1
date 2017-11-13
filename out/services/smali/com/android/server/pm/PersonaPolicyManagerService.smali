.class public Lcom/android/server/pm/PersonaPolicyManagerService;
.super Landroid/content/pm/IPersonaPolicyManager$Stub;
.source "PersonaPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyReceiver;,
        Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;,
        Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    }
.end annotation


# static fields
.field private static final INVALID_UID:I = -0x1

.field private static final PERSONA_POLICIES_XML:Ljava/lang/String; = "persona_policies.xml"

.field private static final TAG:Ljava/lang/String; = "PersonaPolicyManagerService"

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private static sContext:Landroid/content/Context;


# instance fields
.field mContext:Landroid/content/Context;

.field mLocalPkgAddedCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPersona:Lcom/android/server/pm/PersonaManagerService;

.field final mPersonaData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;",
            ">;"
        }
    .end annotation
.end field

.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 83
    sput-object v0, Lcom/android/server/pm/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    .line 84
    sput-object v0, Lcom/android/server/pm/PersonaPolicyManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    invoke-direct {p0}, Landroid/content/pm/IPersonaPolicyManager$Stub;-><init>()V

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mLocalPkgAddedCache:Ljava/util/List;

    .line 184
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mPersonaData:Landroid/util/SparseArray;

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    .line 193
    new-instance v0, Lcom/android/server/pm/PersonaPolicyManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PersonaPolicyManagerService$1;-><init>(Lcom/android/server/pm/PersonaPolicyManagerService;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    iput-object p1, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mContext:Landroid/content/Context;

    .line 190
    sput-object p1, Lcom/android/server/pm/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    .line 191
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/PersonaPolicyManagerService;)Lcom/android/server/pm/PersonaManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaPolicyManagerService;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/PersonaPolicyManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PersonaPolicyManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->removePersonaData(I)V

    return-void
.end method

.method private static checkCallerPermissionFor(Ljava/lang/String;)I
    .locals 5
    .param p0, "methodName"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v1, "PersonaPolicyManagerService"

    .line 89
    .local v1, "serviceName":Ljava/lang/String;
    sget-object v2, Lcom/android/server/pm/PersonaPolicyManagerService;->sContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v2, v3, v4, v1, p0}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security Exception Occurred while pid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] with uid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] trying to access methodName ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] in ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 93
    throw v0

    .line 95
    .end local v0    # "e":Ljava/lang/SecurityException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private checkReturnStatus(Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 237
    if-eqz p1, :cond_0

    .line 238
    const-string/jumbo v0, "status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 240
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dumpRCPSettings(Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;)V
    .locals 4
    .param p1, "policy"    # Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    .prologue
    .line 144
    const-string v1, "PersonaPolicyManagerService"

    const-string v2, "********************START dump RCPSettings ********************"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    if-eqz p1, :cond_0

    .line 147
    :try_start_0
    iget-object v1, p1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->dumpRCPSettings(Ljava/util/HashMap;)V

    .line 148
    iget-object v1, p1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-direct {p0, v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->dumpRCPSettings(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    :cond_0
    :goto_0
    const-string v1, "PersonaPolicyManagerService"

    const-string v2, "--------------------END dump RCPSettings--------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PersonaPolicyManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private dumpRCPSettings(Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, "settings":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    .line 160
    .local v6, "tempSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v7, "PersonaPolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "names:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-interface {v6}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 162
    .local v2, "keys":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    array-length v3, v2

    .line 163
    .local v3, "length":I
    const-string v7, "PersonaPolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Length: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const-string v7, "PersonaPolicyManagerService"

    const-string/jumbo v8, "{"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_3

    .line 166
    aget-object v7, v2, v0

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 167
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-eqz v4, :cond_2

    .line 168
    const-string v7, "PersonaPolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v2, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " :[ "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 170
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 171
    .local v5, "object":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    if-eqz v5, :cond_0

    .line 172
    const-string v7, "PersonaPolicyManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   { name : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "},"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 175
    :cond_0
    const-string v7, "PersonaPolicyManagerService"

    const-string v8, "List contains NULL object."

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 178
    .end local v5    # "object":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    :cond_1
    const-string v7, "PersonaPolicyManagerService"

    const-string v8, " ],"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .end local v1    # "j":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_3
    const-string v7, "PersonaPolicyManagerService"

    const-string/jumbo v8, "}"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method private final enforceSystemService()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1279
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 1280
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only system can call this API. Are you Process.SYSTEM_UID!!"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1282
    :cond_0
    return-void
.end method

.method private final enforceSystemServiceOrSystemUI(I)V
    .locals 6
    .param p1, "callerUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 1285
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    .line 1287
    const/4 v2, -0x1

    .line 1289
    .local v2, "sysUiUid":I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.android.systemui"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1294
    :goto_0
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1295
    .local v0, "callingAppId":I
    if-ne v0, v2, :cond_1

    .line 1301
    .end local v0    # "callingAppId":I
    .end local v2    # "sysUiUid":I
    :cond_0
    return-void

    .line 1290
    .restart local v2    # "sysUiUid":I
    :catch_0
    move-exception v1

    .line 1291
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "PersonaPolicyManagerService"

    const-string v4, "Unable to resolve SystemUI\'s UID."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1299
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "callingAppId":I
    :cond_1
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Only system can call this API. Are you Process.SYSTEM_UID!!"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private getDataSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p1, "userId"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1337
    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v5, 0x1

    .line 1338
    .local v5, "isPersona":Z
    :goto_0
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v5, v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getDefaultRCPPolicy(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1339
    .local v3, "defaultValue":Ljava/lang/String;
    if-nez v5, :cond_2

    .line 1386
    .end local v3    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v3

    .line 1337
    .end local v5    # "isPersona":Z
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1342
    .restart local v3    # "defaultValue":Ljava/lang/String;
    .restart local v5    # "isPersona":Z
    :cond_2
    const/4 v7, 0x0

    .line 1343
    .local v7, "mdmValue":Ljava/lang/String;
    const-string/jumbo v13, "mum_container_rcp_policy"

    invoke-static {v13}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    .line 1345
    .local v9, "rcpPolicy":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    if-eqz v9, :cond_3

    .line 1346
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v9, v0, v1, v2}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getDataSyncPolicyByUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1358
    :cond_3
    if-eqz v7, :cond_4

    const-string/jumbo v13, "true"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1359
    :cond_4
    monitor-enter p0

    .line 1360
    if-eqz v5, :cond_6

    .line 1361
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v8

    .line 1362
    .local v8, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    if-eqz v8, :cond_6

    .line 1363
    iget-object v13, v8, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1365
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-eqz v6, :cond_6

    .line 1366
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 1367
    .local v10, "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iget-object v13, v10, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 1368
    iget-object v13, v10, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    if-eqz v13, :cond_5

    iget-object v13, v10, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1369
    iget-object v3, v10, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    .end local v3    # "defaultValue":Ljava/lang/String;
    monitor-exit p0

    goto :goto_1

    .line 1376
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v8    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v10    # "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    :catchall_0
    move-exception v13

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .restart local v3    # "defaultValue":Ljava/lang/String;
    :cond_6
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1378
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getConfigurationType(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v11

    .line 1379
    .local v11, "typeObj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v11, :cond_0

    .line 1380
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getDataSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1381
    .local v12, "value":Ljava/lang/String;
    const-string v13, "PersonaPolicyManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "configuration value set by MDM : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    if-eqz v12, :cond_0

    move-object v3, v12

    .line 1383
    goto/16 :goto_1
.end method

.method private final getDefaultRCPPolicy(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "isPersona"    # Z
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1305
    const-string/jumbo v0, "knox-import-data"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1306
    if-eqz p1, :cond_0

    .line 1307
    const-string/jumbo v0, "false"

    .line 1332
    :goto_0
    return-object v0

    .line 1309
    :cond_0
    const-string/jumbo v0, "true"

    goto :goto_0

    .line 1311
    :cond_1
    const-string/jumbo v0, "knox-export-data"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1312
    if-eqz p1, :cond_2

    .line 1313
    const-string/jumbo v0, "false"

    goto :goto_0

    .line 1315
    :cond_2
    const-string/jumbo v0, "true"

    goto :goto_0

    .line 1317
    :cond_3
    const-string/jumbo v0, "knox-sanitize-data"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1318
    if-eqz p1, :cond_4

    .line 1319
    const-string/jumbo v0, "true"

    goto :goto_0

    .line 1321
    :cond_4
    const-string/jumbo v0, "false"

    goto :goto_0

    .line 1324
    :cond_5
    const-string/jumbo v0, "knox-sanitize-data-lockscreen"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1325
    if-eqz p1, :cond_6

    .line 1326
    const-string/jumbo v0, "true"

    goto :goto_0

    .line 1328
    :cond_6
    const-string/jumbo v0, "false"

    goto :goto_0

    .line 1332
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getNotificationSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1390
    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v1, 0x1

    .line 1391
    .local v1, "isPersona":Z
    :goto_0
    if-nez v1, :cond_2

    .line 1392
    invoke-direct {p0, v1, p3}, Lcom/android/server/pm/PersonaPolicyManagerService;->getDefaultRCPPolicy(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1423
    :cond_0
    :goto_1
    return-object v3

    .line 1390
    .end local v1    # "isPersona":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1395
    .restart local v1    # "isPersona":Z
    :cond_2
    const/4 v3, 0x0

    .line 1396
    .local v3, "mdmValue":Ljava/lang/String;
    const-string/jumbo v7, "mum_container_rcp_policy"

    invoke-static {v7}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;

    .line 1398
    .local v5, "rcpPolicy":Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
    if-eqz v5, :cond_3

    .line 1399
    invoke-virtual {v5, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getNotificationSyncPolicyByUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1402
    :cond_3
    if-nez v3, :cond_0

    .line 1403
    monitor-enter p0

    .line 1404
    if-eqz v1, :cond_5

    .line 1405
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v4

    .line 1406
    .local v4, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    if-eqz v4, :cond_5

    .line 1407
    iget-object v7, v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1409
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-eqz v2, :cond_5

    .line 1410
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 1411
    .local v6, "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iget-object v7, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1412
    iget-object v7, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 1413
    iget-object v3, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    .end local v3    # "mdmValue":Ljava/lang/String;
    monitor-exit p0

    goto :goto_1

    .line 1421
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v4    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v6    # "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    :catchall_0
    move-exception v7

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 1420
    .restart local v3    # "mdmValue":Ljava/lang/String;
    :cond_5
    :try_start_1
    invoke-direct {p0, v1, p3}, Lcom/android/server/pm/PersonaPolicyManagerService;->getDefaultRCPPolicy(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "mdmValue":Ljava/lang/String;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;
    .locals 1

    .prologue
    .line 1264
    iget-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    if-nez v0, :cond_0

    .line 1265
    const-string/jumbo v0, "persona"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaManagerService;

    iput-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    .line 1267
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mPersona:Lcom/android/server/pm/PersonaManagerService;

    return-object v0
.end method

.method private getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;
    .locals 1
    .param p1, "personaId"    # I

    .prologue
    .line 1272
    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1273
    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PersonaManagerService;->getPersonaPolicyHandler(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    invoke-static {v0}, Landroid/content/pm/IPersonaPolicyHandler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 1275
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getStorageProvider()V
    .locals 2

    .prologue
    .line 1560
    sget-object v0, Lcom/android/server/pm/PersonaPolicyManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-nez v0, :cond_0

    .line 1561
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/pm/PersonaPolicyManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 1562
    :cond_0
    return-void
.end method

.method private loadSettingsLocked(Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;I)V
    .locals 17
    .param p1, "policy"    # Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .param p2, "userHandle"    # I

    .prologue
    .line 775
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PersonaPolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v3

    .line 776
    .local v3, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v9, 0x0

    .line 777
    .local v9, "stream":Ljava/io/FileInputStream;
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v2

    .line 779
    .local v2, "file":Ljava/io/File;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_7

    .line 780
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .local v10, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 781
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v14, 0x0

    invoke-interface {v5, v10, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 785
    :cond_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    .local v12, "type":I
    const/4 v14, 0x1

    if-eq v12, v14, :cond_1

    const/4 v14, 0x2

    if-ne v12, v14, :cond_0

    .line 787
    :cond_1
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 788
    .local v11, "tag":Ljava/lang/String;
    const-string/jumbo v14, "policies"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 789
    new-instance v14, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Settings do not start with policies tag: found "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_5

    .line 924
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_0
    move-exception v1

    move-object v9, v10

    .line 925
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/NullPointerException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_0
    const-string v14, "PersonaPolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :goto_1
    if-eqz v9, :cond_2

    .line 939
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 944
    :cond_2
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->dumpRCPSettings(Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;)V

    .line 945
    return-void

    .line 792
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_3
    const/4 v4, 0x0

    .line 793
    .local v4, "name":Ljava/lang/String;
    const/4 v8, 0x0

    .line 794
    .local v8, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_4
    :goto_3
    :try_start_3
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v14, 0x1

    if-eq v12, v14, :cond_1e

    .line 795
    packed-switch v12, :pswitch_data_0

    goto :goto_3

    .line 797
    :pswitch_0
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 798
    const-string/jumbo v14, "passwordLockEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 800
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPasswordLockEnabled:Z
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_3

    .line 926
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_1
    move-exception v1

    move-object v9, v10

    .line 927
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/NumberFormatException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_4
    const-string v14, "PersonaPolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 802
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_5
    :try_start_4
    const-string/jumbo v14, "encryptionEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 804
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mEncryptionEnabled:Z
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_3

    .line 928
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_2
    move-exception v1

    move-object v9, v10

    .line 929
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_5
    const-string v14, "PersonaPolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 806
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_6
    :try_start_5
    const-string/jumbo v14, "secureKeystoreEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 808
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSecureKeystoreEnabled:Z

    goto/16 :goto_3

    .line 930
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_3
    move-exception v14

    move-object v9, v10

    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 810
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_7
    const-string v14, "cameraModeChangeEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 812
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mCameraModeChangeEnabled:Z
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_3

    .line 932
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_4
    move-exception v1

    move-object v9, v10

    .line 933
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/IOException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_6
    const-string v14, "PersonaPolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 814
    .end local v1    # "e":Ljava/io/IOException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_8
    :try_start_6
    const-string v14, "allowCustomBadgeIcon"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 816
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomBadgeIcon:Z
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_3

    .line 934
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_5
    move-exception v1

    move-object v9, v10

    .line 935
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    :goto_7
    const-string v14, "PersonaPolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "failed parsing "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 818
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v9    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "name":Ljava/lang/String;
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "type":I
    :cond_9
    :try_start_7
    const-string/jumbo v14, "disableSwitchWidget"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 820
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mDisableSwitchWidgetOnLockScreen:Z

    goto/16 :goto_3

    .line 822
    :cond_a
    const-string v14, "allowCustomPersonaIcon"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 824
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomPersonaIcon:Z

    goto/16 :goto_3

    .line 826
    :cond_b
    const-string v14, "allowCustomColorId"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 828
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomColorIdentification:Z

    goto/16 :goto_3

    .line 830
    :cond_c
    const-string v14, "allowContainerReset"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 832
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowContainerReset:Z

    goto/16 :goto_3

    .line 834
    :cond_d
    const-string v14, "allowShortcutCreation"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 836
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowShortCutCreation:Z

    goto/16 :goto_3

    .line 838
    :cond_e
    const-string v14, "allowDLNADataTransfer"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 840
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowDLNADataTransfer:Z

    goto/16 :goto_3

    .line 842
    :cond_f
    const-string v14, "allowPrint"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    .line 844
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowPrint:Z

    goto/16 :goto_3

    .line 846
    :cond_10
    const-string/jumbo v14, "modifyLockscreenTimeout"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 848
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mModifyLockScreenTimeout:Z

    goto/16 :goto_3

    .line 850
    :cond_11
    const-string v14, "allowAllshare"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_12

    .line 852
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowAllShare:Z

    goto/16 :goto_3

    .line 854
    :cond_12
    const-string/jumbo v14, "gearSupportEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 856
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mGearSupportEnabled:Z

    goto/16 :goto_3

    .line 858
    :cond_13
    const-string/jumbo v14, "penWindowEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 860
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPenWindowEnabled:Z

    goto/16 :goto_3

    .line 862
    :cond_14
    const-string v14, "airCommandEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 864
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAirCommandEnabled:Z

    goto/16 :goto_3

    .line 866
    :cond_15
    const-string v14, "allowUniversalCallerId"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 868
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowUniversalCallerId:Z

    goto/16 :goto_3

    .line 870
    :cond_16
    const-string v14, "allowImportFiles"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 872
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowImportFiles:Z

    goto/16 :goto_3

    .line 874
    :cond_17
    const-string v14, "allowExportFiles"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 876
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportFiles:Z

    goto/16 :goto_3

    .line 878
    :cond_18
    const-string v14, "allowExportAndDeleteFiles"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 880
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportAndDeleteFiles:Z

    goto/16 :goto_3

    .line 882
    :cond_19
    const-string/jumbo v14, "switchNotifEnabled"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 884
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    move-object/from16 v0, p1

    iput-boolean v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSwitchNotifEnabled:Z

    goto/16 :goto_3

    .line 886
    :cond_1a
    const-string/jumbo v14, "rcp-data-settings"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 888
    const-string v14, "application"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 889
    const/4 v14, 0x0

    const-string/jumbo v15, "name"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 890
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 891
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v14, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 892
    :cond_1b
    const-string/jumbo v14, "rcp-notif-settings"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 894
    const-string/jumbo v14, "package"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 896
    const/4 v14, 0x0

    const-string/jumbo v15, "name"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 897
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 898
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v14, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 900
    :cond_1c
    const-string/jumbo v14, "property"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 902
    const/4 v14, 0x0

    const-string/jumbo v15, "name"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 903
    .local v6, "property":Ljava/lang/String;
    const/4 v14, 0x0

    const-string/jumbo v15, "value"

    invoke-interface {v5, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 904
    .local v13, "value":Ljava/lang/String;
    new-instance v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    invoke-direct {v7}, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;-><init>()V

    .line 905
    .local v7, "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iput-object v6, v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    .line 906
    iput-object v13, v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    .line 907
    if-eqz v8, :cond_4

    .line 908
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 913
    .end local v6    # "property":Ljava/lang/String;
    .end local v7    # "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    .end local v13    # "value":Ljava/lang/String;
    :cond_1d
    const-string v14, "PersonaPolicyManagerService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown tag: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_5

    goto/16 :goto_3

    :cond_1e
    move-object v9, v10

    .line 936
    .end local v10    # "stream":Ljava/io/FileInputStream;
    .restart local v9    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_1

    .line 941
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "type":I
    :catch_6
    move-exception v14

    goto/16 :goto_2

    .line 934
    :catch_7
    move-exception v1

    goto/16 :goto_7

    .line 932
    :catch_8
    move-exception v1

    goto/16 :goto_6

    .line 930
    :catch_9
    move-exception v14

    goto/16 :goto_1

    .line 928
    :catch_a
    move-exception v1

    goto/16 :goto_5

    .line 926
    :catch_b
    move-exception v1

    goto/16 :goto_4

    .line 924
    :catch_c
    move-exception v1

    goto/16 :goto_0

    .line 795
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6
    .param p0, "userId"    # I

    .prologue
    .line 768
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "persona_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 771
    .local v0, "base":Ljava/lang/String;
    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private removePersonaData(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 1183
    monitor-enter p0

    .line 1184
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 1185
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    if-eqz v0, :cond_0

    .line 1186
    iget-object v2, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mPersonaData:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1188
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "persona_policies.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1190
    .local v1, "policyFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1191
    const-string v2, "PersonaPolicyManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed persona policy file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    monitor-exit p0

    .line 1193
    return-void

    .line 1192
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v1    # "policyFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private saveSettingsLocked(I)V
    .locals 14
    .param p1, "userHandle"    # I

    .prologue
    .line 948
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v6

    .line 949
    .local v6, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    invoke-static {p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v3

    .line 950
    .local v3, "journal":Lcom/android/internal/util/JournaledFile;
    const/4 v9, 0x0

    .line 952
    .local v9, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v11

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 953
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .local v10, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 954
    .local v5, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v11, "utf-8"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 955
    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 957
    const-string v11, "\n\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 958
    const/4 v11, 0x0

    const-string/jumbo v12, "policies"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 960
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPasswordLockEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    .line 962
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 963
    const/4 v11, 0x0

    const-string/jumbo v12, "passwordLockEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 964
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPasswordLockEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 965
    const/4 v11, 0x0

    const-string/jumbo v12, "passwordLockEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 967
    :cond_0
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mEncryptionEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    .line 969
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 970
    const/4 v11, 0x0

    const-string/jumbo v12, "encryptionEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 971
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mEncryptionEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 972
    const/4 v11, 0x0

    const-string/jumbo v12, "encryptionEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 974
    :cond_1
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSecureKeystoreEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_2

    .line 976
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 977
    const/4 v11, 0x0

    const-string/jumbo v12, "secureKeystoreEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 978
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSecureKeystoreEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 979
    const/4 v11, 0x0

    const-string/jumbo v12, "secureKeystoreEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 981
    :cond_2
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mCameraModeChangeEnabled:Z

    if-eqz v11, :cond_3

    .line 983
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 984
    const/4 v11, 0x0

    const-string v12, "cameraModeChangeEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 985
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mCameraModeChangeEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 986
    const/4 v11, 0x0

    const-string v12, "cameraModeChangeEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 988
    :cond_3
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomBadgeIcon:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_4

    .line 990
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 991
    const/4 v11, 0x0

    const-string v12, "allowCustomBadgeIcon"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 992
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomBadgeIcon:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 993
    const/4 v11, 0x0

    const-string v12, "allowCustomBadgeIcon"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 995
    :cond_4
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mDisableSwitchWidgetOnLockScreen:Z

    if-eqz v11, :cond_5

    .line 997
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 998
    const/4 v11, 0x0

    const-string/jumbo v12, "disableSwitchWidget"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 999
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mDisableSwitchWidgetOnLockScreen:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1000
    const/4 v11, 0x0

    const-string/jumbo v12, "disableSwitchWidget"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1002
    :cond_5
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomPersonaIcon:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_6

    .line 1004
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1005
    const/4 v11, 0x0

    const-string v12, "allowCustomPersonaIcon"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1006
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomPersonaIcon:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1007
    const/4 v11, 0x0

    const-string v12, "allowCustomPersonaIcon"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1009
    :cond_6
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomColorIdentification:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_7

    .line 1011
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1012
    const/4 v11, 0x0

    const-string v12, "allowCustomColorId"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1013
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomColorIdentification:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1014
    const/4 v11, 0x0

    const-string v12, "allowCustomColorId"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1016
    :cond_7
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowContainerReset:Z

    if-eqz v11, :cond_8

    .line 1018
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1019
    const/4 v11, 0x0

    const-string v12, "allowContainerReset"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1020
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowContainerReset:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1021
    const/4 v11, 0x0

    const-string v12, "allowContainerReset"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1023
    :cond_8
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowShortCutCreation:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_9

    .line 1025
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1026
    const/4 v11, 0x0

    const-string v12, "allowShortcutCreation"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1027
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowShortCutCreation:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1028
    const/4 v11, 0x0

    const-string v12, "allowShortcutCreation"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1030
    :cond_9
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowDLNADataTransfer:Z

    if-eqz v11, :cond_a

    .line 1032
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1033
    const/4 v11, 0x0

    const-string v12, "allowDLNADataTransfer"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1034
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowDLNADataTransfer:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1035
    const/4 v11, 0x0

    const-string v12, "allowDLNADataTransfer"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1037
    :cond_a
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowPrint:Z

    if-eqz v11, :cond_b

    .line 1039
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1040
    const/4 v11, 0x0

    const-string v12, "allowPrint"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1041
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowPrint:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1042
    const/4 v11, 0x0

    const-string v12, "allowPrint"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1044
    :cond_b
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mModifyLockScreenTimeout:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_c

    .line 1046
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1047
    const/4 v11, 0x0

    const-string/jumbo v12, "modifyLockscreenTimeout"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1048
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mModifyLockScreenTimeout:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1049
    const/4 v11, 0x0

    const-string/jumbo v12, "modifyLockscreenTimeout"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1051
    :cond_c
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowAllShare:Z

    if-eqz v11, :cond_d

    .line 1053
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1054
    const/4 v11, 0x0

    const-string v12, "allowAllshare"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1055
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowAllShare:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1056
    const/4 v11, 0x0

    const-string v12, "allowAllshare"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1058
    :cond_d
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mGearSupportEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_e

    .line 1060
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1061
    const/4 v11, 0x0

    const-string/jumbo v12, "gearSupportEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1062
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mGearSupportEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1063
    const/4 v11, 0x0

    const-string/jumbo v12, "gearSupportEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1065
    :cond_e
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPenWindowEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_f

    .line 1067
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1068
    const/4 v11, 0x0

    const-string/jumbo v12, "penWindowEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1069
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPenWindowEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1070
    const/4 v11, 0x0

    const-string/jumbo v12, "penWindowEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1072
    :cond_f
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAirCommandEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_10

    .line 1074
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1075
    const/4 v11, 0x0

    const-string v12, "airCommandEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1076
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAirCommandEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1077
    const/4 v11, 0x0

    const-string v12, "airCommandEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1079
    :cond_10
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowUniversalCallerId:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_11

    .line 1081
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1082
    const/4 v11, 0x0

    const-string v12, "allowUniversalCallerId"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1083
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowUniversalCallerId:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1084
    const/4 v11, 0x0

    const-string v12, "allowUniversalCallerId"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1086
    :cond_11
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowImportFiles:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_12

    .line 1088
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1089
    const/4 v11, 0x0

    const-string v12, "allowImportFiles"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1090
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowImportFiles:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1091
    const/4 v11, 0x0

    const-string v12, "allowImportFiles"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1093
    :cond_12
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportFiles:Z

    if-eqz v11, :cond_13

    .line 1095
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1096
    const/4 v11, 0x0

    const-string v12, "allowExportFiles"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1097
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportFiles:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1098
    const/4 v11, 0x0

    const-string v12, "allowExportFiles"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1100
    :cond_13
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportAndDeleteFiles:Z

    if-eqz v11, :cond_14

    .line 1102
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1103
    const/4 v11, 0x0

    const-string v12, "allowExportAndDeleteFiles"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1104
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportAndDeleteFiles:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1105
    const/4 v11, 0x0

    const-string v12, "allowExportAndDeleteFiles"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1107
    :cond_14
    iget-boolean v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSwitchNotifEnabled:Z

    const/4 v12, 0x1

    if-eq v11, v12, :cond_15

    .line 1109
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1110
    const/4 v11, 0x0

    const-string/jumbo v12, "switchNotifEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1111
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-boolean v13, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSwitchNotifEnabled:Z

    invoke-static {v13}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1112
    const/4 v11, 0x0

    const-string/jumbo v12, "switchNotifEnabled"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1114
    :cond_15
    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    if-eqz v11, :cond_1a

    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1a

    .line 1116
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1117
    const/4 v11, 0x0

    const-string/jumbo v12, "rcp-data-settings"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1118
    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1119
    .local v4, "key":Ljava/lang/String;
    const-string v11, "PersonaPolicyManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "key : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 1121
    .local v8, "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-eqz v8, :cond_16

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_16

    .line 1122
    const-string v11, "\n\t\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1123
    const/4 v11, 0x0

    const-string v12, "application"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1124
    const/4 v11, 0x0

    const-string/jumbo v12, "name"

    invoke-interface {v5, v11, v12, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1125
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 1126
    .local v7, "rcpSetting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    const-string v11, "\n\t\t\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1127
    const/4 v11, 0x0

    const-string/jumbo v12, "property"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1128
    const/4 v11, 0x0

    const-string/jumbo v12, "name"

    iget-object v13, v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1129
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-object v13, v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1130
    const/4 v11, 0x0

    const-string/jumbo v12, "property"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1170
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v7    # "rcpSetting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :catch_0
    move-exception v0

    move-object v9, v10

    .line 1172
    .end local v10    # "stream":Ljava/io/FileOutputStream;
    .local v0, "e":Ljava/io/IOException;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v9, :cond_17

    .line 1173
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1178
    :cond_17
    :goto_3
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .line 1180
    .end local v0    # "e":Ljava/io/IOException;
    :goto_4
    return-void

    .line 1132
    .end local v9    # "stream":Ljava/io/FileOutputStream;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v10    # "stream":Ljava/io/FileOutputStream;
    :cond_18
    :try_start_3
    const-string v11, "\n\t\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1133
    const/4 v11, 0x0

    const-string v12, "application"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 1136
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_19
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1137
    const/4 v11, 0x0

    const-string/jumbo v12, "rcp-data-settings"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1139
    :cond_1a
    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    if-eqz v11, :cond_1e

    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1e

    .line 1141
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1142
    const/4 v11, 0x0

    const-string/jumbo v12, "rcp-notif-settings"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1143
    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1b
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1144
    .restart local v4    # "key":Ljava/lang/String;
    const-string v11, "PersonaPolicyManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "key : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    iget-object v11, v6, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v11, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 1146
    .restart local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-eqz v8, :cond_1b

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1b

    .line 1147
    const-string v11, "\n\t\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1148
    const/4 v11, 0x0

    const-string/jumbo v12, "package"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1149
    const/4 v11, 0x0

    const-string/jumbo v12, "name"

    invoke-interface {v5, v11, v12, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1150
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 1151
    .restart local v7    # "rcpSetting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    const-string v11, "\n\t\t\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1152
    const/4 v11, 0x0

    const-string/jumbo v12, "property"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1153
    const/4 v11, 0x0

    const-string/jumbo v12, "name"

    iget-object v13, v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1154
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    iget-object v13, v7, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    invoke-interface {v5, v11, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1155
    const/4 v11, 0x0

    const-string/jumbo v12, "property"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_6

    .line 1157
    .end local v7    # "rcpSetting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    :cond_1c
    const-string v11, "\n\t\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1158
    const/4 v11, 0x0

    const-string/jumbo v12, "package"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_5

    .line 1161
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "key":Ljava/lang/String;
    .end local v8    # "settings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_1d
    const-string v11, "\n\t\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1162
    const/4 v11, 0x0

    const-string/jumbo v12, "rcp-notif-settings"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1164
    :cond_1e
    const-string v11, "\n\t"

    invoke-interface {v5, v11}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1165
    const/4 v11, 0x0

    const-string/jumbo v12, "policies"

    invoke-interface {v5, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1167
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1168
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 1169
    invoke-virtual {v3}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v9, v10

    .line 1179
    .end local v10    # "stream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 1175
    .end local v5    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v11

    goto/16 :goto_3

    .line 1170
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v0

    goto/16 :goto_2
.end method

.method private setRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1482
    monitor-enter p0

    .line 1483
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1484
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v3

    .line 1485
    .local v3, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    if-eqz v3, :cond_3

    .line 1486
    iget-object v6, v3, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1488
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-nez v1, :cond_0

    .line 1489
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1500
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :goto_0
    new-instance v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    invoke-direct {v4}, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;-><init>()V

    .line 1501
    .local v4, "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iput-object p3, v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    .line 1502
    iput-object p4, v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    .line 1503
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1504
    iget-object v6, v3, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPDataSettings:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1505
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 1506
    const/4 v6, 0x1

    monitor-exit p0

    .line 1511
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v4    # "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    :goto_1
    return v6

    .line 1491
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1492
    .local v5, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 1493
    .local v2, "listItem":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iget-object v6, v2, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1494
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1513
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v2    # "listItem":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    .end local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v5    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1497
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .restart local v5    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1508
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v5    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_3
    monitor-exit p0

    goto :goto_1

    .line 1511
    .end local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private setRCPNotificationPolicyForUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 1525
    monitor-enter p0

    .line 1526
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaManagerService()Lcom/android/server/pm/PersonaManagerService;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/server/pm/PersonaManagerService;->exists(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1527
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v3

    .line 1528
    .local v3, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    if-eqz v3, :cond_3

    .line 1529
    iget-object v6, v3, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1531
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    if-nez v1, :cond_0

    .line 1532
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1543
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :goto_0
    new-instance v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    invoke-direct {v4}, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;-><init>()V

    .line 1544
    .local v4, "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iput-object p3, v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    .line 1545
    iput-object p4, v4, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->value:Ljava/lang/String;

    .line 1546
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1547
    iget-object v6, v3, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mRCPNotifSettings:Ljava/util/HashMap;

    invoke-virtual {v6, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1548
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 1549
    const/4 v6, 0x1

    monitor-exit p0

    .line 1554
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v4    # "setting":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    :goto_1
    return v6

    .line 1534
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1535
    .local v5, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;

    .line 1536
    .local v2, "listItem":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    iget-object v6, v2, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;->property:Ljava/lang/String;

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1537
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1556
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v2    # "listItem":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;
    .end local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .end local v5    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1540
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .restart local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .restart local v5    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_2
    :try_start_1
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1551
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    .end local v5    # "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/pm/PersonaPolicyManagerService$PersonaRCPSettings;>;"
    :cond_3
    monitor-exit p0

    goto :goto_1

    .line 1554
    .end local v3    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public addLockOnImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1254
    const-string v0, "addLockOnImage"

    invoke-static {v0}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1259
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAirCommandEnabled(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 646
    const-string/jumbo v1, "getAirCommandEnabled"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 647
    monitor-enter p0

    .line 648
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 649
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAirCommandEnabled:Z

    monitor-exit p0

    return v1

    .line 650
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowAllShare(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 577
    const-string/jumbo v1, "getAllowAllShare"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 578
    monitor-enter p0

    .line 579
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 580
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowAllShare:Z

    monitor-exit p0

    return v1

    .line 581
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowContainerReset(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 462
    const-string/jumbo v1, "getAllowContainerReset"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 463
    monitor-enter p0

    .line 464
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 465
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowContainerReset:Z

    monitor-exit p0

    return v1

    .line 466
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowCustomBadgeIcon(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 369
    const-string/jumbo v1, "getAllowCustomBadgeIcon"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 370
    monitor-enter p0

    .line 371
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 372
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomBadgeIcon:Z

    monitor-exit p0

    return v1

    .line 373
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowCustomColorIdentification(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 439
    const-string/jumbo v1, "getAllowCustomColorIdentification"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 440
    monitor-enter p0

    .line 441
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 442
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomColorIdentification:Z

    monitor-exit p0

    return v1

    .line 443
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowCustomPersonaIcon(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 415
    const-string/jumbo v1, "getAllowCustomPersonaIcon"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 416
    monitor-enter p0

    .line 417
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 418
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomPersonaIcon:Z

    monitor-exit p0

    return v1

    .line 419
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowDLNADataTransfer(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 508
    const-string/jumbo v1, "getAllowDLNADataTransfer"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 509
    monitor-enter p0

    .line 510
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 511
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowDLNADataTransfer:Z

    monitor-exit p0

    return v1

    .line 512
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowExportAndDeleteFiles(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 737
    const-string/jumbo v1, "getAllowExportAndDeleteFiles"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 738
    monitor-enter p0

    .line 739
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 740
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportAndDeleteFiles:Z

    monitor-exit p0

    return v1

    .line 741
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowExportFiles(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 715
    const-string/jumbo v1, "getAllowExportFiles"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 716
    monitor-enter p0

    .line 717
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 718
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportFiles:Z

    monitor-exit p0

    return v1

    .line 719
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowImportFiles(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 692
    const-string/jumbo v1, "getAllowImportFiles"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 693
    monitor-enter p0

    .line 694
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 695
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowImportFiles:Z

    monitor-exit p0

    return v1

    .line 696
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowPrint(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 531
    const-string/jumbo v1, "getAllowPrint"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 532
    monitor-enter p0

    .line 533
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 534
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowPrint:Z

    monitor-exit p0

    return v1

    .line 535
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowShortCutCreation(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 485
    const-string/jumbo v1, "getAllowShortCutCreation"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 486
    monitor-enter p0

    .line 487
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 488
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowShortCutCreation:Z

    monitor-exit p0

    return v1

    .line 489
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAllowUniversalCallerId(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 669
    const-string/jumbo v1, "getAllowUniversalCallerId"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 670
    monitor-enter p0

    .line 671
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 672
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowUniversalCallerId:Z

    monitor-exit p0

    return v1

    .line 673
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCameraModeChangeEnabled(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 346
    const-string/jumbo v1, "getCameraModeChangeEnabled"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 347
    monitor-enter p0

    .line 348
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 349
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mCameraModeChangeEnabled:Z

    monitor-exit p0

    return v1

    .line 350
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDisableSwitchWidgetOnLockScreen(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 392
    const-string/jumbo v1, "getDisableSwitchWidgetOnLockScreen"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 393
    monitor-enter p0

    .line 394
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 395
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mDisableSwitchWidgetOnLockScreen:Z

    monitor-exit p0

    return v1

    .line 396
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getEncryptionStatus(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 300
    const-string/jumbo v1, "getEncryptionStatus"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 301
    monitor-enter p0

    .line 302
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 303
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mEncryptionEnabled:Z

    monitor-exit p0

    return v1

    .line 304
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGearSupportEnabled(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 600
    const-string/jumbo v1, "getGearSupportEnabled"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 601
    monitor-enter p0

    .line 602
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 603
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mGearSupportEnabled:Z

    monitor-exit p0

    return v1

    .line 604
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getModifyLockScreenTimeout(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 554
    const-string/jumbo v1, "getModifyLockScreenTimeout"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 555
    monitor-enter p0

    .line 556
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 557
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mModifyLockScreenTimeout:Z

    monitor-exit p0

    return v1

    .line 558
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPasswordLockPolicy(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 277
    const-string/jumbo v1, "getPasswordLockPolicy"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 278
    monitor-enter p0

    .line 279
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 280
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPasswordLockEnabled:Z

    monitor-exit p0

    return v1

    .line 281
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPenWindowEnabled(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 623
    const-string/jumbo v1, "getPenWindowEnabled"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 624
    monitor-enter p0

    .line 625
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 626
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPenWindowEnabled:Z

    monitor-exit p0

    return v1

    .line 627
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 249
    monitor-enter p0

    .line 250
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mPersonaData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    .line 251
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    invoke-direct {v0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;-><init>(I)V

    .line 253
    .restart local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-object v1, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mPersonaData:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 254
    invoke-direct {p0, v0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->loadSettingsLocked(Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;I)V

    .line 256
    :cond_0
    monitor-exit p0

    return-object v0

    .line 257
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1446
    const-string/jumbo v4, "getRCPDataPolicy"

    invoke-static {v4}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1447
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1448
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1450
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1453
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/pm/PersonaPolicyManagerService;->getDataSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1455
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1428
    const-string/jumbo v2, "getRCPDataPolicyForUser"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1429
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->enforceSystemServiceOrSystemUI(I)V

    .line 1430
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1432
    .local v0, "token":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaPolicyManagerService;->getDataSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1434
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1461
    const-string/jumbo v4, "getRCPNotificationPolicy"

    invoke-static {v4}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1462
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1463
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1465
    .local v1, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1467
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0, v1, p1, p2}, Lcom/android/server/pm/PersonaPolicyManagerService;->getNotificationSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 1469
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v4

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public getRCPNotificationPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "policyProperty"    # Ljava/lang/String;

    .prologue
    .line 1439
    const-string/jumbo v0, "getRCPNotificationPolicyForUser"

    invoke-static {v0}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1440
    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->enforceSystemService()V

    .line 1441
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaPolicyManagerService;->getNotificationSyncPolicy(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecureKeystoreEnabled(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 323
    const-string/jumbo v1, "getSecureKeystoreEnabled"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 324
    monitor-enter p0

    .line 325
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 326
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSecureKeystoreEnabled:Z

    monitor-exit p0

    return v1

    .line 327
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSwitchNotifEnabled(I)Z
    .locals 2
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 760
    const-string/jumbo v1, "getSwitchNotifEnabled"

    invoke-static {v1}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 761
    monitor-enter p0

    .line 762
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v0

    .line 763
    .local v0, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iget-boolean v1, v0, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSwitchNotifEnabled:Z

    monitor-exit p0

    return v1

    .line 764
    .end local v0    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBadgeRequired()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1197
    const-string/jumbo v0, "isBadgeRequired"

    invoke-static {v0}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1207
    const/4 v0, 0x0

    return v0
.end method

.method public isBadgeRequiredFromOwner(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1212
    const-string/jumbo v0, "isBadgeRequiredFromOwner"

    invoke-static {v0}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1235
    const/4 v0, 0x0

    return v0
.end method

.method public isMoveFilesToContainerAllowed(I)Z
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 1627
    const/4 v5, 0x0

    .line 1629
    .local v5, "result":Z
    :try_start_0
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v2

    .line 1630
    .local v2, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    iget-object v6, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6, p1}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v0

    .line 1631
    .local v0, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/sec/enterprise/knox/container/RCPPolicy;

    move-result-object v4

    .line 1632
    .local v4, "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    invoke-virtual {v4}, Lcom/sec/enterprise/knox/container/RCPPolicy;->isMoveFilesToContainerAllowed()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    .line 1640
    .end local v0    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v2    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v4    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    :goto_0
    return v5

    .line 1633
    :catch_0
    move-exception v1

    .line 1634
    .local v1, "e":Ljava/lang/SecurityException;
    const-string v6, "PersonaPolicyManagerService"

    const-string v7, "allowShareClipboardDataToOwner : SecurityException occured"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const/4 v5, 0x0

    .line 1639
    goto :goto_0

    .line 1636
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .line 1637
    .local v3, "npe":Ljava/lang/NullPointerException;
    const-string v6, "PersonaPolicyManagerService"

    const-string v7, "allowShareClipboardDataToOwner : NullPointerException occured"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isShareClipboardDataToContainerAllowed(I)Z
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1598
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getStorageProvider()V

    .line 1599
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v9, "propertyValue"

    aput-object v9, v0, v6

    .line 1602
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1603
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v6, "cid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1604
    const-string/jumbo v6, "name"

    const-string v9, "Clipboard"

    invoke-virtual {v1, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    const-string/jumbo v6, "propertyName"

    const-string/jumbo v9, "knox-import-data"

    invoke-virtual {v1, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    sget-object v6, Lcom/android/server/pm/PersonaPolicyManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    .line 1607
    .local v3, "ownerUid":I
    const-string v6, "adminUid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1609
    sget-object v6, Lcom/android/server/pm/PersonaPolicyManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "RCP_DATA"

    invoke-virtual {v6, v9, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 1611
    .local v4, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1613
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string/jumbo v9, "propertyValue"

    invoke-virtual {v6, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1614
    .local v5, "result":Ljava/lang/String;
    if-nez v5, :cond_0

    move v6, v7

    .line 1622
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "ownerUid":I
    .end local v4    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "result":Ljava/lang/String;
    :goto_0
    return v6

    .line 1617
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "ownerUid":I
    .restart local v4    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v5    # "result":Ljava/lang/String;
    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .line 1619
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "ownerUid":I
    .end local v4    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1620
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    move v6, v8

    .line 1622
    goto :goto_0
.end method

.method public isShareClipboardDataToOwnerAllowed(I)Z
    .locals 9
    .param p1, "userId"    # I

    .prologue
    const/4 v7, 0x0

    .line 1567
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaPolicyManagerService;->getStorageProvider()V

    .line 1569
    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string/jumbo v8, "propertyValue"

    aput-object v8, v0, v6

    .line 1572
    .local v0, "columns":[Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1573
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v6, "cid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1574
    const-string/jumbo v6, "name"

    const-string v8, "Clipboard"

    invoke-virtual {v1, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    const-string/jumbo v6, "propertyName"

    const-string/jumbo v8, "knox-export-data"

    invoke-virtual {v1, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    sget-object v6, Lcom/android/server/pm/PersonaPolicyManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v6, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v3

    .line 1577
    .local v3, "ownerUid":I
    const-string v6, "adminUid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v6, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1579
    sget-object v6, Lcom/android/server/pm/PersonaPolicyManagerService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "RCP_DATA"

    invoke-virtual {v6, v8, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 1581
    .local v4, "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 1582
    const/4 v6, 0x0

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string/jumbo v8, "propertyValue"

    invoke-virtual {v6, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1583
    .local v5, "result":Ljava/lang/String;
    if-nez v5, :cond_0

    move v6, v7

    .line 1592
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "ownerUid":I
    .end local v4    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "result":Ljava/lang/String;
    :goto_0
    return v6

    .line 1586
    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "ownerUid":I
    .restart local v4    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v5    # "result":Ljava/lang/String;
    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .line 1589
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v3    # "ownerUid":I
    .end local v4    # "providerList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v5    # "result":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1590
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    move v6, v7

    .line 1592
    goto :goto_0
.end method

.method public registerReceivers()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1240
    const-string/jumbo v0, "registerReceivers"

    invoke-static {v0}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1242
    new-instance v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyReceiver;-><init>(Lcom/android/server/pm/PersonaPolicyManagerService;)V

    .line 1243
    .local v1, "receiver":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyReceiver;
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1244
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1245
    const-string v0, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 1246
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1247
    iget-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1249
    iget-object v0, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/pm/PersonaPolicyManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_REMOVED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1250
    return-void
.end method

.method public setAirCommandEnabled(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 632
    const-string/jumbo v2, "setAirCommandEnabled"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 633
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 636
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "airCommand"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 637
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 638
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAirCommandEnabled:Z

    .line 639
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 641
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowAllShare(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 563
    const-string/jumbo v2, "setAllowAllShare"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 564
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 567
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "allShare"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 568
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 569
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowAllShare:Z

    .line 570
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 572
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowContainerReset(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 448
    const-string/jumbo v2, "setAllowContainerReset"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 449
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 452
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "containerReset"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 454
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowContainerReset:Z

    .line 455
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 457
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowCustomBadgeIcon(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 355
    const-string/jumbo v2, "setAllowCustomBadgeIcon"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 356
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 359
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "customBadgeIcon"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 360
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 361
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomBadgeIcon:Z

    .line 362
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 364
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowCustomColorIdentification(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 425
    const-string/jumbo v2, "setAllowCustomColorIdentification"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 426
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 429
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "customColorIdentification"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 430
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 431
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomColorIdentification:Z

    .line 432
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 434
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowCustomPersonaIcon(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 401
    const-string/jumbo v2, "setAllowCustomPersonaIcon"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 402
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 405
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "customPersonaIcon"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 407
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowCustomPersonaIcon:Z

    .line 408
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 410
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowDLNADataTransfer(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 494
    const-string/jumbo v2, "setAllowDLNADataTransfer"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 495
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 498
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "dlnaDataTransfer"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 499
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 500
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowDLNADataTransfer:Z

    .line 501
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 503
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowExportAndDeleteFiles(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 724
    const-string/jumbo v2, "setAllowExportAndDeleteFiles"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 725
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 727
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "exportAndDeleteFiles"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 728
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 729
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportAndDeleteFiles:Z

    .line 730
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 732
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowExportFiles(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 701
    const-string/jumbo v2, "setAllowExportFiles"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 702
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 705
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "exportFiles"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 706
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 707
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowExportFiles:Z

    .line 708
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 710
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowImportFiles(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 678
    const-string/jumbo v2, "setAllowImportFiles"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 679
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 682
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "importFiles"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 683
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 684
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowImportFiles:Z

    .line 685
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 687
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowPrint(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 517
    const-string/jumbo v2, "setAllowPrint"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 518
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 521
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "print"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 522
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 523
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowPrint:Z

    .line 524
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 526
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowShortCutCreation(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 471
    const-string/jumbo v2, "setAllowShortCutCreation"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 472
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 475
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "shortcutCreation"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 477
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowShortCutCreation:Z

    .line 478
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 480
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setAllowUniversalCallerId(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 655
    const-string/jumbo v2, "setAllowUniversalCallerId"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 656
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 659
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "universalCallerId"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 660
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 661
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mAllowUniversalCallerId:Z

    .line 662
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 664
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setCameraModeChangeEnabled(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 332
    const-string/jumbo v2, "setCameraModeChangeEnabled"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 333
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 336
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string v2, "cameraMode"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 338
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mCameraModeChangeEnabled:Z

    .line 339
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 341
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setDisableSwitchWidgetOnLockScreen(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 378
    const-string/jumbo v2, "setDisableSwitchWidgetOnLockScreen"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 379
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 382
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "disableSwitchWidget"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 384
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mDisableSwitchWidgetOnLockScreen:Z

    .line 385
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 387
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setEncryptionStatus(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 286
    const-string/jumbo v2, "setEncryptionStatus"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 287
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 290
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "encryption"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 292
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mEncryptionEnabled:Z

    .line 293
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 295
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setGearSupportEnabled(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 586
    const-string/jumbo v2, "setGearSupportEnabled"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 587
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 590
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "gearSupport"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 591
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 592
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mGearSupportEnabled:Z

    .line 593
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 595
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setModifyLockScreenTimeout(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 540
    const-string/jumbo v2, "setModifyLockScreenTimeout"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 541
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 544
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "modifyTimeout"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 545
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 546
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mModifyLockScreenTimeout:Z

    .line 547
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 549
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setPasswordLockPolicy(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 262
    const-string/jumbo v2, "setPasswordLockPolicy"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 263
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 267
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "passwordLock"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 268
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 269
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPasswordLockEnabled:Z

    .line 270
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 272
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setPenWindowEnabled(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 609
    const-string/jumbo v2, "setPenWindowEnabled"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 610
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 613
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "penWindow"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 614
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 615
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mPenWindowEnabled:Z

    .line 616
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 618
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1475
    const-string/jumbo v2, "setRCPDataPolicy"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1476
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1477
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1478
    .local v1, "userHandle":I
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/pm/PersonaPolicyManagerService;->setRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public setRCPNotificationPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1518
    const-string/jumbo v2, "setRCPNotificationPolicy"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 1519
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1520
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 1521
    .local v1, "userHandle":I
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/server/pm/PersonaPolicyManagerService;->setRCPNotificationPolicyForUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public setSecureKeystoreEnabled(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 309
    const-string/jumbo v2, "setSecureKeystoreEnabled"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 310
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 313
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "secureKeystore"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 315
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSecureKeystoreEnabled:Z

    .line 316
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 318
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setSwitchNotifEnabled(IZ)Z
    .locals 3
    .param p1, "personaId"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 746
    const-string/jumbo v2, "setSwitchNotifEnabled"

    invoke-static {v2}, Lcom/android/server/pm/PersonaPolicyManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 747
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaPolicyManager(I)Landroid/content/pm/IPersonaPolicyHandler;

    move-result-object v0

    .line 750
    .local v0, "handler":Landroid/content/pm/IPersonaPolicyHandler;
    if-eqz v0, :cond_0

    const-string/jumbo v2, "switchNotif"

    invoke-interface {v0, v2}, Landroid/content/pm/IPersonaPolicyHandler;->allowChangePolicy(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 751
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->getPersonaData(I)Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;

    move-result-object v1

    .line 752
    .local v1, "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    iput-boolean p2, v1, Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;->mSwitchNotifEnabled:Z

    .line 753
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaPolicyManagerService;->saveSettingsLocked(I)V

    .line 755
    .end local v1    # "policy":Lcom/android/server/pm/PersonaPolicyManagerService$PersonaPolicyData;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
