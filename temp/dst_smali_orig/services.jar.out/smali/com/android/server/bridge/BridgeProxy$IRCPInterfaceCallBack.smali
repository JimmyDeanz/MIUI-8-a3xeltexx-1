.class Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;
.super Landroid/content/IRCPInterface$Stub;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/bridge/BridgeProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IRCPInterfaceCallBack"
.end annotation


# static fields
.field public static final EACCES:I = -0xd

.field public static final EBUSY:I = -0x10

.field public static final ENAMETOOLONG:I = -0x24

.field public static final ENOENT:I = -0x2

.field public static final ENOSPC:I = -0x1c

.field public static final POLICY_NOT_ALLOWED:I = -0xf4240

.field public static final REGISTRATION_EXCEPTION:I = -0xf4241

.field public static final REMOTE_EXCEPTION:I = -0xf4242

.field public static final SUCCESS:I


# instance fields
.field final synthetic this$0:Lcom/android/server/bridge/BridgeProxy;


# direct methods
.method private constructor <init>(Lcom/android/server/bridge/BridgeProxy;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    invoke-direct {p0}, Landroid/content/IRCPInterface$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p2, "x1"    # Lcom/android/server/bridge/BridgeProxy$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    return-void
.end method

.method private changeExtSdPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "srcFilePath"    # Ljava/lang/String;
    .param p2, "destFilePath"    # Ljava/lang/String;

    .prologue
    move-object v1, p2

    .local v1, "retFilePath":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "/mnt/extSdCard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "^/mnt/extSdCard"

    const-string v3, "/mnt/sdcard"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v2, "/storage/extSdCard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "^/storage/extSdCard"

    const-string v3, "/mnt/sdcard"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v2, "/storage/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt/sdcard"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    const-string v4, "/storage/"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "changeExtSdPath(): npe has occured"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private copyListToFile(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, "fosrc":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .local v8, "fosdst":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .local v2, "bridgeProxyDir":Ljava/io/File;
    const/4 v13, 0x0

    .local v13, "srcFile":Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "destFile":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v16, "/data/misc/BridgeProxy"

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .local v3, "bridgeProxyDir":Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    new-instance v14, Ljava/io/File;

    const-string v16, "srcCreateFile"

    move-object/from16 v0, v16

    invoke-direct {v14, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v13    # "srcFile":Ljava/io/File;
    .local v14, "srcFile":Ljava/io/File;
    const/16 v16, 0x1

    const/16 v17, 0x0

    :try_start_2
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .local v11, "fosrc":Ljava/io/FileOutputStream;
    :try_start_3
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v16

    const-string v17, " FILE opened : "

    invoke-static/range {v16 .. v17}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v12, v0, :cond_0

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .local v15, "srcPath":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    const-string v16, "line.separator"

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Ljava/io/FileOutputStream;->write([B)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .end local v15    # "srcPath":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/io/File;

    const-string v16, "dstCreateFile"

    move-object/from16 v0, v16

    invoke-direct {v5, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .end local v4    # "destFile":Ljava/io/File;
    .local v5, "destFile":Ljava/io/File;
    const/16 v16, 0x1

    const/16 v17, 0x0

    :try_start_4
    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .end local v8    # "fosdst":Ljava/io/FileOutputStream;
    .local v9, "fosdst":Ljava/io/FileOutputStream;
    const/4 v12, 0x0

    :goto_1
    :try_start_5
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v12, v0, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, "dstPath":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    const-string v16, "line.separator"

    invoke-static/range {v16 .. v16}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->getBytes()[B

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/io/FileOutputStream;->write([B)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .end local v6    # "dstPath":Ljava/lang/String;
    :cond_1
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v16

    const-string v17, " FILE closed "

    invoke-static/range {v16 .. v17}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    if-eqz v3, :cond_4

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_4
    if-eqz v14, :cond_5

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_5
    if-eqz v5, :cond_10

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v8, v9

    .end local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v8    # "fosdst":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .end local v12    # "i":I
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    :cond_6
    :goto_2
    return-void

    :catch_0
    move-exception v7

    .local v7, "fe":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_6
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v16

    const-string v17, "BridgeFileNotFOundexception"

    invoke-static/range {v16 .. v17}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    :cond_8
    if-eqz v2, :cond_9

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_9
    if-eqz v13, :cond_a

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_a
    if-eqz v4, :cond_6

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    goto :goto_2

    .end local v7    # "fe":Ljava/io/FileNotFoundException;
    :catchall_0
    move-exception v16

    :goto_4
    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    :cond_b
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    :cond_c
    if-eqz v2, :cond_d

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_d
    if-eqz v13, :cond_e

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_e
    if-eqz v4, :cond_f

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setExecutable(ZZ)Z

    :cond_f
    throw v16

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    :catchall_1
    move-exception v16

    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    goto :goto_4

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catchall_2
    move-exception v16

    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    goto :goto_4

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catchall_3
    move-exception v16

    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v12    # "i":I
    .restart local v14    # "srcFile":Ljava/io/File;
    :catchall_4
    move-exception v16

    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v8    # "fosdst":Ljava/io/FileOutputStream;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catchall_5
    move-exception v16

    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v8, v9

    .end local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v8    # "fosdst":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v12    # "i":I
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    :catch_1
    move-exception v7

    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    goto/16 :goto_3

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catch_2
    move-exception v7

    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    goto/16 :goto_3

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catch_3
    move-exception v7

    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v12    # "i":I
    .restart local v14    # "srcFile":Ljava/io/File;
    :catch_4
    move-exception v7

    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v8    # "fosdst":Ljava/io/FileOutputStream;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v14    # "srcFile":Ljava/io/File;
    :catch_5
    move-exception v7

    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v8, v9

    .end local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v8    # "fosdst":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .end local v2    # "bridgeProxyDir":Ljava/io/File;
    .end local v4    # "destFile":Ljava/io/File;
    .end local v8    # "fosdst":Ljava/io/FileOutputStream;
    .end local v10    # "fosrc":Ljava/io/FileOutputStream;
    .end local v13    # "srcFile":Ljava/io/File;
    .restart local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v5    # "destFile":Ljava/io/File;
    .restart local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v14    # "srcFile":Ljava/io/File;
    :cond_10
    move-object v4, v5

    .end local v5    # "destFile":Ljava/io/File;
    .restart local v4    # "destFile":Ljava/io/File;
    move-object v13, v14

    .end local v14    # "srcFile":Ljava/io/File;
    .restart local v13    # "srcFile":Ljava/io/File;
    move-object v2, v3

    .end local v3    # "bridgeProxyDir":Ljava/io/File;
    .restart local v2    # "bridgeProxyDir":Ljava/io/File;
    move-object v8, v9

    .end local v9    # "fosdst":Ljava/io/FileOutputStream;
    .restart local v8    # "fosdst":Ljava/io/FileOutputStream;
    move-object v10, v11

    .end local v11    # "fosrc":Ljava/io/FileOutputStream;
    .restart local v10    # "fosrc":Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method private isContainerStateIsValid(I)Z
    .locals 5
    .param p1, "moveToDstCId"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne p1, v3, :cond_0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Move to Personal mode. return true"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v0

    .local v0, "info":Landroid/content/pm/PersonaInfo;
    if-nez v0, :cond_1

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get a persona info. moveToDstCId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v3

    sget-object v4, Landroid/content/pm/PersonaState;->SUPER_LOCKED:Landroid/content/pm/PersonaState;

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v3

    if-eqz v3, :cond_2

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Persona is superlocked"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :cond_2
    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->partial:Z

    if-eqz v3, :cond_3

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Persona is partially created"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :cond_3
    iget-boolean v3, v0, Landroid/content/pm/PersonaInfo;->removePersona:Z

    if-eqz v3, :cond_4

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Persona is removed"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v3

    sget-object v4, Landroid/content/pm/PersonaState;->DELETING:Landroid/content/pm/PersonaState;

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v3

    sget-object v4, Landroid/content/pm/PersonaState;->CREATING:Landroid/content/pm/PersonaState;

    invoke-virtual {v3, v4}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Persona state is invalid for moving files "

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    goto/16 :goto_0

    :cond_6
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Persona state is valid for moving files"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method


# virtual methods
.method public cancel(J)V
    .locals 5
    .param p1, "threadId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "cancel"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel() threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, "mIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$3200(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "mBundle":Landroid/os/Bundle;
    const-string v2, "task"

    const-string v3, "TASK_CANCEL_FILE_OPERATION"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "sessionId"

    invoke-virtual {v0, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "moveFiles(), Starting FileOperationsHandler service TASK_CANCEL_FILE_OPERATION"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    return-void
.end method

.method public cancelCopyChunks(J)V
    .locals 3
    .param p1, "sessionId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v1, "cancelCopyChunks"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelCopyChunks() sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/RCPManager;->cancelCopyChunks(J)V

    return-void
.end method

.method public copyChunks(ILjava/lang/String;ILjava/lang/String;JIJZ)I
    .locals 2
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .param p5, "offset"    # J
    .param p7, "length"    # I
    .param p8, "sessionId"    # J
    .param p10, "deleteSrc"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Warning!!!!  copyChunks() is disabled!!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, -0x2ed993

    return v0
.end method

.method public copyFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 5
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "copyFile"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile() srcContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; srcFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getFilesPolicy(II)I
    invoke-static {v2, p1, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3500(Lcom/android/server/bridge/BridgeProxy;II)I

    move-result v0

    .local v0, "exportCheck":I
    if-eqz v0, :cond_0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile(): Permissions (POLICY_NOT_ALLOWED)  or error for srcContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; exportCheck="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "exportCheck":I
    :goto_0
    return v0

    .restart local v0    # "exportCheck":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const/4 v3, 0x2

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getFilesPolicy(II)I
    invoke-static {v2, p3, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3500(Lcom/android/server/bridge/BridgeProxy;II)I

    move-result v1

    .local v1, "importCheck":I
    if-eqz v1, :cond_1

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "copyFile(): Permissions (POLICY_NOT_ALLOWED) or error for destContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; importCheck="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p4}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->changeExtSdPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/RCPManager;->copyFileInternal(ILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public copyFiles(ILjava/util/List;ILjava/util/List;Landroid/content/IRCPInterfaceCallback;)J
    .locals 8
    .param p1, "srcContainerId"    # I
    .param p3, "destContainerId"    # I
    .param p5, "callback"    # Landroid/content/IRCPInterfaceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/IRCPInterfaceCallback;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v5, "copyFiles"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v4, v5}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyFiles() srcContainerId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; srcFilePaths="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; destContainerId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; destFilePaths="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "mIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$3200(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "mBundle":Landroid/os/Bundle;
    const-string v4, "task"

    const-string v5, "TASK_COPY_FILES"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "srcContainerId"

    invoke-virtual {v0, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "destContainerId"

    invoke-virtual {v0, v4, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v4, "srcFilePaths"

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v4, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v4, "destFilePaths"

    check-cast p4, Ljava/util/ArrayList;

    .end local p4    # "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v4, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v1, Landroid/os/Messenger;

    invoke-interface {p5}, Landroid/content/IRCPInterfaceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .local v1, "mCallBackMessenger":Landroid/os/Messenger;
    const-string v4, "callBackMessenger"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    const-wide v6, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v4, v6

    double-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .local v3, "mSessionId":Ljava/lang/Long;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "copyFiles() ,mSessionId :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "sessionId"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v4

    const-string v5, "copyFiles(), Starting FileOperationsHandler service TASK_COPY_FILES"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static {v5}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    return-wide v4
.end method

.method public getErrorMessage(I)Ljava/lang/String;
    .locals 5
    .param p1, "errorId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "getErrorMessage"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    const/16 v1, 0x1f4

    .local v1, "resourceId":I
    sparse-switch p1, :sswitch_data_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "UNDEFINED"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "REGISTRATION_EXCEPTION"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/bridge/BridgeProxy;->access$3300(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v1, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3700(Lcom/android/server/bridge/BridgeProxy;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    return-object v2

    :sswitch_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "SUCCESS"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "ENOSPC"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "POLICY_NOT_ALLOWED"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "REGISTRATION_EXCEPTION"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "UNDEFINED"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(I)Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/server/bridge/BridgeProxy;->access$3800(Lcom/android/server/bridge/BridgeProxy;I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getErrorMessage(): cannot get error resource for resourceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "General error"

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        -0xf4242 -> :sswitch_4
        -0xf4241 -> :sswitch_3
        -0xf4240 -> :sswitch_2
        -0x24 -> :sswitch_4
        -0x1c -> :sswitch_1
        -0x10 -> :sswitch_4
        -0xd -> :sswitch_4
        -0x2 -> :sswitch_4
        0x0 -> :sswitch_0
        0x1 -> :sswitch_4
        0x6 -> :sswitch_4
        0x8 -> :sswitch_1
        0xa -> :sswitch_4
        0xb -> :sswitch_2
        0xc -> :sswitch_3
        0xd -> :sswitch_4
        0xe -> :sswitch_4
    .end sparse-switch
.end method

.method public getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v1, "getFileInfo"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFileInfo(): path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; containerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/RCPManager;->getFileInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFiles(Ljava/lang/String;I)Ljava/util/List;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v1, "getFiles"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/RCPManager;->getFiles(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method isContainerIdIsValid(II)Z
    .locals 1
    .param p1, "srcContainerId"    # I
    .param p2, "destContainerId"    # I

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->isContainerIdIsValid(IIZ)Z

    move-result v0

    return v0
.end method

.method isContainerIdIsValid(IIZ)Z
    .locals 3
    .param p1, "srcContainerId"    # I
    .param p2, "destContainerId"    # I
    .param p3, "isMoveOperation"    # Z

    .prologue
    const/4 v1, 0x0

    if-eqz p3, :cond_4

    if-ne p1, p2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x0

    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v0

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .end local v0    # "uid":I
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .restart local v0    # "uid":I
    :cond_3
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_0

    if-nez p2, :cond_0

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .end local v0    # "uid":I
    :cond_4
    if-ne p1, p2, :cond_0

    if-ltz p1, :cond_0

    if-gez p2, :cond_2

    goto :goto_0
.end method

.method public isFileExist(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v1, "isFileExist"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v0}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/os/RCPManager;->isFileExist(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isMoveFilesAllowed(II)Z
    .locals 12
    .param p1, "srcContainerId"    # I
    .param p2, "destContainerId"    # I

    .prologue
    const/4 v4, 0x0

    .local v4, "pi":Landroid/content/pm/PersonaInfo;
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v9

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v4

    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    iget-boolean v9, v4, Landroid/content/pm/PersonaInfo;->isUserManaged:Z

    if-eqz v9, :cond_2

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string v10, "isMoveFilesAllowed : user managed container. return true"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    :goto_1
    return v6

    :cond_1
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getInstance()Lcom/sec/enterprise/knox/EnterpriseKnoxManager;

    move-result-object v2

    .local v2, "ekm":Lcom/sec/enterprise/knox/EnterpriseKnoxManager;
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v8

    .local v8, "uid":I
    const/4 v7, 0x0

    .local v7, "retToOwner":Z
    const/4 v6, 0x1

    .local v6, "retToKnox":Z
    if-nez v8, :cond_3

    :try_start_0
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2, v9, p2}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v0

    .local v0, "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/sec/enterprise/knox/container/RCPPolicy;

    move-result-object v5

    .local v5, "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/RCPPolicy;->isMoveFilesToContainerAllowed()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .end local v0    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v5    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    :goto_2
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isMoveFilesAllowed : retToKnox = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/SecurityException;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string v10, "isMoveFilesAllowed : SecurityException occured"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    goto :goto_2

    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    .local v3, "npe":Ljava/lang/NullPointerException;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string v10, "isMoveFilesAllowed : NullPointerException occured"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x1

    goto :goto_2

    .end local v3    # "npe":Ljava/lang/NullPointerException;
    :cond_3
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v9

    if-eqz v9, :cond_4

    :try_start_1
    iget-object v9, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v2, v9, v8}, Lcom/sec/enterprise/knox/EnterpriseKnoxManager;->getKnoxContainerManager(Landroid/content/Context;I)Lcom/sec/enterprise/knox/container/KnoxContainerManager;

    move-result-object v0

    .restart local v0    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/container/KnoxContainerManager;->getRCPPolicy()Lcom/sec/enterprise/knox/container/RCPPolicy;

    move-result-object v5

    .restart local v5    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    invoke-virtual {v5}, Lcom/sec/enterprise/knox/container/RCPPolicy;->isMoveFilesToOwnerAllowed()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v7

    .end local v0    # "containerMgr":Lcom/sec/enterprise/knox/container/KnoxContainerManager;
    .end local v5    # "rcpPolicy":Lcom/sec/enterprise/knox/container/RCPPolicy;
    :goto_3
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isMoveFilesAllowed : retToOwner = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    goto/16 :goto_1

    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/SecurityException;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string v10, "isMoveFilesAllowed : SecurityException occured"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_3

    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_3
    move-exception v3

    .restart local v3    # "npe":Ljava/lang/NullPointerException;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string v10, "isMoveFilesAllowed : NullPointerException occured"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    goto :goto_3

    .end local v3    # "npe":Ljava/lang/NullPointerException;
    :cond_4
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v9

    const-string v10, "isMoveFilesAllowed : End of function. Return false"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method public moveFile(ILjava/lang/String;ILjava/lang/String;)I
    .locals 5
    .param p1, "srcContainerId"    # I
    .param p2, "srcFilePath"    # Ljava/lang/String;
    .param p3, "destContainerId"    # I
    .param p4, "destFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v3, "moveFile"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveFile() srcContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; srcFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; destFilePath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p3}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->isContainerIdIsValid(II)Z

    move-result v2

    if-nez v2, :cond_0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "moveFile() containerID is not valid"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x6

    :goto_0
    return v2

    :cond_0
    invoke-direct {p0, p3}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->isContainerStateIsValid(I)Z

    move-result v2

    if-nez v2, :cond_1

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "fileOperation() container state is not valid"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .local v1, "um":Landroid/os/UserManager;
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .local v0, "ui":Landroid/content/pm/UserInfo;
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v3, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    # setter for: Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/server/bridge/BridgeProxy;->access$3302(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    const v2, -0xf4241

    goto :goto_0

    .end local v0    # "ui":Landroid/content/pm/UserInfo;
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_1
    invoke-virtual {p0, p1, p3}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->isMoveFilesAllowed(II)Z

    move-result v2

    if-nez v2, :cond_2

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "moveFile() policy is denied"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0xb

    goto :goto_0

    :cond_2
    invoke-static {p2}, Lcom/android/server/bridge/util/FileUtils;->isAllowedFileName(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v2

    const-string v3, "moveFile() not allowed file name"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x5

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p4}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->changeExtSdPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mbridge:Landroid/os/RCPManager;
    invoke-static {v2}, Lcom/android/server/bridge/BridgeProxy;->access$3000(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/RCPManager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/os/RCPManager;->moveFile(ILjava/lang/String;ILjava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public moveFiles(ILjava/util/List;ILjava/util/List;Landroid/content/IRCPInterfaceCallback;)J
    .locals 10
    .param p1, "srcContainerId"    # I
    .param p3, "destContainerId"    # I
    .param p5, "callback"    # Landroid/content/IRCPInterfaceCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/IRCPInterfaceCallback;",
            ")J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    const-string v7, "moveFiles"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "moveFiles() srcContainerId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; srcFilePaths="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; destContainerId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; destFilePaths="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy$BridgeLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "user"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserManager;

    .local v5, "um":Landroid/os/UserManager;
    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mPm:Landroid/os/PersonaManager;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$700(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/PersonaManager;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/PersonaInfo;->id:I

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .local v4, "ui":Landroid/content/pm/UserInfo;
    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    iget-object v7, v4, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    # setter for: Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/android/server/bridge/BridgeProxy;->access$3302(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    .end local v4    # "ui":Landroid/content/pm/UserInfo;
    .end local v5    # "um":Landroid/os/UserManager;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.sec.knox.bridge.service.ACTION_FILE_OPERATIONS"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, "mIntent":Landroid/content/Intent;
    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$3200(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "mBundle":Landroid/os/Bundle;
    const-string v6, "task"

    const-string v7, "TASK_MOVE_FILES"

    invoke-virtual {v0, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "srcContainerId"

    invoke-virtual {v0, v6, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "destContainerId"

    invoke-virtual {v0, v6, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v6, "srcFilePaths"

    check-cast p2, Ljava/util/ArrayList;

    .end local p2    # "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v6, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v6, "destFilePaths"

    check-cast p4, Ljava/util/ArrayList;

    .end local p4    # "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0, v6, p4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    new-instance v1, Landroid/os/Messenger;

    invoke-interface {p5}, Landroid/content/IRCPInterfaceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .local v1, "mCallBackMessenger":Landroid/os/Messenger;
    const-string v6, "callBackMessenger"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    const-wide v8, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .local v3, "mSessionId":Ljava/lang/Long;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "moveFiles ,mSessionId :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "sessionId"

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v6

    const-string v7, "moveFiles(), Starting FileOperationsHandler service TASK_MOVE_FILES"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static {v7}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    return-wide v6
.end method

.method public moveFilesForApp(ILjava/util/List;Ljava/util/List;)J
    .locals 28
    .param p1, "requestApp"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p2, "srcFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "destFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    const-string v26, "moveFilesForApp"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static/range {v25 .. v26}, Lcom/android/server/bridge/BridgeProxy;->access$1800(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I

    const/4 v11, 0x0

    .local v11, "isFileCreate":Z
    :try_start_0
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v25

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "moveFilesForApp() srcFilePaths="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "; destFilePaths="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, "reqApp = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v24, "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v6, "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v17, Landroid/content/Intent;

    invoke-direct/range {v17 .. v17}, Landroid/content/Intent;-><init>()V

    .local v17, "moveTo":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$3200(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "com.sec.knox.bridge.activity.MoveToKnoxActivity"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v25, "requestApp"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v25, "launchAfterLockCheck"

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v25, 0x10000000

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0xc8

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v25

    const/16 v26, 0xc8

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_0

    const/4 v11, 0x1

    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v25

    const-string v26, " src_FILE_READ_OPERATION "

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v6}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->copyListToFile(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const-string v25, "isFileCreated"

    const/16 v26, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v25, "srcFilePath"

    const-string v26, "/data/misc/BridgeProxy/srcCreateFile"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v25, "destFilePath"

    const-string v26, "/data/misc/BridgeProxy/dstCreateFile"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/os/PersonaManager;->getKnoxInfoForApp(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v13

    .local v13, "mKnoxInfoForApp":Landroid/os/Bundle;
    const-string v25, "KnoxIdNamePair"

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    .local v12, "mKnoxIdNamePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v16

    .local v16, "mMoveToSrcCId":I
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v25

    move/from16 v0, v16

    move/from16 v1, v25

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static/range {v26 .. v26}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-wide/16 v26, 0x0

    .end local v6    # "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "mKnoxIdNamePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v13    # "mKnoxInfoForApp":Landroid/os/Bundle;
    .end local v16    # "mMoveToSrcCId":I
    .end local v17    # "moveTo":Landroid/content/Intent;
    .end local v24    # "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    return-wide v26

    .restart local v6    # "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "moveTo":Landroid/content/Intent;
    .restart local v24    # "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/bridge/BridgeProxy;->access$800()Ljava/lang/String;

    move-result-object v25

    const-string v26, "copyListToFile - IOException"

    invoke-static/range {v25 .. v26}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .end local v6    # "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "e":Ljava/io/IOException;
    .end local v17    # "moveTo":Landroid/content/Intent;
    .end local v24    # "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v7

    .local v7, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .end local v7    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    const-wide/16 v26, 0x0

    goto :goto_1

    .restart local v6    # "dstPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v17    # "moveTo":Landroid/content/Intent;
    .restart local v24    # "srcPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    :try_start_3
    const-string v25, "srcFilePaths"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v25, "dstFilePaths"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0

    .restart local v12    # "mKnoxIdNamePair":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v13    # "mKnoxInfoForApp":Landroid/os/Bundle;
    .restart local v16    # "mMoveToSrcCId":I
    :cond_1
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Ljava/util/HashMap;->size()I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "idSet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v14, 0x0

    .local v14, "mMoveToDstCId":I
    const/4 v15, 0x0

    .local v15, "mMoveToDstName":Ljava/lang/String;
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15    # "mMoveToDstName":Ljava/lang/String;
    check-cast v15, Ljava/lang/String;

    .restart local v15    # "mMoveToDstName":Ljava/lang/String;
    goto :goto_3

    :cond_2
    const-string v25, "moveToDstCId"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v25, "mMoveToDstName"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static/range {v26 .. v26}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .end local v9    # "idSet":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v14    # "mMoveToDstCId":I
    .end local v15    # "mMoveToDstName":Ljava/lang/String;
    :cond_3
    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    .local v20, "movetoBundle":Landroid/os/Bundle;
    if-nez v11, :cond_4

    const-string v25, "srcFilePaths"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v25, "dstFilePaths"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    :goto_4
    const-string v25, "requestApp"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v25, "launchAfterLockCheck"

    const/16 v26, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v25, "moveToDstCId"

    const/16 v26, -0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v25, "moveToFor"

    const-string v26, "File"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v18, Landroid/content/Intent;

    const-string v25, "com.sec.knox.bridge.MOVE_TO_KNOX"

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v18, "moveToIntent":Landroid/content/Intent;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .local v19, "moveToIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v27, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I
    invoke-static/range {v27 .. v27}, Lcom/android/server/bridge/BridgeProxy;->access$600(Lcom/android/server/bridge/BridgeProxy;)I

    move-result v27

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v22

    .local v22, "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->isEmpty()Z

    move-result v25

    if-nez v25, :cond_6

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    .local v23, "resolveInfo":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .local v21, "packageName":Ljava/lang/String;
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v5, "compName":Landroid/content/ComponentName;
    new-instance v10, Landroid/content/Intent;

    const-string v25, "com.sec.knox.bridge.MOVE_TO_KNOX"

    move-object/from16 v0, v25

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v10, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v25, "com.sec.knox.switcher.SwitchB2bActivityI"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-interface {v0, v1, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_5

    .end local v5    # "compName":Landroid/content/ComponentName;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v18    # "moveToIntent":Landroid/content/Intent;
    .end local v19    # "moveToIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v22    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v23    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_4
    const-string v25, "isFileCreated"

    const/16 v26, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v25, "srcFilePath"

    const-string v26, "/data/misc/BridgeProxy/srcCreateFile"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v25, "destFilePath"

    const-string v26, "/data/misc/BridgeProxy/dstCreateFile"

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .restart local v5    # "compName":Landroid/content/ComponentName;
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v10    # "intent":Landroid/content/Intent;
    .restart local v18    # "moveToIntent":Landroid/content/Intent;
    .restart local v19    # "moveToIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v21    # "packageName":Ljava/lang/String;
    .restart local v22    # "resInfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v23    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_5
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .end local v5    # "compName":Landroid/content/ComponentName;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v21    # "packageName":Ljava/lang/String;
    .end local v23    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_6
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v26, v0

    const-string v27, "move_to_knox"

    # invokes: Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v26 .. v27}, Lcom/android/server/bridge/BridgeProxy;->access$3400(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    .local v4, "chooserInten":Landroid/content/Intent;
    const-string v26, "android.intent.extra.INITIAL_INTENTS"

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Landroid/os/Parcelable;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v25

    check-cast v25, [Landroid/os/Parcelable;

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v25, 0x10000000

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;
    invoke-static/range {v25 .. v25}, Lcom/android/server/bridge/BridgeProxy;->access$1000(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;->this$0:Lcom/android/server/bridge/BridgeProxy;

    move-object/from16 v26, v0

    # getter for: Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;
    invoke-static/range {v26 .. v26}, Lcom/android/server/bridge/BridgeProxy;->access$900(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2
.end method
