.class Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;
.super Ljava/lang/Object;
.source "LogcatReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->startReadingLogs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;


# direct methods
.method constructor <init>(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)V
    .locals 0

    .prologue
    .line 297
    iput-object p1, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 301
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 302
    .local v2, "commandLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v8, "logcat"

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    iget-object v8, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    # getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mFormat:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$000(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 306
    const-string v8, "-v"

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    iget-object v8, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    # getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mFormat:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$000(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_0
    iget-object v8, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    # getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mBuffer:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$100(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 311
    const-string v8, "-b"

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v8, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    # getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mBuffer:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$100(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_1
    iget-object v8, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    # getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mFilterSpecs:[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$200(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 316
    iget-object v8, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    # getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mFilterSpecs:[Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$200(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-object v4, v0, v5

    .line 317
    .local v4, "filterSpec":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 319
    .end local v4    # "filterSpec":Ljava/lang/String;
    :cond_2
    const-string v8, "*:S"

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    :cond_3
    const-string v8, "LogcatReader"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Collect Logs : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v9, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v8

    # setter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mProcess:Ljava/lang/Process;
    invoke-static {v9, v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$302(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;Ljava/lang/Process;)Ljava/lang/Process;

    .line 328
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    # getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mProcess:Ljava/lang/Process;
    invoke-static {v9}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$300(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)Ljava/lang/Process;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 331
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    iget-object v8, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    # getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;
    invoke-static {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$400(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;->onStarted()V

    .line 335
    :goto_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_4

    .line 337
    iget-object v8, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    # getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;
    invoke-static {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$400(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;

    move-result-object v8

    invoke-interface {v8, v7}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;->processLogcatRecord(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 340
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v2    # "commandLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "line":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 341
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 344
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    iget-object v8, p0, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$3;->this$0:Lcom/android/server/analytics/data/collection/logcat/LogcatReader;

    # getter for: Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->mProcessor:Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;
    invoke-static {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader;->access$400(Lcom/android/server/analytics/data/collection/logcat/LogcatReader;)Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/analytics/data/collection/logcat/LogcatReader$LogcatRecordProcessor;->onFinished()V

    .line 345
    return-void

    .line 339
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v2    # "commandLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "line":Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
