.class Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
.super Landroid/os/Handler;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersonaHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "PersonaManagerServiceHandler"

.field public static final WAKE_LOCK_FLAG:Ljava/lang/String; = "flag"

.field public static final WAKE_LOCK_PACKAGE:Ljava/lang/String; = "package"

.field public static final WAKE_LOCK_PID:Ljava/lang/String; = "pid"

.field public static final WAKE_LOCK_TYPE:Ljava/lang/String; = "type"

.field public static final WAKE_LOCK_UID:Ljava/lang/String; = "uid"


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v0, "PersonaHandler"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/pm/PersonaManagerService;->access$1300(Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$8800(Lcom/android/server/pm/PersonaManagerService$PersonaHandler;I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v0

    return-object v0
.end method

.method private filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .locals 7
    .param p1, "containerId"    # I

    .prologue
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$4200(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->parseEnterprisedataXml()V

    :cond_1
    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    .local v3, "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    invoke-virtual {v3}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getPersonaList()Ljava/util/List;

    move-result-object v4

    .local v4, "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, "i":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, p1, :cond_3

    .end local v0    # "i":Ljava/lang/Integer;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "obj":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v4    # "pList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_0
    return-object v3

    :cond_4
    const-string v5, "PersonaManagerService"

    const-string v6, "filterTypeByContainerId mTypeList is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private parseEnterprisedataXml()V
    .locals 9

    .prologue
    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$4200(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    const-string v6, "PersonaManagerService"

    const-string v7, "reading from xml resource"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/pm/PersonaManagerService;->TYPE_FILE_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$4300()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "enterprisedata.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "in":Ljava/io/InputStream;
    .local v4, "in":Ljava/io/InputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    invoke-direct {v1, v5}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .local v1, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v7

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$4402(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)Ljava/util/List;

    iget-object v6, p0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    invoke-static {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$4202(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v4

    .end local v1    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v4    # "in":Ljava/io/InputStream;
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "in":Ljava/io/InputStream;
    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_1
    return-void

    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "in":Ljava/io/InputStream;
    :cond_1
    :try_start_3
    const-string v6, "PersonaManagerService"

    const-string v7, "Failed to find enterprisedata.xml in system container"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .end local v2    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v6, "PersonaManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to parse enterprisedata - Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    :catch_1
    move-exception v6

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    :goto_3
    if-eqz v3, :cond_2

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_2
    :goto_4
    throw v6

    .restart local v2    # "file":Ljava/io/File;
    :catch_2
    move-exception v6

    goto :goto_1

    .end local v2    # "file":Ljava/io/File;
    :catch_3
    move-exception v7

    goto :goto_4

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_3

    .end local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "in":Ljava/io/InputStream;
    :catch_4
    move-exception v0

    move-object v3, v4

    .end local v4    # "in":Ljava/io/InputStream;
    .restart local v3    # "in":Ljava/io/InputStream;
    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 120
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-string v4, "PersonaHandler"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1300(Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    and-int/lit16 v4, v4, 0x1388

    const/16 v5, 0x1388

    if-ne v4, v5, :cond_1

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    add-int/lit16 v10, v4, -0x1388

    .local v10, "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->propagateOnSessionExpired(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v85

    .local v85, "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v85, :cond_1

    move-object/from16 v0, v85

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .local v29, "currentUser":Ljava/lang/Integer;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "locking persona due to session expiry."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaNewEvent;->USER_UNLOCK:Landroid/content/pm/PersonaNewEvent;

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/16 v5, 0x2648

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(II)V
    invoke-static {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;II)V

    .end local v10    # "personaId":I
    .end local v29    # "currentUser":Ljava/lang/Integer;
    .end local v85    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_1
    :goto_1
    return-void

    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v41, v0

    .local v41, "event":I
    if-eqz v41, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v84

    .local v84, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .local v49, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/content/pm/PersonaInfo;

    .local v73, "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v73, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v4

    move-object/from16 v0, v73

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Ljava/lang/Long;

    .local v48, "i":Ljava/lang/Long;
    if-eqz v48, :cond_2

    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_CANCEL_TIMER_IN_USER_ACTIVITY called :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v73

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v73

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto :goto_2

    .end local v41    # "event":I
    .end local v48    # "i":Ljava/lang/Long;
    .end local v49    # "i$":Ljava/util/Iterator;
    .end local v73    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v84    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_2
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_CALL_KNOX_HELP_POPUP called :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    new-instance v56, Landroid/content/Intent;

    invoke-direct/range {v56 .. v56}, Landroid/content/Intent;-><init>()V

    .local v56, "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.knox.containeragent2"

    const-string v6, "com.sec.knox.containeragent2.ui.help.KnoxHelpLauncher"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v10}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v56

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v34

    .local v34, "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PersonaHandler > MSG_CALL_KNOX_HELP_POPUP Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v10    # "personaId":I
    .end local v34    # "e":Ljava/lang/Exception;
    .end local v56    # "intent":Landroid/content/Intent;
    :pswitch_3
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_SCHEDULE_TIMER_IN_HANDLER called :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto/16 :goto_0

    .end local v10    # "personaId":I
    :pswitch_4
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_STOP_TIMER called :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v46, v0

    .local v46, "force":I
    const/4 v4, 0x1

    move/from16 v0, v46

    if-eq v0, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$1700(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .end local v10    # "personaId":I
    .end local v46    # "force":I
    :pswitch_5
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_LOCK_TIME_EXPIRED called :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(IZ)V
    invoke-static {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->access$1800(Lcom/android/server/pm/PersonaManagerService;IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .end local v10    # "personaId":I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/os/Bundle;

    .local v21, "b":Landroid/os/Bundle;
    const-string v4, "type"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v113

    .local v113, "type":Z
    const-string v4, "flag"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v45

    .local v45, "flag":I
    const-string v4, "uid"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v114

    .local v114, "uid":I
    const-string v4, "pid"

    const/4 v5, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v86

    .local v86, "pid":I
    invoke-static/range {v114 .. v114}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v116

    .local v116, "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v113

    move/from16 v1, v45

    move/from16 v2, v114

    move/from16 v3, v116

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/server/pm/PersonaManagerService;->handleWakeLockChange(ZIII)V

    goto/16 :goto_0

    .end local v21    # "b":Landroid/os/Bundle;
    .end local v45    # "flag":I
    .end local v86    # "pid":I
    .end local v113    # "type":Z
    .end local v114    # "uid":I
    .end local v116    # "userId":I
    :pswitch_7
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_ACTION_SCREEN_OFF called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v6, 0x1

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mScreenOff:Z
    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->access$2002(Lcom/android/server/pm/PersonaManagerService;Z)Z

    new-instance v56, Landroid/content/Intent;

    const-string v4, "com.samsung.knox.kss.screenOff"

    move-object/from16 v0, v56

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v56    # "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v6, "com.samsung.knox.kss"

    const-string v7, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v4, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v4, "screenOff"

    const/4 v6, 0x1

    move-object/from16 v0, v56

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v84

    .restart local v84    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .restart local v49    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/content/pm/PersonaInfo;

    .restart local v73    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v73, :cond_4

    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v73

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mKeyguard:Lcom/android/server/pm/KnoxKeyguardDelegate;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/KnoxKeyguardDelegate;->getVisibleKeyguardOwner()I

    move-result v116

    .restart local v116    # "userId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    move/from16 v0, v116

    if-ne v0, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    move-object/from16 v0, v73

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-ne v4, v6, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v6, Landroid/os/UserHandle;

    move-object/from16 v0, v73

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v56

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v73

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v104

    .local v104, "sessionLength":J
    const-wide/16 v6, 0x0

    cmp-long v4, v104, v6

    if-nez v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v73

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x4

    if-ne v4, v6, :cond_6

    const-string v4, "PersonaManagerServiceHandler"

    const-string v6, "Screen Off Reason Check, OFF_BECAUSE_OF_PROX_SENSOR!"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v49    # "i$":Ljava/util/Iterator;
    .end local v56    # "intent":Landroid/content/Intent;
    .end local v73    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v84    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v104    # "sessionLength":J
    .end local v116    # "userId":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .restart local v49    # "i$":Ljava/util/Iterator;
    .restart local v56    # "intent":Landroid/content/Intent;
    .restart local v73    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v84    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v104    # "sessionLength":J
    .restart local v116    # "userId":I
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v73

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, v73

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v4, :cond_8

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "knox.power_button_instantly_locks"

    const/4 v7, 0x0

    move-object/from16 v0, v73

    iget v8, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-static {v4, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v64

    .local v64, "lockinstantly":I
    if-lez v64, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v73

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->changeStateAndSwitch(I)V
    invoke-static {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1900(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_3

    .end local v64    # "lockinstantly":I
    :cond_8
    move-object/from16 v0, v73

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v73

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_4

    const-wide/16 v6, 0x0

    cmp-long v4, v104, v6

    if-lez v4, :cond_4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .restart local v29    # "currentUser":Ljava/lang/Integer;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v73

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-eq v4, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    const/16 v6, 0x16

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v65

    .local v65, "message":Landroid/os/Message;
    move-object/from16 v0, v73

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v65

    iput v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_3

    .end local v29    # "currentUser":Ljava/lang/Integer;
    .end local v65    # "message":Landroid/os/Message;
    .end local v73    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v104    # "sessionLength":J
    .end local v116    # "userId":I
    :cond_9
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .end local v49    # "i$":Ljava/util/Iterator;
    .end local v56    # "intent":Landroid/content/Intent;
    .end local v84    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_8
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_ACTION_SCREEN_ON called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v56, Landroid/content/Intent;

    const-string v4, "com.samsung.knox.kss.screenOn"

    move-object/from16 v0, v56

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v56    # "intent":Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.knox.kss"

    const-string v6, "com.samsung.knox.kss.KnoxKeyguardReceiver"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v4, "screenOn"

    const/4 v5, 0x1

    move-object/from16 v0, v56

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mScreenOff:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$2002(Lcom/android/server/pm/PersonaManagerService;Z)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTimerMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v5

    monitor-enter v5

    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v84

    .restart local v84    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .restart local v49    # "i$":Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/content/pm/PersonaInfo;

    .restart local v73    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v73, :cond_a

    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v73

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mKeyguard:Lcom/android/server/pm/KnoxKeyguardDelegate;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2100(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/KnoxKeyguardDelegate;->getVisibleKeyguardOwner()I

    move-result v116

    .restart local v116    # "userId":I
    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "userId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v116

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    move/from16 v0, v116

    if-ne v0, v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    move-object/from16 v0, v73

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-ne v4, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v6, Landroid/os/UserHandle;

    move-object/from16 v0, v73

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v56

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v116

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->isUserHasTrust(I)Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    move/from16 v0, v116

    invoke-virtual {v4, v6, v0}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "when screen on, dismiss keyguard for user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v116

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v116

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->dismissPersonaKeyGuard(I)V

    :cond_b
    move-object/from16 v0, v73

    iget v10, v0, Landroid/content/pm/PersonaInfo;->id:I

    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v104

    .restart local v104    # "sessionLength":J
    move-object/from16 v0, v73

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v6, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v73

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/16 v6, 0x2648

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(II)V
    invoke-static {v4, v10, v6}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;II)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->isSessionExpired(I)Z

    move-result v4

    if-nez v4, :cond_a

    const-wide/16 v6, 0x0

    cmp-long v4, v104, v6

    if-lez v4, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v70

    .local v70, "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaBackgroundTime(I)J

    move-result-wide v60

    .local v60, "lastTime":J
    sub-long v32, v70, v60

    .local v32, "duration":J
    sub-long v110, v104, v32

    .local v110, "timeRemaining":J
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "timeRemaining: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v110

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    or-int/lit16 v6, v10, 0x1388

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v65

    .restart local v65    # "message":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    or-int/lit16 v6, v10, 0x1388

    invoke-virtual {v4, v6}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->removeMessages(I)V

    const-wide/16 v6, 0x1

    cmp-long v4, v110, v6

    if-gez v4, :cond_d

    const-wide/16 v110, 0x0

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move-object/from16 v0, v65

    move-wide/from16 v1, v110

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_4

    .end local v10    # "personaId":I
    .end local v32    # "duration":J
    .end local v49    # "i$":Ljava/util/Iterator;
    .end local v60    # "lastTime":J
    .end local v65    # "message":Landroid/os/Message;
    .end local v70    # "now":J
    .end local v73    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v84    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v104    # "sessionLength":J
    .end local v110    # "timeRemaining":J
    .end local v116    # "userId":I
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    .restart local v49    # "i$":Ljava/util/Iterator;
    .restart local v84    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_e
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_0

    .end local v49    # "i$":Ljava/util/Iterator;
    .end local v56    # "intent":Landroid/content/Intent;
    .end local v84    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_9
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_SETTINGS_OBSERVER_TRIGGERED called"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    .restart local v29    # "currentUser":Ljava/lang/Integer;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v84

    .restart local v84    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v84 .. v84}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .restart local v49    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/content/pm/PersonaInfo;

    .restart local v73    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v73, :cond_f

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v73

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-ne v4, v5, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v73

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IZ)V
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$1500(Lcom/android/server/pm/PersonaManagerService;IZ)V

    goto/16 :goto_0

    .end local v29    # "currentUser":Ljava/lang/Integer;
    .end local v49    # "i$":Ljava/util/Iterator;
    .end local v73    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v84    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :pswitch_a
    :try_start_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v117, v0

    .local v117, "userid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v117

    # invokes: Lcom/android/server/pm/PersonaManagerService;->checkIfAdminHasBeenRemoved(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2300(Lcom/android/server/pm/PersonaManagerService;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .end local v117    # "userid":I
    :catch_1
    move-exception v34

    .restart local v34    # "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot process DPM state change broadcast :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v34 .. v34}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v34    # "e":Ljava/lang/Exception;
    :pswitch_b
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v115, v0

    .local v115, "userHandle":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2400(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v48

    .local v48, "i":I
    :goto_5
    if-lez v48, :cond_10

    add-int/lit8 v48, v48, -0x1

    :try_start_6
    const-string v4, "PersonaManagerService"

    const-string v5, " sending remove persona event to system observers "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2400(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ISystemPersonaObserver;

    move/from16 v0, v115

    invoke-interface {v4, v0}, Landroid/content/pm/ISystemPersonaObserver;->onRemovePersona(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_5

    :catch_2
    move-exception v35

    .local v35, "e2":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception Caught:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v35 .. v35}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v35    # "e2":Ljava/lang/Exception;
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mISystemPersonaObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2400(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_0

    .end local v48    # "i":I
    .end local v115    # "userHandle":I
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getWallpaperManagerLocked()Lcom/android/server/wallpaper/WallpaperManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getWallpaperManagerLocked()Lcom/android/server/wallpaper/WallpaperManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadKnoxWallpaperSettings(I)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleSPOKnoxContainerLaunch(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2600(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleSPOPersonaActive(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2700(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleSPOResetPersona(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2800(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleSPOStateChange(Landroid/os/Message;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2900(Lcom/android/server/pm/PersonaManagerService;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_10
    const-string v4, "PersonaManagerService"

    const-string v5, "PMS. MSG_BROADCAST_KNOX_MODE_CHANGE_OBSERVER"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v115, v0

    .restart local v115    # "userHandle":I
    new-instance v56, Landroid/content/Intent;

    const-string v4, "com.sec.knox.container.INTENT_KNOX_USER_CHANGED"

    move-object/from16 v0, v56

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v56    # "intent":Landroid/content/Intent;
    const-string v4, "user_id"

    move-object/from16 v0, v56

    move/from16 v1, v115

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v56

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIKnoxModeChangeObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3000(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v48

    .restart local v48    # "i":I
    :goto_6
    if-lez v48, :cond_12

    add-int/lit8 v48, v48, -0x1

    :try_start_7
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " sending onKnoxModeChange persona event to knox observers during switch #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v48

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIKnoxModeChangeObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3000(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    move/from16 v0, v48

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Landroid/content/pm/IKnoxModeChangeObserver;

    move/from16 v0, v115

    invoke-interface {v4, v0}, Landroid/content/pm/IKnoxModeChangeObserver;->onKnoxModeChange(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    :catch_3
    move-exception v42

    .local v42, "exK":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception Caught during onKnoxModeChange:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v42 .. v42}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v42    # "exK":Ljava/lang/Exception;
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIKnoxModeChangeObserver:Landroid/os/RemoteCallbackList;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3000(Lcom/android/server/pm/PersonaManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto/16 :goto_0

    .end local v48    # "i":I
    .end local v56    # "intent":Landroid/content/Intent;
    .end local v115    # "userHandle":I
    :pswitch_11
    const-string v4, "PersonaManagerService"

    const-string v5, "PMS. MSG_PROCESS_FOCUSED_USER_CHANGE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .local v28, "currentFocusedUser":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->disableNonCoreServices:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3100(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getServiceEx()Lcom/android/server/clipboardex/ClipboardExService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3200(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/clipboardex/ClipboardExService;

    move-result-object v4

    const-string v5, "SWITCHED"

    move/from16 v0, v28

    invoke-virtual {v4, v0, v5}, Lcom/android/server/clipboardex/ClipboardExService;->multiUserMode(ILjava/lang/String;)V

    goto/16 :goto_0

    .end local v28    # "currentFocusedUser":I
    :pswitch_12
    const-string v4, "PersonaManagerService"

    const-string v5, "PMS. MSG_BROADCAST_KNOX_MODE_STATE_NOT_ACTIVE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v115, v0

    .restart local v115    # "userHandle":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v115

    # invokes: Lcom/android/server/pm/PersonaManagerService;->broadcastKnoxModeChangeIntent(I)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$3300(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .end local v115    # "userHandle":I
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPartialsForPrune:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/pm/PersonaManagerService;->access$3400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/ArrayList;

    move-result-object v5

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removePartialContainer(Ljava/util/ArrayList;)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$3500(Lcom/android/server/pm/PersonaManagerService;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :pswitch_14
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getForegroundUser()I

    move-result v4

    if-ne v4, v10, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->updateCurrentUserPolicy(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$3600(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .end local v10    # "personaId":I
    :pswitch_15
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getTimaService()Landroid/service/tima/ITimaService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3800(Lcom/android/server/pm/PersonaManagerService;)Landroid/service/tima/ITimaService;

    move-result-object v4

    invoke-interface {v4}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "2.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    # setter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$3702(Z)Z

    const-string v4, "PersonaManagerService.Tima"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Check Tima 2.0 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3700()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v5

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$3902(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/TimaHelper;)Lcom/android/server/pm/TimaHelper;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v82

    .local v82, "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    invoke-interface/range {v82 .. v82}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v49

    :cond_13
    :goto_8
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Landroid/content/pm/PersonaInfo;

    .restart local v85    # "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v85, :cond_13

    move-object/from16 v0, v85

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_13

    move-object/from16 v0, v85

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    const/4 v5, 0x1

    if-eq v4, v5, :cond_13

    move-object/from16 v0, v85

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_19

    move-object/from16 v0, v85

    iget-object v4, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    if-eqz v4, :cond_14

    move-object/from16 v0, v85

    iget-object v4, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->migrateAndCleanupSharedPreferences(I)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4000(Lcom/android/server/pm/PersonaManagerService;I)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v85

    iget-object v5, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    const/4 v4, 0x1

    :try_start_9
    move-object/from16 v0, v85

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    const-string v4, "PersonaManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PMS systemReady: setting upgradeInProgress for ContainerId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v85

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; pi.upgradeInProgress = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v85

    iget-boolean v7, v0, Landroid/content/pm/PersonaInfo;->upgradeInProgress:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v85

    invoke-virtual {v4, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4200(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/16 v51, 0x0

    .local v51, "in":Ljava/io/InputStream;
    :try_start_a
    const-string v4, "PersonaManagerService"

    const-string v5, "reading from xml resource for fota"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v44, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/pm/PersonaManagerService;->TYPE_FILE_PATH:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$4300()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "enterprisedata.xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v44

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v44, "file":Ljava/io/File;
    invoke-virtual/range {v44 .. v44}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_22

    new-instance v54, Ljava/io/FileInputStream;

    move-object/from16 v0, v54

    move-object/from16 v1, v44

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .end local v51    # "in":Ljava/io/InputStream;
    .local v54, "in":Ljava/io/InputStream;
    :try_start_b
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v77

    .local v77, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v4, 0x0

    move-object/from16 v0, v77

    move-object/from16 v1, v54

    invoke-interface {v0, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v40, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;

    move-object/from16 v0, v40

    move-object/from16 v1, v77

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    .local v40, "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->readFromXml()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {v40 .. v40}, Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;->getTypeList()Ljava/util/List;

    move-result-object v5

    # setter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4402(Lcom/android/server/pm/PersonaManagerService;Ljava/util/List;)Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->xmlnotParsedforFOTA:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4202(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_16
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    move-object/from16 v51, v54

    .end local v40    # "enterpriseParser":Lcom/android/server/enterprise/container/KnoxMUMContainerPolicy$MumXmlDataParser;
    .end local v54    # "in":Ljava/io/InputStream;
    .end local v77    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v51    # "in":Ljava/io/InputStream;
    :goto_9
    if-eqz v51, :cond_16

    :try_start_c
    invoke-virtual/range {v51 .. v51}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_14

    .end local v44    # "file":Ljava/io/File;
    .end local v51    # "in":Ljava/io/InputStream;
    :cond_16
    :goto_a
    const/16 v43, 0x1

    .local v43, "exist":Z
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPm:Lcom/android/server/pm/PackageManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$300(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v4

    const-string v5, "com.google.android.webview"

    const/4 v6, 0x0

    move-object/from16 v0, v85

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v16

    .local v16, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v16, :cond_17

    const/16 v43, 0x0

    :cond_17
    const-string v4, "PersonaManagerService"

    const-string v5, "Webview package is in Knox container"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .end local v16    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :goto_b
    if-nez v43, :cond_18

    const-string v4, "PersonaManagerService"

    const-string v5, "Webview package is not in Knox container, hence install that package"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const-string v6, "com.google.android.webview"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$4500(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleFOTAUpgrade(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$4600(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    .end local v43    # "exist":Z
    :cond_19
    move-object/from16 v0, v85

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_1e

    :try_start_e
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calling SDP onBoot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v52

    .local v52, "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/SdpManagerService;->onBoot(I)I

    move-result v4

    if-nez v4, :cond_24

    const/16 v22, 0x1

    .local v22, "bootres":Z
    :goto_c
    invoke-static/range {v52 .. v53}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez v22, :cond_1a

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDP on-boot failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Lcom/android/sdp/exception/SdpVersionException; {:try_start_e .. :try_end_e} :catch_8

    .end local v22    # "bootres":Z
    .end local v52    # "ident":J
    :cond_1a
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isKeyGuardEnabledFromMDM(I)Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$1600(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v4

    if-eqz v4, :cond_2a

    move-object/from16 v0, v85

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    if-nez v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setSdpActive(IZ)V
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$5200(Lcom/android/server/pm/PersonaManagerService;IZ)V

    :cond_1b
    move-object/from16 v0, v85

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-nez v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-nez v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaNewEvent;->USER_LOCK:Landroid/content/pm/PersonaNewEvent;

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    const/4 v6, 0x0

    move-object/from16 v0, v85

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    const/4 v6, 0x0

    move-object/from16 v0, v85

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    :cond_1e
    :goto_e
    move-object/from16 v0, v85

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIsFOTAUpgrade:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5400(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIsAdminLock:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5500(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_1f

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " resetPersonaOnReboot:  resetting persona :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->startResetPersona(IZ)I
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$5600(Lcom/android/server/pm/PersonaManagerService;IZ)I

    :cond_1f
    invoke-virtual/range {v85 .. v85}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_34

    const/16 v66, 0x1

    .local v66, "mountStatus":Z
    :try_start_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5700(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/sec/knox/container/util/KnoxFileHandler;->isMounted(I)Z

    move-result v4

    if-nez v4, :cond_20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5700(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x0

    invoke-virtual/range {v85 .. v85}, Landroid/content/pm/PersonaInfo;->isSecureStorageEnabled()Z

    move-result v7

    invoke-virtual/range {v85 .. v85}, Landroid/content/pm/PersonaInfo;->getTimaEcrytfsIndex()I

    move-result v8

    move-object/from16 v0, v85

    iget-boolean v9, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    invoke-virtual/range {v4 .. v9}, Lcom/sec/knox/container/util/KnoxFileHandler;->mountFS(ILjava/lang/String;ZIZ)Z

    move-result v66

    :cond_20
    if-nez v66, :cond_2f

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File system not mounted successfully for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_a

    .end local v66    # "mountStatus":Z
    :cond_21
    :goto_f
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "systemReady: getDeviceFirmwareVersion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; pi.fwversion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v85

    iget-object v6, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v85

    iget-object v5, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pi.removePersona = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v85

    iget-boolean v6, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; pi.state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v6, v7}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->DELETING:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    # invokes: Lcom/android/server/pm/PersonaManagerService;->upgradeContainer(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5800(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    goto/16 :goto_8

    .end local v82    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v85    # "pi":Landroid/content/pm/PersonaInfo;
    :catch_4
    move-exception v34

    .restart local v34    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get Tima instance - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v82    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v85    # "pi":Landroid/content/pm/PersonaInfo;
    :catchall_2
    move-exception v4

    :try_start_10
    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    throw v4

    .restart local v44    # "file":Ljava/io/File;
    .restart local v51    # "in":Ljava/io/InputStream;
    :cond_22
    :try_start_11
    const-string v4, "PersonaManagerService"

    const-string v5, "Failed to find enterprisedata.xml in system container"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto/16 :goto_9

    .end local v44    # "file":Ljava/io/File;
    :catch_5
    move-exception v34

    .restart local v34    # "e":Ljava/lang/Exception;
    :goto_10
    :try_start_12
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to parse enterprisedata - Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-eqz v51, :cond_16

    :try_start_13
    invoke-virtual/range {v51 .. v51}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    goto/16 :goto_a

    :catch_6
    move-exception v4

    goto/16 :goto_a

    .end local v34    # "e":Ljava/lang/Exception;
    :catchall_3
    move-exception v4

    :goto_11
    if-eqz v51, :cond_23

    :try_start_14
    invoke-virtual/range {v51 .. v51}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_15

    :cond_23
    :goto_12
    throw v4

    .end local v51    # "in":Ljava/io/InputStream;
    .restart local v43    # "exist":Z
    :catch_7
    move-exception v34

    .restart local v34    # "e":Ljava/lang/Exception;
    const/16 v43, 0x0

    goto/16 :goto_b

    .end local v34    # "e":Ljava/lang/Exception;
    .end local v43    # "exist":Z
    .restart local v52    # "ident":J
    :cond_24
    const/16 v22, 0x0

    goto/16 :goto_c

    .end local v52    # "ident":J
    :catch_8
    move-exception v102

    .local v102, "se":Lcom/android/sdp/exception/SdpVersionException;
    const-string v4, "PersonaManagerService"

    const-string v5, "SDP version mismatch. migration detected"

    move-object/from16 v0, v102

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, v85

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v4, :cond_29

    const/16 v101, 0x0

    .local v101, "rstToken":Ljava/lang/String;
    # getter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3700()Z

    move-result v4

    if-eqz v4, :cond_27

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima20(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4800(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v101

    :goto_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x2

    move-object/from16 v0, v85

    iget v7, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    move-object/from16 v0, v101

    # invokes: Lcom/android/server/pm/PersonaManagerService;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;
    invoke-static {v4, v5, v0, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$5000(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v23

    .local v23, "cmk":Ljava/lang/String;
    if-eqz v23, :cond_25

    const/16 v30, 0x0

    .local v30, "decodedCMK":[B
    move-object/from16 v0, v85

    iget v4, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_28

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    :goto_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v52

    .restart local v52    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x1

    move-object/from16 v0, v30

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/server/SdpManagerService;->onMigration(IZ[B)Z

    invoke-static/range {v52 .. v53}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v30    # "decodedCMK":[B
    .end local v52    # "ident":J
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v101

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v23

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    .end local v23    # "cmk":Ljava/lang/String;
    .end local v101    # "rstToken":Ljava/lang/String;
    :goto_15
    :try_start_15
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v52

    .restart local v52    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/SdpManagerService;->onBoot(I)I

    move-result v4

    if-eqz v4, :cond_26

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDP on-boot failed. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    invoke-static/range {v52 .. v53}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_9

    goto/16 :goto_d

    .end local v52    # "ident":J
    :catch_9
    move-exception v34

    .restart local v34    # "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    const-string v5, "SDP on-boot failed"

    move-object/from16 v0, v102

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_d

    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v101    # "rstToken":Ljava/lang/String;
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4900(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v101

    goto/16 :goto_13

    .restart local v23    # "cmk":Ljava/lang/String;
    .restart local v30    # "decodedCMK":[B
    :cond_28
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-static {v0, v4}, Lcom/sec/knox/container/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v30

    goto/16 :goto_14

    .end local v23    # "cmk":Ljava/lang/String;
    .end local v30    # "decodedCMK":[B
    .end local v101    # "rstToken":Ljava/lang/String;
    :cond_29
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v52

    .restart local v52    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/SdpManagerService;->onMigration(IZ[B)Z

    invoke-static/range {v52 .. v53}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_15

    .end local v52    # "ident":J
    .end local v102    # "se":Lcom/android/sdp/exception/SdpVersionException;
    :cond_2a
    move-object/from16 v0, v85

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v4, :cond_1e

    const-string v4, "PersonaManagerService"

    const-string v5, "inside systemReady keyguard is disabled sdp minor"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setSdpActive(IZ)V
    invoke-static {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$5200(Lcom/android/server/pm/PersonaManagerService;IZ)V

    const/16 v92, 0x0

    .local v92, "pwdResetToken":Ljava/lang/String;
    # getter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3700()Z

    move-result v4

    if-eqz v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima20(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4800(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v92

    :goto_16
    if-eqz v92, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v6, 0x2

    move-object/from16 v0, v85

    iget v7, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    move-object/from16 v0, v92

    # invokes: Lcom/android/server/pm/PersonaManagerService;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;
    invoke-static {v4, v5, v0, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$5000(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v27

    .local v27, "containerMasterKey":Ljava/lang/String;
    if-eqz v27, :cond_2e

    const/16 v30, 0x0

    .restart local v30    # "decodedCMK":[B
    move-object/from16 v0, v85

    iget v4, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_2d

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    :goto_17
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v52

    .restart local v52    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v30

    invoke-virtual {v4, v5, v0}, Lcom/android/server/SdpManagerService;->onDeviceUnlocked(I[B)Z

    move-result v4

    if-nez v4, :cond_2b

    const-string v4, "PersonaManagerService.KeyMgnt"

    const-string v5, "Failed to unlock SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    invoke-static/range {v52 .. v53}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v30

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut([B)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5300(Lcom/android/server/pm/PersonaManagerService;[B)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v27

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    goto/16 :goto_e

    .end local v27    # "containerMasterKey":Ljava/lang/String;
    .end local v30    # "decodedCMK":[B
    .end local v52    # "ident":J
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima(I)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4900(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v92

    goto :goto_16

    .restart local v27    # "containerMasterKey":Ljava/lang/String;
    .restart local v30    # "decodedCMK":[B
    :cond_2d
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lcom/sec/knox/container/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v30

    goto :goto_17

    .end local v30    # "decodedCMK":[B
    :cond_2e
    const-string v4, "PersonaManagerService"

    const-string v5, "CMK is NULL : can\'t unlock SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .end local v27    # "containerMasterKey":Ljava/lang/String;
    .end local v92    # "pwdResetToken":Ljava/lang/String;
    .restart local v66    # "mountStatus":Z
    :cond_2f
    :try_start_16
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File system successfully mounted for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mTypeList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_21

    move-object/from16 v0, v85

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v26

    .local v26, "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v26, :cond_21

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppInstallationList()Ljava/util/List;

    move-result-object v17

    .local v17, "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getAppRemoveList()Ljava/util/List;

    move-result-object v19

    .local v19, "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Positive Delta for Knox upgrade : Before"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v17, :cond_21

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getInstalledPackages(II)Ljava/util/List;

    move-result-object v75

    .local v75, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App install list from PM for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v75

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v75, :cond_32

    invoke-interface/range {v75 .. v75}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_32

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App install list from PM for"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " size::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v75 .. v75}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v75 .. v75}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v50

    .local v50, "i$":Ljava/util/Iterator;
    :cond_30
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v79

    check-cast v79, Landroid/content/pm/PackageInfo;

    .local v79, "personaApp":Landroid/content/pm/PackageInfo;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App installed for persona"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v79

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    move-object/from16 v0, v79

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "App installed for persona"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v79

    iget-object v6, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "present in Ent Install List;Remove"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v79

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_a

    goto :goto_18

    .end local v17    # "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v50    # "i$":Ljava/util/Iterator;
    .end local v75    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v79    # "personaApp":Landroid/content/pm/PackageInfo;
    :catch_a
    move-exception v34

    .restart local v34    # "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to mount file system. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v17    # "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v50    # "i$":Ljava/util/Iterator;
    .restart local v75    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_31
    :try_start_17
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Positive Delta for Knox upgrade:After"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v50    # "i$":Ljava/util/Iterator;
    :cond_32
    if-eqz v17, :cond_21

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_21

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Persona firmware version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v85

    iget-object v6, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v85

    iget-object v5, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    move-object/from16 v0, v85

    iget-object v4, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    if-nez v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->migrateAndCleanupSharedPreferences(I)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$4000(Lcom/android/server/pm/PersonaManagerService;I)V

    :cond_33
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v50

    .restart local v50    # "i$":Ljava/util/Iterator;
    :goto_19
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    .local v18, "appName":Ljava/lang/String;
    :try_start_18
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application upgrade-Add : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v18

    # invokes: Lcom/android/server/pm/PersonaManagerService;->installExistingPackageForPersona(ILjava/lang/String;)I
    invoke-static {v4, v5, v0}, Lcom/android/server/pm/PersonaManagerService;->access$4500(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;)I
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b

    goto :goto_19

    :catch_b
    move-exception v34

    .restart local v34    # "e":Ljava/lang/Exception;
    :try_start_19
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to install "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for Persona "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_a

    goto :goto_19

    .end local v17    # "appInstallationList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "appName":Ljava/lang/String;
    .end local v19    # "appRemoveList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v34    # "e":Ljava/lang/Exception;
    .end local v50    # "i$":Ljava/util/Iterator;
    .end local v66    # "mountStatus":Z
    .end local v75    # "packageInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    :cond_34
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Did not mount file system for superLocked persona "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " or due to container state."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .end local v82    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v85    # "pi":Landroid/content/pm/PersonaInfo;
    :pswitch_16
    :try_start_1a
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, " MSG_BOOT_COMPLETE_RECEIVED : soft start personas "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mKeyguardUpdateMonitor:Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5900(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;

    move-result-object v4

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mKeyguardUpdateMonitor:Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5900(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/pm/KnoxKeyguardUpdateMonitor;->onBootComplete()V

    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v83

    check-cast v83, Landroid/os/PersonaManager;

    .local v83, "personaManager":Landroid/os/PersonaManager;
    if-eqz v83, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, v83

    invoke-virtual {v0, v4}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v82

    .restart local v82    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v82, :cond_0

    invoke-interface/range {v82 .. v82}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-interface/range {v82 .. v82}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [I

    move-object/from16 v80, v0

    .local v80, "personaIds":[I
    const/16 v68, 0x0

    .local v68, "n":I
    invoke-interface/range {v82 .. v82}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v49

    .restart local v49    # "i$":Ljava/util/Iterator;
    move/from16 v69, v68

    .end local v49    # "i$":Ljava/util/Iterator;
    .end local v68    # "n":I
    .local v69, "n":I
    :cond_36
    :goto_1a
    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_42

    invoke-interface/range {v49 .. v49}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v85

    check-cast v85, Landroid/content/pm/PersonaInfo;

    .restart local v85    # "pi":Landroid/content/pm/PersonaInfo;
    if-eqz v85, :cond_36

    add-int/lit8 v68, v69, 0x1

    .end local v69    # "n":I
    .restart local v68    # "n":I
    move-object/from16 v0, v85

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    aput v4, v80, v69

    new-instance v36, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .local v36, "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v85

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v72

    .local v72, "ownerUid":I
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v37

    .local v37, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    move/from16 v0, v72

    invoke-direct {v5, v0, v6}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v4, v5}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v58

    .local v58, "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v85

    iget-object v5, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isVoiceCapable()Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$6000(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_37

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v5, "com.sec.knox.shortcutsms"

    const-string v6, "com.sec.knox.shortcutsms.PhoneShortcut"

    move-object/from16 v0, v85

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->enableComponents(Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/pm/PersonaManagerService;->access$6100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;IZ)V

    :goto_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isSMSCapable()Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$6200(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_38

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v5, "com.sec.knox.shortcutsms"

    const-string v6, "com.sec.knox.shortcutsms.SMSShortcut"

    move-object/from16 v0, v85

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->enableComponents(Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/pm/PersonaManagerService;->access$6100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;IZ)V

    :goto_1c
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Persona firmware version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v85

    iget-object v6, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v85

    iget v4, v0, Landroid/content/pm/PersonaInfo;->id:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->filterTypeByContainerId(I)Lcom/sec/enterprise/knox/container/KnoxConfigurationType;

    move-result-object v26

    .restart local v26    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    if-eqz v58, :cond_3c

    if-eqz v26, :cond_3c

    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTADisableList()Ljava/util/List;

    move-result-object v11

    .local v11, "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_3a

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3a

    new-instance v90, Ljava/util/ArrayList;

    invoke-direct/range {v90 .. v90}, Ljava/util/ArrayList;-><init>()V

    .local v90, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v50

    .restart local v50    # "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v55

    check-cast v55, Ljava/lang/String;

    .local v55, "info":Ljava/lang/String;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FOTA Boot receiver AppUpgradeInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v55

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v90

    move-object/from16 v1, v55

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_c

    goto :goto_1d

    .end local v11    # "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v26    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .end local v36    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v37    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v50    # "i$":Ljava/util/Iterator;
    .end local v55    # "info":Ljava/lang/String;
    .end local v58    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v68    # "n":I
    .end local v72    # "ownerUid":I
    .end local v80    # "personaIds":[I
    .end local v82    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v83    # "personaManager":Landroid/os/PersonaManager;
    .end local v85    # "pi":Landroid/content/pm/PersonaInfo;
    .end local v90    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_c
    move-exception v34

    .restart local v34    # "e":Ljava/lang/Exception;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " BootReceiver : Exception while softStartPersona() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v36    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .restart local v37    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .restart local v58    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .restart local v68    # "n":I
    .restart local v72    # "ownerUid":I
    .restart local v80    # "personaIds":[I
    .restart local v82    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v83    # "personaManager":Landroid/os/PersonaManager;
    .restart local v85    # "pi":Landroid/content/pm/PersonaInfo;
    :cond_37
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v5, "com.sec.knox.shortcutsms"

    const-string v6, "com.sec.knox.shortcutsms.PhoneShortcut"

    move-object/from16 v0, v85

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->enableComponents(Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/pm/PersonaManagerService;->access$6100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1b

    :cond_38
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const-string v5, "com.sec.knox.shortcutsms"

    const-string v6, "com.sec.knox.shortcutsms.SMSShortcut"

    move-object/from16 v0, v85

    iget v7, v0, Landroid/content/pm/PersonaInfo;->id:I

    const/4 v8, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->enableComponents(Ljava/lang/String;Ljava/lang/String;IZ)V
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/pm/PersonaManagerService;->access$6100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;Ljava/lang/String;IZ)V

    goto/16 :goto_1c

    .restart local v11    # "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v26    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v50    # "i$":Ljava/util/Iterator;
    .restart local v90    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_39
    invoke-interface/range {v90 .. v90}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v90

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v31

    check-cast v31, [Ljava/lang/String;

    .local v31, "disablePackages":[Ljava/lang/String;
    invoke-virtual/range {v58 .. v58}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v4, v0, v5}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .end local v31    # "disablePackages":[Ljava/lang/String;
    .end local v50    # "i$":Ljava/util/Iterator;
    .end local v90    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3a
    invoke-virtual/range {v26 .. v26}, Lcom/sec/enterprise/knox/container/KnoxConfigurationType;->getFOTAReenableList()Ljava/util/List;

    move-result-object v12

    .local v12, "FOTAReenablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "PersonaManagerService"

    const-string v5, "FOTA Boot receiver re_enable: "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v12, :cond_3c

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3c

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FOTA Boot receiver re_enable:Size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    .local v39, "enablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v50

    .restart local v50    # "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/String;

    .local v87, "pkgInfo":Ljava/lang/String;
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FOTA Boot receiver AppUpgradeInfo for re_enable: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v87

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v39

    move-object/from16 v1, v87

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .end local v87    # "pkgInfo":Ljava/lang/String;
    :cond_3b
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FOTA Boot receiver AppUpgradeInfo for re_enable:Enable pks size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    move-object/from16 v0, v39

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v38

    check-cast v38, [Ljava/lang/String;

    .local v38, "enablePackages":[Ljava/lang/String;
    invoke-virtual/range {v58 .. v58}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getApplicationPolicy()Landroid/app/enterprise/ApplicationPolicy;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, v38

    invoke-virtual {v4, v0, v5}, Landroid/app/enterprise/ApplicationPolicy;->setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;

    .end local v11    # "FOTADisableAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "FOTAReenablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v38    # "enablePackages":[Ljava/lang/String;
    .end local v39    # "enablePkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v50    # "i$":Ljava/util/Iterator;
    :cond_3c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_c

    :try_start_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->getDeviceFirmwareVersion()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v85

    iput-object v4, v0, Landroid/content/pm/PersonaInfo;->fwversion:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    # invokes: Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    monitor-exit v5
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    .end local v26    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    :cond_3d
    :try_start_1d
    invoke-virtual/range {v85 .. v85}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_3f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_3e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->TIMA_COMPROMISED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_3f

    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getAdminUidForPersona(I)I

    move-result v14

    .local v14, "adminuid":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BOOT_COMPLETE - adminuid - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and personaId-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    if-eq v4, v5, :cond_41

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5700(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    move-object/from16 v0, v85

    iget v5, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5}, Lcom/sec/knox/container/util/KnoxFileHandler;->unmount(I)Z

    move-result v100

    .local v100, "retVal":Z
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BOOT_COMPLETE - persona is in SUPER_LOCKED state, hence unmounting the filesystem = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v14    # "adminuid":I
    .end local v100    # "retVal":Z
    :cond_3f
    :goto_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->TIMA_COMPROMISED:Landroid/content/pm/PersonaState;

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_40

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    const-string v6, "com.samsung.knox.action.CONTAINER_UPGRADE_COMPLETE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_c

    :cond_40
    move/from16 v69, v68

    .end local v68    # "n":I
    .restart local v69    # "n":I
    goto/16 :goto_1a

    .end local v69    # "n":I
    .restart local v26    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v68    # "n":I
    :catchall_4
    move-exception v4

    :try_start_1e
    monitor-exit v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    :try_start_1f
    throw v4

    .end local v26    # "configType":Lcom/sec/enterprise/knox/container/KnoxConfigurationType;
    .restart local v14    # "adminuid":I
    :cond_41
    const-string v4, "PersonaManagerService"

    const-string v5, "BOOT_COMPLETE - BYOD admin. Ignoring unmounting...."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .end local v14    # "adminuid":I
    .end local v36    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v37    # "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    .end local v58    # "kmcm":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v68    # "n":I
    .end local v72    # "ownerUid":I
    .end local v85    # "pi":Landroid/content/pm/PersonaInfo;
    .restart local v69    # "n":I
    :cond_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_c

    move-result v4

    if-nez v4, :cond_45

    const/16 v48, 0x0

    .restart local v48    # "i":I
    const/16 v48, 0x0

    :goto_20
    move/from16 v0, v48

    move/from16 v1, v69

    if-ge v0, v1, :cond_44

    :try_start_20
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    aget v5, v80, v48

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->startUserInBackground(I)Z

    # getter for: Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$6300()Z

    move-result v4

    if-eqz v4, :cond_43

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting contaienr "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v80, v48

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in background after reboot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d

    :cond_43
    add-int/lit8 v48, v48, 0x1

    goto :goto_20

    :catch_d
    move-exception v34

    .restart local v34    # "e":Ljava/lang/Exception;
    :try_start_21
    # getter for: Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$6300()Z

    move-result v4

    if-eqz v4, :cond_44

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot start container "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v80, v48

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in background after reboot: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v34    # "e":Ljava/lang/Exception;
    .end local v48    # "i":I
    :cond_44
    :goto_21
    const-string v4, "PersonaManagerService"

    const-string v5, "BOOT_COMPLETE - Sending broadcast to start Knox Apps Update Process"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v106, Landroid/content/Intent;

    const-string v4, "com.samsung.knox.appsupdateagent.intent.action.START_KNOX_APPS_UPDATE"

    move-object/from16 v0, v106

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v106, "startKnoxAppsUpdateIntent":Landroid/content/Intent;
    const-string v4, "com.samsung.knox.appsupdateagent"

    move-object/from16 v0, v106

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v4, 0x20

    move-object/from16 v0, v106

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const-string v6, "com.sec.knox.container.permission.RECEIVE_KNOX_APPS_UPDATE"

    move-object/from16 v0, v106

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v106    # "startKnoxAppsUpdateIntent":Landroid/content/Intent;
    :cond_45
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PersonaManagerService;->setDefaultSettingsValueforCOM()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_c

    goto :goto_21

    .end local v69    # "n":I
    .end local v80    # "personaIds":[I
    .end local v82    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v83    # "personaManager":Landroid/os/PersonaManager;
    :pswitch_17
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PersonaHandler.MSG_START_REMOVE_PERSONA_AFTER_SWITCH is called for personaId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_22
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v81

    check-cast v81, Landroid/content/pm/PersonaInfo;

    .local v81, "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v81, :cond_46

    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "PersonaHandler no personaInfo for this persona"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_e

    goto/16 :goto_1

    .end local v10    # "personaId":I
    .end local v81    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :catch_e
    move-exception v34

    .restart local v34    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v34    # "e":Ljava/lang/Exception;
    .restart local v10    # "personaId":I
    .restart local v81    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :cond_46
    :try_start_23
    invoke-virtual/range {v81 .. v81}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v76

    .local v76, "parentUserId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->isKioskModeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_47

    sget-object v4, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    if-eqz v4, :cond_47

    sget-object v4, Lcom/android/server/am/ActivityManagerService;->mKnoxInfo:Landroid/os/Bundle;

    const-string v5, "isKnoxKioskMode"

    const-string v6, "false"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v76

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    move-result v98

    .local v98, "result":Z
    if-eqz v98, :cond_48

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->startRemovingPersona(I)I

    move-result v24

    .local v24, "code":I
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startRemovingPersona return code is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v24    # "code":I
    :cond_48
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "Failed to switch persona. Aborted removing of persona..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_e

    goto/16 :goto_0

    .end local v10    # "personaId":I
    .end local v76    # "parentUserId":I
    .end local v81    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v98    # "result":Z
    :pswitch_18
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "PersonaHandler:: UnInstalling of Thirdparty apps for reset persona is done"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v55

    .local v55, "info":Landroid/content/pm/PersonaInfo;
    if-eqz v55, :cond_49

    move-object/from16 v0, v55

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->resetPersonaOnReboot:Z

    if-eqz v4, :cond_49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIsFOTAUpgrade:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5400(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mIsAdminLock:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5500(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_49

    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "resetPartition is skipped. It\'s already done in AMS.SystemReady"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_49
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->cleanPartition(I)Z
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$6400(Lcom/android/server/pm/PersonaManagerService;I)Z

    move-result v99

    .local v99, "ret":Z
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " resetPersona: ret value of EPM resetPartition():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v99

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v10    # "personaId":I
    .end local v55    # "info":Landroid/content/pm/PersonaInfo;
    .end local v99    # "ret":Z
    :pswitch_19
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "resetPerson is not called from anywhere now. So disalbed. Please contacts container team!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1a
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v107

    .local v107, "state":Landroid/content/pm/PersonaState;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getAdminUidForPersona(I)I

    move-result v13

    .local v13, "adminUid":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v29

    .local v29, "currentUser":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyKeyguardShow(false) on MSG_SUPER_LOCK_PERSONA for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->notifyKeyguardShow(IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v81

    check-cast v81, Landroid/content/pm/PersonaInfo;

    .restart local v81    # "personaInfo":Landroid/content/pm/PersonaInfo;
    if-nez v81, :cond_4a

    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "PersonaHandler no personaInfo for this persona"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_4a
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_SUPER_LOCK_PERSONA: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " current user from AMS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " adminUid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v98, 0x1

    .restart local v98    # "result":Z
    move/from16 v0, v29

    if-ne v10, v0, :cond_4b

    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_SUPER_LOCK_PERSONA: current user from AMS is the one being super-locked, not stopping persona"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v98, 0x0

    :cond_4b
    move-object/from16 v0, v81

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-nez v4, :cond_4c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_SUPER_LOCK_PERSONA: switching to owner"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_4e

    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, v10, :cond_4e

    const-string v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityManagerService;

    .local v15, "ams":Lcom/android/server/am/ActivityManagerService;
    if-eqz v15, :cond_4d

    invoke-virtual {v15, v10}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks(I)Z

    :cond_4d
    const/16 v98, 0x0

    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "MSG_SUPER_LOCK_PERSONA: BYOD case, don\'t stop Persona"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v15    # "ams":Lcom/android/server/am/ActivityManagerService;
    :cond_4e
    const/16 v97, -0x1

    .local v97, "res":I
    if-eqz v98, :cond_50

    move-object/from16 v0, v81

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-nez v4, :cond_4f

    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopping persona for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->stopPersona(I)I

    move-result v97

    :cond_4f
    if-eqz v97, :cond_50

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ActivityManagerNative.getDefault().stopUser failed to execure with error code:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v97

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    if-nez v98, :cond_51

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_52

    :cond_51
    if-eqz v97, :cond_55

    :cond_52
    new-instance v36, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .restart local v36    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v72

    .restart local v72    # "ownerUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move/from16 v0, v72

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v89

    .local v89, "pkgNames":[Ljava/lang/String;
    if-eqz v89, :cond_53

    move-object/from16 v20, v89

    .local v20, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v59, v0

    .local v59, "len$":I
    const/16 v49, 0x0

    .local v49, "i$":I
    :goto_22
    move/from16 v0, v49

    move/from16 v1, v59

    if-ge v0, v1, :cond_54

    aget-object v88, v20, v49

    .local v88, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v88

    move/from16 v1, v72

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v4, v0, v10, v1}, Lcom/android/server/pm/PersonaManagerService;->access$6500(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    add-int/lit8 v49, v49, 0x1

    goto :goto_22

    .end local v20    # "arr$":[Ljava/lang/String;
    .end local v49    # "i$":I
    .end local v59    # "len$":I
    .end local v88    # "pkgName":Ljava/lang/String;
    :cond_53
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    move/from16 v0, v72

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v4, v5, v10, v0}, Lcom/android/server/pm/PersonaManagerService;->access$6500(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    :cond_54
    const/4 v4, 0x0

    move-object/from16 v0, v81

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    .end local v36    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v72    # "ownerUid":I
    .end local v89    # "pkgNames":[Ljava/lang/String;
    :cond_55
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, v81

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isKioskModeEnabled:Z

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v52

    .restart local v52    # "ident":J
    :try_start_24
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v91

    .local v91, "pm":Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    const-string v5, "com.sec.knox.home.crossprofilefilter"

    move-object/from16 v0, v91

    invoke-interface {v0, v4, v5}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_f
    .catchall {:try_start_24 .. :try_end_24} :catchall_5

    invoke-static/range {v52 .. v53}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v91    # "pm":Landroid/content/pm/IPackageManager;
    :goto_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {v81 .. v81}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v5

    const/4 v6, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->startActivityAdminLocked(III)V
    invoke-static {v4, v5, v10, v6}, Lcom/android/server/pm/PersonaManagerService;->access$6600(Lcom/android/server/pm/PersonaManagerService;III)V

    goto/16 :goto_0

    :catch_f
    move-exception v94

    .local v94, "re":Landroid/os/RemoteException;
    :try_start_25
    invoke-virtual/range {v94 .. v94}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_5

    invoke-static/range {v52 .. v53}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_23

    .end local v94    # "re":Landroid/os/RemoteException;
    :catchall_5
    move-exception v4

    invoke-static/range {v52 .. v53}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .end local v10    # "personaId":I
    .end local v13    # "adminUid":I
    .end local v29    # "currentUser":I
    .end local v52    # "ident":J
    .end local v81    # "personaInfo":Landroid/content/pm/PersonaInfo;
    .end local v97    # "res":I
    .end local v98    # "result":Z
    .end local v107    # "state":Landroid/content/pm/PersonaState;
    :pswitch_1b
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    :try_start_26
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x4

    invoke-interface {v4, v10, v5}, Landroid/app/IActivityManager;->updateKnoxContainerRuntimeState(II)V

    const-string v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityManagerService;

    .restart local v15    # "ams":Lcom/android/server/am/ActivityManagerService;
    if-eqz v15, :cond_56

    invoke-virtual {v15, v10}, Lcom/android/server/am/ActivityManagerService;->clearRecentTasks(I)Z
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_10

    .end local v15    # "ams":Lcom/android/server/am/ActivityManagerService;
    :cond_56
    :goto_24
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_58

    const/16 v95, 0x1

    .local v95, "removePersona":Z
    :goto_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Landroid/content/pm/PersonaInfo;

    .restart local v73    # "pInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v95, :cond_59

    const-string v4, "PersonaManagerService"

    const-string v5, "userStopped triggered removal process..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->getPersonas(Z)Ljava/util/List;

    move-result-object v74

    .local v74, "pList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v74, :cond_57

    invoke-interface/range {v74 .. v74}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_57

    const-string v4, "sys.knox.exists"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "PersonaManagerService"

    const-string v5, "handleMessage(MSG_PERSONA_STOPPED) no more Containers, M-Permission roll back on critical apps."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/16 v7, -0x11

    const/4 v8, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->applyPermissionStatesAndFlags(IIII)Z
    invoke-static {v4, v5, v6, v7, v8}, Lcom/android/server/pm/PersonaManagerService;->access$6700(Lcom/android/server/pm/PersonaManagerService;IIII)Z

    :cond_57
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removePersonaHelper(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$6800(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .end local v73    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v74    # "pList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .end local v95    # "removePersona":Z
    :catch_10
    move-exception v94

    .restart local v94    # "re":Landroid/os/RemoteException;
    const-string v4, "PersonaManagerService"

    const-string v5, "handleMessage() MSG_PERSONA_STOPPED remote exception"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .end local v94    # "re":Landroid/os/RemoteException;
    :cond_58
    const/16 v95, 0x0

    goto :goto_25

    .restart local v73    # "pInfo":Landroid/content/pm/PersonaInfo;
    .restart local v95    # "removePersona":Z
    :cond_59
    if-eqz v73, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v73 .. v73}, Landroid/content/pm/PersonaInfo;->isSecureFileSystem()Z

    move-result v4

    if-eqz v4, :cond_0

    :try_start_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mFSHandler:Lcom/sec/knox/container/util/KnoxFileHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$5700(Lcom/android/server/pm/PersonaManagerService;)Lcom/sec/knox/container/util/KnoxFileHandler;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/knox/container/util/KnoxFileHandler;->unmount(I)Z

    move-result v100

    .restart local v100    # "retVal":Z
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unmounting file system due to super lock: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v100

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v36, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-direct {v0, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    .restart local v36    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    move-object/from16 v0, v36

    invoke-virtual {v0, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v72

    .restart local v72    # "ownerUid":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    move/from16 v0, v72

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v89

    .restart local v89    # "pkgNames":[Ljava/lang/String;
    if-eqz v89, :cond_5a

    move-object/from16 v20, v89

    .restart local v20    # "arr$":[Ljava/lang/String;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v59, v0

    .restart local v59    # "len$":I
    const/16 v49, 0x0

    .restart local v49    # "i$":I
    :goto_26
    move/from16 v0, v49

    move/from16 v1, v59

    if-ge v0, v1, :cond_5b

    aget-object v88, v20, v49

    .restart local v88    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v88

    move/from16 v1, v72

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v4, v0, v10, v1}, Lcom/android/server/pm/PersonaManagerService;->access$6500(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V

    add-int/lit8 v49, v49, 0x1

    goto :goto_26

    .end local v20    # "arr$":[Ljava/lang/String;
    .end local v49    # "i$":I
    .end local v59    # "len$":I
    .end local v88    # "pkgName":Ljava/lang/String;
    :cond_5a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    move/from16 v0, v72

    # invokes: Lcom/android/server/pm/PersonaManagerService;->sendIntentForAdminLock(Ljava/lang/String;II)V
    invoke-static {v4, v5, v10, v0}, Lcom/android/server/pm/PersonaManagerService;->access$6500(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;II)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_11
    .catchall {:try_start_27 .. :try_end_27} :catchall_6

    :cond_5b
    const/4 v4, 0x0

    move-object/from16 v0, v73

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    goto/16 :goto_0

    .end local v36    # "edmStorageProvider":Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .end local v72    # "ownerUid":I
    .end local v89    # "pkgNames":[Ljava/lang/String;
    .end local v100    # "retVal":Z
    :catch_11
    move-exception v94

    .restart local v94    # "re":Landroid/os/RemoteException;
    :try_start_28
    const-string v4, "PersonaManagerService"

    const-string v5, "Failed to unmount file system on super lock."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_6

    const/4 v4, 0x0

    move-object/from16 v0, v73

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    goto/16 :goto_0

    .end local v94    # "re":Landroid/os/RemoteException;
    :catchall_6
    move-exception v4

    const/4 v5, 0x0

    move-object/from16 v0, v73

    iput-boolean v5, v0, Landroid/content/pm/PersonaInfo;->lockInProgress:Z

    throw v4

    .end local v10    # "personaId":I
    .end local v73    # "pInfo":Landroid/content/pm/PersonaInfo;
    .end local v95    # "removePersona":Z
    :pswitch_1c
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "Start lock timer: persona is in background."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v70

    .restart local v70    # "now":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaBackgroundTime(I)J

    move-result-wide v62

    .local v62, "lastTimeToBackground":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getScreenOffTime(I)J

    move-result-wide v108

    .local v108, "timeOutValue":J
    sub-long v4, v70, v62

    sub-long v110, v108, v4

    .restart local v110    # "timeRemaining":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/16 v5, 0x2648

    move-wide/from16 v0, v110

    # invokes: Lcom/android/server/pm/PersonaManagerService;->scheduleTimer(IIJ)V
    invoke-static {v4, v10, v5, v0, v1}, Lcom/android/server/pm/PersonaManagerService;->access$6900(Lcom/android/server/pm/PersonaManagerService;IIJ)V

    goto/16 :goto_0

    .end local v10    # "personaId":I
    .end local v62    # "lastTimeToBackground":J
    .end local v70    # "now":J
    .end local v108    # "timeOutValue":J
    .end local v110    # "timeRemaining":J
    :pswitch_1d
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v96, v0

    .local v96, "requestId":I
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stop timer with request id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v96

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " persona Id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move/from16 v0, v96

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killTimer(II)V
    invoke-static {v4, v10, v0}, Lcom/android/server/pm/PersonaManagerService;->access$2200(Lcom/android/server/pm/PersonaManagerService;II)V

    goto/16 :goto_0

    .end local v10    # "personaId":I
    .end local v96    # "requestId":I
    :pswitch_1e
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v55

    .restart local v55    # "info":Landroid/content/pm/PersonaInfo;
    if-eqz v55, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "locking persona due to lock timeout."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->lockPersona(I)V

    goto/16 :goto_0

    .end local v10    # "personaId":I
    .end local v55    # "info":Landroid/content/pm/PersonaInfo;
    :pswitch_1f
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "locking persona due to reset timeout.."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearResetPasswordKey(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7000(Lcom/android/server/pm/PersonaManagerService;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v55

    .restart local v55    # "info":Landroid/content/pm/PersonaInfo;
    if-eqz v55, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    move-object/from16 v0, v55

    iget v6, v0, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST_ENFORCED:Landroid/content/pm/PersonaAttribute;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->isAttribute(Landroid/content/pm/PersonaAttribute;I)Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-nez v4, :cond_5c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaNewEvent;->USER_LOCK:Landroid/content/pm/PersonaNewEvent;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->fireEvent(Landroid/content/pm/PersonaNewEvent;I)Landroid/content/pm/PersonaState;

    :cond_5c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaAttribute;->PASSWORD_CHANGE_REQUEST:Landroid/content/pm/PersonaAttribute;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v10}, Lcom/android/server/pm/PersonaManagerService;->setAttribute(Landroid/content/pm/PersonaAttribute;ZI)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->hideKeyguard(I)V

    goto/16 :goto_0

    .end local v10    # "personaId":I
    .end local v55    # "info":Landroid/content/pm/PersonaInfo;
    :pswitch_20
    const-string v4, "PersonaManagerService"

    const-string v5, "received MSG_ACTIVATE_SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killSdpTimer(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7100(Lcom/android/server/pm/PersonaManagerService;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v55

    .restart local v55    # "info":Landroid/content/pm/PersonaInfo;
    if-eqz v55, :cond_5e

    move-object/from16 v0, v55

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    if-nez v4, :cond_5e

    const-string v4, "PersonaManagerService"

    const-string v5, "activating sdp.."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setSdpActive(IZ)V
    invoke-static {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->access$5200(Lcom/android/server/pm/PersonaManagerService;IZ)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v52

    .restart local v52    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/server/SdpManagerService;->onDeviceLocked(I)Z

    move-result v4

    if-nez v4, :cond_5d

    const-string v4, "PersonaManagerService"

    const-string v5, "Failed to lock SDP"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5d
    invoke-static/range {v52 .. v53}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v52    # "ident":J
    :cond_5e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearCachedPassword(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7200(Lcom/android/server/pm/PersonaManagerService;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7300(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "activity"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ActivityManagerService;

    .restart local v15    # "ams":Lcom/android/server/am/ActivityManagerService;
    const-string v4, "com.android.settings"

    invoke-virtual {v15, v4, v10}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    goto/16 :goto_0

    .end local v10    # "personaId":I
    .end local v15    # "ams":Lcom/android/server/am/ActivityManagerService;
    .end local v55    # "info":Landroid/content/pm/PersonaInfo;
    :pswitch_21
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received MSG_CALM_SDP... "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v85

    .restart local v85    # "pi":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->killSdpTimer(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7100(Lcom/android/server/pm/PersonaManagerService;I)V

    if-nez v85, :cond_5f

    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid persona : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5f
    move-object/from16 v0, v85

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpActive:Z

    if-nez v4, :cond_60

    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persona : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sdp not-active (skip calming)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearCachedPassword(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7200(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    :cond_60
    const/16 v27, 0x0

    .restart local v27    # "containerMasterKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mEncodedPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_63

    const-string v4, "PersonaManagerService.KeyMgnt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inside MSG_CALM_SDP 1 found encoded pwd. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v27, Ljava/lang/String;

    .end local v27    # "containerMasterKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mEncodedPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7400(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v27

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .restart local v27    # "containerMasterKey":Ljava/lang/String;
    :cond_61
    :goto_27
    if-eqz v27, :cond_68

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->setSdpActive(IZ)V
    invoke-static {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->access$5200(Lcom/android/server/pm/PersonaManagerService;IZ)V

    const/16 v30, 0x0

    .restart local v30    # "decodedCMK":[B
    move-object/from16 v0, v85

    iget v4, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_67

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v30

    :goto_28
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v52

    .restart local v52    # "ident":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getSdpService()Lcom/android/server/SdpManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4700(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/SdpManagerService;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v10, v0}, Lcom/android/server/SdpManagerService;->onDeviceUnlocked(I[B)Z

    move-result v4

    if-nez v4, :cond_62

    const-string v4, "PersonaManagerService"

    const-string v5, "Failed to SDP unlock"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    invoke-static/range {v52 .. v53}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v30

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut([B)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5300(Lcom/android/server/pm/PersonaManagerService;[B)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v27

    # invokes: Lcom/android/server/pm/PersonaManagerService;->zeroOut(Ljava/lang/String;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$5100(Lcom/android/server/pm/PersonaManagerService;Ljava/lang/String;)V

    .end local v30    # "decodedCMK":[B
    .end local v52    # "ident":J
    :goto_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearCachedPassword(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7200(Lcom/android/server/pm/PersonaManagerService;I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->clearResetPasswordKey(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$7000(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    :cond_63
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7300(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    const-string v4, "PersonaManagerService.KeyMgnt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "inside MSG_CALM_SDP 2 found pwd. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPasswordMap:Ljava/util/Map;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7300(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/Map;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, v85

    iget v7, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;
    invoke-static {v5, v10, v4, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$5000(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_27

    :cond_64
    move-object/from16 v0, v85

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->sdpEnabled:Z

    if-eqz v4, :cond_61

    move-object/from16 v0, v85

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isSdpMinor:Z

    if-eqz v4, :cond_61

    const-string v4, "PersonaManagerService.KeyMgnt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persona : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(SDP-MINOR) check if finger print"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "lock_settings"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v103

    check-cast v103, Lcom/android/server/LockSettingsService;

    .local v103, "service":Lcom/android/server/LockSettingsService;
    if-eqz v103, :cond_61

    const/16 v112, 0x0

    .local v112, "token":Ljava/lang/String;
    :try_start_29
    const-string v4, "lockscreen.password_type"

    const-wide/16 v6, 0x0

    move-object/from16 v0, v103

    invoke-virtual {v0, v4, v6, v7, v10}, Lcom/android/server/LockSettingsService;->getLong(Ljava/lang/String;JI)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v93, v0

    .local v93, "quality":I
    const-string v4, "PersonaManagerService.KeyMgnt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persona : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "password is not present in map CMK generating form pwd token "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v93

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6, v10}, Lcom/android/server/pm/PersonaManagerService;->getIsFingerAsSupplement(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/pm/PersonaManagerService;->timaVersion20:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$3700()Z

    move-result v4

    if-eqz v4, :cond_65

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima20(I)Ljava/lang/String;
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$4800(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v112

    :goto_2a
    if-eqz v112, :cond_66

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x2

    move-object/from16 v0, v85

    iget v6, v0, Landroid/content/pm/PersonaInfo;->cmkFormat:I

    move-object/from16 v0, v112

    # invokes: Lcom/android/server/pm/PersonaManagerService;->retrieveCMK(ILjava/lang/String;II)Ljava/lang/String;
    invoke-static {v4, v10, v0, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$5000(Lcom/android/server/pm/PersonaManagerService;ILjava/lang/String;II)Ljava/lang/String;

    move-result-object v27

    goto/16 :goto_27

    :cond_65
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getPasswordResetTokenFromTima(I)Ljava/lang/String;
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$4900(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v112

    goto :goto_2a

    :cond_66
    const-string v4, "PersonaManagerService"

    const-string v5, "No token from TIMA"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_12

    goto/16 :goto_27

    .end local v93    # "quality":I
    :catch_12
    move-exception v94

    .restart local v94    # "re":Landroid/os/RemoteException;
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "error in MSG_CALM_SDP while getting password quality"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .end local v94    # "re":Landroid/os/RemoteException;
    .end local v103    # "service":Lcom/android/server/LockSettingsService;
    .end local v112    # "token":Ljava/lang/String;
    .restart local v30    # "decodedCMK":[B
    :cond_67
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-static {v0, v4}, Lcom/sec/knox/container/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v30

    goto/16 :goto_28

    .end local v30    # "decodedCMK":[B
    :cond_68
    const-string v4, "PersonaManagerService.KeyMgnt"

    const-string v5, "In CALM_SDP: Container master key is NULL!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .end local v10    # "personaId":I
    .end local v27    # "containerMasterKey":Ljava/lang/String;
    .end local v85    # "pi":Landroid/content/pm/PersonaInfo;
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/pm/PersonaManagerService;->handleRestart(I)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$7500(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    :pswitch_23
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_PROCESS_ACTIVE_USER_CHANGE is called for personaId-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->updateCurrentUserPolicy(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$3600(Lcom/android/server/pm/PersonaManagerService;I)V

    const/16 v4, 0x64

    if-lt v10, v4, :cond_6c

    :try_start_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v118

    .local v118, "value":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_PROCESS_ACTIVE_USER_CHANGE Owner accessability value->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v118

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move/from16 v0, v118

    if-ne v0, v4, :cond_69

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->isSamsunAccessibilityServiceRunning()Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7600(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-nez v4, :cond_6b

    const-string v4, "PersonaManagerService"

    const-string v5, "MSG_PROCESS_ACTIVE_USER_CHANGE stopping owner accessibility..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x1

    # setter for: Lcom/android/server/pm/PersonaManagerService;->restartAccessibilityServiceForOwner:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$7702(Lcom/android/server/pm/PersonaManagerService;Z)Z

    :cond_69
    :goto_2b
    new-instance v56, Landroid/content/Intent;

    invoke-direct/range {v56 .. v56}, Landroid/content/Intent;-><init>()V

    .restart local v56    # "intent":Landroid/content/Intent;
    const-string v4, "com.sec.app.accesscontrol.ACTION_STOP_SELF"

    move-object/from16 v0, v56

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, v56

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_13

    .end local v56    # "intent":Landroid/content/Intent;
    .end local v118    # "value":I
    :cond_6a
    :goto_2c
    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    const/16 v5, 0x1c

    invoke-virtual {v4, v5}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v67

    .local v67, "msg1":Landroid/os/Message;
    move-object/from16 v0, v67

    iput v10, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaHandler:Lcom/android/server/pm/PersonaManagerService$PersonaHandler;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$800(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/pm/PersonaManagerService$PersonaHandler;

    move-result-object v4

    move-object/from16 v0, v67

    invoke-virtual {v4, v0}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v67    # "msg1":Landroid/os/Message;
    .restart local v118    # "value":I
    :cond_6b
    :try_start_2b
    const-string v4, "PersonaManagerService"

    const-string v5, "MSG_PROCESS_ACTIVE_USER_CHANGE not stopping owner accessibility..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_13

    goto :goto_2b

    .end local v118    # "value":I
    :catch_13
    move-exception v34

    .restart local v34    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v34 .. v34}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c

    .end local v34    # "e":Ljava/lang/Exception;
    :cond_6c
    :try_start_2c
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_PROCESS_ACTIVE_USER_CHANGE restartAccessibilityServiceForOwner -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->restartAccessibilityServiceForOwner:Z
    invoke-static {v6}, Lcom/android/server/pm/PersonaManagerService;->access$7700(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->restartAccessibilityServiceForOwner:Z
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7700(Lcom/android/server/pm/PersonaManagerService;)Z

    move-result v4

    if-eqz v4, :cond_6a

    const-string v4, "PersonaManagerService"

    const-string v5, "MSG_PROCESS_ACTIVE_USER_CHANGE starting owner accessibility"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$500(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accessibility_enabled"

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/pm/PersonaManagerService;->restartAccessibilityServiceForOwner:Z
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$7702(Lcom/android/server/pm/PersonaManagerService;Z)Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_13

    goto :goto_2c

    .end local v10    # "personaId":I
    :pswitch_24
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MSG_NOTIFY_EXT_SDCARD_UPDATE is called for persona - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v81, 0x0

    .restart local v81    # "personaInfo":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v81

    if-eqz v81, :cond_6e

    move-object/from16 v0, v81

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    if-eqz v4, :cond_6e

    const/16 v57, 0x0

    .local v57, "isSdcardAlertAlreadyShown":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mShownSdcardAlertMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7800(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mShownSdcardAlertMap:Ljava/util/HashMap;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$7800(Lcom/android/server/pm/PersonaManagerService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v57

    :cond_6d
    const-string v4, "PersonaManagerServiceHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v6, v10}, Lcom/android/server/pm/PersonaManagerService;->getState(I)Landroid/content/pm/PersonaState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and needsRestart-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v81

    iget-boolean v6, v0, Landroid/content/pm/PersonaInfo;->needsRestart:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and isSdcardAlertAlreadyShown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v57

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v5, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v4, v5, v10}, Lcom/android/server/pm/PersonaManagerService;->inState(Landroid/content/pm/PersonaState;I)Z

    move-result v4

    if-eqz v4, :cond_0

    if-nez v57, :cond_0

    move-object/from16 v0, v81

    iget-boolean v4, v0, Landroid/content/pm/PersonaInfo;->isRestarting:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->notifyNeedRestartMsg(I)V
    invoke-static {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->access$1200(Lcom/android/server/pm/PersonaManagerService;I)V

    goto/16 :goto_0

    .end local v57    # "isSdcardAlertAlreadyShown":Z
    :cond_6e
    const-string v4, "PersonaManagerServiceHandler"

    const-string v5, "Sdcard policy has not been updated..."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v10    # "personaId":I
    .end local v81    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :pswitch_25
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerService"

    const-string v5, "PersonaManagerService$PersonaHandler.handleMessage() launchPersonaHome for kioskModeEnabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    const/16 v4, 0x24

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v47

    .local v47, "forceUpdateMsg":Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v10    # "personaId":I
    .end local v47    # "forceUpdateMsg":Landroid/os/Message;
    :pswitch_26
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "force update wallpaper for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getWallpaperManagerLocked()Lcom/android/server/wallpaper/WallpaperManagerService;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$2500(Lcom/android/server/pm/PersonaManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v10, v5}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchPersonaWallpaper(IZ)V

    goto/16 :goto_0

    .end local v10    # "personaId":I
    :pswitch_27
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyKeyguardShow(false) on MSG_DELETING_PERSONA for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->isKioskModeEnabled(I)Z

    move-result v4

    if-eqz v4, :cond_6f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    const-string v6, "container_adminlock"

    # invokes: Lcom/android/server/pm/PersonaManagerService;->blockStatusbar(IZLjava/lang/String;)V
    invoke-static {v4, v10, v5, v6}, Lcom/android/server/pm/PersonaManagerService;->access$7900(Lcom/android/server/pm/PersonaManagerService;IZLjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    # invokes: Lcom/android/server/pm/PersonaManagerService;->blockIncomingCall(Z)V
    invoke-static {v4, v5}, Lcom/android/server/pm/PersonaManagerService;->access$8000(Lcom/android/server/pm/PersonaManagerService;Z)V

    :cond_6f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v5, 0x0

    invoke-virtual {v4, v10, v5}, Lcom/android/server/pm/PersonaManagerService;->notifyKeyguardShow(IZ)V

    goto/16 :goto_0

    .end local v10    # "personaId":I
    :pswitch_28
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    const/16 v81, 0x0

    .restart local v81    # "personaInfo":Landroid/content/pm/PersonaInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v4, v10}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v81

    if-eqz v81, :cond_1

    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Persona is in Urgent Update State, So not switching from Recent tasks to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual/range {v81 .. v81}, Landroid/content/pm/PersonaInfo;->getParentId()I

    move-result v5

    const/4 v6, 0x5

    const/4 v7, 0x1

    # invokes: Lcom/android/server/pm/PersonaManagerService;->startActivityKnoxAppsUpdate(IIIZ)V
    invoke-static {v4, v5, v10, v6, v7}, Lcom/android/server/pm/PersonaManagerService;->access$8100(Lcom/android/server/pm/PersonaManagerService;IIIZ)V

    goto/16 :goto_1

    .end local v10    # "personaId":I
    .end local v81    # "personaInfo":Landroid/content/pm/PersonaInfo;
    :pswitch_29
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    const-string v4, "PersonaManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setup completed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonaDbLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$1000(Lcom/android/server/pm/PersonaManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # getter for: Lcom/android/server/pm/PersonaManagerService;->mPersonas:Landroid/util/SparseArray;
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$4100(Lcom/android/server/pm/PersonaManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v78

    check-cast v78, Landroid/content/pm/PersonaInfo;

    .local v78, "persona":Landroid/content/pm/PersonaInfo;
    if-eqz v78, :cond_70

    const/4 v4, 0x1

    move-object/from16 v0, v78

    iput-boolean v4, v0, Landroid/content/pm/PersonaInfo;->setupComplete:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v78

    # invokes: Lcom/android/server/pm/PersonaManagerService;->writeUserLocked(Landroid/content/pm/PersonaInfo;)V
    invoke-static {v4, v0}, Lcom/android/server/pm/PersonaManagerService;->access$1100(Lcom/android/server/pm/PersonaManagerService;Landroid/content/pm/PersonaInfo;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->updateUserIdsLocked()V
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$8200(Lcom/android/server/pm/PersonaManagerService;)V

    :cond_70
    monitor-exit v5
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_7

    const/4 v4, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "PersonaManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v119, "Admin "

    move-object/from16 v0, v119

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v119, v0

    move-object/from16 v0, v119

    # invokes: Lcom/android/server/pm/PersonaManagerService;->getAdminPackageName(I)Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/android/server/pm/PersonaManagerService;->access$8300(Lcom/android/server/pm/PersonaManagerService;I)Ljava/lang/String;

    move-result-object v119

    move-object/from16 v0, v119

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v119, " has successfully created container "

    move-object/from16 v0, v119

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {v4 .. v10}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .end local v78    # "persona":Landroid/content/pm/PersonaInfo;
    :catchall_7
    move-exception v4

    :try_start_2e
    monitor-exit v5
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_7

    throw v4

    .end local v10    # "personaId":I
    :pswitch_2a
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .restart local v10    # "personaId":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/content/ComponentName;

    .local v25, "component":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    move-object/from16 v0, v25

    # invokes: Lcom/android/server/pm/PersonaManagerService;->drawKnoxbadge(ILandroid/content/ComponentName;)V
    invoke-static {v4, v10, v0}, Lcom/android/server/pm/PersonaManagerService;->access$8400(Lcom/android/server/pm/PersonaManagerService;ILandroid/content/ComponentName;)V

    goto/16 :goto_0

    .end local v10    # "personaId":I
    .end local v25    # "component":Landroid/content/ComponentName;
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/pm/PersonaManagerService$PersonaHandler;->this$0:Lcom/android/server/pm/PersonaManagerService;

    # invokes: Lcom/android/server/pm/PersonaManagerService;->removeKnoxBadge()V
    invoke-static {v4}, Lcom/android/server/pm/PersonaManagerService;->access$8500(Lcom/android/server/pm/PersonaManagerService;)V

    goto/16 :goto_0

    .restart local v44    # "file":Ljava/io/File;
    .restart local v51    # "in":Ljava/io/InputStream;
    .restart local v82    # "personaInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    .restart local v85    # "pi":Landroid/content/pm/PersonaInfo;
    :catch_14
    move-exception v4

    goto/16 :goto_a

    .end local v44    # "file":Ljava/io/File;
    :catch_15
    move-exception v5

    goto/16 :goto_12

    .end local v51    # "in":Ljava/io/InputStream;
    .restart local v44    # "file":Ljava/io/File;
    .restart local v54    # "in":Ljava/io/InputStream;
    :catchall_8
    move-exception v4

    move-object/from16 v51, v54

    .end local v54    # "in":Ljava/io/InputStream;
    .restart local v51    # "in":Ljava/io/InputStream;
    goto/16 :goto_11

    .end local v51    # "in":Ljava/io/InputStream;
    .restart local v54    # "in":Ljava/io/InputStream;
    :catch_16
    move-exception v34

    move-object/from16 v51, v54

    .end local v54    # "in":Ljava/io/InputStream;
    .restart local v51    # "in":Ljava/io/InputStream;
    goto/16 :goto_10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_17
        :pswitch_18
        :pswitch_0
        :pswitch_19
        :pswitch_1a
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_9
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_16
        :pswitch_13
        :pswitch_15
        :pswitch_a
        :pswitch_b
        :pswitch_1b
        :pswitch_8
        :pswitch_20
        :pswitch_21
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_22
        :pswitch_10
        :pswitch_24
        :pswitch_12
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_23
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_11
        :pswitch_2
        :pswitch_29
        :pswitch_28
        :pswitch_2a
        :pswitch_2b
        :pswitch_14
    .end packed-switch
.end method
