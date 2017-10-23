.class public Lcom/android/server/UserDeviceATCmd;
.super Ljava/lang/Object;
.source "UserDeviceATCmd.java"

# interfaces
.implements Lcom/android/server/IWorkOnAt;


# static fields
.field private static final AT_COMMAND_HEADER:Ljava/lang/String; = "AT"

.field private static final AT_COMMAND_URDEVICE:Ljava/lang/String; = "URDEVICE"

.field private static final AT_RESPONSE_CONN_FAILED:Ljava/lang/String; = "NG (FAILED CONNECTION)"

.field private static final AT_RESPONSE_DEV:Ljava/lang/String; = "1"

.field private static final AT_RESPONSE_ERR:Ljava/lang/String; = "0"

.field private static final AT_RESPONSE_EXCEPTION:Ljava/lang/String; = "NG (EXCEPTION)"

.field private static final AT_RESPONSE_EXIST_EM_TOKEN:Ljava/lang/String; = "EMTOKEN"

.field private static final AT_RESPONSE_INVALID_PARAM:Ljava/lang/String; = "NG (INVALID_PARAM)"

.field private static final AT_RESPONSE_NG:Ljava/lang/String; = "NG"

.field private static final AT_RESPONSE_NO_EM_TOKEN:Ljava/lang/String; = "NONE"

.field private static final AT_RESPONSE_OK:Ljava/lang/String; = "OK"

.field private static final AT_RESPONSE_USR:Ljava/lang/String; = "2"

.field private static final EM_PROPERTY:Ljava/lang/String; = "ro.boot.em.status"

.field private static final EM_PROPERTY_STATE_DEV:Ljava/lang/String; = "0x1"

.field private static final EM_PROPERTY_STATE_USR:Ljava/lang/String; = "0x0"

.field private static final EM_PROPERTY_STATE_USR_WITH_EM:Ljava/lang/String; = "0x2"

.field private static final TAG:Ljava/lang/String; = "UserDeviceATCmd"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mEMMgr:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

.field private mErrorCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    sput-object p1, Lcom/android/server/UserDeviceATCmd;->mContext:Landroid/content/Context;

    .line 44
    new-instance v0, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/UserDeviceATCmd;->mEMMgr:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    .line 45
    return-void
.end method

.method private makeResCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "resDev"    # Ljava/lang/String;
    .param p2, "resTok"    # Ljava/lang/String;

    .prologue
    .line 134
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 136
    .local v0, "result":Ljava/lang/String;
    const-string v1, "2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "NONE"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 137
    const-string v0, "OK,"

    .line 142
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    return-object v0

    .line 139
    :cond_0
    const-string v0, "NG,"

    goto :goto_0
.end method

.method private parsingParam(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 149
    const/4 v2, 0x0

    .line 152
    .local v2, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "params":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 161
    .end local v1    # "params":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 158
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getCmd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 50
    .local v0, "response":Ljava/lang/String;
    const-string v0, "URDEVICE"

    .line 51
    return-object v0
.end method

.method public processCmd(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v8, 0x0

    .line 56
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4}, Ljava/lang/String;-><init>()V

    .line 57
    .local v4, "result":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/server/UserDeviceATCmd;->parsingParam(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 59
    .local v3, "params":[Ljava/lang/String;
    const/4 v7, 0x2

    new-array v5, v7, [Ljava/lang/String;

    const-string v7, "0,0,0,0"

    aput-object v7, v5, v8

    const-string v7, "1,0,0,0"

    aput-object v7, v5, v10

    .line 64
    .local v5, "supportedParams":[Ljava/lang/String;
    if-nez v3, :cond_0

    .line 65
    const-string v7, "UserDeviceATCmd"

    const-string/jumbo v8, "processCmd: params is null"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v7, "NG (INVALID_PARAM)"

    .line 129
    :goto_0
    return-object v7

    .line 69
    :cond_0
    iget-object v7, p0, Lcom/android/server/UserDeviceATCmd;->mEMMgr:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    if-nez v7, :cond_1

    .line 70
    const-string v7, "UserDeviceATCmd"

    const-string v8, "Cannot connect to em service"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const-string v7, "NG (FAILED CONNECTION)"

    goto :goto_0

    .line 74
    :cond_1
    iget-object v7, p0, Lcom/android/server/UserDeviceATCmd;->mEMMgr:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-virtual {v7}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isConnected()Z

    move-result v7

    if-nez v7, :cond_2

    .line 75
    const-string v7, "UserDeviceATCmd"

    const-string v8, "Failed to connect to em service"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v7, "NG (FAILED CONNECTION)"

    goto :goto_0

    .line 80
    :cond_2
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 83
    const/4 v7, 0x0

    aget-object v7, v5, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 85
    const-string v7, "UserDeviceATCmd"

    const-string v8, "AT+URDEVICE=0,0,0,0"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v7, p0, Lcom/android/server/UserDeviceATCmd;->mEMMgr:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-virtual {v7}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->removeToken()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/UserDeviceATCmd;->mEMMgr:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    if-ne v7, v10, :cond_3

    .line 87
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "OK"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 91
    :goto_1
    const-string v7, "UserDeviceATCmd"

    const-string v8, "0,0,0,0 is complete."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move-object v7, v4

    .line 129
    goto :goto_0

    .line 89
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "NG"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 94
    :cond_4
    const/4 v7, 0x1

    aget-object v7, v5, v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    aget-object v9, v5, v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 96
    const-string v7, "UserDeviceATCmd"

    const-string v8, "AT+URDEVICE=1,0,0,0"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 100
    .local v0, "devStatus":Ljava/lang/String;
    const-string/jumbo v7, "ro.boot.em.status"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "emProp":Ljava/lang/String;
    const-string v7, "0x0"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "0x2"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 103
    :cond_5
    const-string v0, "2"

    .line 110
    :goto_3
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6}, Ljava/lang/String;-><init>()V

    .line 111
    .local v6, "tokStatus":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/UserDeviceATCmd;->mEMMgr:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    invoke-virtual {v7}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->isTokenInstalled()I

    move-result v7

    iget-object v8, p0, Lcom/android/server/UserDeviceATCmd;->mEMMgr:Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    if-ne v7, v10, :cond_8

    .line 112
    const-string v6, "EMTOKEN"

    .line 116
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-direct {p0, v0, v6}, Lcom/android/server/UserDeviceATCmd;->makeResCmd(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 118
    const-string v7, "UserDeviceATCmd"

    const-string v8, "1,0,0,0 is complete."

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 124
    .end local v0    # "devStatus":Ljava/lang/String;
    .end local v2    # "emProp":Ljava/lang/String;
    .end local v6    # "tokStatus":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "NG (EXCEPTION)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 126
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 104
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "devStatus":Ljava/lang/String;
    .restart local v2    # "emProp":Ljava/lang/String;
    :cond_6
    :try_start_1
    const-string v7, "0x1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 105
    const-string v0, "1"

    goto :goto_3

    .line 107
    :cond_7
    const-string v0, "0"

    goto :goto_3

    .line 114
    .restart local v6    # "tokStatus":Ljava/lang/String;
    :cond_8
    const-string v6, "NONE"

    goto :goto_4

    .line 121
    .end local v0    # "devStatus":Ljava/lang/String;
    .end local v2    # "emProp":Ljava/lang/String;
    .end local v6    # "tokStatus":Ljava/lang/String;
    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "NG (INVALID_PARAM)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    goto/16 :goto_2
.end method
