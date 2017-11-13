.class public Lmf/org/apache/xml/resolver/apps/xread;
.super Ljava/lang/Object;
.source "xread.java"


# static fields
.field private static debug:Lmf/org/apache/xml/resolver/helpers/Debug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    invoke-static {}, Lmf/org/apache/xml/resolver/CatalogManager;->getStaticManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    sput-object v0, Lmf/org/apache/xml/resolver/apps/xread;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 42
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v36, 0x0

    .local v36, "xmlfile":Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "debuglevel":I
    const/16 v18, 0xa

    .local v18, "maxErrs":I
    const/16 v19, 0x1

    .local v19, "nsAware":Z
    const/16 v34, 0x1

    .local v34, "validating":Z
    const/16 v33, 0x0

    .local v33, "useSchema":Z
    const/16 v38, 0x2

    move/from16 v0, v38

    if-le v7, v0, :cond_8

    const/16 v30, 0x1

    .local v30, "showWarnings":Z
    :goto_0
    const/16 v27, 0x1

    .local v27, "showErrors":Z
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .local v5, "catalogFiles":Ljava/util/Vector;
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    if-lt v15, v0, :cond_9

    if-nez v36, :cond_0

    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v39, "Usage: org.apache.xml.resolver.apps.xread [opts] xmlfile"

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v38, 0x1

    invoke-static/range {v38 .. v38}, Ljava/lang/System;->exit(I)V

    :cond_0
    new-instance v26, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;

    invoke-direct/range {v26 .. v26}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;-><init>()V

    .local v26, "reader":Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;
    :try_start_0
    const-string v38, "http://xml.org/sax/features/namespaces"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setFeature(Ljava/lang/String;Z)V

    const-string v38, "http://xml.org/sax/features/validation"

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setFeature(Ljava/lang/String;Z)V

    if-eqz v33, :cond_1

    const-string v38, "http://apache.org/xml/features/validation/schema"

    const/16 v39, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_1
    :goto_2
    invoke-virtual/range {v26 .. v26}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->getCatalog()Lmf/org/apache/xml/resolver/Catalog;

    move-result-object v4

    .local v4, "catalog":Lmf/org/apache/xml/resolver/Catalog;
    const/4 v6, 0x0

    .local v6, "count":I
    :goto_3
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v38

    move/from16 v0, v38

    if-lt v6, v0, :cond_14

    new-instance v37, Lmf/org/apache/xml/resolver/apps/XParseError;

    move-object/from16 v0, v37

    move/from16 v1, v27

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xml/resolver/apps/XParseError;-><init>(ZZ)V

    .local v37, "xpe":Lmf/org/apache/xml/resolver/apps/XParseError;
    move-object/from16 v0, v37

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/apps/XParseError;->setMaxMessages(I)V

    move-object/from16 v0, v26

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    if-eqz v34, :cond_15

    const-string v25, "validating"

    .local v25, "parseType":Ljava/lang/String;
    :goto_4
    if-eqz v19, :cond_16

    const-string v24, "namespace-aware"

    .local v24, "nsType":Ljava/lang/String;
    :goto_5
    if-lez v18, :cond_2

    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    const-string v40, "Attempting "

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, ", "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string v40, " parse"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    new-instance v31, Ljava/util/Date;

    invoke-direct/range {v31 .. v31}, Ljava/util/Date;-><init>()V

    .local v31, "startTime":Ljava/util/Date;
    :try_start_1
    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;->parse(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_6
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .local v10, "endTime":Ljava/util/Date;
    invoke-virtual {v10}, Ljava/util/Date;->getTime()J

    move-result-wide v38

    invoke-virtual/range {v31 .. v31}, Ljava/util/Date;->getTime()J

    move-result-wide v40

    sub-long v20, v38, v40

    .local v20, "millisec":J
    const-wide/16 v28, 0x0

    .local v28, "secs":J
    const-wide/16 v22, 0x0

    .local v22, "mins":J
    const-wide/16 v16, 0x0

    .local v16, "hours":J
    const-wide/16 v38, 0x3e8

    cmp-long v38, v20, v38

    if-lez v38, :cond_3

    const-wide/16 v38, 0x3e8

    div-long v28, v20, v38

    const-wide/16 v38, 0x3e8

    rem-long v20, v20, v38

    :cond_3
    const-wide/16 v38, 0x3c

    cmp-long v38, v28, v38

    if-lez v38, :cond_4

    const-wide/16 v38, 0x3c

    div-long v22, v28, v38

    const-wide/16 v38, 0x3c

    rem-long v28, v28, v38

    :cond_4
    const-wide/16 v38, 0x3c

    cmp-long v38, v22, v38

    if-lez v38, :cond_5

    const-wide/16 v38, 0x3c

    div-long v16, v22, v38

    const-wide/16 v38, 0x3c

    rem-long v22, v22, v38

    :cond_5
    if-lez v18, :cond_6

    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v39, "Parse "

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual/range {v37 .. v37}, Lmf/org/apache/xml/resolver/apps/XParseError;->getFatalCount()I

    move-result v38

    if-lez v38, :cond_17

    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v39, "failed "

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_7
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v39, "with "

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual/range {v37 .. v37}, Lmf/org/apache/xml/resolver/apps/XParseError;->getErrorCount()I

    move-result v11

    .local v11, "errCount":I
    invoke-virtual/range {v37 .. v37}, Lmf/org/apache/xml/resolver/apps/XParseError;->getWarningCount()I

    move-result v35

    .local v35, "warnCount":I
    if-lez v11, :cond_1c

    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v40, " error"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v38, 0x1

    move/from16 v0, v38

    if-le v11, v0, :cond_1b

    const-string v38, "s"

    :goto_8
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v39, " and "

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_9
    if-lez v35, :cond_1e

    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v40, " warning"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v39, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v38, 0x1

    move/from16 v0, v35

    move/from16 v1, v38

    if-le v0, v1, :cond_1d

    const-string v38, "s"

    :goto_a
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v39, "."

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_b
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v39, ""

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .end local v11    # "errCount":I
    .end local v35    # "warnCount":I
    :cond_6
    invoke-virtual/range {v37 .. v37}, Lmf/org/apache/xml/resolver/apps/XParseError;->getErrorCount()I

    move-result v38

    if-lez v38, :cond_7

    const/16 v38, 0x1

    invoke-static/range {v38 .. v38}, Ljava/lang/System;->exit(I)V

    :cond_7
    return-void

    .end local v4    # "catalog":Lmf/org/apache/xml/resolver/Catalog;
    .end local v5    # "catalogFiles":Ljava/util/Vector;
    .end local v6    # "count":I
    .end local v10    # "endTime":Ljava/util/Date;
    .end local v15    # "i":I
    .end local v16    # "hours":J
    .end local v20    # "millisec":J
    .end local v22    # "mins":J
    .end local v24    # "nsType":Ljava/lang/String;
    .end local v25    # "parseType":Ljava/lang/String;
    .end local v26    # "reader":Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;
    .end local v27    # "showErrors":Z
    .end local v28    # "secs":J
    .end local v30    # "showWarnings":Z
    .end local v31    # "startTime":Ljava/util/Date;
    .end local v37    # "xpe":Lmf/org/apache/xml/resolver/apps/XParseError;
    :cond_8
    const/16 v30, 0x0

    goto/16 :goto_0

    .restart local v5    # "catalogFiles":Ljava/util/Vector;
    .restart local v15    # "i":I
    .restart local v27    # "showErrors":Z
    .restart local v30    # "showWarnings":Z
    :cond_9
    aget-object v38, p0, v15

    const-string v39, "-c"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_b

    add-int/lit8 v15, v15, 0x1

    aget-object v38, p0, v15

    move-object/from16 v0, v38

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_c
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    :cond_b
    aget-object v38, p0, v15

    const-string v39, "-w"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_c

    const/16 v34, 0x0

    goto :goto_c

    :cond_c
    aget-object v38, p0, v15

    const-string v39, "-v"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_d

    const/16 v34, 0x1

    goto :goto_c

    :cond_d
    aget-object v38, p0, v15

    const-string v39, "-s"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_e

    const/16 v33, 0x1

    goto :goto_c

    :cond_e
    aget-object v38, p0, v15

    const-string v39, "-n"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_f

    const/16 v19, 0x0

    goto :goto_c

    :cond_f
    aget-object v38, p0, v15

    const-string v39, "-N"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_10

    const/16 v19, 0x1

    goto :goto_c

    :cond_10
    aget-object v38, p0, v15

    const-string v39, "-d"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_12

    add-int/lit8 v15, v15, 0x1

    aget-object v8, p0, v15

    .local v8, "debugstr":Ljava/lang/String;
    :try_start_2
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_a

    sget-object v38, Lmf/org/apache/xml/resolver/apps/xread;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Lmf/org/apache/xml/resolver/helpers/Debug;->setDebug(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    const/16 v38, 0x2

    move/from16 v0, v38

    if-le v7, v0, :cond_11

    const/16 v30, 0x1

    :goto_d
    goto :goto_c

    :cond_11
    const/16 v30, 0x0

    goto :goto_d

    .end local v8    # "debugstr":Ljava/lang/String;
    :cond_12
    aget-object v38, p0, v15

    const-string v39, "-E"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_13

    add-int/lit8 v15, v15, 0x1

    aget-object v13, p0, v15

    .local v13, "errstr":Ljava/lang/String;
    :try_start_3
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v12

    .local v12, "errs":I
    if-ltz v12, :cond_a

    move/from16 v18, v12

    goto/16 :goto_c

    .end local v12    # "errs":I
    .end local v13    # "errstr":Ljava/lang/String;
    :cond_13
    aget-object v36, p0, v15

    goto/16 :goto_c

    .restart local v4    # "catalog":Lmf/org/apache/xml/resolver/Catalog;
    .restart local v6    # "count":I
    .restart local v26    # "reader":Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;
    :cond_14
    invoke-virtual {v5, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .local v14, "file":Ljava/lang/String;
    invoke-virtual {v4, v14}, Lmf/org/apache/xml/resolver/Catalog;->parseCatalog(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_3

    .end local v14    # "file":Ljava/lang/String;
    .restart local v37    # "xpe":Lmf/org/apache/xml/resolver/apps/XParseError;
    :cond_15
    const-string v25, "well-formed"

    goto/16 :goto_4

    .restart local v25    # "parseType":Ljava/lang/String;
    :cond_16
    const-string v24, "namespace-ignorant"

    goto/16 :goto_5

    .restart local v24    # "nsType":Ljava/lang/String;
    .restart local v31    # "startTime":Ljava/util/Date;
    :catch_0
    move-exception v32

    .local v32, "sx":Lorg/xml/sax/SAXException;
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    const-string v40, "SAX Exception: "

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .end local v32    # "sx":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6

    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v10    # "endTime":Ljava/util/Date;
    .restart local v16    # "hours":J
    .restart local v20    # "millisec":J
    .restart local v22    # "mins":J
    .restart local v28    # "secs":J
    :cond_17
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v39, "succeeded "

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v39, "("

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const-wide/16 v38, 0x0

    cmp-long v38, v16, v38

    if-lez v38, :cond_18

    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v40, ":"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_18
    const-wide/16 v38, 0x0

    cmp-long v38, v16, v38

    if-gtz v38, :cond_19

    const-wide/16 v38, 0x0

    cmp-long v38, v22, v38

    if-lez v38, :cond_1a

    :cond_19
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v40, ":"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1a
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-static/range {v28 .. v29}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v40, "."

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v39, ") "

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_7

    .restart local v11    # "errCount":I
    .restart local v35    # "warnCount":I
    :cond_1b
    const-string v38, ""

    goto/16 :goto_8

    :cond_1c
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v39, "no errors and "

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_1d
    const-string v38, ""

    goto/16 :goto_a

    :cond_1e
    sget-object v38, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v39, "no warnings."

    invoke-virtual/range {v38 .. v39}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_b

    .end local v4    # "catalog":Lmf/org/apache/xml/resolver/Catalog;
    .end local v6    # "count":I
    .end local v10    # "endTime":Ljava/util/Date;
    .end local v11    # "errCount":I
    .end local v16    # "hours":J
    .end local v20    # "millisec":J
    .end local v22    # "mins":J
    .end local v24    # "nsType":Ljava/lang/String;
    .end local v25    # "parseType":Ljava/lang/String;
    .end local v26    # "reader":Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;
    .end local v28    # "secs":J
    .end local v31    # "startTime":Ljava/util/Date;
    .end local v35    # "warnCount":I
    .end local v37    # "xpe":Lmf/org/apache/xml/resolver/apps/XParseError;
    .restart local v13    # "errstr":Ljava/lang/String;
    :catch_2
    move-exception v38

    goto/16 :goto_c

    .end local v13    # "errstr":Ljava/lang/String;
    .restart local v26    # "reader":Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;
    :catch_3
    move-exception v38

    goto/16 :goto_2

    .end local v26    # "reader":Lmf/org/apache/xml/resolver/tools/ResolvingXMLReader;
    .restart local v8    # "debugstr":Ljava/lang/String;
    :catch_4
    move-exception v38

    goto/16 :goto_c
.end method
