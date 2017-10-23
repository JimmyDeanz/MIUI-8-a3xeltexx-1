.class Lcom/android/server/DcmNextiPlayReadyService$MainThread;
.super Ljava/lang/Thread;
.source "DcmNextiPlayReadyService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DcmNextiPlayReadyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MainThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DcmNextiPlayReadyService;

.field private urlToRead:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/DcmNextiPlayReadyService;Ljava/lang/String;)V
    .locals 0
    .param p2, "urlToRead"    # Ljava/lang/String;

    .prologue
    .line 295
    iput-object p1, p0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 296
    iput-object p2, p0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->urlToRead:Ljava/lang/String;

    .line 297
    return-void
.end method


# virtual methods
.method public run()V
    .locals 30

    .prologue
    .line 300
    invoke-super/range {p0 .. p0}, Ljava/lang/Thread;->run()V

    .line 302
    const/16 v23, 0x0

    .line 304
    .local v23, "urlConnection":Ljavax/net/ssl/HttpsURLConnection;
    :try_start_0
    new-instance v22, Ljava/net/URL;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->urlToRead:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 307
    .local v22, "url":Ljava/net/URL;
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object/from16 v23, v0

    .line 309
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v19

    .line 310
    .local v19, "trustStore":Ljava/security/KeyStore;
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 311
    new-instance v18, Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/DcmNextiPlayReadyService$SFSSLSocketFactory;-><init>(Lcom/android/server/DcmNextiPlayReadyService;Ljava/security/KeyStore;)V

    .line 312
    .local v18, "sf":Ljavax/net/ssl/SSLSocketFactory;
    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 314
    invoke-virtual/range {v23 .. v23}, Ljavax/net/ssl/HttpsURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v16

    .line 315
    .local v16, "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 317
    .local v11, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v25, "Date"

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_0

    .line 319
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .local v17, "s":Ljava/lang/StringBuilder;
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 321
    .local v7, "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 322
    .local v24, "value":Ljava/lang/String;
    const-string v25, "DcmNextiPlayReadyService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " Date List value "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    move-object/from16 v0, v17

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 348
    .end local v7    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v16    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v17    # "s":Ljava/lang/StringBuilder;
    .end local v18    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    .end local v19    # "trustStore":Ljava/security/KeyStore;
    .end local v22    # "url":Ljava/net/URL;
    .end local v24    # "value":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 349
    .local v5, "e":Ljava/lang/SecurityException;
    :try_start_1
    const-string v25, "DcmNextiPlayReadyService"

    const-string v26, "Catch SecurityException Exceptions"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v25, "DcmNextiPlayReadyService"

    invoke-virtual {v5}, Ljava/lang/SecurityException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {v5}, Ljava/lang/SecurityException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    const-string v25, "DcmNextiPlayReadyService"

    const-string/jumbo v26, "resetting flag for later threads"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/16 v25, 0x1

    sput v25, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 371
    if-eqz v23, :cond_1

    .line 373
    invoke-virtual/range {v23 .. v23}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    .line 376
    .end local v5    # "e":Ljava/lang/SecurityException;
    :cond_1
    :goto_1
    return-void

    .line 326
    .restart local v7    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v11    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v16    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v17    # "s":Ljava/lang/StringBuilder;
    .restart local v18    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v19    # "trustStore":Ljava/security/KeyStore;
    .restart local v22    # "url":Ljava/net/URL;
    :cond_2
    :try_start_2
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 328
    .local v6, "epochTime":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v25, "EEE, dd MMM yyyy HH:mm:ss zzz"

    sget-object v26, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v4, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 330
    .local v4, "dateFormat":Ljava/text/DateFormat;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    .line 332
    const-wide/16 v8, 0x0

    .line 333
    .local v8, "epoch_time_long":J
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    .line 334
    const-string v25, "DcmNextiPlayReadyService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "epoch time: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    const-wide/16 v26, 0x0

    cmp-long v25, v8, v26

    if-eqz v25, :cond_4

    .line 336
    const-wide/16 v26, 0x3e8

    div-long v12, v8, v26

    .line 337
    .local v12, "networktime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v14, v26, v28

    .line 338
    .local v14, "recvElapsedTime":J
    const-string v25, "DcmNextiPlayReadyService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "networktime "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string/jumbo v27, "recvElapsedTime"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DcmNextiPlayReadyService$MainThread;->this$0:Lcom/android/server/DcmNextiPlayReadyService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/android/server/DcmNextiPlayReadyService;->onNetworkStateChanged(JJ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 368
    .end local v4    # "dateFormat":Ljava/text/DateFormat;
    .end local v6    # "epochTime":Ljava/util/Date;
    .end local v7    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "epoch_time_long":J
    .end local v11    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v12    # "networktime":J
    .end local v14    # "recvElapsedTime":J
    .end local v17    # "s":Ljava/lang/StringBuilder;
    :cond_3
    :goto_2
    const-string v25, "DcmNextiPlayReadyService"

    const-string/jumbo v26, "resetting flag for later threads"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/16 v25, 0x1

    sput v25, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 371
    if-eqz v23, :cond_1

    .line 373
    invoke-virtual/range {v23 .. v23}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 342
    .restart local v4    # "dateFormat":Ljava/text/DateFormat;
    .restart local v6    # "epochTime":Ljava/util/Date;
    .restart local v7    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "epoch_time_long":J
    .restart local v11    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v17    # "s":Ljava/lang/StringBuilder;
    :cond_4
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    const-wide/16 v28, 0x3e8

    div-long v20, v26, v28

    .line 343
    .local v20, "systime":J
    const-string v25, "DcmNextiPlayReadyService"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Network state was changed. NTP time could not checked. noting to do. system time is "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 352
    .end local v4    # "dateFormat":Ljava/text/DateFormat;
    .end local v6    # "epochTime":Ljava/util/Date;
    .end local v7    # "headerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "epoch_time_long":J
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v16    # "responseHeader":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v17    # "s":Ljava/lang/StringBuilder;
    .end local v18    # "sf":Ljavax/net/ssl/SSLSocketFactory;
    .end local v19    # "trustStore":Ljava/security/KeyStore;
    .end local v20    # "systime":J
    .end local v22    # "url":Ljava/net/URL;
    :catch_1
    move-exception v5

    .line 353
    .local v5, "e":Ljava/text/ParseException;
    :try_start_4
    const-string v25, "DcmNextiPlayReadyService"

    const-string/jumbo v26, "epoch time parsing error"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const-string v25, "DcmNextiPlayReadyService"

    invoke-virtual {v5}, Ljava/text/ParseException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 368
    const-string v25, "DcmNextiPlayReadyService"

    const-string/jumbo v26, "resetting flag for later threads"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/16 v25, 0x1

    sput v25, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 371
    if-eqz v23, :cond_1

    .line 373
    invoke-virtual/range {v23 .. v23}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 355
    .end local v5    # "e":Ljava/text/ParseException;
    :catch_2
    move-exception v5

    .line 356
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    :try_start_5
    const-string v25, "DcmNextiPlayReadyService"

    const-string v26, "Catch IllegalArgumentException Exceptions"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v25, "DcmNextiPlayReadyService"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 368
    const-string v25, "DcmNextiPlayReadyService"

    const-string/jumbo v26, "resetting flag for later threads"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/16 v25, 0x1

    sput v25, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 371
    if-eqz v23, :cond_1

    .line 373
    invoke-virtual/range {v23 .. v23}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 359
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v5

    .line 360
    .local v5, "e":Ljava/io/IOException;
    :try_start_6
    const-string v25, "DcmNextiPlayReadyService"

    const-string v26, "Catch IOException Exceptions"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v25, "DcmNextiPlayReadyService"

    invoke-virtual {v5}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 368
    const-string v25, "DcmNextiPlayReadyService"

    const-string/jumbo v26, "resetting flag for later threads"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/16 v25, 0x1

    sput v25, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 371
    if-eqz v23, :cond_1

    .line 373
    invoke-virtual/range {v23 .. v23}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 363
    .end local v5    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v5

    .line 364
    .local v5, "e":Ljava/lang/Exception;
    :try_start_7
    const-string v25, "DcmNextiPlayReadyService"

    const-string v26, "Catch other Exceptions"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v25, "DcmNextiPlayReadyService"

    invoke-virtual {v5}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 368
    const-string v25, "DcmNextiPlayReadyService"

    const-string/jumbo v26, "resetting flag for later threads"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/16 v25, 0x1

    sput v25, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 371
    if-eqz v23, :cond_1

    .line 373
    invoke-virtual/range {v23 .. v23}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    goto/16 :goto_1

    .line 368
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v25

    const-string v26, "DcmNextiPlayReadyService"

    const-string/jumbo v27, "resetting flag for later threads"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/16 v26, 0x1

    sput v26, Lcom/android/server/DcmNextiPlayReadyService;->THREAD_EXECUTING:I

    .line 371
    if-eqz v23, :cond_5

    .line 373
    invoke-virtual/range {v23 .. v23}, Ljavax/net/ssl/HttpsURLConnection;->disconnect()V

    :cond_5
    throw v25
.end method
