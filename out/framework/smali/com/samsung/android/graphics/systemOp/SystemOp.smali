.class public Lcom/samsung/android/graphics/systemOp/SystemOp;
.super Ljava/lang/Object;
.source "SystemOp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;,
        Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;
    }
.end annotation


# static fields
.field public static final CoreType_ERROR:I = 0x0

.field public static final CoreType_kCoreTypeBig:I = 0x2

.field public static final CoreType_kCoreTypeLittle:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    return-void
.end method

.method public static getCPUCoreCount()I
    .locals 8

    .prologue
    .line 29
    const/4 v3, 0x0

    .line 30
    .local v3, "line":Ljava/lang/String;
    const/4 v1, 0x0

    .line 33
    .local v1, "coreCount":I
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/devices/system/exynos_info/core_status"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 37
    const-string v5, "cpu "

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 38
    const-string v5, "cpu "

    const/4 v6, 0x5

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 39
    .local v4, "strs":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "big"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "little"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    const-string/jumbo v5, "noncpu"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_0

    .line 42
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v4    # "strs":[Ljava/lang/String;
    :cond_2
    if-eqz v0, :cond_3

    .line 52
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 58
    .end local v0    # "br":Ljava/io/BufferedReader;
    :cond_3
    :goto_1
    return v1

    .line 46
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 47
    .local v2, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    const-string v5, "SystemOp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JAVA getCPUCoreCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 51
    if-eqz v0, :cond_3

    .line 52
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 54
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 55
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 56
    const-string v5, "SystemOp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "------ getCPUCoreCount "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 51
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_4

    .line 52
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_4
    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
.end method

.method public static getCPUCoreStatus(I)Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;
    .locals 8
    .param p0, "coreNu"    # I

    .prologue
    const/4 v5, 0x0

    .line 71
    new-instance v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;

    invoke-direct {v1}, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;-><init>()V

    .line 72
    .local v1, "coreStatus":Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;
    iput v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->coreType:I

    .line 73
    iput-boolean v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->active:Z

    .line 74
    const/4 v3, 0x0

    .line 77
    .local v3, "line":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/devices/system/exynos_info/core_status"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cpu "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 84
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "little"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    const/4 v5, 0x1

    iput v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->coreType:I

    .line 91
    :goto_0
    const-string v5, ": "

    const/4 v6, 0x5

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "strs":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v4, v5

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_5

    .line 93
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->active:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    :goto_1
    if-eqz v0, :cond_1

    .line 108
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 115
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "strs":[Ljava/lang/String;
    :cond_1
    :goto_2
    return-object v1

    .line 86
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "big"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 87
    const/4 v5, 0x2

    iput v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->coreType:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 104
    const-string v5, "SystemOp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JAVA getCPUCoreStatus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    if-eqz v0, :cond_1

    .line 108
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 110
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 111
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 112
    const-string v5, "SystemOp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "------ getCPUCoreStatus "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 89
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    :cond_3
    const/4 v5, 0x0

    :try_start_6
    iput v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->coreType:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 107
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_4

    .line 108
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_4
    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 94
    .restart local v4    # "strs":[Ljava/lang/String;
    :cond_5
    const/4 v5, 0x1

    :try_start_8
    aget-object v5, v4, v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6

    .line 95
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->active:Z

    goto :goto_1

    .line 97
    :cond_6
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CoreStatus;->active:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 107
    .end local v4    # "strs":[Ljava/lang/String;
    :cond_7
    if-eqz v0, :cond_1

    .line 108
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_2
.end method

.method public static getCpuInfo()Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 130
    new-instance v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;

    invoke-direct {v1}, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;-><init>()V

    .line 131
    .local v1, "cpuInfo":Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;
    const-string v6, ""

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->processor:Ljava/lang/String;

    .line 132
    const-string v6, ""

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->features:Ljava/lang/String;

    .line 133
    iput v7, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuImplementer:I

    .line 134
    const-string v6, ""

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuArchitecture:Ljava/lang/String;

    .line 135
    iput v7, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuVariant:I

    .line 136
    iput v7, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuPart:I

    .line 137
    iput v7, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuRevision:I

    .line 138
    const-string v6, ""

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->hardware:Ljava/lang/String;

    .line 140
    const/4 v4, 0x0

    .line 143
    .local v4, "line":Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/proc/cpuinfo"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    .local v0, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 148
    const-string v6, ": "

    const/4 v7, 0x5

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 150
    .local v5, "strs":[Ljava/lang/String;
    array-length v6, v5

    if-ne v6, v8, :cond_0

    .line 151
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Processor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 152
    const/4 v6, 0x1

    aget-object v6, v5, v6

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->processor:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 179
    .end local v5    # "strs":[Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 180
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 181
    const-string v6, "SystemOp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "JAVA getCpuInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    if-eqz v0, :cond_1

    .line 185
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 192
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-object v1

    .line 153
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "strs":[Ljava/lang/String;
    :cond_2
    const/4 v6, 0x0

    :try_start_4
    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Features"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_4

    .line 154
    const/4 v6, 0x1

    aget-object v6, v5, v6

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->features:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 184
    .end local v5    # "strs":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    if-eqz v0, :cond_3

    .line 185
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    :cond_3
    throw v6
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 187
    .end local v0    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 188
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 189
    const-string v6, "SystemOp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "------ getCpuInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 155
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "strs":[Ljava/lang/String;
    :cond_4
    const/4 v6, 0x0

    :try_start_6
    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CPU implementer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_5

    .line 156
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 157
    .local v3, "hexLowerCase":Ljava/lang/String;
    const-string/jumbo v6, "x"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "x"

    const/4 v7, 0x5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ne v6, v8, :cond_0

    .line 158
    const-string/jumbo v6, "x"

    const/4 v7, 0x5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuImplementer:I

    goto/16 :goto_0

    .line 160
    .end local v3    # "hexLowerCase":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CPU architecture"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    .line 161
    const/4 v6, 0x1

    aget-object v6, v5, v6

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuArchitecture:Ljava/lang/String;

    goto/16 :goto_0

    .line 162
    :cond_6
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CPU variant"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_7

    .line 163
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 164
    .restart local v3    # "hexLowerCase":Ljava/lang/String;
    const-string/jumbo v6, "x"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "x"

    const/4 v7, 0x5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ne v6, v8, :cond_0

    .line 165
    const-string/jumbo v6, "x"

    const/4 v7, 0x5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuVariant:I

    goto/16 :goto_0

    .line 167
    .end local v3    # "hexLowerCase":Ljava/lang/String;
    :cond_7
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CPU part"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8

    .line 168
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 169
    .restart local v3    # "hexLowerCase":Ljava/lang/String;
    const-string/jumbo v6, "x"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "x"

    const/4 v7, 0x5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ne v6, v8, :cond_0

    .line 170
    const-string/jumbo v6, "x"

    const/4 v7, 0x5

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    const/16 v7, 0x10

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuPart:I

    goto/16 :goto_0

    .line 172
    .end local v3    # "hexLowerCase":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "CPU revision"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_9

    .line 173
    const/4 v6, 0x1

    aget-object v6, v5, v6

    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->cpuRevision:I

    goto/16 :goto_0

    .line 174
    :cond_9
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Hardware"

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    .line 175
    const/4 v6, 0x1

    aget-object v6, v5, v6

    iput-object v6, v1, Lcom/samsung/android/graphics/systemOp/SystemOp$CpuInfo;->hardware:Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 184
    .end local v5    # "strs":[Ljava/lang/String;
    :cond_a
    if-eqz v0, :cond_1

    .line 185
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1
.end method

.method public static getDFSPowerLevel()I
    .locals 7

    .prologue
    .line 217
    const/4 v3, -0x1

    .line 220
    .local v3, "fps":I
    :try_start_0
    const-string v5, "SurfaceFlinger"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 221
    .local v0, "SFservice":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 223
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 224
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 225
    .local v4, "reply":Landroid/os/Parcel;
    const-string v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 226
    const/16 v5, 0x400

    const/4 v6, 0x0

    invoke-interface {v0, v5, v1, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 227
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 228
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v0    # "SFservice":Landroid/os/IBinder;
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v4    # "reply":Landroid/os/Parcel;
    :cond_0
    :goto_0
    return v3

    .line 231
    :catch_0
    move-exception v2

    .line 233
    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static getDisplayRefreshRate()F
    .locals 6

    .prologue
    .line 243
    invoke-static {}, Lcom/samsung/android/graphics/systemOp/SystemOp;->getDFSPowerLevel()I

    move-result v0

    .line 244
    .local v0, "dfs":I
    if-lez v0, :cond_0

    const/16 v2, 0x64

    if-le v0, v2, :cond_1

    .line 245
    :cond_0
    const-string v2, "SystemOp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDisplayRefreshRate getDFSPowerLevel failed: dfs = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " %"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v1, 0x0

    .line 253
    :goto_0
    return v1

    .line 251
    :cond_1
    const/high16 v2, 0x41700000    # 15.0f

    const/high16 v3, 0x42300000    # 44.0f

    int-to-float v4, v0

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 253
    .local v1, "refreshRate":F
    goto :goto_0
.end method

.method public static isDFSAvailable()Z
    .locals 1

    .prologue
    .line 239
    const/4 v0, -0x1

    invoke-static {v0}, Lcom/samsung/android/graphics/systemOp/SystemOp;->setDFSPowerLevel(I)Z

    move-result v0

    return v0
.end method

.method public static isSamsungDevice()Z
    .locals 2

    .prologue
    .line 18
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 19
    .local v0, "brand":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 21
    const-string/jumbo v1, "samsung"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    const/4 v1, 0x1

    .line 24
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setDFSPowerLevel(I)Z
    .locals 8
    .param p0, "powerLevel"    # I

    .prologue
    const/4 v4, 0x0

    .line 196
    const/4 v3, 0x0

    .line 199
    .local v3, "status":Z
    :try_start_0
    const-string v5, "SurfaceFlinger"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 200
    .local v0, "SFservice":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 202
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 203
    .local v1, "data":Landroid/os/Parcel;
    const-string v5, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    const/16 v5, 0x3fe

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v0, v5, v1, v6, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 206
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "data":Landroid/os/Parcel;
    :cond_0
    move v4, v3

    .line 213
    .end local v0    # "SFservice":Landroid/os/IBinder;
    :goto_0
    return v4

    .line 209
    :catch_0
    move-exception v2

    .line 211
    .local v2, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public static setDisplayRefreshRate(F)Z
    .locals 4
    .param p0, "fps"    # F

    .prologue
    const/4 v1, 0x0

    const/high16 v3, 0x41700000    # 15.0f

    .line 257
    cmpg-float v2, p0, v3

    if-ltz v2, :cond_0

    const/high16 v2, 0x42700000    # 60.0f

    cmpl-float v2, p0, v2

    if-lez v2, :cond_1

    .line 258
    :cond_0
    const-string v2, "SystemOp"

    const-string/jumbo v3, "setDisplayRefreshRate input fps is outof range [15-60] "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_0
    return v1

    .line 261
    :cond_1
    sub-float v2, p0, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42300000    # 44.0f

    div-float/2addr v2, v3

    float-to-int v0, v2

    .line 263
    .local v0, "DFSPowerLevel":I
    invoke-static {v0}, Lcom/samsung/android/graphics/systemOp/SystemOp;->setDFSPowerLevel(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 264
    const-string v2, "SystemOp"

    const-string/jumbo v3, "setDisplayRefreshRate java failed "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 267
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method
