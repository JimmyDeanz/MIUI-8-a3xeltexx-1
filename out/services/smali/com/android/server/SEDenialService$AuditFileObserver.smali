.class Lcom/android/server/SEDenialService$AuditFileObserver;
.super Landroid/os/FileObserver;
.source "SEDenialService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SEDenialService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AuditFileObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SEDenialService;


# direct methods
.method public constructor <init>(Lcom/android/server/SEDenialService;Ljava/lang/String;I)V
    .locals 0
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mask"    # I

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/server/SEDenialService$AuditFileObserver;->this$0:Lcom/android/server/SEDenialService;

    .line 67
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 68
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 10
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string/jumbo v7, "sys.boot_completed"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 73
    const-string v7, "SecurityLogAgent:SEDenialService"

    const-string v8, "Not Boot completed . No intent for this"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    const/4 v7, 0x2

    if-ne p1, v7, :cond_3

    if-eqz p2, :cond_3

    const-string v7, "audit.log"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 77
    const-string v7, "audit.ondenial"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 78
    .local v6, "strProcessName":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 79
    const-string v7, "SecurityLogAgent:SEDenialService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got Modify Event and sending Denial Intent for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " / "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v7, "samsung.intent.action.knox.DENIAL_NOTIFICATION"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 81
    .local v4, "denialIntent":Landroid/content/Intent;
    const-string v7, "com.samsung.android.securitylogagent"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string/jumbo v7, "isNotification"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 83
    const-string v7, "PROC_INFO"

    invoke-virtual {v4, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    iget-object v7, p0, Lcom/android/server/SEDenialService$AuditFileObserver;->this$0:Lcom/android/server/SEDenialService;

    # getter for: Lcom/android/server/SEDenialService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/SEDenialService;->access$000(Lcom/android/server/SEDenialService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 85
    const-string v7, "audit.ondenial"

    const-string v8, ""

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v7, "SecurityLogAgent:SEDenialService"

    const-string v8, "audit.ondenial set to 0 after sending samsung.intent.action.knox.DENIAL_NOTIFICATION intent"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .end local v4    # "denialIntent":Landroid/content/Intent;
    .end local v6    # "strProcessName":Ljava/lang/String;
    :cond_2
    :goto_1
    const/16 v7, 0x80

    if-ne p1, v7, :cond_0

    .line 109
    const-string v7, "SecurityLogAgent:SEDenialService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got Moved To Event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v7, "audit.old"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 111
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "samsung.intent.action.knox.DENIAL_NOTIFICATION"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v5, "denialZipIntent":Landroid/content/Intent;
    const-string v7, "com.samsung.android.securitylogagent"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/misc/audit/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    .local v3, "denialFilePath":Ljava/lang/String;
    const-string v7, "DENIAL_LOG_FILE"

    invoke-virtual {v5, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    iget-object v7, p0, Lcom/android/server/SEDenialService$AuditFileObserver;->this$0:Lcom/android/server/SEDenialService;

    # getter for: Lcom/android/server/SEDenialService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/SEDenialService;->access$000(Lcom/android/server/SEDenialService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 117
    const-string v7, "SecurityLogAgent:SEDenialService"

    const-string v8, "Sending Denial Intent for zip"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 88
    .end local v3    # "denialFilePath":Ljava/lang/String;
    .end local v5    # "denialZipIntent":Landroid/content/Intent;
    :cond_3
    const/16 v7, 0x8

    if-ne p1, v7, :cond_2

    .line 89
    const-string v7, "SecurityLogAgent:SEDenialService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Got CLOSE_WRITE Event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string v7, "ams.old"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 91
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v7, "samsung.intent.action.knox.AMS_NOTIFICATION"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v2, "amsZipIntent":Landroid/content/Intent;
    const-string v7, "com.samsung.android.securitylogagent"

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/misc/audit/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, "amsFilePath":Ljava/lang/String;
    const-string v7, "AMS_LOG_FILE"

    invoke-virtual {v2, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v7, p0, Lcom/android/server/SEDenialService$AuditFileObserver;->this$0:Lcom/android/server/SEDenialService;

    # getter for: Lcom/android/server/SEDenialService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/SEDenialService;->access$000(Lcom/android/server/SEDenialService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    const-string v7, "SecurityLogAgent:SEDenialService"

    const-string v8, "Sending AMS Intent for zip"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .end local v1    # "amsFilePath":Ljava/lang/String;
    .end local v2    # "amsZipIntent":Landroid/content/Intent;
    :cond_4
    const-string v7, "AASA.old"

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 99
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v7, "samsung.intent.action.knox.AASA_NOTIFICATION"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "AASAZipIntent":Landroid/content/Intent;
    const-string v7, "com.samsung.android.securitylogagent"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/misc/audit/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    .restart local v3    # "denialFilePath":Ljava/lang/String;
    const-string v7, "AASA_LOG_FILE"

    invoke-virtual {v0, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    iget-object v7, p0, Lcom/android/server/SEDenialService$AuditFileObserver;->this$0:Lcom/android/server/SEDenialService;

    # getter for: Lcom/android/server/SEDenialService;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/SEDenialService;->access$000(Lcom/android/server/SEDenialService;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 105
    const-string v7, "SecurityLogAgent:SEDenialService"

    const-string v8, "Sending AASA Intent for zip"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
