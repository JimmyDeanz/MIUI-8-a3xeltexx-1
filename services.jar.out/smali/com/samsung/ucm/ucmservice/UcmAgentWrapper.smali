.class public Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
.super Ljava/lang/Object;
.source "UcmAgentWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    }
.end annotation


# static fields
.field private static final AGENT_META_DATA:Ljava/lang/String; = "com.samsung.ucm.agent"

.field private static final AGENT_XML_TAG:Ljava/lang/String; = "cred-agent"

.field private static final DEBUG:Z

.field private static final MSG_RESTART_TIMEOUT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "UcmAgentWrapper"


# instance fields
.field private RESTART_TIMEOUT_MILLIS:J

.field componentName:Landroid/content/ComponentName;

.field info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

.field private mBound:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

.field private mUcsAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-string/jumbo v0, "eng"

    const-string/jumbo v1, "ro.build.type"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/ucm/ucmservice/CredentialManagerService;Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .param p3, "comp"    # Landroid/content/ComponentName;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->RESTART_TIMEOUT_MILLIS:J

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    .line 48
    new-instance v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$1;

    invoke-direct {v0, p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$1;-><init>(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mHandler:Landroid/os/Handler;

    .line 133
    new-instance v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;

    invoke-direct {v0, p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$2;-><init>(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    .line 77
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    .line 79
    iput-object p3, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Lcom/samsung/ucm/ucmservice/CredentialManagerService;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mService:Lcom/samsung/ucm/ucmservice/CredentialManagerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;)Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    .param p1, "x1"    # Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcsAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->scheduleRestart()V

    return-void
.end method

.method public static getAgentInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    .locals 25
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 169
    if-nez p1, :cond_1

    .line 170
    const-string v21, "UcmAgentWrapper"

    const-string v22, "Context is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v3, 0x0

    .line 340
    :cond_0
    :goto_0
    return-object v3

    .line 174
    :cond_1
    if-eqz p0, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v21, v0

    if-nez v21, :cond_3

    .line 176
    :cond_2
    const-string v21, "UcmAgentWrapper"

    const-string/jumbo v22, "resolveInfo null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v3, 0x0

    goto :goto_0

    .line 179
    :cond_3
    const/4 v7, 0x0

    .line 180
    .local v7, "cn":Ljava/lang/String;
    new-instance v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    invoke-direct {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;-><init>()V

    .line 181
    .local v3, "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    .line 182
    .local v15, "pm":Landroid/content/pm/PackageManager;
    const/4 v12, 0x0

    .line 183
    .local v12, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v6, 0x0

    .line 185
    .local v6, "caughtException":Ljava/lang/Exception;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    const-string v22, "com.samsung.ucm.agent"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 186
    if-nez v12, :cond_4

    .line 187
    const-string v21, "UcmAgentWrapper"

    const-string v22, "Can\'t find com.samsung.ucm.agent meta-data"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    const/4 v3, 0x0

    .line 332
    .end local v3    # "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    if-eqz v12, :cond_0

    .line 333
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 190
    .restart local v3    # "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v19

    .line 194
    .local v19, "res":Landroid/content/res/Resources;
    :cond_5
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v20

    .local v20, "type":I
    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_6

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 196
    :cond_6
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 197
    .local v11, "nodeName":Ljava/lang/String;
    const-string/jumbo v21, "cred-agent"

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_7

    .line 198
    const-string v21, "UcmAgentWrapper"

    const-string v22, "Meta-data does not start with tag cred-agent"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    const/4 v3, 0x0

    .line 332
    .end local v3    # "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    if-eqz v12, :cond_0

    .line 333
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 202
    .restart local v3    # "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    :cond_7
    const/16 v21, 0x0

    :try_start_2
    const-string/jumbo v22, "id"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    .line 203
    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    .line 205
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ":"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->agentId:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    .line 210
    const/16 v21, 0x0

    const-string/jumbo v22, "summary"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->summary:Ljava/lang/String;

    .line 211
    const/16 v21, 0x0

    const-string/jumbo v22, "title"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->title:Ljava/lang/String;

    .line 212
    const/16 v21, 0x0

    const-string/jumbo v22, "vendorId"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->vendorId:Ljava/lang/String;

    .line 213
    const-string/jumbo v21, "true"

    const/16 v22, 0x0

    const-string/jumbo v23, "isDetachable"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isDetachable:Z

    .line 214
    const-string/jumbo v21, "true"

    const/16 v22, 0x0

    const-string/jumbo v23, "reqUserVerification"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->reqUserVerification:Z

    .line 215
    const-string/jumbo v21, "true"

    const/16 v22, 0x0

    const-string/jumbo v23, "isHardwareBacked"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isHardwareBacked:Z

    .line 216
    const-string/jumbo v21, "true"

    const/16 v22, 0x0

    const-string/jumbo v23, "isReadOnly"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isReadOnly:Z

    .line 218
    sget-boolean v21, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->DEBUG:Z

    if-eqz v21, :cond_8

    const-string v21, "UcmAgentWrapper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "DETAILED agentInfo information : isDetachable = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    const-string/jumbo v24, "isDetachable"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " requireUserVerification = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    const-string/jumbo v24, "reqUserVerification"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " isHardwareBacked = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    const-string/jumbo v24, "isHardwareBacked"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " isReadOnly = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const/16 v23, 0x0

    const-string/jumbo v24, "isReadOnly"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " packageName = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_8
    const/16 v21, 0x0

    const-string v22, "configuratorList"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->configuratorList:Ljava/lang/String;

    .line 223
    const/16 v21, 0x0

    const-string/jumbo v22, "isManageable"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 224
    .local v10, "isManageable":Ljava/lang/String;
    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_d

    const-string/jumbo v21, "false"

    move-object/from16 v0, v21

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_d

    .line 225
    const/16 v21, 0x0

    move/from16 v0, v21

    iput-boolean v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isManageable:Z

    .line 229
    :goto_1
    const-string/jumbo v21, "true"

    const/16 v22, 0x0

    const-string/jumbo v23, "enforceManagement"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enforceManagement:Z

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v21, v0

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->serviceUid:I

    .line 233
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->packageName:Ljava/lang/String;

    .line 235
    const/16 v21, 0x0

    const-string/jumbo v22, "pinMinimum"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 236
    .local v14, "pinMinLength":Ljava/lang/String;
    if-eqz v14, :cond_e

    .line 237
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I

    .line 243
    :goto_2
    const/16 v21, 0x0

    const-string/jumbo v22, "pinMaximum"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 244
    .local v13, "pinMaxLength":Ljava/lang/String;
    if-eqz v13, :cond_f

    .line 245
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I

    .line 251
    :goto_3
    const/16 v21, 0x0

    const-string/jumbo v22, "pukMinimum"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 252
    .local v18, "pukMinLength":Ljava/lang/String;
    if-eqz v18, :cond_10

    .line 253
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I

    .line 259
    :goto_4
    const/16 v21, 0x0

    const-string/jumbo v22, "pukMaximum"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 260
    .local v17, "pukMaxLength":Ljava/lang/String;
    if-eqz v17, :cond_12

    .line 261
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    .line 267
    :goto_5
    const/16 v21, 0x0

    const-string/jumbo v22, "pinRetrycount"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 268
    .local v4, "authMaxCnt":Ljava/lang/String;
    if-eqz v4, :cond_13

    .line 269
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    .line 275
    :goto_6
    const/16 v21, 0x0

    const-string v22, "checkMode"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 276
    .local v5, "authMode":Ljava/lang/String;
    if-eqz v5, :cond_14

    .line 277
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    .line 283
    :goto_7
    const-string/jumbo v21, "true"

    const/16 v22, 0x0

    const-string/jumbo v23, "isGeneratePasswordSupport"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isGeneratePasswordAvailable:Z

    .line 286
    const-string/jumbo v21, "true"

    const/16 v22, 0x0

    const-string/jumbo v23, "isODESupport"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    move/from16 v0, v21

    iput-boolean v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isODESupport:Z

    .line 289
    const/16 v21, 0x0

    const-string/jumbo v22, "settingsActivity"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 290
    if-eqz v7, :cond_a

    const/16 v21, 0x2f

    move/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v21

    if-gez v21, :cond_a

    .line 291
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 293
    :cond_a
    if-nez v7, :cond_15

    const/16 v21, 0x0

    :goto_8
    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->settingsComponentName:Landroid/content/ComponentName;

    .line 297
    const/16 v21, 0x0

    const-string/jumbo v22, "storageType"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->storageType:Ljava/lang/String;

    .line 300
    const/16 v21, 0x0

    const-string/jumbo v22, "enabledSCP"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledSCP:Ljava/lang/String;

    .line 303
    const/16 v21, 0x0

    const-string/jumbo v22, "enabledWrap"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 304
    .local v9, "enabledWrap":Ljava/lang/String;
    if-eqz v9, :cond_16

    .line 305
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledWrap:I

    .line 312
    :goto_9
    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->toString()Ljava/lang/String;

    move-result-object v16

    .line 313
    .local v16, "print":Ljava/lang/String;
    const-string v21, "UcmAgentWrapper"

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/16 v21, 0x0

    const-string v22, "AID"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "AID":Ljava/lang/String;
    if-eqz v2, :cond_17

    const/16 v21, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_17

    .line 318
    invoke-static {v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v21

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 332
    :goto_a
    if-eqz v12, :cond_b

    .line 333
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 335
    .end local v2    # "AID":Ljava/lang/String;
    .end local v4    # "authMaxCnt":Ljava/lang/String;
    .end local v5    # "authMode":Ljava/lang/String;
    .end local v9    # "enabledWrap":Ljava/lang/String;
    .end local v10    # "isManageable":Ljava/lang/String;
    .end local v11    # "nodeName":Ljava/lang/String;
    .end local v13    # "pinMaxLength":Ljava/lang/String;
    .end local v14    # "pinMinLength":Ljava/lang/String;
    .end local v16    # "print":Ljava/lang/String;
    .end local v17    # "pukMaxLength":Ljava/lang/String;
    .end local v18    # "pukMinLength":Ljava/lang/String;
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "type":I
    :cond_b
    :goto_b
    if-eqz v6, :cond_18

    .line 336
    const-string v21, "UcmAgentWrapper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Error parsing : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 337
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 207
    .restart local v11    # "nodeName":Ljava/lang/String;
    .restart local v19    # "res":Landroid/content/res/Resources;
    .restart local v20    # "type":I
    :cond_c
    :try_start_3
    const-string v21, "UcmAgentWrapper"

    const-string v22, "Agent Id can\'t be null.."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 208
    const/4 v3, 0x0

    .line 332
    .end local v3    # "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    if-eqz v12, :cond_0

    .line 333
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .line 227
    .restart local v3    # "agentInfo":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;
    .restart local v10    # "isManageable":Ljava/lang/String;
    :cond_d
    const/16 v21, 0x1

    :try_start_4
    move/from16 v0, v21

    iput-boolean v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->isManageable:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 325
    .end local v10    # "isManageable":Ljava/lang/String;
    .end local v11    # "nodeName":Ljava/lang/String;
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "type":I
    :catch_0
    move-exception v8

    .line 326
    .local v8, "e":Ljava/io/IOException;
    move-object v6, v8

    .line 332
    if-eqz v12, :cond_b

    .line 333
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_b

    .line 239
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v10    # "isManageable":Ljava/lang/String;
    .restart local v11    # "nodeName":Ljava/lang/String;
    .restart local v14    # "pinMinLength":Ljava/lang/String;
    .restart local v19    # "res":Landroid/content/res/Resources;
    .restart local v20    # "type":I
    :cond_e
    :try_start_5
    const-string v21, "UcmAgentWrapper"

    const-string/jumbo v22, "pinMinLength in xml is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/16 v21, 0x4

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMinLength:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_2

    .line 327
    .end local v10    # "isManageable":Ljava/lang/String;
    .end local v11    # "nodeName":Ljava/lang/String;
    .end local v14    # "pinMinLength":Ljava/lang/String;
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "type":I
    :catch_1
    move-exception v8

    .line 328
    .local v8, "e":Lorg/xmlpull/v1/XmlPullParserException;
    move-object v6, v8

    .line 332
    if-eqz v12, :cond_b

    .line 333
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_b

    .line 247
    .end local v8    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v10    # "isManageable":Ljava/lang/String;
    .restart local v11    # "nodeName":Ljava/lang/String;
    .restart local v13    # "pinMaxLength":Ljava/lang/String;
    .restart local v14    # "pinMinLength":Ljava/lang/String;
    .restart local v19    # "res":Landroid/content/res/Resources;
    .restart local v20    # "type":I
    :cond_f
    :try_start_6
    const-string v21, "UcmAgentWrapper"

    const-string/jumbo v22, "pinMaxLength in xml is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/16 v21, 0x6

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pinMaxLength:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 329
    .end local v10    # "isManageable":Ljava/lang/String;
    .end local v11    # "nodeName":Ljava/lang/String;
    .end local v13    # "pinMaxLength":Ljava/lang/String;
    .end local v14    # "pinMinLength":Ljava/lang/String;
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "type":I
    :catch_2
    move-exception v8

    .line 330
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v6, v8

    .line 332
    if-eqz v12, :cond_b

    .line 333
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_b

    .line 255
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v10    # "isManageable":Ljava/lang/String;
    .restart local v11    # "nodeName":Ljava/lang/String;
    .restart local v13    # "pinMaxLength":Ljava/lang/String;
    .restart local v14    # "pinMinLength":Ljava/lang/String;
    .restart local v18    # "pukMinLength":Ljava/lang/String;
    .restart local v19    # "res":Landroid/content/res/Resources;
    .restart local v20    # "type":I
    :cond_10
    :try_start_7
    const-string v21, "UcmAgentWrapper"

    const-string/jumbo v22, "pukMinLength in xml is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/16 v21, 0x8

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMinLength:I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_4

    .line 332
    .end local v10    # "isManageable":Ljava/lang/String;
    .end local v11    # "nodeName":Ljava/lang/String;
    .end local v13    # "pinMaxLength":Ljava/lang/String;
    .end local v14    # "pinMinLength":Ljava/lang/String;
    .end local v18    # "pukMinLength":Ljava/lang/String;
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "type":I
    :catchall_0
    move-exception v21

    if-eqz v12, :cond_11

    .line 333
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_11
    throw v21

    .line 263
    .restart local v10    # "isManageable":Ljava/lang/String;
    .restart local v11    # "nodeName":Ljava/lang/String;
    .restart local v13    # "pinMaxLength":Ljava/lang/String;
    .restart local v14    # "pinMinLength":Ljava/lang/String;
    .restart local v17    # "pukMaxLength":Ljava/lang/String;
    .restart local v18    # "pukMinLength":Ljava/lang/String;
    .restart local v19    # "res":Landroid/content/res/Resources;
    .restart local v20    # "type":I
    :cond_12
    :try_start_8
    const-string v21, "UcmAgentWrapper"

    const-string/jumbo v22, "pukMaxLength in xml is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const/16 v21, 0x14

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->pukMaxLength:I

    goto/16 :goto_5

    .line 271
    .restart local v4    # "authMaxCnt":Ljava/lang/String;
    :cond_13
    const-string v21, "UcmAgentWrapper"

    const-string v22, "authMaxCnt in xml is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const/16 v21, 0x5

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMaxCnt:I

    goto/16 :goto_6

    .line 279
    .restart local v5    # "authMode":Ljava/lang/String;
    :cond_14
    const-string v21, "UcmAgentWrapper"

    const-string v22, "authMode in xml is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->authMode:I

    goto/16 :goto_7

    .line 293
    :cond_15
    invoke-static {v7}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v21

    goto/16 :goto_8

    .line 307
    .restart local v9    # "enabledWrap":Ljava/lang/String;
    :cond_16
    const-string v21, "UcmAgentWrapper"

    const-string/jumbo v22, "enabledWrap in xml is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->enabledWrap:I

    goto/16 :goto_9

    .line 320
    .restart local v2    # "AID":Ljava/lang/String;
    .restart local v16    # "print":Ljava/lang/String;
    :cond_17
    const-string v21, "UcmAgentWrapper"

    const-string v22, "AID in xml is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->AID:[B
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_a

    .line 339
    .end local v2    # "AID":Ljava/lang/String;
    .end local v4    # "authMaxCnt":Ljava/lang/String;
    .end local v5    # "authMode":Ljava/lang/String;
    .end local v9    # "enabledWrap":Ljava/lang/String;
    .end local v10    # "isManageable":Ljava/lang/String;
    .end local v11    # "nodeName":Ljava/lang/String;
    .end local v13    # "pinMaxLength":Ljava/lang/String;
    .end local v14    # "pinMinLength":Ljava/lang/String;
    .end local v16    # "print":Ljava/lang/String;
    .end local v17    # "pukMaxLength":Ljava/lang/String;
    .end local v18    # "pukMinLength":Ljava/lang/String;
    .end local v19    # "res":Landroid/content/res/Resources;
    .end local v20    # "type":I
    :cond_18
    const-string v21, "UcmAgentWrapper"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "agentInfo: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v3}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method static getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 128
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_1

    .line 129
    :cond_0
    const/4 v0, 0x0

    .line 130
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x10

    .line 345
    sget-boolean v3, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "UcmAgentWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hexStringToByteArray : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 347
    :cond_1
    const-string v3, "UcmAgentWrapper"

    const-string v4, "Input value is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v0, 0x0

    .line 356
    :cond_2
    return-object v0

    .line 350
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 351
    .local v2, "len":I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 352
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 353
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 352
    add-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method private scheduleRestart()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 155
    const-string v0, "UcmAgentWrapper"

    const-string/jumbo v1, "scheduleRestart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 157
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mHandler:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->RESTART_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 158
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 64
    instance-of v1, p1, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    if-nez v1, :cond_0

    .line 65
    const/4 v1, 0x0

    .line 68
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 67
    check-cast v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;

    .line 68
    .local v0, "o":Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;
    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getUcsAgent()Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcsAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public initialize(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;)V
    .locals 8
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    const-wide/32 v6, 0x1d4c0

    .line 87
    invoke-static {p1}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getComponentName(Landroid/content/pm/ResolveInfo;)Landroid/content/ComponentName;

    move-result-object v1

    .line 88
    .local v1, "name":Landroid/content/ComponentName;
    const-string v2, "UcmAgentWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initialize "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " user: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->getAgentInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    .line 90
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 93
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    const-string v3, "com.samsung.ucs.agent.boot:com.samsung.ucs.agent.boot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    iput-wide v6, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->RESTART_TIMEOUT_MILLIS:J

    .line 98
    :cond_0
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->info:Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;

    iget-object v2, v2, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper$AgentInfo;->id:Ljava/lang/String;

    const-string v3, "com.samsung.ucs.agent.boot"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    iput-wide v6, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->RESTART_TIMEOUT_MILLIS:J

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->scheduleRestart()V

    .line 104
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 105
    iget-object v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4, p2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    .line 107
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    if-nez v2, :cond_3

    .line 108
    const-string v2, "UcmAgentWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "not able to bind "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_3
    return-void
.end method

.method public unbind()V
    .locals 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    if-nez v0, :cond_0

    .line 117
    const-string v0, "UcmAgentWrapper"

    const-string/jumbo v1, "it is not bound anymore"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string v0, "UcmAgentWrapper"

    const-string/jumbo v1, "unbind "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mBound:Z

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/ucm/ucmservice/UcmAgentWrapper;->mUcsAgentService:Lcom/sec/enterprise/knox/ucm/plugin/agent/IUcmAgentService;

    goto :goto_0
.end method
