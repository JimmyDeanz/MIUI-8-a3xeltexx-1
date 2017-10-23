.class public Lcom/android/internal/telephony/MVNOSupportList;
.super Ljava/lang/Object;
.source "MVNOSupportList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MVNOSupportList"

.field static final MVNO_LIST_PATH:Ljava/lang/String; = "etc/mvno_list.xml"


# instance fields
.field private MVNOListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/MVNOSupportList;->MVNOListMap:Ljava/util/HashMap;

    .line 54
    invoke-virtual {p0}, Lcom/android/internal/telephony/MVNOSupportList;->loadMVNOList()V

    .line 55
    return-void
.end method

.method private getMatchingMVNOListInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;
    .locals 6
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "imsiMVNO"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 68
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v1, v4

    .line 83
    :goto_0
    return-object v1

    .line 72
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/MVNOSupportList;->MVNOListMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 73
    .local v3, "mvnolisti":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;>;"
    if-nez v3, :cond_2

    move-object v1, v4

    .line 74
    goto :goto_0

    .line 76
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;

    .line 77
    .local v1, "mlist":Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;
    invoke-virtual {v1}, Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;->getSimIMSI()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "mvnoSim":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .end local v1    # "mlist":Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;
    .end local v2    # "mvnoSim":Ljava/lang/String;
    :cond_4
    move-object v1, v4

    .line 83
    goto :goto_0
.end method


# virtual methods
.method public getMVNOName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "operator"    # Ljava/lang/String;
    .param p2, "imsiMVNO"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/MVNOSupportList;->getMatchingMVNOListInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;

    move-result-object v0

    .line 59
    .local v0, "mvnolisti":Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;
    if-nez v0, :cond_0

    .line 60
    const/4 v1, 0x0

    .line 62
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;->getMVNOName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public loadMVNOList()V
    .locals 11

    .prologue
    .line 89
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v8

    const-string v9, "etc/mvno_list.xml"

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 93
    .local v2, "mvnolistFile":Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .local v3, "mvnolistReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 101
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v7, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 102
    const-string v8, "mvnoList"

    invoke-static {v7, v8}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, "carrierPLMN":Ljava/lang/String;
    const/4 v5, 0x0

    .line 106
    .local v5, "name":Ljava/lang/String;
    const/4 v4, 0x0

    .line 108
    .local v4, "mvnolisti":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;>;"
    :cond_0
    :goto_0
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 109
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 111
    const-string v8, "carrier"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 112
    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 113
    iget-object v8, p0, Lcom/android/internal/telephony/MVNOSupportList;->MVNOListMap:Ljava/util/HashMap;

    invoke-virtual {v8, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const/4 v4, 0x0

    .line 116
    :cond_1
    const/4 v8, 0x0

    const-string v9, "plmn"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v8, p0, Lcom/android/internal/telephony/MVNOSupportList;->MVNOListMap:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "mvnolisti":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;>;"
    check-cast v4, Ljava/util/List;

    .line 118
    .restart local v4    # "mvnolisti":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;>;"
    if-nez v4, :cond_0

    .line 119
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "mvnolisti":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;>;"
    const/4 v8, 0x1

    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .restart local v4    # "mvnolisti":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;>;"
    goto :goto_0

    .line 94
    .end local v0    # "carrierPLMN":Ljava/lang/String;
    .end local v3    # "mvnolistReader":Ljava/io/FileReader;
    .end local v4    # "mvnolisti":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string v8, "MVNOSupportList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[MVNO] can not open "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "etc/mvno_list.xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_2
    :goto_1
    return-void

    .line 121
    .restart local v0    # "carrierPLMN":Ljava/lang/String;
    .restart local v3    # "mvnolistReader":Ljava/io/FileReader;
    .restart local v4    # "mvnolisti":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;>;"
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_3
    :try_start_2
    const-string v8, "mvno"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 122
    new-instance v6, Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;

    const/4 v8, 0x0

    const-string v9, "simIMSI"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "mvnoName"

    invoke-interface {v7, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, p0, v8, v9}, Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;-><init>(Lcom/android/internal/telephony/MVNOSupportList;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .local v6, "newMVNOListInfo":Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;
    if-eqz v4, :cond_0

    .line 126
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 137
    .end local v0    # "carrierPLMN":Ljava/lang/String;
    .end local v4    # "mvnolisti":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "newMVNOListInfo":Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v1

    .line 138
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string v8, "MVNOSupportList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in lteon_netlist parser "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 143
    if-eqz v3, :cond_2

    .line 144
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 146
    :catch_2
    move-exception v8

    goto :goto_1

    .line 130
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v0    # "carrierPLMN":Ljava/lang/String;
    .restart local v4    # "mvnolisti":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;>;"
    .restart local v5    # "name":Ljava/lang/String;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v0, :cond_5

    .line 131
    :try_start_5
    iget-object v8, p0, Lcom/android/internal/telephony/MVNOSupportList;->MVNOListMap:Ljava/util/HashMap;

    invoke-virtual {v8, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 132
    const/4 v4, 0x0

    .line 143
    :cond_5
    if-eqz v3, :cond_2

    .line 144
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    .line 146
    :catch_3
    move-exception v8

    goto :goto_1

    .line 139
    .end local v0    # "carrierPLMN":Ljava/lang/String;
    .end local v4    # "mvnolisti":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/MVNOSupportList$MVNOListInfo;>;"
    .end local v5    # "name":Ljava/lang/String;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v1

    .line 140
    .local v1, "e":Ljava/io/IOException;
    :try_start_7
    const-string v8, "MVNOSupportList"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in lteon_netlist parser "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 143
    if-eqz v3, :cond_2

    .line 144
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_1

    .line 146
    :catch_5
    move-exception v8

    goto :goto_1

    .line 142
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 143
    if-eqz v3, :cond_6

    .line 144
    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 148
    :cond_6
    :goto_2
    throw v8

    .line 146
    :catch_6
    move-exception v9

    goto :goto_2
.end method
