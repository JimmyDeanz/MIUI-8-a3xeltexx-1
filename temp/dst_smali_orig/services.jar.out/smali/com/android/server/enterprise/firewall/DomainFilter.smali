.class Lcom/android/server/enterprise/firewall/DomainFilter;
.super Ljava/lang/Object;
.source "DomainFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;
    }
.end annotation


# static fields
.field private static final ADMIN_IN_DATABASE:I = 0x1

.field private static final ANOTHER_ADMIN_IN_DATABASE:I = -0x1

.field public static final ARG_BLACKLIST:Ljava/lang/String; = "BLACKLIST"

.field public static final ARG_WHITELIST:Ljava/lang/String; = "WHITELIST"

.field public static final CMD_BUF_SIZE_ARGS:I

.field public static final CMD_BUF_SIZE_MAX:I = 0x300

.field public static final DOMAINFILTERCMD:Ljava/lang/String; = "domainFilterCmd"

.field private static final EMPTY_DATABASE:I = 0x0

.field public static final OP_ADD:Ljava/lang/String; = "ADD"

.field public static final OP_CLEAR:Ljava/lang/String; = "CLEAR"

.field public static final OP_REMOVE:Ljava/lang/String; = "REMOVE"

.field public static final OP_REPLACE:Ljava/lang/String; = "REPLACE"

.field public static final OP_REPORT:Ljava/lang/String; = "REPORT"

.field public static final ReportBlockedDomain:I = 0x320

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mDomainReportCache:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mThread:Ljava/lang/Thread;

.field private mUserFilterReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUserIdMapLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const-string v0, "DomainFilter"

    sput-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v0, "domainFilterCmd"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    rsub-int v0, v0, 0x300

    add-int/lit8 v0, v0, -0x2

    sput v0, Lcom/android/server/enterprise/firewall/DomainFilter;->CMD_BUF_SIZE_ARGS:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$1;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilter$2;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/firewall/DomainFilter$2;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserFilterReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, "filterPkg":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mPackageFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .local v8, "filterUser":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserFilterReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/server/enterprise/firewall/DomainFilter$NetdCallbackReceiver;-><init>(Lcom/android/server/enterprise/firewall/DomainFilter;Lcom/android/server/enterprise/firewall/DomainFilter$1;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;-><init>(Landroid/os/Looper;Lcom/android/server/enterprise/firewall/INativeDaemonConnectorCallback;)V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initUserIdMap()V

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initDaemonCache()V

    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initReportCache()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageAdded(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/firewall/DomainFilter;->saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/firewall/DomainFilter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .prologue
    invoke-direct {p0}, Lcom/android/server/enterprise/firewall/DomainFilter;->initDaemonCache()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/firewall/DomainFilter;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageReplaced(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->onUserRemoved(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/firewall/DomainFilter;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->onUserAdded(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/server/enterprise/firewall/DomainFilter;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;
    .param p1, "x1"    # Ljava/lang/Thread;

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/firewall/DomainFilter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/enterprise/firewall/DomainFilter;

    .prologue
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkAdminInDatabase(I)I
    .locals 6
    .param p1, "adminUid"    # I

    .prologue
    const/4 v2, 0x0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .local v1, "userId":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DomainFilterTable"

    const-string v5, "adminUid"

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private clearReportForUser(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "filterByUserId":Landroid/content/ContentValues;
    const-string v1, "userId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterReportTable"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    return-void
.end method

.method private concatenateListAndExecuteCommand(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p2, "headerSize"    # I
    .param p3, "listType"    # Ljava/lang/String;
    .param p4, "listValues"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "headerArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v0, v8

    .local v0, "argSize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, "finalArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "listValuesSize":I
    if-eqz p4, :cond_0

    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v3, v8

    :cond_0
    if-eqz p4, :cond_1

    add-int v8, p2, v3

    add-int/2addr v8, v0

    sget v9, Lcom/android/server/enterprise/firewall/DomainFilter;->CMD_BUF_SIZE_ARGS:I

    if-ge v8, v9, :cond_3

    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeCommand(Ljava/util/ArrayList;)V

    :cond_2
    return-void

    :cond_3
    const-string v8, ";"

    invoke-virtual {p4, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .local v5, "tempList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "counter":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .local v4, "newList":Ljava/lang/StringBuilder;
    add-int v6, p2, v0

    .local v6, "totalTemp":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    array-length v7, v8

    .local v7, "valueSize":I
    add-int v8, v6, v7

    sget v9, Lcom/android/server/enterprise/firewall/DomainFilter;->CMD_BUF_SIZE_ARGS:I

    if-ge v8, v9, :cond_5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-nez v8, :cond_4

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    add-int/2addr v6, v7

    goto :goto_1

    :cond_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ";"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v7    # "valueSize":I
    :cond_5
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeCommand(Ljava/util/ArrayList;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private createDomainSet(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1, "stringInDB"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .local v0, "listFromDBStr":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method private createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "setFromDB":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, ";"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    const-string v0, ";"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private executeCommand(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;

    if-nez v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mConnector:Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;

    const-string v3, "domainFilterCmd"

    invoke-virtual {v2, v3, p1}, Lcom/android/server/enterprise/firewall/DomainFilterDaemonConnector;->execute(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-wide/16 v2, 0x96

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/InterruptedException;
    :try_start_3
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v3, "failed to wait for socket creation"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .local v1, "illex":Ljava/lang/IllegalThreadStateException;
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v3, "Thread already started"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1    # "illex":Ljava/lang/IllegalThreadStateException;
    :catch_2
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v3, "failed to send command to daemon"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getApplicationUid(Ljava/lang/String;I)I
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    const/4 v1, 0x0

    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, p1, v5, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_0
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_1

    :cond_0
    const/4 v4, -0x1

    :goto_1
    return v4

    :catch_0
    move-exception v0

    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception getting package info "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_1
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    goto :goto_1
.end method

.method private getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "selectionValues"    # Landroid/content/ContentValues;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterTable"

    invoke-virtual {v1, v2, p2, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    .local v0, "listInDB":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private initDaemonCache()V
    .locals 18

    .prologue
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .local v15, "selectionValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterTable"

    const-string v3, "adminUid"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v9

    .local v9, "admins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v9, :cond_5

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .local v8, "adminSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .local v7, "admin":Ljava/lang/Integer;
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v17

    .local v17, "userId":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .local v10, "appUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "adminUid"

    invoke-virtual {v15, v1, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v2, "DomainFilterTable"

    const-string v3, "packageName"

    invoke-virtual {v1, v2, v3, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v14

    .local v14, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .local v13, "packageName":Ljava/lang/String;
    const-string v1, "packageName"

    invoke-virtual {v15, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "blacklist"

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "blackListInDB":Ljava/lang/String;
    const-string v1, "whitelist"

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "whiteListInDB":Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, "uid":Ljava/lang/String;
    const-string v1, "*"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    :cond_1
    :goto_2
    if-eqz v16, :cond_0

    if-nez v5, :cond_2

    if-eqz v6, :cond_0

    :cond_2
    const-string v2, "ADD"

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-interface {v10, v13}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v10, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v16

    goto :goto_2

    .end local v5    # "blackListInDB":Ljava/lang/String;
    .end local v6    # "whiteListInDB":Ljava/lang/String;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v16    # "uid":Ljava/lang/String;
    :cond_4
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_0

    .end local v7    # "admin":Ljava/lang/Integer;
    .end local v8    # "adminSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v10    # "appUidMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v14    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "userId":I
    :cond_5
    return-void
.end method

.method private initReportCache()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .local v9, "reportEnabled":Landroid/content/ContentValues;
    const-string v0, "status"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DomainFilterReportStatus"

    invoke-virtual {v0, v1, v3, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .local v7, "admins":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v1, "initReportCache - No admin found in report status table"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    .local v6, "admin":Landroid/content/ContentValues;
    const-string v0, "userId"

    invoke-virtual {v6, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .local v10, "userId":I
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v6    # "admin":Landroid/content/ContentValues;
    .end local v10    # "userId":I
    :cond_3
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v1, "REPORT"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initUserIdMap()V
    .locals 14

    .prologue
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .local v6, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string v11, "user"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .local v8, "userManager":Landroid/os/UserManager;
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v9

    .local v9, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v9, :cond_2

    iget-object v11, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/UserInfo;

    .local v7, "user":Landroid/content/pm/UserInfo;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v10, 0x80

    iget v12, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v10, v12}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v5

    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .local v4, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v10, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v12, Ljava/lang/Integer;

    iget v13, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v12, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v10, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .restart local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    :try_start_1
    iget-object v10, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    iget v12, v7, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v10, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v9    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_2
    return-void
.end method

.method private isDomainFilterReportEnabledAsUser(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "filterByUserId":Landroid/content/ContentValues;
    const-string v2, "userId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterReportStatus"

    const-string v4, "status"

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    .local v1, "statusList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method private onUserAdded(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, -0x1

    const-string v6, "android.intent.extra.user_handle"

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .local v5, "userId":I
    if-eq v5, v7, :cond_2

    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .local v0, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .restart local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/16 v6, 0x80

    invoke-virtual {v4, v6, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v3

    .local v3, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v8, Ljava/lang/Integer;

    iget-object v9, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v6, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    return-void
.end method

.method private onUserRemoved(Landroid/content/Intent;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .local v6, "userId":I
    if-eq v6, v1, :cond_1

    iget-object v8, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v6}, Ljava/lang/Integer;-><init>(I)V

    .local v7, "userIdObj":Ljava/lang/Integer;
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v0, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v1, "CLEAR"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit v8

    .end local v7    # "userIdObj":Ljava/lang/Integer;
    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private packageAdded(Landroid/content/Intent;)V
    .locals 20
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v14

    .local v14, "pkgAdded":Ljava/lang/String;
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    .local v19, "userId":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-eq v0, v2, :cond_0

    if-nez v14, :cond_2

    :cond_0
    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v3, "Received invalid user id or package name, can\'t retrieve application info"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v14, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v18

    .local v18, "uid":I
    const/4 v2, -0x1

    move/from16 v0, v18

    if-ne v0, v2, :cond_3

    sget-object v2, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v3, "Failed to retrieve app info"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    new-instance v9, Ljava/lang/Integer;

    move/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    .local v9, "objUserID":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .local v13, "pair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/Integer;

    move/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v13, v14, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v2, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v13    # "pair":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, ""

    .local v6, "blackListInDB":Ljava/lang/String;
    const-string v7, ""

    .local v7, "whiteListInDB":Ljava/lang/String;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .local v15, "selectionValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v2, 0x0

    move/from16 v0, v19

    invoke-static {v2, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "#SelectClause#"

    invoke-virtual {v15, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterTable"

    const-string v4, "packageName"

    invoke-virtual {v2, v3, v4, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v12

    .local v12, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_1

    invoke-interface {v12, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "packageName"

    invoke-virtual {v15, v2, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DomainFilterTable"

    const-string v4, "signature"

    invoke-virtual {v2, v3, v4, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v16

    .local v16, "signature":Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, "signatureMatch":Z
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    const-string v3, "android"

    const/4 v4, 0x0

    move/from16 v0, v19

    invoke-static {v2, v3, v4, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v8

    .local v8, "ctx":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .local v10, "identity":J
    :try_start_1
    move-object/from16 v0, v16

    invoke-static {v8, v14, v0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v17

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-eqz v17, :cond_1

    .end local v8    # "ctx":Landroid/content/Context;
    .end local v10    # "identity":J
    :cond_4
    const-string v2, "blacklist"

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "whitelist"

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_5
    const-string v3, "ADD"

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v6    # "blackListInDB":Ljava/lang/String;
    .end local v7    # "whiteListInDB":Ljava/lang/String;
    .end local v12    # "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "selectionValues":Landroid/content/ContentValues;
    .end local v16    # "signature":Ljava/lang/String;
    .end local v17    # "signatureMatch":Z
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    move/from16 v0, v18

    invoke-direct {v4, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .end local v9    # "objUserID":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .restart local v6    # "blackListInDB":Ljava/lang/String;
    .restart local v7    # "whiteListInDB":Ljava/lang/String;
    .restart local v8    # "ctx":Landroid/content/Context;
    .restart local v9    # "objUserID":Ljava/lang/Integer;
    .restart local v10    # "identity":J
    .restart local v12    # "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "selectionValues":Landroid/content/ContentValues;
    .restart local v16    # "signature":Ljava/lang/String;
    .restart local v17    # "signatureMatch":Z
    :catchall_1
    move-exception v2

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private packageRemoved(Landroid/content/Intent;)V
    .locals 13
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .local v11, "userId":I
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .local v8, "pkgRemoved":Ljava/lang/String;
    if-eq v11, v1, :cond_1

    if-eqz v8, :cond_1

    iget-object v12, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .local v6, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v6, :cond_0

    invoke-interface {v6, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    .local v10, "uid":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .local v9, "selectionValues":Landroid/content/ContentValues;
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 v0, 0x0

    invoke-static {v0, v11}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUIDWhereIn(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "#SelectClause#"

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DomainFilterTable"

    const-string v2, "packageName"

    invoke-virtual {v0, v1, v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .local v7, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "REMOVE"

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v7    # "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "selectionValues":Landroid/content/ContentValues;
    .end local v10    # "uid":Ljava/lang/String;
    :cond_0
    monitor-exit v12

    .end local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private packageReplaced(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .local v10, "userId":I
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v9

    .local v9, "pkgReplaced":Ljava/lang/String;
    if-eq v10, v3, :cond_0

    if-nez v9, :cond_2

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v1, "Received invalid user id or package name, can\'t retrieve application info"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .local v6, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v6, :cond_3

    invoke-interface {v6, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->packageAdded(Landroid/content/Intent;)V

    monitor-exit v1

    goto :goto_0

    .end local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    :try_start_1
    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .local v8, "oldUid":I
    invoke-direct {p0, v9, v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v7

    .local v7, "newUid":I
    if-ne v7, v3, :cond_5

    sget-object v0, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v2, "Failed to retrieve app info"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v8, v7, :cond_1

    const-string v1, "REPLACE"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveReportInDatabase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "timeStamp"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .local v2, "userId":I
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "cv":Landroid/content/ContentValues;
    const-string v3, "time"

    invoke-virtual {v0, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "userId"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "packageName"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "url"

    invoke-virtual {v0, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "DomainFilterReportTable"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v4, "failed to save domain report in database"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "cv":Landroid/content/ContentValues;
    :cond_0
    return-void

    :catch_0
    move-exception v1

    .local v1, "ex":Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/android/server/enterprise/firewall/DomainFilter;->TAG:Ljava/lang/String;

    const-string v4, "Error parsing userId received from daemon"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "newUid"    # Ljava/lang/String;
    .param p4, "blackListInDB"    # Ljava/lang/String;
    .param p5, "whiteListInDB"    # Ljava/lang/String;

    .prologue
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "headerArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string v2, "REPORT"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CLEAR"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "REPLACE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "REMOVE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p4, :cond_3

    if-nez p5, :cond_3

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->executeCommand(Ljava/util/ArrayList;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v0, v2

    .local v0, "cmdHeaderSize":I
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v0, v2

    :cond_4
    const-string v2, "ADD"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string v2, "REMOVE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    const-string v2, "BLACKLIST"

    invoke-direct {p0, v1, v0, v2, p4}, Lcom/android/server/enterprise/firewall/DomainFilter;->concatenateListAndExecuteCommand(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v2, "ADD"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const-string v2, "REMOVE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_9
    const-string v2, "WHITELIST"

    invoke-direct {p0, v1, v0, v2, p5}, Lcom/android/server/enterprise/firewall/DomainFilter;->concatenateListAndExecuteCommand(Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private trimDomainUrls(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "domains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, ""

    invoke-interface {p1, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateDaemonCache(Landroid/app/enterprise/ContextInfo;Ljava/util/List;Ljava/lang/String;)V
    .locals 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p3, "operation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    const/4 v3, 0x0

    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .local v11, "userId":I
    const-string v0, "CLEAR"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "CLEAR"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    if-eqz p2, :cond_0

    const-string v0, "ADD"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "REMOVE"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .local v6, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/enterprise/firewall/DomainFilterRule;

    .local v10, "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .local v9, "pkg":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "appId":Ljava/lang/String;
    const-string v0, "*"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :cond_3
    :goto_1
    if-eqz v2, :cond_6

    const/4 v4, 0x0

    .local v4, "blackList":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "whiteList":Ljava/lang/String;
    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v7

    .local v7, "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_4

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, ";"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    :cond_4
    :goto_2
    invoke-virtual {v10}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, ";"

    invoke-static {v0, v7}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    :cond_5
    :goto_3
    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "blackList":Ljava/lang/String;
    .end local v5    # "whiteList":Ljava/lang/String;
    .end local v7    # "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_7
    invoke-interface {v6, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .restart local v4    # "blackList":Ljava/lang/String;
    .restart local v5    # "whiteList":Ljava/lang/String;
    .restart local v7    # "domainList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    const-string v4, ""

    goto :goto_2

    :cond_9
    const-string v5, ""

    goto :goto_3
.end method


# virtual methods
.method declared-synchronized addDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 40
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/sec/enterprise/firewall/FirewallResponse;"
        }
    .end annotation

    .prologue
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v35

    if-eqz v35, :cond_1

    :cond_0
    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    move-object/from16 v22, v0

    .local v22, "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v35, 0x0

    new-instance v36, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v38, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v39, "No rule was specified."

    invoke-direct/range {v36 .. v39}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v36, v22, v35
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v23, v22

    .end local v22    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .local v23, "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :goto_0
    monitor-exit p0

    return-object v23

    .end local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_1
    :try_start_1
    move-object/from16 v0, p1

    iget v5, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v5, "adminUid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v28

    .local v28, "userId":I
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v4

    .local v4, "adminDb":I
    const/16 v35, -0x1

    move/from16 v0, v35

    if-ne v4, v0, :cond_2

    const/16 v35, 0x1

    move/from16 v0, v35

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    move-object/from16 v22, v0

    .restart local v22    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v35, 0x0

    new-instance v36, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v38, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v39, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct/range {v36 .. v39}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v36, v22, v35

    move-object/from16 v23, v22

    .end local v22    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    goto :goto_0

    .end local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    move-object/from16 v35, v0

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    invoke-interface/range {v35 .. v36}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    .local v6, "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/16 v27, 0x1

    .local v27, "signatureMatch":Z
    const-string v20, ""

    .local v20, "invalidDomain":Ljava/lang/String;
    new-instance v32, Landroid/content/ContentValues;

    invoke-direct/range {v32 .. v32}, Landroid/content/ContentValues;-><init>()V

    .local v32, "values":Landroid/content/ContentValues;
    new-instance v25, Landroid/content/ContentValues;

    invoke-direct/range {v25 .. v25}, Landroid/content/ContentValues;-><init>()V

    .local v25, "selectionValues":Landroid/content/ContentValues;
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .local v31, "validatedRules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v35

    move/from16 v0, v35

    new-array v0, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    move-object/from16 v22, v0

    .restart local v22    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v35

    move/from16 v0, v16

    move/from16 v1, v35

    if-ge v0, v1, :cond_18

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/sec/enterprise/firewall/DomainFilterRule;

    .local v24, "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    if-nez v24, :cond_3

    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v38, "No rule was specified."

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v22, v16

    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v35

    if-nez v35, :cond_4

    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v38, "Invalid AppIdentity object."

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v22, v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v4    # "adminDb":I
    .end local v5    # "adminUid":I
    .end local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v16    # "i":I
    .end local v20    # "invalidDomain":Ljava/lang/String;
    .end local v22    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v24    # "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    .end local v25    # "selectionValues":Landroid/content/ContentValues;
    .end local v27    # "signatureMatch":Z
    .end local v28    # "userId":I
    .end local v31    # "validatedRules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    .end local v32    # "values":Landroid/content/ContentValues;
    :catchall_0
    move-exception v35

    monitor-exit p0

    throw v35

    .restart local v4    # "adminDb":I
    .restart local v5    # "adminUid":I
    .restart local v6    # "appIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v16    # "i":I
    .restart local v20    # "invalidDomain":Ljava/lang/String;
    .restart local v22    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v24    # "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    .restart local v25    # "selectionValues":Landroid/content/ContentValues;
    .restart local v27    # "signatureMatch":Z
    .restart local v28    # "userId":I
    .restart local v31    # "validatedRules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    .restart local v32    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_2
    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v35

    if-eqz v35, :cond_5

    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v35

    if-eqz v35, :cond_5

    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->isEmpty()Z

    move-result v35

    if-eqz v35, :cond_6

    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->isEmpty()Z

    move-result v35

    if-eqz v35, :cond_6

    :cond_5
    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v38, "Invalid domain."

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v22, v16

    goto :goto_2

    :cond_6
    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v21

    .local v21, "packageName":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v26

    .local v26, "signature":Ljava/lang/String;
    const-string v35, "*"

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_7

    if-eqz v26, :cond_7

    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v38, "There is no signature related to all applications."

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v22, v16

    goto :goto_2

    :cond_7
    invoke-static/range {v21 .. v21}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_8

    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Invalid package name. - "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v22, v16

    goto/16 :goto_2

    :cond_8
    if-eqz v6, :cond_9

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    if-nez v35, :cond_9

    invoke-static/range {v28 .. v28}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v35

    if-eqz v35, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getApplicationUid(Ljava/lang/String;I)I

    move-result v8

    .local v8, "appUid":I
    const/16 v35, -0x1

    move/from16 v0, v35

    if-eq v8, v0, :cond_9

    new-instance v29, Ljava/lang/Integer;

    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .local v29, "userIdObj":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMapLock:Ljava/lang/Object;

    move-object/from16 v36, v0

    monitor-enter v36
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mUserIdMap:Ljava/util/Map;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/util/Map;

    new-instance v37, Ljava/lang/Integer;

    move-object/from16 v0, v37

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v35, Ljava/lang/Integer;

    move-object/from16 v0, v35

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v36
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .end local v8    # "appUid":I
    .end local v29    # "userIdObj":Ljava/lang/Integer;
    :cond_9
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const-string v36, "android"

    const/16 v37, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->createContextAsUser(Landroid/content/Context;Ljava/lang/String;II)Landroid/content/Context;

    move-result-object v11

    .local v11, "ctx":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-wide v18

    .local v18, "identity":J
    if-eqz v26, :cond_a

    :try_start_5
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-static {v11, v0, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->comparePackageSignature(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result v35

    if-nez v35, :cond_a

    const/16 v27, 0x0

    :cond_a
    :try_start_6
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 v30, 0x1

    .local v30, "validDomain":Z
    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_b
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_c

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .local v12, "domain":Ljava/lang/String;
    move-object/from16 v20, v12

    invoke-static {v12}, Lcom/android/server/enterprise/firewall/FirewallUtils;->validateDomain(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_b

    .end local v12    # "domain":Ljava/lang/String;
    :cond_c
    if-eqz v30, :cond_e

    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_d
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_e

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .restart local v12    # "domain":Ljava/lang/String;
    move-object/from16 v20, v12

    invoke-static {v12}, Lcom/android/server/enterprise/firewall/FirewallUtils;->validateDomain(Ljava/lang/String;)Z

    move-result v30

    if-nez v30, :cond_d

    .end local v12    # "domain":Ljava/lang/String;
    :cond_e
    if-eqz v30, :cond_17

    const/4 v7, 0x0

    .local v7, "appIsInstalled":Z
    if-nez v27, :cond_f

    if-eqz v6, :cond_12

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_12

    const/4 v7, 0x1

    :cond_f
    :goto_3
    if-nez v27, :cond_10

    if-nez v7, :cond_16

    :cond_10
    const-string v35, "adminUid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v35, "packageName"

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v35, "blacklist"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, "blackListInDB":Ljava/lang/String;
    const-string v35, "whitelist"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .local v34, "whiteListInDB":Ljava/lang/String;
    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v13

    .local v13, "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v24 .. v24}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v14

    .local v14, "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/enterprise/firewall/DomainFilter;->trimDomainUrls(Ljava/util/List;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/enterprise/firewall/DomainFilter;->trimDomainUrls(Ljava/util/List;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v9

    .local v9, "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v33

    .local v33, "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9, v13}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v35

    if-eqz v35, :cond_11

    move-object/from16 v0, v33

    invoke-interface {v0, v14}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v35

    if-nez v35, :cond_13

    :cond_11
    const/4 v15, 0x1

    .local v15, "hasChangesToBeMade":Z
    :goto_4
    if-eqz v15, :cond_14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v9}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v14, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainString(Ljava/util/List;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v34

    const-string v35, "blacklist"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v35, "whitelist"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    move-object/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v35, "signature"

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v35, v0

    const-string v36, "DomainFilterTable"

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v32

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v35

    if-nez v35, :cond_15

    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v38, "Failed to add/update rule in the database."

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v22, v16

    :goto_5
    invoke-virtual/range {v32 .. v32}, Landroid/content/ContentValues;->clear()V

    invoke-virtual/range {v25 .. v25}, Landroid/content/ContentValues;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2

    .end local v7    # "appIsInstalled":Z
    .end local v9    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "blackListInDB":Ljava/lang/String;
    .end local v11    # "ctx":Landroid/content/Context;
    .end local v13    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "hasChangesToBeMade":Z
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "identity":J
    .end local v30    # "validDomain":Z
    .end local v33    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v34    # "whiteListInDB":Ljava/lang/String;
    .restart local v8    # "appUid":I
    .restart local v29    # "userIdObj":Ljava/lang/Integer;
    :catchall_1
    move-exception v35

    :try_start_7
    monitor-exit v36
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v35

    .end local v8    # "appUid":I
    .end local v29    # "userIdObj":Ljava/lang/Integer;
    .restart local v11    # "ctx":Landroid/content/Context;
    .restart local v18    # "identity":J
    :catchall_2
    move-exception v35

    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v35

    .restart local v7    # "appIsInstalled":Z
    .restart local v17    # "i$":Ljava/util/Iterator;
    .restart local v30    # "validDomain":Z
    :cond_12
    const/4 v7, 0x0

    goto/16 :goto_3

    .restart local v9    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v10    # "blackListInDB":Ljava/lang/String;
    .restart local v13    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v33    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v34    # "whiteListInDB":Ljava/lang/String;
    :cond_13
    const/4 v15, 0x0

    goto :goto_4

    .restart local v15    # "hasChangesToBeMade":Z
    :cond_14
    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v38, "The specified rule is already in the database."

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v22, v16

    goto/16 :goto_2

    :cond_15
    move-object/from16 v0, v31

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v38, "The rule(s) was successfully added/updated."

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v22, v16

    goto :goto_5

    .end local v9    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "blackListInDB":Ljava/lang/String;
    .end local v13    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "hasChangesToBeMade":Z
    .end local v33    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v34    # "whiteListInDB":Ljava/lang/String;
    :cond_16
    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v38, "Given signature does not match with the application."

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v22, v16

    goto/16 :goto_2

    .end local v7    # "appIsInstalled":Z
    :cond_17
    new-instance v35, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v36, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v37, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "Invalid domain. - "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v35 .. v38}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v35, v22, v16

    goto/16 :goto_2

    .end local v11    # "ctx":Landroid/content/Context;
    .end local v17    # "i$":Ljava/util/Iterator;
    .end local v18    # "identity":J
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v24    # "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    .end local v26    # "signature":Ljava/lang/String;
    .end local v30    # "validDomain":Z
    :cond_18
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->isEmpty()Z

    move-result v35

    if-nez v35, :cond_19

    if-eqz v27, :cond_19

    const-string v35, "ADD"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v31

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Landroid/app/enterprise/ContextInfo;Ljava/util/List;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_19
    move-object/from16 v23, v22

    .end local v22    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v23    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    goto/16 :goto_0
.end method

.method adminRemoved(I)V
    .locals 3
    .param p1, "adminUid"    # I

    .prologue
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .local v0, "userId":I
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .local v1, "userIdObj":Ljava/lang/Integer;
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->clearReportForUser(I)V

    :cond_0
    return-void
.end method

.method enableDomainFilterReport(Landroid/app/enterprise/ContextInfo;Z)Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "enabled"    # Z

    .prologue
    const/4 v3, 0x0

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v6, "adminUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .local v8, "userId":I
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .local v10, "values":Landroid/content/ContentValues;
    const-string v0, "status"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v0, "userId"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .local v7, "selection":Landroid/content/ContentValues;
    const-string v0, "adminUid"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DomainFilterReportStatus"

    invoke-virtual {v0, v1, v10, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v1, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v3, "Failed to change Domain Filter report status on database."

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v8}, Ljava/lang/Integer;-><init>(I)V

    .local v9, "userIdObj":Ljava/lang/Integer;
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "REPORT"

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    new-instance v1, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v2, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v3, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    if-eqz p2, :cond_3

    const-string v0, "Domain Report successfully enabled."

    :goto_2
    invoke-direct {v1, v2, v3, v0}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-nez p2, :cond_1

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v8}, Lcom/android/server/enterprise/firewall/DomainFilter;->clearReportForUser(I)V

    iget-object v0, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "REPORT"

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "Domain Report successfully disabled."

    goto :goto_2
.end method

.method getDomainFilterReport(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .locals 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterReport;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .local v6, "userId":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "reportList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterReport;>;"
    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mDomainReportCache:Ljava/util/Set;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    return-object v4

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "storedReports":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, "filterByUserId":Landroid/content/ContentValues;
    const-string v7, "userId"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v7, p0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "DomainFilterReportTable"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .local v3, "report":Landroid/content/ContentValues;
    const-string v7, "packageName"

    invoke-virtual {v3, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_3

    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_3
    new-instance v7, Lcom/sec/enterprise/firewall/DomainFilterReport;

    const-string v8, "time"

    invoke-virtual {v3, v8}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-string v10, "url"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v2, v8, v9, v10}, Lcom/sec/enterprise/firewall/DomainFilterReport;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method getDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)Ljava/util/List;
    .locals 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .local v9, "domainRules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .local v13, "selectionValues":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v3, "adminUid":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .local v15, "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v17, "adminUid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "DomainFilterTable"

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValues(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .local v8, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .local v7, "cv":Landroid/content/ContentValues;
    const-string v17, "packageName"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .local v11, "packageName":Ljava/lang/String;
    const-string v17, "signature"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, "signature":Ljava/lang/String;
    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    :cond_1
    const-string v17, "blacklist"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "blackListInDB":Ljava/lang/String;
    const-string v17, "whitelist"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .local v16, "whiteListInDB":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_2

    const-string v17, ";"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    :goto_1
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    :goto_2
    new-instance v4, Lcom/sec/enterprise/AppIdentity;

    invoke-direct {v4, v11, v14}, Lcom/sec/enterprise/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v4, "appIdentity":Lcom/sec/enterprise/AppIdentity;
    new-instance v12, Lcom/sec/enterprise/firewall/DomainFilterRule;

    invoke-direct {v12, v4, v5, v15}, Lcom/sec/enterprise/firewall/DomainFilterRule;-><init>(Lcom/sec/enterprise/AppIdentity;Ljava/util/List;Ljava/util/List;)V

    .local v12, "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    invoke-interface {v9, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v4    # "appIdentity":Lcom/sec/enterprise/AppIdentity;
    .end local v12    # "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    .end local v5    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .restart local v5    # "blackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    :cond_3
    new-instance v15, Ljava/util/ArrayList;

    .end local v15    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .restart local v15    # "whiteList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .end local v6    # "blackListInDB":Ljava/lang/String;
    .end local v7    # "cv":Landroid/content/ContentValues;
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v14    # "signature":Ljava/lang/String;
    .end local v16    # "whiteListInDB":Ljava/lang/String;
    :cond_4
    invoke-virtual {v13}, Landroid/content/ContentValues;->clear()V

    return-object v9
.end method

.method isDomainFilterReportEnabled(Landroid/app/enterprise/ContextInfo;)Z
    .locals 1
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/firewall/DomainFilter;->isDomainFilterReportEnabledAsUser(I)Z

    move-result v0

    return v0
.end method

.method onPreAdminRemoval(I)V
    .locals 6
    .param p1, "adminUid"    # I

    .prologue
    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v1, "CLEAR"

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/firewall/DomainFilter;->sendToCache(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method declared-synchronized removeDomainFilterRules(Landroid/app/enterprise/ContextInfo;Ljava/util/List;)[Lcom/sec/enterprise/firewall/FirewallResponse;
    .locals 28
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/firewall/DomainFilterRule;",
            ">;)[",
            "Lcom/sec/enterprise/firewall/FirewallResponse;"
        }
    .end annotation

    .prologue
    .local p2, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_0

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v12, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .local v12, "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v22, 0x0

    new-instance v23, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v25, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v26, "No rule was specified."

    invoke-direct/range {v23 .. v26}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v23, v12, v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v13, v12

    .end local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .local v13, "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :goto_0
    monitor-exit p0

    return-object v13

    .end local v13    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_0
    :try_start_1
    move-object/from16 v0, p1

    iget v4, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    .local v4, "adminUid":I
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v22

    if-nez v22, :cond_2

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v12, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .restart local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v22, 0x0

    new-instance v23, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v25, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->OPERATION_NOT_PERMITTED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v26, "The rules are already cleared."

    invoke-direct/range {v23 .. v26}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v23, v12, v22

    :cond_1
    :goto_1
    move-object v13, v12

    .end local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .restart local v13    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    goto :goto_0

    .end local v13    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/firewall/DomainFilter;->checkAdminInDatabase(I)I

    move-result v22

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v12, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .restart local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    const/16 v22, 0x0

    new-instance v23, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v25, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NOT_AUTHORIZED_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v26, "This administrator can\'t execute this operation because he is not the owner."

    invoke-direct/range {v23 .. v26}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v23, v12, v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v4    # "adminUid":I
    .end local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    :catchall_0
    move-exception v22

    monitor-exit p0

    throw v22

    .restart local v4    # "adminUid":I
    :cond_3
    :try_start_2
    sget-object v22, Lcom/sec/enterprise/firewall/DomainFilterRule;->CLEAR_ALL:Ljava/util/List;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_5

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v12, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .restart local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .local v15, "selectionValues":Landroid/content/ContentValues;
    const-string v22, "adminUid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "DomainFilterTable"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v22

    if-gtz v22, :cond_4

    const/16 v22, 0x0

    new-instance v23, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v25, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v26, "Failed to clear rules from database."

    invoke-direct/range {v23 .. v26}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v23, v12, v22

    :goto_2
    const/16 v22, 0x0

    const-string v23, "CLEAR"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Landroid/app/enterprise/ContextInfo;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/16 v22, 0x0

    new-instance v23, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v25, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Rules successfully cleared. Admin: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v23 .. v26}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v23, v12, v22

    goto :goto_2

    .end local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    .end local v15    # "selectionValues":Landroid/content/ContentValues;
    :cond_5
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .local v18, "validatedRules":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/firewall/DomainFilterRule;>;"
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    new-array v12, v0, [Lcom/sec/enterprise/firewall/FirewallResponse;

    .restart local v12    # "returnResponse":[Lcom/sec/enterprise/firewall/FirewallResponse;
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .local v19, "values":Landroid/content/ContentValues;
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .restart local v15    # "selectionValues":Landroid/content/ContentValues;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_13

    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/enterprise/firewall/DomainFilterRule;

    .local v14, "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v22

    if-nez v22, :cond_6

    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "Invalid AppIdentity object."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/enterprise/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .local v11, "packageName":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getApplication()Lcom/sec/enterprise/AppIdentity;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Lcom/sec/enterprise/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v16

    .local v16, "signature":Ljava/lang/String;
    const-string v22, "*"

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_7

    if-eqz v16, :cond_7

    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "There is no signature related to all applications."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    goto :goto_4

    :cond_7
    invoke-static {v11}, Lcom/sec/enterprise/firewall/FirewallRuleValidator;->validatePackageName(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_8

    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "Invalid package name. - "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    goto :goto_4

    :cond_8
    const-string v22, "adminUid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v22, "packageName"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "DomainFilterTable"

    const-string v24, "signature"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v17

    .local v17, "signatureInDB":Ljava/lang/String;
    if-eqz v16, :cond_9

    if-eqz v17, :cond_b

    :cond_9
    if-nez v16, :cond_a

    if-nez v17, :cond_b

    :cond_a
    if-eqz v16, :cond_c

    if-eqz v17, :cond_c

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_c

    :cond_b
    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->INVALID_PARAMETER_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "Signature does not match with the previous added."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    :goto_5
    invoke-virtual {v15}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_4

    :cond_c
    const-string v22, "blacklist"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v15, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, "blackListInDB":Ljava/lang/String;
    const-string v22, "whitelist"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v15, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->getListFromDB(Landroid/content/ContentValues;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .local v21, "whiteListInDB":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getDenyDomains()Ljava/util/List;

    move-result-object v7

    .local v7, "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v14}, Lcom/sec/enterprise/firewall/DomainFilterRule;->getAllowDomains()Ljava/util/List;

    move-result-object v8

    .local v8, "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, "hasRulesToDelete":Z
    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/server/enterprise/firewall/DomainFilter;->trimDomainUrls(Ljava/util/List;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v5

    .local v5, "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5, v7}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v22

    or-int v9, v9, v22

    .end local v9    # "hasRulesToDelete":Z
    :goto_6
    if-eqz v8, :cond_e

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/enterprise/firewall/DomainFilter;->trimDomainUrls(Ljava/util/List;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/firewall/DomainFilter;->createDomainSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v20

    .local v20, "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, v20

    invoke-interface {v0, v8}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    move-result v22

    or-int v9, v9, v22

    .restart local v9    # "hasRulesToDelete":Z
    :goto_7
    if-eqz v9, :cond_f

    const-string v22, ";"

    move-object/from16 v0, v22

    invoke-static {v0, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    const-string v22, ";"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v21

    const-string v22, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    const-string v22, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "DomainFilterTable"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->delete(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v22

    if-gtz v22, :cond_10

    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "Failed to remove/update rule from the database."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    goto/16 :goto_5

    .end local v5    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v20    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_d
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .restart local v5    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    or-int/lit8 v9, v9, 0x1

    .local v9, "hasRulesToDelete":I
    goto :goto_6

    .end local v9    # "hasRulesToDelete":I
    :cond_e
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .restart local v20    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    or-int/lit8 v9, v9, 0x1

    .local v9, "hasRulesToDelete":Z
    goto :goto_7

    :cond_f
    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->NO_CHANGES:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "The rule is not in the database."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    goto/16 :goto_4

    :cond_10
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "The rule was successfuly removed/updated."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    goto/16 :goto_5

    :cond_11
    const-string v22, "blacklist"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v22, "whitelist"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/firewall/DomainFilter;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v22, v0

    const-string v23, "DomainFilterTable"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->put(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v22

    if-nez v22, :cond_12

    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->FAILED:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->DATABASE_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "Failed to remove/update rule from the database."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    :goto_8
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v22, Lcom/sec/enterprise/firewall/FirewallResponse;

    sget-object v23, Lcom/sec/enterprise/firewall/FirewallResponse$Result;->SUCCESS:Lcom/sec/enterprise/firewall/FirewallResponse$Result;

    sget-object v24, Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;->NO_ERROR:Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;

    const-string v25, "The rule was successfuly removed/updated."

    invoke-direct/range {v22 .. v25}, Lcom/sec/enterprise/firewall/FirewallResponse;-><init>(Lcom/sec/enterprise/firewall/FirewallResponse$Result;Lcom/sec/enterprise/firewall/FirewallResponse$ErrorCode;Ljava/lang/String;)V

    aput-object v22, v12, v10

    goto :goto_8

    .end local v5    # "blackListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v6    # "blackListInDB":Ljava/lang/String;
    .end local v7    # "domainListBlack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "domainListWhite":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "hasRulesToDelete":Z
    .end local v11    # "packageName":Ljava/lang/String;
    .end local v14    # "rule":Lcom/sec/enterprise/firewall/DomainFilterRule;
    .end local v16    # "signature":Ljava/lang/String;
    .end local v17    # "signatureInDB":Ljava/lang/String;
    .end local v20    # "whiteListFromDBSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v21    # "whiteListInDB":Ljava/lang/String;
    :cond_13
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-nez v22, :cond_1

    const-string v22, "REMOVE"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/enterprise/firewall/DomainFilter;->updateDaemonCache(Landroid/app/enterprise/ContextInfo;Ljava/util/List;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method
