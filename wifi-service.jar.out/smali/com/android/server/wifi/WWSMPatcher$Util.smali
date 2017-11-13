.class public Lcom/android/server/wifi/WWSMPatcher$Util;
.super Ljava/lang/Object;
.source "WWSMPatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WWSMPatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WWSMPatcher/Util"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHashMapFromString(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 12
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 562
    if-nez p0, :cond_1

    move-object v6, v9

    .line 582
    :cond_0
    :goto_0
    return-object v6

    .line 565
    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 567
    .local v6, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v10, "\n"

    invoke-virtual {p0, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 568
    .local v5, "line":[Ljava/lang/String;
    if-nez v5, :cond_2

    move-object v6, v9

    .line 569
    goto :goto_0

    .line 571
    :cond_2
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v7, v0, v2

    .line 572
    .local v7, "str":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/wifi/WWSMPatcher$Util;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 573
    .local v3, "key":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/server/wifi/WWSMPatcher$Util;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 574
    .local v8, "value":Ljava/lang/String;
    if-eqz v3, :cond_3

    if-eqz v8, :cond_3

    .line 575
    invoke-virtual {v6, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 578
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "len$":I
    .end local v5    # "line":[Ljava/lang/String;
    .end local v7    # "str":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 579
    .local v1, "e":Ljava/lang/Exception;
    const-string v9, "WWSMPatcher/Util"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "err : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static getIntFromString(Ljava/lang/String;I)I
    .locals 4
    .param p0, "strValue"    # Ljava/lang/String;
    .param p1, "defaultValue"    # I

    .prologue
    .line 466
    if-eqz p0, :cond_0

    .line 467
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 472
    .end local p1    # "defaultValue":I
    :cond_0
    :goto_0
    return p1

    .line 469
    .restart local p1    # "defaultValue":I
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WWSMPatcher/Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "err : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 476
    if-nez p0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-object v1

    .line 480
    :cond_1
    const-string v2, "="

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 481
    .local v0, "idx":I
    if-lez v0, :cond_0

    .line 485
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLongFromString(Ljava/lang/String;J)J
    .locals 5
    .param p0, "strValue"    # Ljava/lang/String;
    .param p1, "defaultValue"    # J

    .prologue
    .line 455
    if-eqz p0, :cond_0

    .line 456
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p1

    .line 461
    .end local p1    # "defaultValue":J
    :cond_0
    :goto_0
    return-wide p1

    .line 458
    .restart local p1    # "defaultValue":J
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "WWSMPatcher/Util"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "err : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 488
    if-nez p0, :cond_1

    .line 497
    :cond_0
    :goto_0
    return-object v1

    .line 492
    :cond_1
    const-string v2, "="

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    .line 493
    .local v0, "idx":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_0

    .line 497
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static loadDataFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 501
    const/4 v5, 0x0

    .line 502
    .local v5, "reader":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 503
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v2, ""

    .line 505
    .local v2, "data":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    .end local v5    # "reader":Ljava/io/FileReader;
    .local v6, "reader":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 507
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    const-string v4, ""

    .line 508
    .local v4, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 509
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    goto :goto_0

    .line 516
    :cond_0
    if-eqz v1, :cond_1

    .line 517
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 519
    :cond_1
    if-eqz v6, :cond_2

    .line 520
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 527
    .end local v4    # "line":Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :cond_3
    :goto_1
    return-object v2

    .line 522
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "line":Ljava/lang/String;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v3

    .line 523
    .local v3, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 524
    const-string v7, "WWSMPatcher/Util"

    const-string v8, "err close file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .line 526
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_1

    .line 511
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "line":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 512
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    const-string v7, "WWSMPatcher/Util"

    const-string v8, "ldfff"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 513
    const/4 v2, 0x0

    .line 516
    if-eqz v0, :cond_4

    .line 517
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 519
    :cond_4
    if-eqz v5, :cond_3

    .line 520
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 522
    :catch_2
    move-exception v3

    .line 523
    .local v3, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 524
    const-string v7, "WWSMPatcher/Util"

    const-string v8, "err close file"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 515
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 516
    :goto_3
    if-eqz v0, :cond_5

    .line 517
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 519
    :cond_5
    if-eqz v5, :cond_6

    .line 520
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 525
    :cond_6
    :goto_4
    throw v7

    .line 522
    :catch_3
    move-exception v3

    .line 523
    .restart local v3    # "e":Ljava/io/IOException;
    const/4 v2, 0x0

    .line 524
    const-string v8, "WWSMPatcher/Util"

    const-string v9, "err close file"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 515
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_3

    .line 511
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_4
    move-exception v3

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_5
    move-exception v3

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_2
.end method

.method public static saveDataToFile(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8
    .param p0, "filepath"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 531
    const/4 v3, 0x0

    .line 532
    .local v3, "out":Ljava/io/FileWriter;
    const/4 v1, 0x0

    .line 534
    .local v1, "file":Ljava/io/File;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 535
    .end local v1    # "file":Ljava/io/File;
    .local v2, "file":Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 536
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 538
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 540
    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, p0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 541
    .end local v3    # "out":Ljava/io/FileWriter;
    .local v4, "out":Ljava/io/FileWriter;
    if-eqz p1, :cond_1

    .line 542
    :try_start_2
    const-string v6, "WWSMPatcher/Util"

    const-string v7, "created file"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {v4, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 549
    :cond_1
    if-eqz v4, :cond_2

    .line 551
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 558
    :cond_2
    const/4 v5, 0x1

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    :cond_3
    :goto_0
    return v5

    .line 552
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 553
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "WWSMPatcher/Util"

    const-string v7, "err close file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v3, v4

    .line 554
    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    goto :goto_0

    .line 545
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 546
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_4
    const-string v6, "WWSMPatcher/Util"

    const-string v7, "err create file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 549
    if-eqz v3, :cond_3

    .line 551
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 552
    :catch_2
    move-exception v0

    .line 553
    .local v0, "e":Ljava/io/IOException;
    const-string v6, "WWSMPatcher/Util"

    const-string v7, "err close file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 549
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_2
    if-eqz v3, :cond_4

    .line 551
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 554
    :cond_4
    throw v6

    .line 552
    :catch_3
    move-exception v0

    .line 553
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v6, "WWSMPatcher/Util"

    const-string v7, "err close file"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 549
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catchall_1
    move-exception v6

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_2

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :catchall_2
    move-exception v6

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    goto :goto_2

    .line 545
    .end local v1    # "file":Ljava/io/File;
    .restart local v2    # "file":Ljava/io/File;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    goto :goto_1

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "out":Ljava/io/FileWriter;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "out":Ljava/io/FileWriter;
    :catch_5
    move-exception v0

    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .restart local v1    # "file":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "out":Ljava/io/FileWriter;
    .restart local v3    # "out":Ljava/io/FileWriter;
    goto :goto_1
.end method
