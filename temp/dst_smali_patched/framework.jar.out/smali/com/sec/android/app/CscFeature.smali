.class public Lcom/sec/android/app/CscFeature;
.super Ljava/lang/Object;
.source "CscFeature.java"


# static fields
.field public static final Bool_NoTag:Z = false

.field private static final FEATURE_XML:Ljava/lang/String; = "/system/csc/feature.xml"

.field public static final Int_NoTag:I = 0x0

.field private static final MPS_FEATURE_XML:Ljava/lang/String; = "/system/csc/others.xml"

.field private static final OMC_MPS_FEATURE_XML:Ljava/lang/String; = "/data/omc/others.xml"

.field public static final Str_NoTag:Ljava/lang/String; = ""

.field private static final TAG:Ljava/lang/String; = "CscFeature"

.field private static sInstance:Lcom/sec/android/app/CscFeature;


# instance fields
.field private mFeatureList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/app/CscFeature;->sInstance:Lcom/sec/android/app/CscFeature;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/CscFeature;->loadFeatureFile()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CscFeature"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance()Lcom/sec/android/app/CscFeature;
    .locals 1

    .prologue
    sget-object v0, Lcom/sec/android/app/CscFeature;->sInstance:Lcom/sec/android/app/CscFeature;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/app/CscFeature;

    invoke-direct {v0}, Lcom/sec/android/app/CscFeature;-><init>()V

    sput-object v0, Lcom/sec/android/app/CscFeature;->sInstance:Lcom/sec/android/app/CscFeature;

    :cond_0
    sget-object v0, Lcom/sec/android/app/CscFeature;->sInstance:Lcom/sec/android/app/CscFeature;

    return-object v0
.end method

.method private loadFeatureFile()V
    .locals 18

    .prologue
    const/4 v13, 0x0

    .local v13, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    .local v10, "fi":Ljava/io/InputStream;
    const/4 v6, -0x1

    .local v6, "eventType":I
    const/4 v3, 0x0

    .local v3, "TagName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "TagValue":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v14}, Ljava/util/Hashtable;->clear()V

    const-string v14, "persist.sys.omc_path"

    const-string v15, "none"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .local v12, "mpsCode":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/others.xml"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "OMC_OTHERS_PATH":Ljava/lang/String;
    const-string v14, "CscFeature"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mpsCode : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "CscFeature"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "OMC_OTHERS_PATH : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v9, "featureXmlFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-gtz v14, :cond_5

    :cond_0
    new-instance v9, Ljava/io/File;

    .end local v9    # "featureXmlFile":Ljava/io/File;
    const-string v14, "/data/omc/others.xml"

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v9    # "featureXmlFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-gtz v14, :cond_5

    :cond_1
    new-instance v9, Ljava/io/File;

    .end local v9    # "featureXmlFile":Ljava/io/File;
    const-string v14, "/system/csc/feature.xml"

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v9    # "featureXmlFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-gtz v14, :cond_5

    :cond_2
    new-instance v9, Ljava/io/File;

    .end local v9    # "featureXmlFile":Ljava/io/File;
    const-string v14, "/system/csc/others.xml"

    invoke-direct {v9, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v9    # "featureXmlFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v9}, Ljava/io/File;->length()J
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-gtz v14, :cond_5

    :cond_3
    if-eqz v10, :cond_4

    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v10, 0x0

    .end local v2    # "OMC_OTHERS_PATH":Ljava/lang/String;
    .end local v9    # "featureXmlFile":Ljava/io/File;
    .end local v12    # "mpsCode":Ljava/lang/String;
    :cond_4
    :goto_0
    return-void

    .restart local v2    # "OMC_OTHERS_PATH":Ljava/lang/String;
    .restart local v9    # "featureXmlFile":Ljava/io/File;
    .restart local v12    # "mpsCode":Ljava/lang/String;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    const-string v14, "CscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v5    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_2
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v8

    .local v8, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v8}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v13

    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v10    # "fi":Ljava/io/InputStream;
    .local v11, "fi":Ljava/io/InputStream;
    const/4 v14, 0x0

    :try_start_3
    invoke-interface {v13, v11, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    :goto_1
    const/4 v14, 0x1

    if-eq v6, v14, :cond_a

    const/4 v14, 0x2

    if-ne v6, v14, :cond_7

    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    :cond_6
    :goto_2
    :try_start_4
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v6

    goto :goto_1

    :cond_7
    const/4 v14, 0x4

    if-ne v6, v14, :cond_6

    :try_start_5
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v14, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result v14

    if-eqz v14, :cond_8

    :try_start_6
    invoke-interface {v13}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result v6

    goto :goto_1

    :catch_1
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_7
    const-string v14, "CscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .end local v5    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v5

    move-object v10, v11

    .end local v2    # "OMC_OTHERS_PATH":Ljava/lang/String;
    .end local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v9    # "featureXmlFile":Ljava/io/File;
    .end local v11    # "fi":Ljava/io/InputStream;
    .end local v12    # "mpsCode":Ljava/lang/String;
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v10    # "fi":Ljava/io/InputStream;
    :goto_3
    :try_start_8
    const-string v14, "CscFeature"

    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-eqz v10, :cond_4

    :try_start_9
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    const/4 v10, 0x0

    goto :goto_0

    .end local v5    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v10    # "fi":Ljava/io/InputStream;
    .restart local v2    # "OMC_OTHERS_PATH":Ljava/lang/String;
    .restart local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v9    # "featureXmlFile":Ljava/io/File;
    .restart local v11    # "fi":Ljava/io/InputStream;
    .restart local v12    # "mpsCode":Ljava/lang/String;
    :cond_8
    :try_start_a
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v14, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_2

    :catch_3
    move-exception v7

    .local v7, "ex":Ljava/lang/Exception;
    :try_start_b
    const-string v14, "CscFeature"

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    .end local v7    # "ex":Ljava/lang/Exception;
    :catch_4
    move-exception v5

    move-object v10, v11

    .end local v2    # "OMC_OTHERS_PATH":Ljava/lang/String;
    .end local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v9    # "featureXmlFile":Ljava/io/File;
    .end local v11    # "fi":Ljava/io/InputStream;
    .end local v12    # "mpsCode":Ljava/lang/String;
    .local v5, "e":Ljava/io/FileNotFoundException;
    .restart local v10    # "fi":Ljava/io/InputStream;
    :goto_4
    :try_start_c
    const-string v14, "CscFeature"

    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    if-eqz v10, :cond_4

    :try_start_d
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    const/4 v10, 0x0

    goto/16 :goto_0

    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v10    # "fi":Ljava/io/InputStream;
    .restart local v2    # "OMC_OTHERS_PATH":Ljava/lang/String;
    .restart local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v9    # "featureXmlFile":Ljava/io/File;
    .restart local v11    # "fi":Ljava/io/InputStream;
    .restart local v12    # "mpsCode":Ljava/lang/String;
    :catch_5
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    :try_start_e
    const-string v14, "CscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_1

    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    move-object v10, v11

    .end local v2    # "OMC_OTHERS_PATH":Ljava/lang/String;
    .end local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v9    # "featureXmlFile":Ljava/io/File;
    .end local v11    # "fi":Ljava/io/InputStream;
    .end local v12    # "mpsCode":Ljava/lang/String;
    .restart local v10    # "fi":Ljava/io/InputStream;
    :goto_5
    if-eqz v10, :cond_9

    :try_start_f
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    const/4 v10, 0x0

    :cond_9
    :goto_6
    throw v14

    .end local v10    # "fi":Ljava/io/InputStream;
    .restart local v2    # "OMC_OTHERS_PATH":Ljava/lang/String;
    .restart local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v9    # "featureXmlFile":Ljava/io/File;
    .restart local v11    # "fi":Ljava/io/InputStream;
    .restart local v12    # "mpsCode":Ljava/lang/String;
    :cond_a
    :try_start_10
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    :goto_7
    if-eqz v11, :cond_b

    :try_start_11
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    const/4 v10, 0x0

    .end local v11    # "fi":Ljava/io/InputStream;
    .restart local v10    # "fi":Ljava/io/InputStream;
    goto/16 :goto_0

    .end local v10    # "fi":Ljava/io/InputStream;
    .restart local v11    # "fi":Ljava/io/InputStream;
    :catch_6
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_12
    const-string v14, "CscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto :goto_7

    .end local v5    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    const-string v14, "CscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .end local v11    # "fi":Ljava/io/InputStream;
    .restart local v10    # "fi":Ljava/io/InputStream;
    goto/16 :goto_0

    .end local v2    # "OMC_OTHERS_PATH":Ljava/lang/String;
    .end local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v9    # "featureXmlFile":Ljava/io/File;
    .end local v12    # "mpsCode":Ljava/lang/String;
    .local v5, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_8
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    const-string v14, "CscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .local v5, "e":Ljava/io/FileNotFoundException;
    :catch_9
    move-exception v5

    .local v5, "e":Ljava/io/IOException;
    const-string v14, "CscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v5    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    const-string v15, "CscFeature"

    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v14

    goto :goto_5

    :catch_b
    move-exception v5

    goto :goto_4

    :catch_c
    move-exception v5

    goto/16 :goto_3

    .end local v10    # "fi":Ljava/io/InputStream;
    .restart local v2    # "OMC_OTHERS_PATH":Ljava/lang/String;
    .restart local v8    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v9    # "featureXmlFile":Ljava/io/File;
    .restart local v11    # "fi":Ljava/io/InputStream;
    .restart local v12    # "mpsCode":Ljava/lang/String;
    :cond_b
    move-object v10, v11

    .end local v11    # "fi":Ljava/io/InputStream;
    .restart local v10    # "fi":Ljava/io/InputStream;
    goto/16 :goto_0
.end method


# virtual methods
.method public getEnableStatus(Ljava/lang/String;)Z
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    goto :goto_0
.end method

.method public getEnableStatus(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2    # "defaultValue":Z
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "defaultValue":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getInteger(Ljava/lang/String;)I
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v1, v2

    goto :goto_0
.end method

.method public getInteger(Ljava/lang/String;I)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2    # "defaultValue":I
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "defaultValue":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/CscFeature;->mFeatureList:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v1

    .end local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
