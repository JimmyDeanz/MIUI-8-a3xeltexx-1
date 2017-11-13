.class Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;
.super Ljava/lang/Object;
.source "WifiBigDataLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/WifiBigDataLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiChipInfo"
.end annotation


# static fields
.field private static final KEY_CHIPSET_VENDOR_NAME:Ljava/lang/String; = "ld_cnm"

.field private static final KEY_DRIVER_VERSION:Ljava/lang/String; = "ld_drv"

.field private static final KEY_FIRMWARE_VERSION:Ljava/lang/String; = "ld_fwv"

.field private static final PATH_OF_WIFIVER_INFO:Ljava/lang/String; = "/data/.wifiver.info"

.field private static final WIFI_VER_PREFIX_BRCM:Ljava/lang/String; = "HD_ver"

.field private static final WIFI_VER_PREFIX_MAVL:Ljava/lang/String; = "received"

.field private static final WIFI_VER_PREFIX_QCA:Ljava/lang/String; = "FW:"

.field private static final WIFI_VER_PREFIX_QCOM:Ljava/lang/String; = "CNSS"

.field private static final WIFI_VER_PREFIX_SPRTRM:Ljava/lang/String; = "is 0x"


# instance fields
.field private mChipsetName:Ljava/lang/String;

.field private mDriverVer:Ljava/lang/String;

.field private mFirmwareVer:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/WifiBigDataLog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/server/wifi/WifiBigDataLog$1;

    .prologue
    .line 386
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;-><init>()V

    return-void
.end method

.method private getChipsetName()Ljava/lang/String;
    .locals 10

    .prologue
    .line 627
    const/4 v4, 0x0

    .line 628
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 629
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    .line 630
    .local v7, "verString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 633
    .local v6, "retString":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v8, "/data/.wifiver.info"

    invoke-direct {v5, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 634
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 636
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 638
    if-eqz v7, :cond_12

    .line 639
    const-string v8, "HD_ver"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 640
    const-string v8, "1"
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 664
    if-eqz v1, :cond_0

    .line 665
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 667
    :cond_0
    if-eqz v5, :cond_1

    .line 668
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 674
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :cond_2
    :goto_0
    return-object v8

    .line 670
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_0
    move-exception v3

    .line 671
    .local v3, "e2":Ljava/io/IOException;
    const-string v8, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 641
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_3
    :try_start_4
    const-string v8, "CNSS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 642
    const-string v8, "2"
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 664
    if-eqz v1, :cond_4

    .line 665
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 667
    :cond_4
    if-eqz v5, :cond_5

    .line 668
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_5
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 671
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 670
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_1
    move-exception v3

    .line 671
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v8, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 643
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_6
    :try_start_6
    const-string v8, "FW:"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 644
    const-string v8, "3"
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 664
    if-eqz v1, :cond_7

    .line 665
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 667
    :cond_7
    if-eqz v5, :cond_8

    .line 668
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_8
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 671
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 670
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_2
    move-exception v3

    .line 671
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v8, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 645
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_9
    :try_start_8
    const-string v8, "received"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 646
    const-string v8, "4"
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 664
    if-eqz v1, :cond_a

    .line 665
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 667
    :cond_a
    if-eqz v5, :cond_b

    .line 668
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    :cond_b
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 671
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 670
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_3
    move-exception v3

    .line 671
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v8, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 647
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_c
    :try_start_a
    const-string v8, "is 0x"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 648
    const-string v8, "5"
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 664
    if-eqz v1, :cond_d

    .line 665
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 667
    :cond_d
    if-eqz v5, :cond_e

    .line 668
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    :cond_e
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 671
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 670
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_4
    move-exception v3

    .line 671
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v8, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 650
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_f
    :try_start_c
    const-string v6, "NG"

    .line 653
    const-string v8, "NG"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 654
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown String format..Full string is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v8

    .line 664
    if-eqz v1, :cond_10

    .line 665
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 667
    :cond_10
    if-eqz v5, :cond_11

    .line 668
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    :cond_11
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 671
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 670
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v3

    .line 671
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v8, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 657
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_12
    :try_start_e
    const-string v8, "file is null .. !"
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 664
    if-eqz v1, :cond_13

    .line 665
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 667
    :cond_13
    if-eqz v5, :cond_14

    .line 668
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6

    :cond_14
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 671
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 670
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v3

    .line 671
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v8, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 664
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_15
    if-eqz v1, :cond_16

    .line 665
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 667
    :cond_16
    if-eqz v5, :cond_17

    .line 668
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 674
    :cond_17
    const-string v8, "error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 670
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v3

    .line 671
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v8, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 659
    .end local v3    # "e2":Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 661
    .local v2, "e1":Ljava/io/IOException;
    :goto_1
    :try_start_11
    const-string v8, "exception"
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 664
    if-eqz v0, :cond_18

    .line 665
    :try_start_12
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 667
    :cond_18
    if-eqz v4, :cond_2

    .line 668
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    goto/16 :goto_0

    .line 670
    :catch_9
    move-exception v3

    .line 671
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v8, "File Close error"

    goto/16 :goto_0

    .line 663
    .end local v2    # "e1":Ljava/io/IOException;
    .end local v3    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 664
    :goto_2
    if-eqz v0, :cond_19

    .line 665
    :try_start_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 667
    :cond_19
    if-eqz v4, :cond_1a

    .line 668
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_a

    .line 671
    :cond_1a
    throw v8

    .line 670
    :catch_a
    move-exception v3

    .line 671
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v8, "File Close error"

    goto/16 :goto_0

    .line 663
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .line 659
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_b
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_1

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_c
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_1
.end method

.method private getDriverVer()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 529
    const/4 v4, 0x0

    .line 530
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 531
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 532
    .local v9, "verString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 534
    .local v6, "retString":Ljava/lang/String;
    const/4 v8, 0x0

    .line 535
    .local v8, "verStart":I
    const/4 v7, 0x0

    .line 538
    .local v7, "verEnd":I
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v10, "/data/.wifiver.info"

    invoke-direct {v5, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 539
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 541
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 543
    if-eqz v9, :cond_17

    .line 544
    const-string v10, "HD_ver"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 545
    const-string v10, "HD_ver:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 547
    if-eq v8, v12, :cond_3

    .line 548
    const-string v10, "HD_ver:"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    add-int/lit8 v8, v10, 0x1

    .line 549
    const-string v10, " "

    invoke-virtual {v9, v10, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 550
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    .line 613
    if-eqz v1, :cond_0

    .line 614
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 616
    :cond_0
    if-eqz v5, :cond_1

    .line 617
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v10, v6

    .line 623
    :cond_2
    :goto_0
    return-object v10

    .line 619
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_0
    move-exception v3

    .line 620
    .local v3, "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 553
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_3
    :try_start_4
    const-string v6, "NG"

    .line 602
    :goto_1
    const-string v10, "NG"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v10

    if-eqz v10, :cond_1a

    .line 613
    if-eqz v1, :cond_4

    .line 614
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 616
    :cond_4
    if-eqz v5, :cond_5

    .line 617
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_5
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v10, v9

    .line 620
    goto :goto_0

    .line 555
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_6
    :try_start_6
    const-string v10, "CNSS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 556
    const-string v10, "v"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 558
    if-eq v8, v12, :cond_9

    .line 559
    const-string v10, "v"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v8, v10

    .line 560
    const-string v10, " CNSS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 561
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-result-object v6

    .line 613
    if-eqz v1, :cond_7

    .line 614
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 616
    :cond_7
    if-eqz v5, :cond_8

    .line 617
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_8
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v10, v6

    .line 620
    goto :goto_0

    .line 619
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_1
    move-exception v3

    .line 620
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 564
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_9
    :try_start_8
    const-string v6, "NG"

    goto :goto_1

    .line 566
    :cond_a
    const-string v10, "FW:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 567
    const-string v10, "SW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 569
    if-eq v8, v12, :cond_d

    .line 570
    const-string v10, "SW"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    add-int/lit8 v8, v10, 0x1

    .line 571
    const-string v10, "FW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v7, v10, -0x2

    .line 572
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v6

    .line 613
    if-eqz v1, :cond_b

    .line 614
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 616
    :cond_b
    if-eqz v5, :cond_c

    .line 617
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_c
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v10, v6

    .line 620
    goto/16 :goto_0

    .line 619
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_2
    move-exception v3

    .line 620
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 575
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_d
    :try_start_a
    const-string v6, "NG"

    goto/16 :goto_1

    .line 577
    :cond_e
    const-string v10, "received"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_12

    .line 578
    const-string v10, "-GPL"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v8, v10, -0x4

    .line 580
    if-eq v8, v12, :cond_11

    .line 581
    const-string v10, "-GPL"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 582
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v6

    .line 613
    if-eqz v1, :cond_f

    .line 614
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 616
    :cond_f
    if-eqz v5, :cond_10

    .line 617
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :cond_10
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v10, v6

    .line 620
    goto/16 :goto_0

    .line 619
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_3
    move-exception v3

    .line 620
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 585
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_11
    :try_start_c
    const-string v6, "NG"

    goto/16 :goto_1

    .line 587
    :cond_12
    const-string v10, "is 0x"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 588
    const-string v10, "cp version is "

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const-string v11, "cp version is "

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int v8, v10, v11

    .line 590
    if-eq v8, v12, :cond_15

    .line 591
    const-string v10, "date"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v7, v10, -0x2

    .line 592
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v6

    .line 613
    if-eqz v1, :cond_13

    .line 614
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 616
    :cond_13
    if-eqz v5, :cond_14

    .line 617
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    :cond_14
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v10, v6

    .line 620
    goto/16 :goto_0

    .line 619
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_4
    move-exception v3

    .line 620
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 596
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_15
    :try_start_e
    const-string v6, "NG"

    goto/16 :goto_1

    .line 599
    :cond_16
    const-string v6, "NG"
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/16 :goto_1

    .line 619
    :catch_5
    move-exception v3

    .line 620
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 606
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_17
    :try_start_f
    const-string v10, "file is null .. !"
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 613
    if-eqz v1, :cond_18

    .line 614
    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 616
    :cond_18
    if-eqz v5, :cond_19

    .line 617
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6

    :cond_19
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 620
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 619
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v3

    .line 620
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 613
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_1a
    if-eqz v1, :cond_1b

    .line 614
    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 616
    :cond_1b
    if-eqz v5, :cond_1c

    .line 617
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    .line 623
    :cond_1c
    const-string v10, "error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 619
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v3

    .line 620
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 608
    .end local v3    # "e2":Ljava/io/IOException;
    :catch_8
    move-exception v2

    .line 610
    .local v2, "e1":Ljava/io/IOException;
    :goto_2
    :try_start_12
    const-string v10, "exception"
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 613
    if-eqz v0, :cond_1d

    .line 614
    :try_start_13
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 616
    :cond_1d
    if-eqz v4, :cond_2

    .line 617
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_9

    goto/16 :goto_0

    .line 619
    :catch_9
    move-exception v3

    .line 620
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    goto/16 :goto_0

    .line 612
    .end local v2    # "e1":Ljava/io/IOException;
    .end local v3    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 613
    :goto_3
    if-eqz v0, :cond_1e

    .line 614
    :try_start_14
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 616
    :cond_1e
    if-eqz v4, :cond_1f

    .line 617
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    .line 620
    :cond_1f
    throw v10

    .line 619
    :catch_a
    move-exception v3

    .line 620
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    goto/16 :goto_0

    .line 612
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 608
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_b
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_c
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2
.end method

.method private getFirmwareVer()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, -0x1

    .line 424
    const/4 v4, 0x0

    .line 425
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 426
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 427
    .local v9, "verString":Ljava/lang/String;
    const/4 v6, 0x0

    .line 429
    .local v6, "retString":Ljava/lang/String;
    const/4 v8, 0x0

    .line 430
    .local v8, "verStart":I
    const/4 v7, 0x0

    .line 433
    .local v7, "verEnd":I
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    const-string v10, "/data/.wifiver.info"

    invoke-direct {v5, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 434
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 436
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 438
    if-eqz v9, :cond_1a

    .line 439
    const-string v10, "HD_ver"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 440
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 442
    if-eqz v9, :cond_6

    .line 443
    const-string v10, "version"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 445
    if-eq v8, v12, :cond_3

    .line 446
    const-string v10, "version"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    add-int/lit8 v8, v10, 0x1

    .line 447
    const-string v10, " "

    invoke-virtual {v9, v10, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v7

    .line 448
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    .line 515
    if-eqz v1, :cond_0

    .line 516
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 518
    :cond_0
    if-eqz v5, :cond_1

    .line 519
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v10, v6

    .line 525
    :cond_2
    :goto_0
    return-object v10

    .line 521
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_0
    move-exception v3

    .line 522
    .local v3, "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 451
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_3
    :try_start_4
    const-string v6, "NG"

    .line 504
    :goto_1
    const-string v10, "NG"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_d
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result v10

    if-eqz v10, :cond_1d

    .line 515
    if-eqz v1, :cond_4

    .line 516
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 518
    :cond_4
    if-eqz v5, :cond_5

    .line 519
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_5
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v10, v9

    .line 522
    goto :goto_0

    .line 454
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_6
    :try_start_6
    const-string v6, "NG"

    .line 455
    const-string v10, "file was damaged, it need check !"
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 515
    if-eqz v1, :cond_7

    .line 516
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 518
    :cond_7
    if-eqz v5, :cond_8

    .line 519
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_8
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 522
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 521
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_1
    move-exception v3

    .line 522
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 457
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_9
    :try_start_8
    const-string v10, "CNSS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 458
    const-string v10, "CNSS"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 460
    if-eq v8, v12, :cond_c

    .line 461
    const-string v10, "CNSS-PR-"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v8, v10

    .line 462
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v6

    .line 515
    if-eqz v1, :cond_a

    .line 516
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 518
    :cond_a
    if-eqz v5, :cond_b

    .line 519
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    :cond_b
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v10, v6

    .line 522
    goto :goto_0

    .line 521
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_2
    move-exception v3

    .line 522
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_0

    .line 465
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_c
    :try_start_a
    const-string v6, "NG"

    goto :goto_1

    .line 467
    :cond_d
    const-string v10, "FW:"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 468
    const-string v10, "FW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 470
    if-eq v8, v12, :cond_10

    .line 471
    const-string v10, "FW"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v10, v8

    add-int/lit8 v8, v10, 0x1

    .line 472
    const-string v10, "HW"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v7, v10, -0x2

    .line 473
    invoke-virtual {v9, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_d
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v6

    .line 515
    if-eqz v1, :cond_e

    .line 516
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 518
    :cond_e
    if-eqz v5, :cond_f

    .line 519
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    :cond_f
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v10, v6

    .line 522
    goto/16 :goto_0

    .line 521
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_3
    move-exception v3

    .line 522
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 476
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_10
    :try_start_c
    const-string v6, "NG"

    goto/16 :goto_1

    .line 478
    :cond_11
    const-string v10, "received"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 479
    const-string v10, ".p"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v8, v10, 0x1

    .line 480
    invoke-virtual {v9, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 482
    if-eq v8, v12, :cond_14

    .line 483
    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 484
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v6

    .line 515
    if-eqz v1, :cond_12

    .line 516
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 518
    :cond_12
    if-eqz v5, :cond_13

    .line 519
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    :cond_13
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v10, v6

    .line 522
    goto/16 :goto_0

    .line 521
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_4
    move-exception v3

    .line 522
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 487
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_14
    :try_start_e
    const-string v6, "NG"

    goto/16 :goto_1

    .line 489
    :cond_15
    const-string v10, "is 0x"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_19

    .line 490
    const-string v10, "driver version is "

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const-string v11, "driver version is "

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    add-int/lit8 v8, v10, 0x1

    .line 493
    if-eq v8, v12, :cond_18

    .line 494
    const-string v10, "] ["

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 495
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-result-object v6

    .line 515
    if-eqz v1, :cond_16

    .line 516
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 518
    :cond_16
    if-eqz v5, :cond_17

    .line 519
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    :cond_17
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    move-object v10, v6

    .line 522
    goto/16 :goto_0

    .line 521
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v3

    .line 522
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 498
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_18
    :try_start_10
    const-string v6, "NG"

    goto/16 :goto_1

    .line 501
    :cond_19
    const-string v6, "NG"
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_1

    .line 521
    :catch_6
    move-exception v3

    .line 522
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 508
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_1a
    :try_start_11
    const-string v10, "file is null .. !"
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 515
    if-eqz v1, :cond_1b

    .line 516
    :try_start_12
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 518
    :cond_1b
    if-eqz v5, :cond_1c

    .line 519
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_7

    :cond_1c
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 522
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 521
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v3

    .line 522
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 515
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :cond_1d
    if-eqz v1, :cond_1e

    .line 516
    :try_start_13
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 518
    :cond_1e
    if-eqz v5, :cond_1f

    .line 519
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    .line 525
    :cond_1f
    const-string v10, "error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 521
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v3

    .line 522
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto/16 :goto_0

    .line 510
    .end local v3    # "e2":Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 512
    .local v2, "e1":Ljava/io/IOException;
    :goto_2
    :try_start_14
    const-string v10, "exception"
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 515
    if-eqz v0, :cond_20

    .line 516
    :try_start_15
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 518
    :cond_20
    if-eqz v4, :cond_2

    .line 519
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_a

    goto/16 :goto_0

    .line 521
    :catch_a
    move-exception v3

    .line 522
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    goto/16 :goto_0

    .line 514
    .end local v2    # "e1":Ljava/io/IOException;
    .end local v3    # "e2":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 515
    :goto_3
    if-eqz v0, :cond_21

    .line 516
    :try_start_16
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 518
    :cond_21
    if-eqz v4, :cond_22

    .line 519
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_b

    .line 522
    :cond_22
    throw v10

    .line 521
    :catch_b
    move-exception v3

    .line 522
    .restart local v3    # "e2":Ljava/io/IOException;
    const-string v10, "File Close error"

    goto/16 :goto_0

    .line 514
    .end local v3    # "e2":Ljava/io/IOException;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 510
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_c
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_d
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 404
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;->mFirmwareVer:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 405
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;->getFirmwareVer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;->mFirmwareVer:Ljava/lang/String;

    .line 407
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;->mDriverVer:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 408
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;->getDriverVer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;->mDriverVer:Ljava/lang/String;

    .line 410
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;->mChipsetName:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 411
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;->getChipsetName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;->mChipsetName:Ljava/lang/String;

    .line 413
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 414
    .local v0, "sb":Ljava/lang/StringBuffer;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ld_fwv"

    # invokes: Lcom/samsung/android/server/wifi/WifiBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;->mFirmwareVer:Ljava/lang/String;

    # invokes: Lcom/samsung/android/server/wifi/WifiBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ld_drv"

    # invokes: Lcom/samsung/android/server/wifi/WifiBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;->mDriverVer:Ljava/lang/String;

    # invokes: Lcom/samsung/android/server/wifi/WifiBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ld_cnm"

    # invokes: Lcom/samsung/android/server/wifi/WifiBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/WifiBigDataLog$WifiChipInfo;->mChipsetName:Ljava/lang/String;

    # invokes: Lcom/samsung/android/server/wifi/WifiBigDataLog;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lcom/samsung/android/server/wifi/WifiBigDataLog;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
