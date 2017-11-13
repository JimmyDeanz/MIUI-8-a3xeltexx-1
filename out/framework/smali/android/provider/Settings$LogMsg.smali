.class public Landroid/provider/Settings$LogMsg;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogMsg"
.end annotation


# static fields
.field private static final DEVICE_PROVISION_LOG_FILE_PATH:Ljava/lang/String; = "/data/log/provisioned.txt"

.field private static final KEY_SETTINGS_DB_CALLSTACK_KEY_LIST:Ljava/lang/String; = "settings_db_callstack_key_list"

.field private static final MAX_SIZE_OF_LOG_FILE:J = 0x100000L

.field private static final SETTINGS_DB_CALLSTACK_LOG_FILE_PATH:Ljava/lang/String; = "/data/log_settings_db_callstack/SettingsDBCallStackLog.txt"

.field private static final SETTINGS_DB_KEY_DEFAULT:Ljava/lang/String; = ";"

.field private static SETTINGS_DB_KEY_LIST:Ljava/lang/String; = null

.field private static final SETTINGS_DB_KEY_UNSETTED:Ljava/lang/String; = "unsetted"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1294
    const-string/jumbo v0, "unsetted"

    sput-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCallStackDBKey(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    .line 1360
    const-string/jumbo v0, "settings_db_callstack_key_list"

    sget-object v1, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1361
    return-void
.end method

.method public static checkToMakeCallStackLog(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1299
    :try_start_0
    const-string/jumbo v2, "unsetted"

    sget-object v3, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1300
    const-string/jumbo v2, "settings_db_callstack_key_list"

    invoke-static {p0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    .line 1301
    sget-object v2, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1302
    const-string v2, ";"

    sput-object v2, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    .line 1306
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1307
    .local v1, "key":Ljava/lang/String;
    const-string v2, "device_provisioned"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1308
    const/4 v2, 0x1

    .line 1312
    .end local v1    # "key":Ljava/lang/String;
    :goto_0
    return v2

    .line 1310
    .restart local v1    # "key":Ljava/lang/String;
    :cond_1
    sget-object v2, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1311
    .end local v1    # "key":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1312
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getCallStackDBKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1365
    sget-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    return-object v0
.end method

.method public static setCallStackDBKey(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    .line 1354
    const-string/jumbo v0, "settings_db_callstack_key_list"

    sget-object v1, Landroid/provider/Settings$LogMsg;->SETTINGS_DB_KEY_LIST:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1355
    return-void
.end method

.method public static writeCallStackLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1317
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 1318
    .local v4, "now":Ljava/util/Calendar;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1319
    .local v0, "arrayOutputStream":Ljava/io/ByteArrayOutputStream;
    new-instance v9, Ljava/io/PrintStream;

    invoke-direct {v9, v0}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 1320
    .local v9, "pinrtStream":Ljava/io/PrintStream;
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/RuntimeException;->printStackTrace(Ljava/io/PrintStream;)V

    .line 1321
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1322
    .local v3, "msg":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " , "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1323
    .local v7, "output_str":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1324
    .local v1, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 1325
    .local v5, "osw":Ljava/io/OutputStreamWriter;
    const-string v10, "Settings"

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    :try_start_0
    const-string v8, ""

    .line 1328
    .local v8, "path":Ljava/lang/String;
    const-string v10, "device_provisioned"

    invoke-virtual {v10, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1329
    const-string v8, "/data/log/provisioned.txt"

    .line 1333
    :goto_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1334
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    .line 1335
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/32 v12, 0x100000

    cmp-long v10, v10, v12

    if-lez v10, :cond_4

    .line 1336
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1337
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1339
    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    :goto_1
    :try_start_2
    new-instance v6, Ljava/io/OutputStreamWriter;

    new-instance v10, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v10, v1, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v11, "UTF-8"

    invoke-direct {v6, v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1340
    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .local v6, "osw":Ljava/io/OutputStreamWriter;
    :try_start_3
    invoke-virtual {v6, v7}, Ljava/io/OutputStreamWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 1341
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1345
    if-eqz v6, :cond_0

    .line 1346
    :try_start_4
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    move-object v5, v6

    .line 1350
    .end local v6    # "osw":Ljava/io/OutputStreamWriter;
    .end local v8    # "path":Ljava/lang/String;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    :cond_1
    :goto_2
    return-void

    .line 1331
    .restart local v8    # "path":Ljava/lang/String;
    :cond_2
    :try_start_5
    const-string v8, "/data/log_settings_db_callstack/SettingsDBCallStackLog.txt"
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1348
    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v6    # "osw":Ljava/io/OutputStreamWriter;
    :catch_0
    move-exception v10

    move-object v5, v6

    .line 1349
    .end local v6    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_2

    .line 1342
    .end local v8    # "path":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1345
    :goto_3
    if-eqz v5, :cond_1

    .line 1346
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_2

    .line 1348
    :catch_2
    move-exception v10

    goto :goto_2

    .line 1344
    :catchall_0
    move-exception v10

    .line 1345
    :goto_4
    if-eqz v5, :cond_3

    .line 1346
    :try_start_7
    invoke-virtual {v5}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 1348
    :cond_3
    :goto_5
    throw v10

    :catch_3
    move-exception v11

    goto :goto_5

    .line 1344
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v8    # "path":Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_4

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v6    # "osw":Ljava/io/OutputStreamWriter;
    :catchall_2
    move-exception v10

    move-object v5, v6

    .end local v6    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_4

    .line 1342
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_4
    move-exception v10

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_3

    .end local v5    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v6    # "osw":Ljava/io/OutputStreamWriter;
    :catch_5
    move-exception v10

    move-object v5, v6

    .end local v6    # "osw":Ljava/io/OutputStreamWriter;
    .restart local v5    # "osw":Ljava/io/OutputStreamWriter;
    goto :goto_3

    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :cond_4
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_1
.end method
