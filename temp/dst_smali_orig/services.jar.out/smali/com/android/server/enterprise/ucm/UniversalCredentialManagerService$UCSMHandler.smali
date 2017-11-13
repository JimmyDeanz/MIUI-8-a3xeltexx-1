.class Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
.super Landroid/os/Handler;
.source "UniversalCredentialManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UCSMHandler"
.end annotation


# static fields
.field public static final MSG_CLEAN_INFO:I = 0x3

.field public static final MSG_CLEAN_USER_INFO:I = 0x1

.field public static final MSG_LOAD_ADMINS:I = 0x2

.field public static final MSG_LOAD_PLUGINS:I = 0x4

.field public static final MSG_LOAD_WHITELIST_AND_EXEMPT_APPS:I = 0x5

.field public static final MSG_LOCK_STATUS_UPDATE:I = 0x7

.field public static final MSG_REINSTALL_CA_CERT:I = 0x8

.field public static final MSG_SYNC_UP_DATA:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 56
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v53, v0

    packed-switch v53, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->installCACertOnBoot()V
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$400(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)V

    goto :goto_0

    :pswitch_1
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_CLEAN_USER_INFO block started****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v49, v0

    .local v49, "userId":I
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "userId - "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v53

    if-eqz v53, :cond_0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "notifyChangeToPlugin is called for user removed..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .local v16, "data":Landroid/os/Bundle;
    const-string v53, "userId"

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v53

    const/16 v54, 0x0

    const/16 v55, 0xb

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move/from16 v2, v55

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v16    # "data":Landroid/os/Bundle;
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v49

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->performUserCleanup(I)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_CLEAN_USER_INFO block ended****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_0
    move-exception v17

    .local v17, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v17    # "e":Ljava/lang/Exception;
    .end local v49    # "userId":I
    :pswitch_2
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_LOAD_ADMINS block started****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAllAdmins()Ljava/util/List;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$600(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v46

    .local v46, "ucsAdmins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v46

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v53

    if-eqz v53, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/List;->size()I

    move-result v53

    if-lez v53, :cond_1

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "adminIds size- "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v55, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v55 .. v55}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v55

    invoke-interface/range {v55 .. v55}, Ljava/util/List;->size()I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v46    # "ucsAdmins":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    :goto_2
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_LOAD_ADMINS block ended****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v53

    const/16 v54, 0x4

    invoke-virtual/range {v53 .. v54}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v37

    .local v37, "msg1":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v37    # "msg1":Landroid/os/Message;
    :catch_1
    move-exception v17

    .restart local v17    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .end local v17    # "e":Ljava/lang/Exception;
    :pswitch_3
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_CLEAN_INFO block started****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, [I

    move-object/from16 v0, v53

    check-cast v0, [I

    move-object v9, v0

    .local v9, "appsUid":[I
    if-eqz v9, :cond_a

    array-length v0, v9

    move/from16 v53, v0

    if-lez v53, :cond_a

    move-object v10, v9

    .local v10, "arr$":[I
    array-length v0, v10

    move/from16 v34, v0

    .local v34, "len$":I
    const/16 v27, 0x0

    .local v27, "i$":I
    move/from16 v29, v27

    .end local v10    # "arr$":[I
    .end local v27    # "i$":I
    .end local v34    # "len$":I
    .local v29, "i$":I
    :goto_3
    move/from16 v0, v29

    move/from16 v1, v34

    if-ge v0, v1, :cond_a

    aget v53, v10, v29

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    .local v47, "uid":Ljava/lang/Integer;
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v53

    invoke-static/range {v53 .. v53}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v49

    .restart local v49    # "userId":I
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "uid - "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", userId-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_2

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "UCS admin uninstall. Start cleaning...."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v54

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->notifyAdminUninstall(I)V
    invoke-static/range {v53 .. v54}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$800(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v54

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->performAdminCleanup(I)V
    invoke-static/range {v53 .. v54}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$900(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1000(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1000(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Ljava/lang/String;

    .local v43, "pluginPkg":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Active plugin is removed. Perform clean up for uid-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", pluginPkg-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v43

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAdminIdRelatedToStorage(Ljava/lang/String;)Ljava/util/List;
    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .local v6, "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v53

    if-lez v53, :cond_4

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .end local v29    # "i$":I
    :cond_3
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_5

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .local v5, "adminUid":Ljava/lang/Integer;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "notifyLicenseStatus expire - adminUid-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v53

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v42

    .local v42, "pkgs":[Ljava/lang/String;
    if-eqz v42, :cond_3

    move-object/from16 v11, v42

    .local v11, "arr$":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v35, v0

    .local v35, "len$":I
    const/16 v28, 0x0

    .local v28, "i$":I
    :goto_4
    move/from16 v0, v28

    move/from16 v1, v35

    if-ge v0, v1, :cond_3

    aget-object v41, v11, v28

    .local v41, "pkgName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Sending event update to package "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v39, Landroid/content/Intent;

    const-string v53, "com.samsung.knox.ucm.NOTIFY_EVENT"

    move-object/from16 v0, v39

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v39, "notifyIntent":Landroid/content/Intent;
    move-object/from16 v0, v39

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .restart local v16    # "data":Landroid/os/Bundle;
    const-string v53, "event_id"

    const/16 v54, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v53, "package_name"

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    move-object/from16 v2, v43

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "Sending intent with UCSM Other permission..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$200(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v53

    new-instance v54, Landroid/os/UserHandle;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v55

    invoke-static/range {v55 .. v55}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v55

    invoke-direct/range {v54 .. v55}, Landroid/os/UserHandle;-><init>(I)V

    const-string v55, "com.sec.enterprise.permission.KNOX_UCM_OTHER"

    move-object/from16 v0, v53

    move-object/from16 v1, v39

    move-object/from16 v2, v54

    move-object/from16 v3, v55

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :goto_5
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_4

    :catch_2
    move-exception v45

    .local v45, "se":Ljava/lang/Exception;
    :try_start_4
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "  Exception se-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    .end local v5    # "adminUid":Ljava/lang/Integer;
    .end local v6    # "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v9    # "appsUid":[I
    .end local v11    # "arr$":[Ljava/lang/String;
    .end local v16    # "data":Landroid/os/Bundle;
    .end local v28    # "i$":I
    .end local v35    # "len$":I
    .end local v39    # "notifyIntent":Landroid/content/Intent;
    .end local v41    # "pkgName":Ljava/lang/String;
    .end local v42    # "pkgs":[Ljava/lang/String;
    .end local v43    # "pluginPkg":Ljava/lang/String;
    .end local v45    # "se":Ljava/lang/Exception;
    .end local v47    # "uid":Ljava/lang/Integer;
    .end local v49    # "userId":I
    :catch_3
    move-exception v17

    .restart local v17    # "e":Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v17    # "e":Ljava/lang/Exception;
    .restart local v6    # "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v9    # "appsUid":[I
    .restart local v29    # "i$":I
    .restart local v43    # "pluginPkg":Ljava/lang/String;
    .restart local v47    # "uid":Ljava/lang/Integer;
    .restart local v49    # "userId":I
    :cond_4
    :try_start_5
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "No admin found related to package..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v29    # "i$":I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1000(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v43

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->performStorageCleanup(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1200(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;Ljava/lang/String;)V

    .end local v6    # "adminUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v43    # "pluginPkg":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .local v40, "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Calling performWhitelistAppCleanup for userId-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", packageName-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v49

    move-object/from16 v2, v40

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->performWhitelistAppCleanup(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1400(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v40    # "packageName":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/String;

    .restart local v40    # "packageName":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Calling performExemptedAppCleanup for userId-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", packageName-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v49

    move-object/from16 v2, v40

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->performExemptedAppCleanup(ILjava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1600(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;ILjava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .end local v40    # "packageName":Ljava/lang/String;
    :cond_8
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v53

    if-eqz v53, :cond_9

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "notifyChangeToPlugin is called for package uninstalled..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :try_start_6
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .restart local v16    # "data":Landroid/os/Bundle;
    const-string v53, "userId"

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    move/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v53, "packageUid"

    invoke-virtual/range {v47 .. v47}, Ljava/lang/Integer;->intValue()I

    move-result v54

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v53

    const/16 v54, 0x0

    const/16 v55, 0xc

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move/from16 v2, v55

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .end local v16    # "data":Landroid/os/Bundle;
    :cond_9
    :goto_6
    add-int/lit8 v27, v29, 0x1

    .restart local v27    # "i$":I
    move/from16 v29, v27

    .end local v27    # "i$":I
    .restart local v29    # "i$":I
    goto/16 :goto_3

    .end local v29    # "i$":I
    :catch_4
    move-exception v17

    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_7
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v17    # "e":Ljava/lang/Exception;
    .end local v47    # "uid":Ljava/lang/Integer;
    .end local v49    # "userId":I
    :cond_a
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_CLEAN_INFO block ended****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .end local v9    # "appsUid":[I
    :pswitch_4
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_LOAD_PLUGINS block started****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getActivePlugin()Ljava/util/ArrayList;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object v14

    .local v14, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v14, :cond_e

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v53

    if-lez v53, :cond_e

    const/16 v40, 0x0

    .restart local v40    # "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "appUid":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .local v27, "i$":Ljava/util/Iterator;
    :cond_b
    :goto_7
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_d

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/content/ContentValues;

    .local v52, "value":Landroid/content/ContentValues;
    const-string v53, "storagePackageName"

    invoke-virtual/range {v52 .. v53}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string v53, "appUid"

    invoke-virtual/range {v52 .. v53}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-result v8

    const/16 v53, 0x3e8

    move/from16 v0, v53

    if-eq v8, v0, :cond_b

    if-eqz v8, :cond_b

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1000(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1000(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Caching plugin app id-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", packageName-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_7

    :catch_5
    move-exception v17

    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_a
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Exception "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_7

    .end local v8    # "appUid":I
    .end local v14    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v40    # "packageName":Ljava/lang/String;
    .end local v52    # "value":Landroid/content/ContentValues;
    :catch_6
    move-exception v17

    .restart local v17    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Exception "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v17    # "e":Ljava/lang/Exception;
    :cond_c
    :goto_8
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_LOAD_PLUGINS block ended****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v53

    const/16 v54, 0x5

    invoke-virtual/range {v53 .. v54}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v38

    .local v38, "msg2":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v53

    move-object/from16 v0, v53

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .end local v38    # "msg2":Landroid/os/Message;
    .restart local v8    # "appUid":I
    .restart local v14    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v27    # "i$":Ljava/util/Iterator;
    .restart local v40    # "packageName":Ljava/lang/String;
    :cond_d
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1000(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, "entries":Ljava/util/Iterator;
    :goto_9
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .local v25, "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    .local v32, "key":Ljava/lang/Integer;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/String;

    .local v52, "value":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Plugin ID = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", Plugin package = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .end local v8    # "appUid":I
    .end local v22    # "entries":Ljava/util/Iterator;
    .end local v25    # "entry":Ljava/util/Map$Entry;
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v32    # "key":Ljava/lang/Integer;
    .end local v40    # "packageName":Ljava/lang/String;
    .end local v52    # "value":Ljava/lang/String;
    :cond_e
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "No active plugin found"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_8

    .end local v14    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :pswitch_5
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_LOAD_WHITELIST_AND_EXEMPT_APPS block started****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAllWhitelistedApps()Ljava/util/ArrayList;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1800(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object v14

    .restart local v14    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v14, :cond_12

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v53

    if-lez v53, :cond_12

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "getAllWhitelistedApps - Size-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v40, 0x0

    .restart local v40    # "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    .restart local v8    # "appUid":I
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .restart local v27    # "i$":Ljava/util/Iterator;
    :cond_f
    :goto_a
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_11

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/content/ContentValues;

    .local v52, "value":Landroid/content/ContentValues;
    const-string v53, "appPackage"

    invoke-virtual/range {v52 .. v53}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string v53, "appUid"

    invoke-virtual/range {v52 .. v53}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8

    move-result v8

    :try_start_d
    const-string v53, "*"

    move-object/from16 v0, v40

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_f

    const/16 v53, 0x3e8

    move/from16 v0, v53

    if-eq v8, v0, :cond_f

    if-eqz v8, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Caching WhiteList app id-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", packageName-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_a

    :catch_7
    move-exception v17

    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_e
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Exception "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_8

    goto/16 :goto_a

    .end local v8    # "appUid":I
    .end local v14    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v17    # "e":Ljava/lang/Exception;
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v40    # "packageName":Ljava/lang/String;
    .end local v52    # "value":Landroid/content/ContentValues;
    :catch_8
    move-exception v17

    .restart local v17    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Exception -"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v17    # "e":Ljava/lang/Exception;
    :cond_10
    :goto_b
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_LOAD_WHITELIST_AND_EXEMPT_APPS block ended****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v8    # "appUid":I
    .restart local v14    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v27    # "i$":Ljava/util/Iterator;
    .restart local v40    # "packageName":Ljava/lang/String;
    :cond_11
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22    # "entries":Ljava/util/Iterator;
    :goto_c
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_13

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .restart local v25    # "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    .restart local v32    # "key":Ljava/lang/Integer;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/String;

    .local v52, "value":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "WHITELIST App UID = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", App package = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .end local v8    # "appUid":I
    .end local v22    # "entries":Ljava/util/Iterator;
    .end local v25    # "entry":Ljava/util/Map$Entry;
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v32    # "key":Ljava/lang/Integer;
    .end local v40    # "packageName":Ljava/lang/String;
    .end local v52    # "value":Ljava/lang/String;
    :cond_12
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "getAllWhitelistedApps DB is empty..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAllExemptedApps()Ljava/util/ArrayList;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1900(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/ArrayList;

    move-result-object v15

    .local v15, "cvList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v15, :cond_16

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v53

    if-lez v53, :cond_16

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "getAllExemptedApps - Size-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v55

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v40, 0x0

    .restart local v40    # "packageName":Ljava/lang/String;
    const/4 v8, 0x0

    .restart local v8    # "appUid":I
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .restart local v27    # "i$":Ljava/util/Iterator;
    :cond_14
    :goto_d
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_15

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Landroid/content/ContentValues;

    .local v52, "value":Landroid/content/ContentValues;
    const-string v53, "appPackage"

    invoke-virtual/range {v52 .. v53}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    const-string v53, "appUid"

    invoke-virtual/range {v52 .. v53}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Integer;->intValue()I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_8

    move-result v8

    :try_start_10
    const-string v53, "com.samsung.knox.virtual.wifi"

    move-object/from16 v0, v40

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_14

    const/16 v53, 0x3e8

    move/from16 v0, v53

    if-eq v8, v0, :cond_14

    if-eqz v8, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v54

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Caching Exempted app id-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", packageName-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_9

    goto/16 :goto_d

    :catch_9
    move-exception v17

    .restart local v17    # "e":Ljava/lang/Exception;
    :try_start_11
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Exception "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .end local v17    # "e":Ljava/lang/Exception;
    .end local v52    # "value":Landroid/content/ContentValues;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22    # "entries":Ljava/util/Iterator;
    :goto_e
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_10

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .restart local v25    # "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    .restart local v32    # "key":Ljava/lang/Integer;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/String;

    .local v52, "value":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "EXEPMT-> App UID = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    const-string v55, ", App package = "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .end local v8    # "appUid":I
    .end local v22    # "entries":Ljava/util/Iterator;
    .end local v25    # "entry":Ljava/util/Map$Entry;
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v32    # "key":Ljava/lang/Integer;
    .end local v40    # "packageName":Ljava/lang/String;
    .end local v52    # "value":Ljava/lang/String;
    :cond_16
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "getAllExemptedApps DB is empty..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    goto/16 :goto_b

    .end local v14    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v15    # "cvList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :pswitch_6
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_SYNC_UP_DATA block started****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_12
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .restart local v16    # "data":Landroid/os/Bundle;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v53

    const/16 v54, 0x0

    const/16 v55, 0x11

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move/from16 v2, v55

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getAllUsers()Ljava/util/List;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$2000(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v7

    .local v7, "allUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_18

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v53

    if-lez v53, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$200(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v53

    const-string v54, "user"

    invoke-virtual/range {v53 .. v54}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/UserManager;

    .local v36, "mUm":Landroid/os/UserManager;
    invoke-virtual/range {v36 .. v36}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v51

    .local v51, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v51 .. v51}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .restart local v27    # "i$":Ljava/util/Iterator;
    :cond_17
    :goto_f
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_21

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/content/pm/UserInfo;

    .local v50, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v50

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v49, v0

    .restart local v49    # "userId":I
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Valid userid-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v53

    if-eqz v53, :cond_17

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Found userid on cache-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_f

    .end local v7    # "allUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v16    # "data":Landroid/os/Bundle;
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v36    # "mUm":Landroid/os/UserManager;
    .end local v49    # "userId":I
    .end local v50    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v51    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_a
    move-exception v17

    .restart local v17    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Exception-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v17    # "e":Ljava/lang/Exception;
    :cond_18
    new-instance v48, Ljava/util/ArrayList;

    invoke-direct/range {v48 .. v48}, Ljava/util/ArrayList;-><init>()V

    .local v48, "uninstalledAppUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v44

    .local v44, "pm":Landroid/content/pm/IPackageManager;
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->adminIds:Ljava/util/List;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$700(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/List;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .restart local v27    # "i$":Ljava/util/Iterator;
    :cond_19
    :goto_10
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_1a

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .local v4, "adminId":Ljava/lang/Integer;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "MSG_SYNC_UP_DATA adminId-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v53

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v42

    .restart local v42    # "pkgs":[Ljava/lang/String;
    if-nez v42, :cond_22

    move-object/from16 v0, v48

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_19

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "MSG_SYNC_UP_DATA remove adminid : "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v48

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_b

    goto :goto_10

    .end local v4    # "adminId":Ljava/lang/Integer;
    .end local v27    # "i$":Ljava/util/Iterator;
    .end local v42    # "pkgs":[Ljava/lang/String;
    :catch_b
    move-exception v18

    .local v18, "e1":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Exception-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v18    # "e1":Ljava/lang/Exception;
    :cond_1a
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->activePluginsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1000(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22    # "entries":Ljava/util/Iterator;
    :cond_1b
    :goto_11
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_1c

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .restart local v25    # "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    .restart local v32    # "key":Ljava/lang/Integer;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v52

    check-cast v52, Ljava/lang/String;

    .restart local v52    # "value":Ljava/lang/String;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "MSG_SYNC_UP_DATA plugin id -"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "MSG_SYNC_UP_DATA plugin package -"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v53

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v42

    .restart local v42    # "pkgs":[Ljava/lang/String;
    if-nez v42, :cond_25

    move-object/from16 v0, v48

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_1b

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "MSG_SYNC_UP_DATA remove plugin : "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v48

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_c

    goto/16 :goto_11

    .end local v22    # "entries":Ljava/util/Iterator;
    .end local v25    # "entry":Ljava/util/Map$Entry;
    .end local v32    # "key":Ljava/lang/Integer;
    .end local v42    # "pkgs":[Ljava/lang/String;
    .end local v52    # "value":Ljava/lang/String;
    :catch_c
    move-exception v19

    .local v19, "e2":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Exception-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v19    # "e2":Ljava/lang/Exception;
    :cond_1c
    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->exemptedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1500(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, "entries1":Ljava/util/Iterator;
    :cond_1d
    :goto_12
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_1e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .restart local v25    # "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    .restart local v32    # "key":Ljava/lang/Integer;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "MSG_SYNC_UP_DATA exempt app id -"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v53

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v42

    .restart local v42    # "pkgs":[Ljava/lang/String;
    if-nez v42, :cond_1d

    move-object/from16 v0, v48

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_1d

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "MSG_SYNC_UP_DATA remove exempt app : "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v48

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_d

    goto :goto_12

    .end local v23    # "entries1":Ljava/util/Iterator;
    .end local v25    # "entry":Ljava/util/Map$Entry;
    .end local v32    # "key":Ljava/lang/Integer;
    .end local v42    # "pkgs":[Ljava/lang/String;
    :catch_d
    move-exception v20

    .local v20, "e3":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Exception-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v20    # "e3":Ljava/lang/Exception;
    :cond_1e
    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->whitelistedAppsCache:Ljava/util/HashMap;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$1300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Ljava/util/HashMap;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v53

    invoke-interface/range {v53 .. v53}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .local v24, "entries2":Ljava/util/Iterator;
    :cond_1f
    :goto_13
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_20

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    .restart local v25    # "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    .restart local v32    # "key":Ljava/lang/Integer;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "MSG_SYNC_UP_DATA Whitelist app id -"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mPm:Landroid/content/pm/PackageManager;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v53

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v42

    .restart local v42    # "pkgs":[Ljava/lang/String;
    if-nez v42, :cond_1f

    move-object/from16 v0, v48

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v53

    if-nez v53, :cond_1f

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "MSG_SYNC_UP_DATA remove Whitelist app : "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v48

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_e

    goto :goto_13

    .end local v24    # "entries2":Ljava/util/Iterator;
    .end local v25    # "entry":Ljava/util/Map$Entry;
    .end local v32    # "key":Ljava/lang/Integer;
    .end local v42    # "pkgs":[Ljava/lang/String;
    :catch_e
    move-exception v21

    .local v21, "e4":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "Exception-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v21    # "e4":Ljava/lang/Exception;
    :cond_20
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->size()I

    move-result v53

    if-lez v53, :cond_28

    invoke-interface/range {v48 .. v48}, Ljava/util/List;->size()I

    move-result v53

    move/from16 v0, v53

    new-array v13, v0, [I

    .local v13, "cleanUids":[I
    const/16 v26, 0x0

    .local v26, "i":I
    invoke-interface/range {v48 .. v48}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .restart local v27    # "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_27

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/lang/Integer;

    .local v30, "id":Ljava/lang/Integer;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "adding clean app id-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {v30 .. v30}, Ljava/lang/Integer;->intValue()I

    move-result v53

    aput v53, v13, v26

    add-int/lit8 v26, v26, 0x1

    goto :goto_14

    .end local v13    # "cleanUids":[I
    .end local v26    # "i":I
    .end local v30    # "id":Ljava/lang/Integer;
    .end local v44    # "pm":Landroid/content/pm/IPackageManager;
    .end local v48    # "uninstalledAppUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "allUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16    # "data":Landroid/os/Bundle;
    .restart local v36    # "mUm":Landroid/os/UserManager;
    .restart local v51    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_21
    :try_start_17
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v27

    :goto_15
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_18

    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/Integer;

    .local v49, "userId":Ljava/lang/Integer;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "InValid userid-"

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v53

    const/16 v54, 0x1

    invoke-virtual/range {v53 .. v54}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .local v12, "cleanMsg":Landroid/os/Message;
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Integer;->intValue()I

    move-result v53

    move/from16 v0, v53

    iput v0, v12, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    goto :goto_15

    .end local v7    # "allUsers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "cleanMsg":Landroid/os/Message;
    .end local v16    # "data":Landroid/os/Bundle;
    .end local v36    # "mUm":Landroid/os/UserManager;
    .end local v49    # "userId":Ljava/lang/Integer;
    .end local v51    # "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v4    # "adminId":Ljava/lang/Integer;
    .restart local v42    # "pkgs":[Ljava/lang/String;
    .restart local v44    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v48    # "uninstalledAppUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_22
    :try_start_18
    const-string v53, "com.sec.enterprise.permission.KNOX_UCM_ESE"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v54

    move-object/from16 v0, v44

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v53

    if-eqz v53, :cond_23

    const-string v53, "com.sec.enterprise.permission.KNOX_UCM_OTHER"

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v54

    move-object/from16 v0, v44

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v53

    if-nez v53, :cond_24

    :cond_23
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "  Admin has valid permission. Processing further..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    :cond_24
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "  Admin don\'t has UCS permission..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v54

    # invokes: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->processAdminLicenseExpiry(I)V
    invoke-static/range {v53 .. v54}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$2100(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;I)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_b

    goto/16 :goto_10

    .end local v4    # "adminId":Ljava/lang/Integer;
    .end local v27    # "i$":Ljava/util/Iterator;
    .restart local v22    # "entries":Ljava/util/Iterator;
    .restart local v25    # "entry":Ljava/util/Map$Entry;
    .restart local v32    # "key":Ljava/lang/Integer;
    .restart local v52    # "value":Ljava/lang/String;
    :cond_25
    :try_start_19
    const-string v53, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN"

    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v54

    move-object/from16 v0, v44

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v53

    if-nez v53, :cond_26

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "  Agent has UCS PLUGIN permission. Processing further..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11

    :cond_26
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "  Agent don\'t has UCS PLUGIN permission. Notifying admin.."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    const/16 v54, 0x2

    move-object/from16 v0, v53

    move/from16 v1, v54

    move-object/from16 v2, v52

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->notifyLicenseStatus(ILjava/lang/String;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_c

    goto/16 :goto_11

    .end local v22    # "entries":Ljava/util/Iterator;
    .end local v25    # "entry":Ljava/util/Map$Entry;
    .end local v32    # "key":Ljava/lang/Integer;
    .end local v42    # "pkgs":[Ljava/lang/String;
    .end local v52    # "value":Ljava/lang/String;
    .restart local v13    # "cleanUids":[I
    .restart local v26    # "i":I
    .restart local v27    # "i$":Ljava/util/Iterator;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v53

    const/16 v54, 0x3

    invoke-virtual/range {v53 .. v54}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .restart local v12    # "cleanMsg":Landroid/os/Message;
    iput-object v13, v12, Landroid/os/Message;->obj:Ljava/lang/Object;

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "MSG_SYNC_UP_DATA calling MSG_CLEAN_INFO..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mUCSMHandler:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$300(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;

    move-result-object v53

    move-object/from16 v0, v53

    invoke-virtual {v0, v12}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v12    # "cleanMsg":Landroid/os/Message;
    .end local v13    # "cleanUids":[I
    .end local v26    # "i":I
    .end local v27    # "i$":Ljava/util/Iterator;
    :cond_28
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_SYNC_UP_DATA block ended****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v44    # "pm":Landroid/content/pm/IPackageManager;
    .end local v48    # "uninstalledAppUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :pswitch_7
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_LOCK_STATUS_UPDATE block started****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v53

    if-eqz v53, :cond_29

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "notifyChangeToPlugin is called for Lock status update..."

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService$UCSMHandler;->this$0:Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;

    move-object/from16 v53, v0

    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->mContext:Landroid/content/Context;
    invoke-static/range {v53 .. v53}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$200(Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;)Landroid/content/Context;

    move-result-object v53

    const-string v54, "keyguard"

    invoke-virtual/range {v53 .. v54}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Landroid/app/KeyguardManager;

    .local v33, "km":Landroid/app/KeyguardManager;
    invoke-virtual/range {v33 .. v33}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v31

    .local v31, "isLocked":Z
    :try_start_1a
    new-instance v16, Landroid/os/Bundle;

    invoke-direct/range {v16 .. v16}, Landroid/os/Bundle;-><init>()V

    .restart local v16    # "data":Landroid/os/Bundle;
    const-string v53, "userId"

    const/16 v54, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v31, :cond_2a

    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v53

    const/16 v54, 0x0

    const/16 v55, 0xf

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move/from16 v2, v55

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_f

    .end local v16    # "data":Landroid/os/Bundle;
    .end local v31    # "isLocked":Z
    .end local v33    # "km":Landroid/app/KeyguardManager;
    :cond_29
    :goto_16
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    const-string v54, "****MSG_LOCK_STATUS_UPDATE block ended****"

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v16    # "data":Landroid/os/Bundle;
    .restart local v31    # "isLocked":Z
    .restart local v33    # "km":Landroid/app/KeyguardManager;
    :cond_2a
    :try_start_1b
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->getUcmService()Lcom/sec/enterprise/knox/ucm/core/IUcmService;

    move-result-object v53

    const/16 v54, 0x0

    const/16 v55, 0x10

    move-object/from16 v0, v53

    move-object/from16 v1, v54

    move/from16 v2, v55

    move-object/from16 v3, v16

    invoke-interface {v0, v1, v2, v3}, Lcom/sec/enterprise/knox/ucm/core/IUcmService;->notifyChangeToPlugin(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_f

    goto :goto_16

    .end local v16    # "data":Landroid/os/Bundle;
    :catch_f
    move-exception v17

    .restart local v17    # "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/enterprise/ucm/UniversalCredentialManagerService;->access$000()Ljava/lang/String;

    move-result-object v53

    new-instance v54, Ljava/lang/StringBuilder;

    invoke-direct/range {v54 .. v54}, Ljava/lang/StringBuilder;-><init>()V

    const-string v55, "notifyChangeToPlugin Exception "

    invoke-virtual/range {v54 .. v55}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v54

    move-object/from16 v0, v54

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v54

    invoke-static/range {v53 .. v54}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
    .end packed-switch
.end method
