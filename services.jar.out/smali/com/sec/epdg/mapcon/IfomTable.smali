.class public Lcom/sec/epdg/mapcon/IfomTable;
.super Ljava/lang/Object;
.source "IfomTable.java"


# static fields
.field private static mInstance:Lcom/sec/epdg/mapcon/IfomTable;


# instance fields
.field private mIfomMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;",
            "Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mOperatorNumeric:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/epdg/mapcon/IfomTable;->mInstance:Lcom/sec/epdg/mapcon/IfomTable;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-string/jumbo v0, "gsm.sim.operator.numeric"

    const-string/jumbo v1, "none"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/epdg/mapcon/IfomTable;->mOperatorNumeric:Ljava/lang/String;

    .line 27
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/sec/epdg/mapcon/IfomTable;->mIfomMap:Ljava/util/EnumMap;

    .line 231
    return-void
.end method

.method private declared-synchronized addToApplicationMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/EnumMap;
    .locals 17
    .param p1, "appStr"    # Ljava/lang/String;
    .param p2, "ratTypeStr"    # Ljava/lang/String;
    .param p3, "apnTypeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;",
            "Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    const-string v14, "[MAPCON]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "addToApplicationMap: appStr is: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ratTypeStr is: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " apnTypeStr is: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v14, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppList;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppList;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppList;->getIfomAppList()Ljava/util/EnumSet;

    move-result-object v5

    .line 59
    .local v5, "appList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;>;"
    new-instance v10, Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-direct {v10, v0, v1}, Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .local v10, "policy":Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    invoke-virtual {v10}, Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;->getIfomPolicyRatList()[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v11

    .line 62
    .local v11, "ratListSorted":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v10}, Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;->getIfomPolicyApnList()Ljava/util/EnumSet;

    move-result-object v3

    .line 64
    .local v3, "apnList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;>;"
    new-instance v12, Ljava/lang/String;

    const-string v14, "Added policy : "

    invoke-direct {v12, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 66
    .local v12, "str":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    .line 67
    .local v4, "app":Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/epdg/mapcon/IfomTable;->mIfomMap:Ljava/util/EnumMap;

    invoke-virtual {v14, v4}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/epdg/mapcon/IfomTable;->mIfomMap:Ljava/util/EnumMap;

    invoke-virtual {v14, v4, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "application: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " rat: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 70
    move-object v6, v11

    .local v6, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v9, :cond_0

    aget-object v13, v6, v8

    .line 71
    .local v13, "test":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 70
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 73
    .end local v13    # "test":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " apn: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 74
    invoke-virtual {v3}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 75
    .local v2, "apn":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 76
    goto :goto_2

    .line 77
    .end local v2    # "apn":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    :cond_1
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 78
    goto/16 :goto_0

    .line 79
    .end local v4    # "app":Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    .end local v6    # "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "len$":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/epdg/mapcon/IfomTable;->mIfomMap:Ljava/util/EnumMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v14

    .line 55
    .end local v3    # "apnList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;>;"
    .end local v5    # "appList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;>;"
    .end local v10    # "policy":Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    .end local v11    # "ratListSorted":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .end local v12    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14
.end method

.method private declared-synchronized getApplicationApn(Ljava/lang/String;)Ljava/util/EnumSet;
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/IfomTable;->getApplicationPolicy(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 93
    .local v0, "policy":Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    if-nez v0, :cond_0

    .line 94
    const/4 v1, 0x0

    .line 96
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;->getIfomPolicyApnList()Ljava/util/EnumSet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 92
    .end local v0    # "policy":Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getApplicationPolicy(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->getIfomAppType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 101
    .local v0, "app":Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    if-nez v0, :cond_0

    .line 102
    const/4 v1, 0x0

    .line 104
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/epdg/mapcon/IfomTable;->mIfomMap:Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    .end local v0    # "app":Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .locals 2
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/IfomTable;->getApplicationPolicy(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 84
    .local v0, "policy":Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    if-nez v0, :cond_0

    .line 85
    const/4 v1, 0x0

    .line 87
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;->getIfomPolicyRatList()[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 83
    .end local v0    # "policy":Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/mapcon/IfomTable;
    .locals 2

    .prologue
    .line 225
    const-class v1, Lcom/sec/epdg/mapcon/IfomTable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/epdg/mapcon/IfomTable;->mInstance:Lcom/sec/epdg/mapcon/IfomTable;

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Lcom/sec/epdg/mapcon/IfomTable;

    invoke-direct {v0}, Lcom/sec/epdg/mapcon/IfomTable;-><init>()V

    sput-object v0, Lcom/sec/epdg/mapcon/IfomTable;->mInstance:Lcom/sec/epdg/mapcon/IfomTable;

    .line 228
    :cond_0
    sget-object v0, Lcom/sec/epdg/mapcon/IfomTable;->mInstance:Lcom/sec/epdg/mapcon/IfomTable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 225
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized IsLteOnlyAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/IfomTable;->getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 202
    .local v0, "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    if-nez v0, :cond_0

    .line 203
    const/4 v1, 0x0

    .line 205
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isLteOnlyAllowed([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 201
    .end local v0    # "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized IsWifiOnlyAllowed(Ljava/lang/String;)Z
    .locals 2
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 194
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/IfomTable;->getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 195
    .local v0, "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    if-nez v0, :cond_0

    .line 196
    const/4 v1, 0x0

    .line 198
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isIwlanOnlyAllowed([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 194
    .end local v0    # "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public checkIsRuleforApn(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 159
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/IfomTable;->getApplicationApn(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    .line 160
    .local v0, "apnList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;>;"
    const-string v5, "[MAPCON]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIsRuleforApn: appStr is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " apnType is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    if-nez v0, :cond_1

    .line 175
    :cond_0
    :goto_0
    return v4

    .line 166
    :cond_1
    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 167
    .local v3, "test":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    const-string v5, "[MAPCON]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "apn :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 170
    .end local v3    # "test":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    :cond_2
    invoke-static {p2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v1

    .line 172
    .local v1, "apnType":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public declared-synchronized createIfomTable(Landroid/content/Context;)Z
    .locals 14
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    const-string v1, "[MAPCON]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "createIfomTable Operator Numeric:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/mapcon/IfomTable;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 110
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "ipflowrule"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v4, "routingrule"

    aput-object v4, v2, v1

    const/4 v1, 0x2

    const-string v4, "affectapn"

    aput-object v4, v2, v1

    .line 115
    .local v2, "projection":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "operatornumeric=\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/sec/epdg/mapcon/IfomTable;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\' AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "ipflowtype"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "=\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "apps"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, "selection":Ljava/lang/String;
    const-string/jumbo v7, "operatornumeric=\'default\' AND ipflowtype=\'apps\'"

    .line 121
    .local v7, "defaultSelection":Ljava/lang/String;
    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v12

    .line 125
    .local v12, "messagesCursor":Landroid/database/Cursor;
    if-eqz v12, :cond_0

    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_4

    .line 126
    :cond_0
    if-eqz v12, :cond_1

    .line 128
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 129
    const/4 v12, 0x0

    .line 131
    :cond_1
    const-string v1, "[MAPCON]"

    const-string/jumbo v4, "createIfomTable. Loading default IFOM "

    invoke-static {v1, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    sget-object v5, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v0

    move-object v6, v2

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 134
    if-eqz v12, :cond_2

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_4

    .line 135
    :cond_2
    const-string v1, "[MAPCON]"

    const-string v4, "Empty IFOM DB"

    invoke-static {v1, v4}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    const/4 v1, 0x0

    .line 150
    if-eqz v12, :cond_3

    .line 151
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 152
    const/4 v12, 0x0

    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    .line 139
    :cond_4
    :goto_1
    :try_start_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 140
    const-string/jumbo v1, "ipflowrule"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 142
    .local v11, "appStr":Ljava/lang/String;
    const-string/jumbo v1, "routingrule"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 144
    .local v13, "ratTypeStr":Ljava/lang/String;
    const-string v1, "affectapn"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 146
    .local v10, "apnTypeStr":Ljava/lang/String;
    sget-object v1, Lcom/sec/epdg/mapcon/IfomTable;->mInstance:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-direct {v1, v11, v13, v10}, Lcom/sec/epdg/mapcon/IfomTable;->addToApplicationMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/EnumMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 150
    .end local v10    # "apnTypeStr":Ljava/lang/String;
    .end local v11    # "appStr":Ljava/lang/String;
    .end local v13    # "ratTypeStr":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v12, :cond_5

    .line 151
    :try_start_4
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 152
    const/4 v12, 0x0

    :cond_5
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v3    # "selection":Ljava/lang/String;
    .end local v7    # "defaultSelection":Ljava/lang/String;
    .end local v12    # "messagesCursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 148
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v7    # "defaultSelection":Ljava/lang/String;
    .restart local v12    # "messagesCursor":Landroid/database/Cursor;
    :cond_6
    const/4 v1, 0x1

    .line 150
    if-eqz v12, :cond_3

    .line 151
    :try_start_5
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 152
    const/4 v12, 0x0

    goto :goto_0
.end method

.method public declared-synchronized shouldLeaveFromWIFIInNoLte(Ljava/lang/String;)Z
    .locals 2
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 217
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/IfomTable;->getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 218
    .local v0, "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    if-nez v0, :cond_0

    .line 219
    const/4 v1, 0x0

    .line 221
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isCsPreceedsIwlan([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 217
    .end local v0    # "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized shouldMoveToLte(Ljava/lang/String;)Z
    .locals 2
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 186
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/IfomTable;->getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 187
    .local v0, "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    if-nez v0, :cond_0

    .line 188
    const/4 v1, 0x0

    .line 190
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isLtePreceedsIwlan([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 186
    .end local v0    # "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized shouldMoveToWifi(Ljava/lang/String;)Z
    .locals 2
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/IfomTable;->getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 180
    .local v0, "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    if-nez v0, :cond_0

    .line 181
    const/4 v1, 0x0

    .line 183
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isIwlanPreceedsLte([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 179
    .end local v0    # "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized shouldMoveToWifiInNoLte(Ljava/lang/String;)Z
    .locals 2
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 209
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sec/epdg/mapcon/IfomTable;->getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 210
    .local v0, "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    if-nez v0, :cond_0

    .line 211
    const/4 v1, 0x0

    .line 213
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isIwlanPreceedsCs([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 209
    .end local v0    # "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 13

    .prologue
    .line 32
    monitor-enter p0

    :try_start_0
    new-instance v10, Ljava/lang/String;

    const-string v11, "Application Policy\n"

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 33
    .local v10, "str":Ljava/lang/String;
    iget-object v11, p0, Lcom/sec/epdg/mapcon/IfomTable;->mIfomMap:Ljava/util/EnumMap;

    invoke-virtual {v11}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 34
    .local v5, "keySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 35
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    .line 36
    .local v2, "app":Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    iget-object v11, p0, Lcom/sec/epdg/mapcon/IfomTable;->mIfomMap:Ljava/util/EnumMap;

    invoke-virtual {v11, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;

    .line 37
    .local v7, "policy":Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    invoke-virtual {v7}, Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;->getIfomPolicyRatList()[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v9

    .line 38
    .local v9, "ratList":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v7}, Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;->getIfomPolicyApnList()Ljava/util/EnumSet;

    move-result-object v1

    .line 39
    .local v1, "apnList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " -- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 40
    move-object v3, v9

    .local v3, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v8, v3, v4

    .line 41
    .local v8, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 40
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 43
    .end local v8    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " -- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 45
    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 46
    .local v0, "apn":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 47
    goto :goto_2

    .line 48
    .end local v0    # "apn":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    :cond_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 49
    goto/16 :goto_0

    .line 50
    .end local v1    # "apnList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;>;"
    .end local v2    # "app":Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    .end local v3    # "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "len$":I
    .end local v7    # "policy":Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    .end local v9    # "ratList":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_2
    monitor-exit p0

    return-object v10

    .line 32
    .end local v5    # "keySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;>;"
    .end local v10    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method public updateIfomTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "rule"    # Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .prologue
    .line 235
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 236
    .local v1, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "routingrule"

    invoke-virtual {p3}, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "operatornumeric=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/epdg/mapcon/IfomTable;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" AND "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ipflowrule"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "selection":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 244
    :cond_0
    return-void
.end method

.method public updateIfomTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "ruleList"    # [Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .prologue
    .line 248
    array-length v2, p2

    .line 249
    .local v2, "size":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .local v0, "builder":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    if-lez v2, :cond_1

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v2, v2, -0x1

    aget-object v5, p2, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    if-lez v2, :cond_0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 254
    :cond_1
    const-string v4, "[MAPCON]"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateIfomTable: size is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "builder is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 256
    .local v3, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "routingrule"

    invoke-virtual {p3}, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "operatornumeric=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/epdg/mapcon/IfomTable;->mOperatorNumeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "ipflowrule"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "selection":Ljava/lang/String;
    if-eqz p1, :cond_2

    .line 261
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v3, v1, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 265
    :cond_2
    return-void
.end method
