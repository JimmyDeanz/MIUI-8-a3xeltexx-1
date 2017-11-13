.class public Lcom/android/server/PKMService;
.super Landroid/service/tima/IPKMService$Stub;
.source "PKMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PKMService$1;,
        Lcom/android/server/PKMService$PKMServiceHandler;,
        Lcom/android/server/PKMService$PKMTimerTask;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final EVENT_MSG_KERNEL_METADATA_MODIFIED:I = 0x4

.field private static final EVENT_MSG_KERNEL_MODIFIED:I = 0x3

.field private static final EVENT_MSG_LKM_MODIFIED:I = 0x1

.field private static final EVENT_MSG_SELINUX_OFF:I = 0x2

.field private static final PACKAGE_SECURITY_LOGUPLOAD_AGENT:Ljava/lang/String; = "com.samsung.android.securitylogagent"

.field private static final PKM_OPCODE_MEASUREMENT:I = 0xc350

.field private static final PKM_START_ID:I = 0x1

.field private static final PKM_SUBCODE_PKM:I = 0x2710

.field private static final PKM_TIMER_CHECK_INTERVAL:J = 0x493e0L

.field private static final PKM_TIMER_START_DELAY_FIRST_TIME:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "PKMService"

.field private static final TIMA_ALERT_TITLE:Ljava/lang/String; = "TIMA security measurement"

.field private static final TIMA_DUMP_LOG_EXEC:Ljava/lang/String; = "/system/bin/tima_dump_log -s 20 -d 40 -o "

.field private static final TIMA_EVENT_MSG:Ljava/lang/String; = "MSG="

.field private static final TIMA_EVENT_STATUS:Ljava/lang/String; = "TIMA_STATUS="

.field private static final TIMA_INTENT_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

.field private static final TIMA_LOG_DIR:Ljava/lang/String; = "/data/misc/tima"

.field private static final TIMA_LOG_STEM:Ljava/lang/String; = "/tima.log."

.field private static final TIMA_MAX_EVENTS:I = 0x64

.field private static final mEventList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field mPKMServiceHandler:Lcom/android/server/PKMService$PKMServiceHandler;

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/server/PKMService;->DBG:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/PKMService;->mEventList:Ljava/util/LinkedList;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Landroid/service/tima/IPKMService$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/PKMService;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/server/PKMService;->makePKMHandler()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/PKMService;->startPKMTimer()V

    :cond_0
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/server/PKMService;->DBG:Z

    return v0
.end method

.method private displayEvent(Ljava/lang/String;)V
    .locals 23
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    sget-boolean v20, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v20, :cond_0

    const-string v20, "PKMService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "TIMA MEASUREMENT Result: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    sget-object v20, Lcom/android/server/PKMService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->size()I

    move-result v20

    const/16 v21, 0x64

    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_3

    sget-object v20, Lcom/android/server/PKMService;->mEventList:Ljava/util/LinkedList;

    invoke-virtual/range {v20 .. v20}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_3
    const-string v19, " "

    .local v19, "time":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v19

    :cond_4
    :goto_1
    sget-object v20, Lcom/android/server/PKMService;->mEventList:Ljava/util/LinkedList;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ": "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v20, "TIMA_STATUS="

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v16

    .local v16, "statusIdx":I
    const/16 v20, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    .local v15, "sepIdx":I
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v15, v0, :cond_6

    :cond_5
    const-string v20, "PKMService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "TIMA MEASUREMENT invalid status: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v15    # "sepIdx":I
    .end local v16    # "statusIdx":I
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    sget-boolean v20, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v20, :cond_4

    const-string v20, "PKMService"

    const-string v21, "toLocalString() exception"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v15    # "sepIdx":I
    .restart local v16    # "statusIdx":I
    :cond_6
    const-string v20, "0"

    const-string v21, "TIMA_STATUS="

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int v21, v21, v16

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    sget-boolean v20, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v20, :cond_1

    const-string v20, "PKMService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "TIMA MEASUREMENT success status: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    const-string v20, "1"

    const-string v21, "TIMA_STATUS="

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    add-int v21, v21, v16

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    sget-boolean v20, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v20, :cond_1

    const-string v20, "PKMService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "TIMA Internal Error: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    const-string v20, "MSG="

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .local v14, "msgIdx":I
    const/16 v20, 0x3b

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->indexOf(II)I

    move-result v15

    const-string v13, ""

    .local v13, "msg":Ljava/lang/String;
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v14, v0, :cond_9

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v15, v0, :cond_a

    :cond_9
    sget-boolean v20, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v20, :cond_1

    const-string v20, "PKMService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "TIMA MEASUREMENT invalid result: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_a
    new-instance v3, Landroid/content/Intent;

    const-string v20, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    move-object/from16 v0, v20

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, "TimaEventIntent":Landroid/content/Intent;
    const-string v20, "MSG="

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    add-int v20, v20, v14

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string v20, "lkm_modified"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_b

    const-string v20, "TIMA_STATUS="

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_2
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v20, "yyyyMMddHHmmss"

    move-object/from16 v0, v20

    invoke-direct {v7, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v7, "dateFormat":Ljava/text/DateFormat;
    new-instance v20, Ljava/util/Date;

    invoke-direct/range {v20 .. v20}, Ljava/util/Date;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .local v6, "date":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v20

    const-string v21, "mkdir -p /data/misc/tima"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v20

    const-string v21, "chmod 701 /data/misc/tima"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    :try_start_3
    new-instance v8, Ljava/io/File;

    const-string v20, "/data/misc/tima"

    move-object/from16 v0, v20

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v8, "delAllTimaLogFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v10

    .local v10, "files":[Ljava/io/File;
    move-object v5, v10

    .local v5, "arr$":[Ljava/io/File;
    array-length v12, v5

    .local v12, "len$":I
    const/4 v11, 0x0

    .local v11, "i$":I
    :goto_5
    if-ge v11, v12, :cond_f

    aget-object v18, v5, v11

    .local v18, "timafile":Ljava/io/File;
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .end local v5    # "arr$":[Ljava/io/File;
    .end local v6    # "date":Ljava/lang/String;
    .end local v7    # "dateFormat":Ljava/text/DateFormat;
    .end local v8    # "delAllTimaLogFile":Ljava/io/File;
    .end local v10    # "files":[Ljava/io/File;
    .end local v11    # "i$":I
    .end local v12    # "len$":I
    .end local v18    # "timafile":Ljava/io/File;
    :cond_b
    const-string v20, "seandroid_off"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_c

    const-string v20, "TIMA_STATUS="

    const/16 v21, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :cond_c
    const-string v20, "kern_modified"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    const-string v20, "TIMA_STATUS="

    const/16 v21, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    :cond_d
    const-string v20, "kern_metadata_modified"

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_e

    const-string v20, "TIMA_STATUS="

    const/16 v21, 0x4

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_2

    :cond_e
    sget-boolean v20, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v20, :cond_1

    const-string v20, "PKMService"

    const-string v21, "TIMA: Unknown message from TIMA APPs. Not notifying the user"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v6    # "date":Ljava/lang/String;
    .restart local v7    # "dateFormat":Ljava/text/DateFormat;
    :catch_1
    move-exception v9

    .local v9, "e":Ljava/io/IOException;
    const-string v20, "PKMService"

    const-string v21, "Failed to create /data/misc/tima"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v9    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    const-string v20, "PKMService"

    const-string v21, "Failed to change permissions of /data/misc/tima"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .end local v9    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .end local v9    # "e":Ljava/lang/Exception;
    :cond_f
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/data/misc/tima/tima.log."

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .local v17, "tima_log_file":Ljava/lang/String;
    :try_start_4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "/system/bin/tima_dump_log -s 20 -d 40 -o "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_6
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "chmod 640 "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :goto_7
    sget-boolean v20, Lcom/android/server/TimaService;->iBootCompleted:Z

    if-nez v20, :cond_10

    const-string v20, "PKMService"

    const-string v21, "displayEvent(): iBootCompleted==false"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_4
    move-exception v9

    .local v9, "e":Ljava/io/IOException;
    const-string v20, "PKMService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed to execute: /system/bin/tima_dump_log -s 20 -d 40 -o "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v9    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v9

    .restart local v9    # "e":Ljava/io/IOException;
    const-string v20, "PKMService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Failed to change permissions of "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .end local v9    # "e":Ljava/io/IOException;
    :cond_10
    const-string v20, "com.samsung.android.securitylogagent"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v20, "TIMA_LOG_FILE"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PKMService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PKMService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "com.samsung.android.sm"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/server/PKMService;->isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_1

    new-instance v4, Landroid/content/Intent;

    const-string v20, "samsung.intent.action.knox.TIMA_NOTIFICATION"

    move-object/from16 v0, v20

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, "TimaSmartManagerIntent":Landroid/content/Intent;
    const-string v20, "com.samsung.android.sm"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PKMService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const-string v21, "com.sec.enterprise.knox.permission.MDM_ENTERPRISE_TIMA_NOTIFICATION"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private isPackageExisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .local v1, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .local v2, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    :try_start_0
    invoke-virtual {v2, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    :goto_0
    return v3

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method private makePKMHandler()Z
    .locals 5

    .prologue
    sget-boolean v3, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "PKMService"

    const-string v4, "makePKMHandler"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x0

    .local v2, "ret":Z
    new-instance v1, Landroid/os/HandlerThread;

    const-string v3, "PKMService"

    invoke-direct {v1, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v1, "pkmThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "pkmLooper":Landroid/os/Looper;
    if-eqz v0, :cond_1

    new-instance v3, Lcom/android/server/PKMService$PKMServiceHandler;

    invoke-direct {v3, p0, v0}, Lcom/android/server/PKMService$PKMServiceHandler;-><init>(Lcom/android/server/PKMService;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/server/PKMService;->mPKMServiceHandler:Lcom/android/server/PKMService$PKMServiceHandler;

    const/4 v2, 0x1

    const-string v3, "PKMService"

    const-string v4, "Success to get looper for PKMServiceHandler"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_1
    const-string v3, "PKMService"

    const-string v4, "Failed to get looper for PKMServiceHandler"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startPKMTimer()V
    .locals 6

    .prologue
    const-wide/32 v2, 0x493e0

    sget-boolean v0, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PKMService"

    const-string v1, "startPKMTimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/PKMService;->mTimer:Ljava/util/Timer;

    new-instance v0, Lcom/android/server/PKMService$PKMTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/PKMService$PKMTimerTask;-><init>(Lcom/android/server/PKMService;Lcom/android/server/PKMService$1;)V

    iput-object v0, p0, Lcom/android/server/PKMService;->mTimerTask:Ljava/util/TimerTask;

    iget-object v0, p0, Lcom/android/server/PKMService;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/server/PKMService;->mTimerTask:Ljava/util/TimerTask;

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static native timaCheckEvent(II)Ljava/lang/String;
.end method

.method static native timaCheckHistory(II)Ljava/lang/String;
.end method

.method static native timaDumpLog()[B
.end method


# virtual methods
.method public declared-synchronized checkEvent()Ljava/lang/String;
    .locals 5

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/PKMService;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, "mPowerManager":Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "PKMService"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .local v1, "mWakeLock":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const v3, 0xc350

    const/16 v4, 0x2710

    invoke-static {v3, v4}, Lcom/android/server/PKMService;->timaCheckEvent(II)Ljava/lang/String;

    move-result-object v2

    .local v2, "pkmResult":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    invoke-direct {p0, v2}, Lcom/android/server/PKMService;->displayEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v2

    .end local v0    # "mPowerManager":Landroid/os/PowerManager;
    .end local v1    # "mWakeLock":Landroid/os/PowerManager$WakeLock;
    .end local v2    # "pkmResult":Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized checkHistory(II)Ljava/lang/String;
    .locals 4
    .param p1, "operation"    # I
    .param p2, "subject"    # I

    .prologue
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PKMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TIMA: checkHistory, operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " subject: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/PKMService;->timaCheckHistory(II)Ljava/lang/String;

    move-result-object v0

    .local v0, "timaResult":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/PKMService;->displayEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local v0    # "timaResult":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized dumpLog()[B
    .locals 7

    .prologue
    monitor-enter p0

    :try_start_0
    sget-boolean v4, Lcom/android/server/PKMService;->DBG:Z

    if-eqz v4, :cond_0

    const-string v4, "PKMService"

    const-string v5, "TIMA: timaDumpLog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, "uid":I
    if-eqz v1, :cond_1

    const/16 v4, 0x3e8

    if-eq v1, v4, :cond_1

    const/16 v4, 0x7d0

    if-eq v1, v4, :cond_1

    const-string v4, "PKMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not ROOT_UID/SYSTEM_UID/SHELL_UID, return null, uid is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .local v2, "token":J
    invoke-static {}, Lcom/android/server/PKMService;->timaDumpLog()[B

    move-result-object v0

    .local v0, "result":[B
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0    # "result":[B
    .end local v1    # "uid":I
    .end local v2    # "token":J
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public getEventList(I)Ljava/util/List;
    .locals 1
    .param p1, "subject"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    sget-object v0, Lcom/android/server/PKMService;->mEventList:Ljava/util/LinkedList;

    return-object v0
.end method
