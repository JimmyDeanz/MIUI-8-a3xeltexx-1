.class public Lcom/android/server/HdcptestATCmd;
.super Ljava/lang/Object;
.source "HdcptestATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final AT_COMMAND_HDCPTEST:Ljava/lang/String; = "HDCPTEST"

.field private static final AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final AT_COMMON_INTERVAL:Ljava/lang/String; = " "

.field private static final AT_HDCP_ENC_KEY:Ljava/lang/String; = "/redata.bin"

.field private static final AT_HDCP_EXEC_PATH:Ljava/lang/String; = "/system/bin/insthk"

.field private static final AT_HDCP_FILE_PATH_CPK:Ljava/lang/String; = "/efs/cpk"

.field private static final AT_HDCP_FILE_PATH_EFS:Ljava/lang/String; = "/efs"

.field private static final AT_HDCP_KEY_20:Ljava/lang/String; = "/h2k.dat"

.field private static final AT_RESPONSE_ERROR_EXEC:Ljava/lang/String; = "NG (ERROR_EXEC)"

.field private static final AT_RESPONSE_EXCEPTION:Ljava/lang/String; = "NG (EXCEPTION)"

.field private static final AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG (INVALID_PARAM)"

.field private static final AT_RESPONSE_NG:Ljava/lang/String; = "NG"

.field private static final AT_RESPONSE_NG_FIELD:Ljava/lang/String; = "NG_FIELD"

.field private static final AT_RESPONSE_NG_KEY:Ljava/lang/String; = "NG_KEY"

.field private static final AT_RESPONSE_NO_DATA:Ljava/lang/String; = "NG (NO_DATA)"

.field private static final AT_RESPONSE_NO_EFS_PARTITION:Ljava/lang/String; = "NG (NO_EFS)"

.field private static final AT_RESPONSE_NO_EXIST_PATH:Ljava/lang/String; = "NG (NO_PATH)"

.field private static final AT_RESPONSE_OK:Ljava/lang/String; = "OK"

.field private static final AT_WV_DEFAULT_SERIAL:Ljava/lang/String; = "S000000000000000"

.field private static final AT_WV_EXEC_PATH:Ljava/lang/String; = "/system/bin/wvkprov"

.field private static final AT_WV_KEY:Ljava/lang/String; = "/efs/wv.keys"

.field private static final AT_WV_VERIFICATION_CMD:Ljava/lang/String; = "veriwvkey"

.field private static final AT_WV_ZERO_STRING:Ljava/lang/String; = "0"

.field private static final EFS_PARTITION:Ljava/lang/String; = "/efs"

.field private static final ERROR_EXEC:I = 0x2c

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HdcptestATCmd"

.field private static final TYPE_DIR:I = 0x1

.field private static final TYPE_FILE:I = 0x2

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mErrorCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/android/server/HdcptestATCmd;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static checkPath(Ljava/lang/String;I)Z
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "result":Z
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v1, "tmpFile":Ljava/io/File;
    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static execCmd(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p0, "cmd"    # Ljava/lang/String;
    .param p1, "param"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    invoke-static {p0, v4}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v2, 0x2c

    :goto_0
    return v2

    :cond_0
    if-eqz p1, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    .local v3, "rt":Ljava/lang/Runtime;
    invoke-virtual {v3, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .local v1, "pc":Ljava/lang/Process;
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v1}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .local v2, "ret":I
    goto :goto_0

    .end local v1    # "pc":Ljava/lang/Process;
    .end local v2    # "ret":I
    .end local v3    # "rt":Ljava/lang/Runtime;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/16 v2, 0x2c

    .restart local v2    # "ret":I
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getHdcp2XPath()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v1, "/efs/cpk"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "/efs/cpk"

    .local v0, "hPath":Ljava/lang/String;
    const-string v1, "HdcptestATCmd"

    const-string v2, "Get path : cpk"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0

    .end local v0    # "hPath":Ljava/lang/String;
    :cond_0
    const-string v0, "/efs"

    .restart local v0    # "hPath":Ljava/lang/String;
    const-string v1, "HdcptestATCmd"

    const-string v2, "Get path : legacy"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static hexToByteArray(Ljava/lang/String;)[B
    .locals 4
    .param p0, "hexData"    # Ljava/lang/String;

    .prologue
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .local v0, "bArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    mul-int/lit8 v3, v1, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .local v2, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "params":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v1    # "params":Ljava/lang/String;
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .local v0, "response":Ljava/lang/String;
    const-string v0, "HDCPTEST"

    return-object v0
.end method

.method public processCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    new-instance v13, Ljava/lang/String;

    invoke-direct {v13}, Ljava/lang/String;-><init>()V

    .local v13, "result":Ljava/lang/String;
    invoke-direct/range {p0 .. p1}, Lcom/android/server/HdcptestATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .local v12, "params":[Ljava/lang/String;
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "0,0"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    const-string v18, "0,3"

    aput-object v18, v16, v17

    const/16 v17, 0x2

    const-string v18, "1,0"

    aput-object v18, v16, v17

    const/16 v17, 0x3

    const-string v18, "2,"

    aput-object v18, v16, v17

    const/16 v17, 0x4

    const-string v18, "3,3,"

    aput-object v18, v16, v17

    .local v16, "supportedParams":[Ljava/lang/String;
    if-nez v12, :cond_0

    const-string v17, "HdcptestATCmd"

    const-string v18, "processCmd: params is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "NG (INVALID_PARAM)"

    :goto_0
    return-object v17

    :cond_0
    const-string v17, "/efs"

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v17

    if-nez v17, :cond_1

    const-string v17, "HdcptestATCmd"

    const-string v18, "efs partition is not mounted"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "NG (NO_EFS)"

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .local v9, "hOStream":Ljava/io/FileOutputStream;
    const/4 v7, 0x0

    .local v7, "hBOStream":Ljava/io/BufferedOutputStream;
    :try_start_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    aget-object v18, v12, v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x0

    aget-object v17, v16, v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    aget-object v19, v16, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    const-string v17, "HdcptestATCmd"

    const-string v18, "AT+HDCPTEST=0,0"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "/efs/cpk"

    .local v11, "hPath":Ljava/lang/String;
    const-string v17, "/system/bin/insthk"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Lcom/android/server/HdcptestATCmd;->execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .local v14, "ret":I
    if-nez v14, :cond_4

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "OK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_1
    const-string v17, "HdcptestATCmd"

    const-string v18, "0,0 is complete!"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v11    # "hPath":Ljava/lang/String;
    .end local v14    # "ret":I
    :goto_2
    if-eqz v7, :cond_2

    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v7, 0x0

    :cond_2
    :goto_3
    if-eqz v9, :cond_3

    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v9, 0x0

    :cond_3
    :goto_4
    move-object/from16 v17, v13

    goto/16 :goto_0

    .restart local v11    # "hPath":Ljava/lang/String;
    .restart local v14    # "ret":I
    :cond_4
    :try_start_3
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/h2k.dat"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v17

    if-nez v17, :cond_5

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "NG_KEY"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_5
    const-string v11, "/efs"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/h2k.dat"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v17

    if-nez v17, :cond_6

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "NG_KEY"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_1

    :cond_6
    const/16 v17, 0x2c

    move/from16 v0, v17

    if-ne v14, v0, :cond_7

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "NG (ERROR_EXEC)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    :cond_7
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "NG_FIELD"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .end local v11    # "hPath":Ljava/lang/String;
    .end local v14    # "ret":I
    :cond_8
    const/16 v17, 0x1

    aget-object v17, v16, v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    aget-object v19, v16, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_d

    const-string v17, "HdcptestATCmd"

    const-string v18, "AT+HDCPTEST=0,3"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "/efs/wv.keys"

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v17

    if-nez v17, :cond_a

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "NG_KEY"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_5
    const-string v17, "HdcptestATCmd"

    const-string v18, "0,3 is complete."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "NG (EXCEPTION)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_9

    :try_start_5
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const/4 v7, 0x0

    :cond_9
    :goto_7
    if-eqz v9, :cond_3

    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    const/4 v9, 0x0

    goto/16 :goto_4

    .end local v6    # "e":Ljava/lang/Exception;
    :cond_a
    :try_start_7
    const-string v17, "/system/bin/wvkprov"

    const-string v18, "veriwvkey"

    invoke-static/range {v17 .. v18}, Lcom/android/server/HdcptestATCmd;->execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .restart local v14    # "ret":I
    if-nez v14, :cond_b

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "OK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :cond_b
    const/16 v17, 0x2c

    move/from16 v0, v17

    if-ne v14, v0, :cond_c

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "NG (ERROR_EXEC)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :cond_c
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "NG_FIELD"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_5

    .end local v14    # "ret":I
    :cond_d
    const/16 v17, 0x2

    aget-object v17, v16, v17

    const/16 v18, 0x0

    const/16 v19, 0x2

    aget-object v19, v16, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const-string v17, "HdcptestATCmd"

    const-string v18, "AT+HDCPTEST=1,0"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "S000000000000000"

    .local v3, "AT_RESPONSE_SERIAL":Ljava/lang/String;
    const-string v17, "ro.serialno"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .local v15, "serialNo":Ljava/lang/String;
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_10

    move-object v3, v15

    :goto_8
    const-string v17, "HdcptestATCmd"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Serial Number : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v17, "HdcptestATCmd"

    const-string v18, "1,0 is complete."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .end local v3    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .end local v15    # "serialNo":Ljava/lang/String;
    :catchall_0
    move-exception v17

    :goto_9
    if-eqz v7, :cond_e

    :try_start_8
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    const/4 v7, 0x0

    :cond_e
    :goto_a
    if-eqz v9, :cond_f

    :try_start_9
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    const/4 v9, 0x0

    :cond_f
    :goto_b
    throw v17

    .restart local v3    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .restart local v15    # "serialNo":Ljava/lang/String;
    :cond_10
    :try_start_a
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v17

    if-gtz v17, :cond_11

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "0"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    :cond_11
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8

    .end local v3    # "AT_RESPONSE_SERIAL":Ljava/lang/String;
    .end local v15    # "serialNo":Ljava/lang/String;
    :cond_12
    const/16 v17, 0x3

    aget-object v17, v16, v17

    const/16 v18, 0x0

    const/16 v19, 0x3

    aget-object v19, v16, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    const/16 v17, 0x1

    aget-object v17, v12, v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/HdcptestATCmd;->hexToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .local v4, "bArray":[B
    if-nez v4, :cond_13

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "NG (NO_DATA)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_c
    const-string v17, "HdcptestATCmd"

    const-string v18, "2,Data is complete."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_13
    const-string v17, "HdcptestATCmd"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "bArray size : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    array-length v0, v4

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Ljava/io/File;

    const-string v17, "/efs/cpk"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v5, "cpkPath":Ljava/io/File;
    const-string v17, "/efs/cpk"

    const/16 v18, 0x1

    invoke-static/range {v17 .. v18}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v17

    if-nez v17, :cond_14

    const-string v17, "HdcptestATCmd"

    const-string v18, "Make cpkPath"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_14
    invoke-static {}, Lcom/android/server/HdcptestATCmd;->getHdcp2XPath()Ljava/lang/String;

    move-result-object v11

    .restart local v11    # "hPath":Ljava/lang/String;
    new-instance v10, Ljava/io/FileOutputStream;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/redata.bin"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .end local v9    # "hOStream":Ljava/io/FileOutputStream;
    .local v10, "hOStream":Ljava/io/FileOutputStream;
    :try_start_b
    new-instance v8, Ljava/io/BufferedOutputStream;

    invoke-direct {v8, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .end local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    .local v8, "hBOStream":Ljava/io/BufferedOutputStream;
    :try_start_c
    const-string v17, "HdcptestATCmd"

    const-string v18, "Prepare buffer stream"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v4, v0, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    const-string v17, "HdcptestATCmd"

    const-string v18, "Write data into buffer"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->flush()V

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/redata.bin"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Lcom/android/server/HdcptestATCmd;->checkPath(Ljava/lang/String;I)Z

    move-result v17

    if-eqz v17, :cond_15

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "OK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v7, v8

    .end local v8    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v9    # "hOStream":Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .end local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    .end local v9    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v8    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v10    # "hOStream":Ljava/io/FileOutputStream;
    :cond_15
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "NG"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_8
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    move-result-object v13

    move-object v7, v8

    .end local v8    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v9    # "hOStream":Ljava/io/FileOutputStream;
    goto/16 :goto_c

    .end local v4    # "bArray":[B
    .end local v5    # "cpkPath":Ljava/io/File;
    .end local v11    # "hPath":Ljava/lang/String;
    :cond_16
    const/16 v17, 0x4

    :try_start_d
    aget-object v17, v16, v17

    const/16 v18, 0x0

    const/16 v19, 0x4

    aget-object v19, v16, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    const-string v17, "HdcptestATCmd"

    const-string v18, "AT+HDCPTEST=3,3,Data"

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x2

    aget-object v17, v12, v17

    if-eqz v17, :cond_17

    const/16 v17, 0x2

    aget-object v17, v12, v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_18

    :cond_17
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "NG (NO_DATA)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_d
    const-string v17, "HdcptestATCmd"

    const-string v18, "3,3,Data is complete."

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_18
    const-string v17, "HdcptestATCmd"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Param size : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const/16 v19, 0x2

    aget-object v19, v12, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v17, "/system/bin/wvkprov"

    const/16 v18, 0x2

    aget-object v18, v12, v18

    invoke-static/range {v17 .. v18}, Lcom/android/server/HdcptestATCmd;->execCmd(Ljava/lang/String;Ljava/lang/String;)I

    move-result v14

    .restart local v14    # "ret":I
    if-nez v14, :cond_19

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "OK"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_d

    :cond_19
    const/16 v17, 0x2c

    move/from16 v0, v17

    if-ne v14, v0, :cond_1a

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "NG (ERROR_EXEC)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_d

    :cond_1a
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "NG"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_d

    .end local v14    # "ret":I
    :cond_1b
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "NG (INVALID_PARAM)"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v13

    goto/16 :goto_2

    :catch_1
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_e
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    const/4 v7, 0x0

    goto/16 :goto_3

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v17

    const/4 v7, 0x0

    throw v17

    :catch_2
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_f
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    const/4 v9, 0x0

    goto/16 :goto_4

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_2
    move-exception v17

    const/4 v9, 0x0

    throw v17

    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    :try_start_10
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    const/4 v7, 0x0

    goto/16 :goto_7

    :catchall_3
    move-exception v17

    const/4 v7, 0x0

    throw v17

    :catch_4
    move-exception v6

    :try_start_11
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    const/4 v9, 0x0

    goto/16 :goto_4

    :catchall_4
    move-exception v17

    const/4 v9, 0x0

    throw v17

    .end local v6    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_12
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    const/4 v7, 0x0

    goto/16 :goto_a

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_5
    move-exception v17

    const/4 v7, 0x0

    throw v17

    :catch_6
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_13
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    const/4 v9, 0x0

    goto/16 :goto_b

    .end local v6    # "e":Ljava/lang/Exception;
    :catchall_6
    move-exception v17

    const/4 v9, 0x0

    throw v17

    .end local v9    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v4    # "bArray":[B
    .restart local v5    # "cpkPath":Ljava/io/File;
    .restart local v10    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v11    # "hPath":Ljava/lang/String;
    :catchall_7
    move-exception v17

    move-object v9, v10

    .end local v10    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v9    # "hOStream":Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .end local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    .end local v9    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v8    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v10    # "hOStream":Ljava/io/FileOutputStream;
    :catchall_8
    move-exception v17

    move-object v7, v8

    .end local v8    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v9    # "hOStream":Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .end local v9    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v10    # "hOStream":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v6

    move-object v9, v10

    .end local v10    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v9    # "hOStream":Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .end local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    .end local v9    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v8    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v10    # "hOStream":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v6

    move-object v7, v8

    .end local v8    # "hBOStream":Ljava/io/BufferedOutputStream;
    .restart local v7    # "hBOStream":Ljava/io/BufferedOutputStream;
    move-object v9, v10

    .end local v10    # "hOStream":Ljava/io/FileOutputStream;
    .restart local v9    # "hOStream":Ljava/io/FileOutputStream;
    goto/16 :goto_6
.end method
